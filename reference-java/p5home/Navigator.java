package com.local.p5home;

import android.app.ActivityOptions;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Bundle;
import com.local.p5home.NavAutoSession;
import com.local.p5home.NavProtocol;
import com.local.p5home.Navigator;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class Navigator {
    public static final String AMAP_AUTO = "com.autonavi.amapauto";
    public static final String AMAP_PHONE = "com.autonavi.minimap";
    private static final String AUTO_ACTIVITY = "com.autonavi.amapauto.MainMapActivity";
    static final String AUTO_RECEIVER = "com.autonavi.amapauto.adapter.internal.AmapAutoBroadcastReceiver";
    static final String AUTO_SEND = "AUTONAVI_STANDARD_BROADCAST_SEND";
    private static final String AUTO_SIGNER_SHA256 = "a24c8ef5834537997bbc4d5d6ffb2c27b0ad2c6fab3145a93f0874d43f094e6e";
    public static final String BAIDU_AUTO = "com.baidu.naviauto";
    public static final String BAIDU_PHONE = "com.baidu.BaiduMap";
    public static final String NATIVE = "com.xiaopeng.montecarlo";

    public interface ReplySink {
        void onReply(String str, String str2, String str3, String str4);
    }

    private Navigator() {
    }

    public static class Provider {
        public final String detail;
        public final boolean installed;
        public final String label;
        public final String packageName;
        public final boolean voiceSupported;

        Provider(String str, String str2, String str3, boolean z, boolean z2) {
            this.packageName = str;
            this.label = str2;
            this.detail = str3;
            this.installed = z;
            this.voiceSupported = z2;
        }
    }

    public static class Result {
        public final boolean accepted;
        final long conversationEpoch;
        public final String message;
        public final String replyData;
        public final String replyEvent;
        public final String replyKind;
        public final String state;

        public Result(boolean z, String str) {
            this(z, str, z ? "dispatched" : "unsupported", "", "", "");
        }

        public Result(boolean z, String str, String str2, String str3, String str4, String str5) {
            this(z, str, str2, str3, str4, str5, -1L);
        }

        Result(boolean z, String str, String str2, String str3, String str4, String str5, long j) {
            this.accepted = z;
            this.message = str;
            this.state = str2;
            this.replyKind = str3;
            this.replyEvent = str4;
            this.replyData = str5;
            this.conversationEpoch = j;
        }
    }

    public static void setReplySink(Context context, ReplySink replySink) {
        NavAutoSession.setSink(context, replySink);
    }

    public static void clearSession() {
        NavAutoSession.cancelConversation();
    }

    public static List<Provider> providers(Context context) {
        String str;
        ArrayList arrayList = new ArrayList();
        String[] strArr = {AMAP_AUTO, AMAP_PHONE, BAIDU_PHONE, BAIDU_AUTO, NATIVE};
        for (int i = 0; i < 5; i++) {
            String str2 = strArr[i];
            boolean z = launchIntent(context, str2) != null;
            boolean z2 = (NATIVE.equals(str2) || searchIntent(context, str2, "地点") == null) ? false : true;
            if (NATIVE.equals(str2)) {
                str = "原车导航；语音保留原小P处理，选择打开时才启动原地图";
            } else if (AMAP_AUTO.equals(str2) && verifiedAuto(context)) {
                str = "语音发送目的地，地点和路线在高德内选择";
            } else {
                str = z2 ? "可在地图内搜索并确认地点；语音选点和结束导航暂未适配" : "当前版本可手动打开；语音导航尚未适配";
            }
            arrayList.add(new Provider(str2, label(context, str2), str, z, z2));
        }
        return arrayList;
    }

    public static String label(Context context, String str) {
        return AMAP_AUTO.equals(str) ? "高德地图车机版" : AMAP_PHONE.equals(str) ? "高德地图手机版" : BAIDU_PHONE.equals(str) ? "百度地图手机版" : BAIDU_AUTO.equals(str) ? "百度地图车机版" : isNative(str) ? "原车导航" : "未适配的地图";
    }

    public static Result open(Context context, String str) {
        if ("native".equals(str)) {
            str = NATIVE;
        }
        Intent intentLaunchIntent = launchIntent(context, str);
        return intentLaunchIntent == null ? no("所选地图未安装、被停用或没有可打开的界面") : launch(context, intentLaunchIntent, "已打开" + label(context, str));
    }

    static boolean available(Context context, String str) {
        return launchIntent(context, str) != null;
    }

    public static Result search(Context context, String str, String str2) {
        return search(context, str, str2, NavAutoSession.epoch());
    }

    private static Result search(final Context context, String str, String str2, long j) {
        long j2;
        long jResetIfCurrent;
        String strText = NavProtocol.text(str2, 120);
        if (strText.isEmpty()) {
            return no("目的地为空或过长");
        }
        final Intent intentSearchIntent = searchIntent(context, str, strText);
        if (intentSearchIntent == null) {
            return no("当前地图版本不支持关键词转接；可先打开地图后手动搜索");
        }
        boolean z = AMAP_AUTO.equals(str) && verifiedAuto(context);
        if (z) {
            try {
                jResetIfCurrent = NavAutoSession.beginUiSearch(context, j);
                j2 = jResetIfCurrent;
            } catch (RuntimeException e) {
                j2 = -1;
                jResetIfCurrent = NavAutoSession.resetIfCurrent(j);
            }
        } else {
            j2 = -1;
            jResetIfCurrent = NavAutoSession.resetIfCurrent(j);
        }
        if (jResetIfCurrent < 0) {
            return no("导航请求已被后续搜索取代");
        }
        final String str3 = "已向" + label(context, str) + "发送搜索请求" + (z ? "，可说第几个地点、第二条路线或开始导航" : "，请在地图内选择地点与路线");
        Result resultLaunchIfCurrent = NavAutoSession.launchIfCurrent(jResetIfCurrent, new NavAutoSession.MapLaunch() { // from class: com.local.p5home.Navigator$$ExternalSyntheticLambda0
            @Override // com.local.p5home.NavAutoSession.MapLaunch
            public final Navigator.Result run() {
                return Navigator.launch(context, intentSearchIntent, str3);
            }
        });
        if (!resultLaunchIfCurrent.accepted && j2 >= 0) {
            NavAutoSession.retire(j2);
        }
        return new Result(resultLaunchIfCurrent.accepted, resultLaunchIfCurrent.message, resultLaunchIfCurrent.state, resultLaunchIfCurrent.replyKind, resultLaunchIfCurrent.replyEvent, resultLaunchIfCurrent.replyData, j2);
    }

    public static Result validate(Context context, String str, String str2, String str3) {
        try {
            return prepare(context, str, str2, NavProtocol.object(str3));
        } catch (Exception e) {
            return no("导航事件数据无效，保留原处理");
        }
    }

    static boolean isConversationControl(String str) {
        String strEvent = NavProtocol.event(str);
        return "g3.asr.nav.control".equals(strEvent) || "command://navi.route.select".equals(strEvent) || "command://navi.confirm.ok".equals(strEvent) || "native://navi.select.route.count".equals(strEvent) || "command://navi.search.close".equals(strEvent) || "command://navi.confirm.cancel".equals(strEvent) || "command://navi.control.close".equals(strEvent);
    }

    static boolean isConversationControl(String str, JSONObject jSONObject) throws Exception {
        return isConversationControl(str) || ("command://navi.control.start".equals(NavProtocol.event(str)) && NavProtocol.selected(jSONObject) == null);
    }

    static boolean isNewNavigation(String str, JSONObject jSONObject) throws Exception {
        String strEvent = NavProtocol.event(str);
        return "g3.asr.navigate".equals(strEvent) || "native://navi.poi.search".equals(strEvent) || ("command://navi.control.start".equals(strEvent) && NavProtocol.selected(jSONObject) != null);
    }

    private static Result prepare(Context context, String str, String str2, JSONObject jSONObject) throws Exception {
        if (isNative(str)) {
            return no("当前选择原车导航，保留原小P处理");
        }
        String strEvent = NavProtocol.event(str2);
        if (strEvent.isEmpty()) {
            return no("该语音导航事件尚未适配，保留原处理");
        }
        if (launchIntent(context, str) == null) {
            return no("所选地图不可用，保留原处理");
        }
        if ((isConversationControl(strEvent, jSONObject) || isNewNavigation(strEvent, jSONObject)) && ("g3.asr.nav.control".equals(strEvent) || jSONObject.has("navEpoch"))) {
            Object objOpt = jSONObject.opt("navEpoch");
            if (!(objOpt instanceof Number) || ((Number) objOpt).doubleValue() != NavAutoSession.epoch()) {
                return no("地图会话已更新，请根据当前候选重新选择");
            }
        }
        if ("g3.asr.nav.control".equals(strEvent)) {
            if (!AMAP_AUTO.equals(str) || !verifiedAuto(context)) {
                return no("当前地图版本未适配语音选项控制");
            }
            return NavAutoSession.validateControl(NavProtocol.text(jSONObject.opt("action"), 30), NavProtocol.ordinal(jSONObject, "index"));
        }
        if ("command://navi.route.select".equals(strEvent) || "command://navi.confirm.ok".equals(strEvent) || "native://navi.select.route.count".equals(strEvent)) {
            return no("请在地图内选择地点和路线");
        }
        if ("g3.asr.navigate".equals(strEvent) || "native://navi.poi.search".equals(strEvent)) {
            String strAsrText = "g3.asr.navigate".equals(strEvent) ? NavProtocol.asrText(jSONObject) : NavProtocol.searchText(jSONObject);
            return strAsrText.isEmpty() ? no("未取得明确的地点关键词，保留原处理") : searchIntent(context, str, strAsrText) == null ? no("当前地图版本不支持语音关键词搜索") : new Result(true, "可在所选地图内搜索，路线仍需确认", "ready", "", "", "");
        }
        if ("command://navi.control.start".equals(strEvent)) {
            NavProtocol.Poi poiSelected = NavProtocol.selected(jSONObject);
            if (poiSelected == null) {
                return no("缺少有效目的地，请在地图内选择路线");
            }
            if (searchIntent(context, str, poiSelected.name) != null) {
                return new Result(true, "将按地点名搜索，请在地图内确认地点与路线", "ready", "", "", "");
            }
            return no("该版本或目标分支暂不支持转接");
        }
        if ("command://navi.control.close".equals(strEvent)) {
            if (verifiedAuto(context) && AMAP_AUTO.equals(str)) {
                return new Result(true, "可发送结束导航请求，结果需读取状态", "ready", "", "", "");
            }
            return no("当前版本不提供已核验的停止导航协议，请在地图内结束");
        }
        if ("native://navi.navigating.get".equals(strEvent)) {
            return (verifiedAuto(context) && AMAP_AUTO.equals(str) && NavAutoSession.hasSink()) ? new Result(true, "可读取高德广播状态，不能确认具体目的地", "ready", "", "", "") : no("当前版本没有可回填的导航状态");
        }
        if ("command://navi.search.close".equals(strEvent) || "command://navi.confirm.cancel".equals(strEvent)) {
            return no("请在地图内操作路线");
        }
        return no("该事件暂未适配");
    }

    public static Result handle(Context context, String str, String str2, String str3) {
        try {
            JSONObject jSONObjectObject = NavProtocol.object(str3);
            Object objOpt = jSONObjectObject.opt("navEpoch");
            long jLongValue = objOpt instanceof Number ? ((Number) objOpt).longValue() : NavAutoSession.epoch();
            Result resultPrepare = prepare(context, str, str2, jSONObjectObject);
            if (!resultPrepare.accepted) {
                return resultPrepare;
            }
            String strEvent = NavProtocol.event(str2);
            if (!"g3.asr.navigate".equals(strEvent) && !"native://navi.poi.search".equals(strEvent)) {
                String str4 = "num";
                String strText = "start";
                if (!"g3.asr.nav.control".equals(strEvent) && !"command://navi.route.select".equals(strEvent) && !"command://navi.confirm.ok".equals(strEvent)) {
                    if ("native://navi.select.route.count".equals(strEvent)) {
                        return NavAutoSession.routeCount(strEvent, NavProtocol.ordinal(jSONObjectObject, "num"), jLongValue);
                    }
                    if (!"command://navi.control.start".equals(strEvent)) {
                        return "command://navi.control.close".equals(strEvent) ? stop(context, str, jLongValue) : "native://navi.navigating.get".equals(strEvent) ? NavAutoSession.query(context, strEvent) : NavAutoSession.control(context, "cancel", 0, jLongValue);
                    }
                    NavProtocol.Poi poiSelected = NavProtocol.selected(jSONObjectObject);
                    return poiSelected == null ? NavAutoSession.control(context, "start", 0, jLongValue) : search(context, str, poiSelected.name, jLongValue);
                }
                if (!"command://navi.confirm.ok".equals(strEvent)) {
                    strText = "command://navi.route.select".equals(strEvent) ? "select_route_start" : NavProtocol.text(jSONObjectObject.opt("action"), 30);
                }
                if (!"command://navi.route.select".equals(strEvent)) {
                    str4 = "index";
                }
                return NavAutoSession.control(context, strText, NavProtocol.ordinal(jSONObjectObject, str4), jLongValue);
            }
            return search(context, str, "g3.asr.navigate".equals(strEvent) ? NavProtocol.asrText(jSONObjectObject) : NavProtocol.searchText(jSONObjectObject), jLongValue);
        } catch (Exception e) {
            return no("导航转接失败，请在地图内操作；未确认导航成功");
        }
    }

    public static Result stop(Context context, String str) {
        return stop(context, str, NavAutoSession.epoch());
    }

    private static Result stop(Context context, String str, long j) {
        if (!AMAP_AUTO.equals(str) || !verifiedAuto(context)) {
            return no("当前地图版本没有已核验的语音停止协议，请在地图内结束导航");
        }
        return NavAutoSession.stopIfCurrent(context, j);
    }

    public static Bundle navigationState(Context context, String str) {
        if (!AMAP_AUTO.equals(str) || !verifiedAuto(context)) {
            return new Bundle();
        }
        return NavAutoSession.snapshot();
    }

    static Result no(String str) {
        return new Result(false, str);
    }

    static boolean isNative(String str) {
        return NATIVE.equals(str) || "native".equals(str);
    }

    static Intent broadcast(int i) {
        return new Intent("AUTONAVI_STANDARD_BROADCAST_RECV").setComponent(new ComponentName(AMAP_AUTO, AUTO_RECEIVER)).setPackage(AMAP_AUTO).putExtra("KEY_TYPE", i);
    }

    static boolean verifiedAuto(Context context) throws PackageManager.NameNotFoundException {
        Signature[] apkContentsSigners;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(AMAP_AUTO, 134217728);
            if (packageInfo.signingInfo != null && !packageInfo.signingInfo.hasMultipleSigners() && (apkContentsSigners = packageInfo.signingInfo.getApkContentsSigners()) != null && apkContentsSigners.length == 1 && apkContentsSigners[0] != null) {
                byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(apkContentsSigners[0].toByteArray());
                char[] charArray = "0123456789abcdef".toCharArray();
                char[] cArr = new char[bArrDigest.length * 2];
                for (int i = 0; i < bArrDigest.length; i++) {
                    int i2 = i * 2;
                    byte b = bArrDigest[i];
                    cArr[i2] = charArray[(b & 255) >>> 4];
                    cArr[i2 + 1] = charArray[b & 15];
                }
                if (!AUTO_SIGNER_SHA256.equals(new String(cArr))) {
                    return false;
                }
                PackageManager packageManager = context.getPackageManager();
                ActivityInfo receiverInfo = packageManager.getReceiverInfo(new ComponentName(AMAP_AUTO, AUTO_RECEIVER), 0);
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(AMAP_AUTO, AUTO_ACTIVITY), 0);
                if (accessibleAuto(context, receiverInfo)) {
                    return accessibleAuto(context, activityInfo);
                }
                return false;
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean accessibleAuto(Context context, ActivityInfo activityInfo) {
        return activityInfo != null && AMAP_AUTO.equals(activityInfo.packageName) && activityInfo.enabled && activityInfo.exported && activityInfo.applicationInfo != null && activityInfo.applicationInfo.enabled && (activityInfo.permission == null || activityInfo.permission.isEmpty() || context.checkSelfPermission(activityInfo.permission) == 0);
    }

    private static Intent launchIntent(Context context, String str) {
        if (str == null || (!AMAP_AUTO.equals(str) && !AMAP_PHONE.equals(str) && !BAIDU_PHONE.equals(str) && !BAIDU_AUTO.equals(str) && !NATIVE.equals(str))) {
            return null;
        }
        if (AMAP_AUTO.equals(str) || NATIVE.equals(str)) {
            Intent component = new Intent("android.intent.action.MAIN").setComponent(new ComponentName(str, AMAP_AUTO.equals(str) ? AUTO_ACTIVITY : "com.xiaopeng.montecarlo.MainActivity"));
            if (resolves(context, component)) {
                return component;
            }
        }
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null || !resolves(context, launchIntentForPackage)) {
            return null;
        }
        return launchIntentForPackage;
    }

    private static Intent searchIntent(Context context, String str, String str2) {
        Uri uriBuild;
        if (AMAP_AUTO.equals(str)) {
            uriBuild = new Uri.Builder().scheme("androidauto").authority("poi").appendQueryParameter("sourceApplication", "G3Home").appendQueryParameter("keywords", str2).appendQueryParameter("dev", "0").build();
        } else if (AMAP_PHONE.equals(str)) {
            uriBuild = new Uri.Builder().scheme("androidamap").authority("poi").appendQueryParameter("sourceApplication", "G3Home").appendQueryParameter("keywords", str2).appendQueryParameter("dev", "0").build();
        } else {
            if (!BAIDU_PHONE.equals(str)) {
                return null;
            }
            uriBuild = new Uri.Builder().scheme("baidumap").authority("map").path("/place/search").appendQueryParameter("query", str2).appendQueryParameter("src", "andr.local.G3Home").build();
        }
        Intent intentAddCategory = new Intent("android.intent.action.VIEW", uriBuild).setPackage(str).addCategory("android.intent.category.DEFAULT");
        if (resolves(context, intentAddCategory)) {
            return intentAddCategory;
        }
        return null;
    }

    private static boolean resolves(Context context, Intent intent) {
        try {
            ResolveInfo resolveInfoResolveActivity = context.getPackageManager().resolveActivity(intent, 65536);
            ActivityInfo activityInfo = resolveInfoResolveActivity == null ? null : resolveInfoResolveActivity.activityInfo;
            if (activityInfo == null || !activityInfo.enabled || !activityInfo.exported || !activityInfo.applicationInfo.enabled) {
                return false;
            }
            if (activityInfo.permission != null) {
                if (context.checkSelfPermission(activityInfo.permission) != 0) {
                    return false;
                }
            }
            return true;
        } catch (RuntimeException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Result launch(Context context, Intent intent, String str) {
        try {
            intent.addFlags(805306368);
            if (intent.getComponent() != null && NATIVE.equals(intent.getComponent().getPackageName())) {
                intent.addCategory("android.intent.category.HOME");
                context.startActivity(intent, null);
            } else {
                ActivityOptions activityOptionsMakeBasic = ActivityOptions.makeBasic();
                activityOptionsMakeBasic.setLaunchDisplayId(0);
                context.startActivity(intent, activityOptionsMakeBasic.toBundle());
            }
            return new Result(true, str);
        } catch (RuntimeException e) {
            return no("所选地图未能打开，请检查应用是否可正常运行");
        }
    }
}
