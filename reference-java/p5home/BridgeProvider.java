package com.local.p5home;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.SystemClock;
import com.local.p5home.Navigator;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class BridgeProvider extends ContentProvider {
    private static final String CAR = "com.xiaopeng.carspeechservice";
    private static final Object NAV_ADMISSION = new Object();

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        G3Application.ensure(getContext());
        return true;
    }

    private boolean carCaller() {
        return OemSpeechIdentity.trusted(getContext(), Binder.getCallingUid());
    }

    private boolean ownCaller() {
        return Binder.getCallingUid() == getContext().getApplicationInfo().uid;
    }

    private Bundle refused(String str) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("accepted", false);
        bundle.putString("message", str);
        return bundle;
    }

    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, Bundle bundle) throws PackageManager.NameNotFoundException {
        boolean zCarCaller = carCaller();
        boolean zOwnCaller = ownCaller();
        Context context = getContext();
        if ("music_ready".equals(str)) {
            try {
                int callingUid = Binder.getCallingUid();
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.luna.music.car", 0);
                if (packageInfo.applicationInfo == null || !packageInfo.applicationInfo.enabled || packageInfo.applicationInfo.uid != callingUid || packageInfo.getLongVersionCode() <= 0) {
                    throw new SecurityException();
                }
                String[] packagesForUid = context.getPackageManager().getPackagesForUid(callingUid);
                if (packagesForUid == null || packagesForUid.length != 1 || !"com.luna.music.car".equals(packagesForUid[0])) {
                    throw new SecurityException();
                }
                ConfigStore.prefs(context).edit().remove("lunaBridgeVerifiedVersion").putLong("lunaBridgeVerifiedCode", packageInfo.getLongVersionCode()).putLong("lunaBridgeVerifiedUpdate", packageInfo.lastUpdateTime).putInt("lunaBridgeVerifiedUid", callingUid).apply();
                context.getContentResolver().notifyChange(ConfigStore.EVENTS, null);
                return new Bundle();
            } catch (Exception e) {
                throw new SecurityException("Verified music bridge required");
            }
        }
        if ("status".equals(str) && (zCarCaller || zOwnCaller || Binder.getCallingUid() == 0)) {
            Bundle bundleStatus = BridgeStore.status(context);
            AppConfig appConfigLoad = ConfigStore.load(context);
            bundleStatus.putBoolean("voiceEnabled", appConfigLoad.voiceEnabled);
            bundleStatus.putBoolean("doubaoEnabled", appConfigLoad.doubaoEnabled);
            bundleStatus.putBoolean("autoLaunchNav", appConfigLoad.autoLaunchNav);
            bundleStatus.putString("navPackage", appConfigLoad.navPackage);
            bundleStatus.putString("musicProvider", appConfigLoad.musicProvider);
            bundleStatus.putBoolean("lunaBridgeVerified", MusicRouter.lunaReady(context));
            bundleStatus.putBoolean("apiConfigured", ConfigStore.hasApiKey(context) && !appConfigLoad.modelId.trim().isEmpty());
            bundleStatus.putString("apiProtocol", appConfigLoad.apiProtocol);
            bundleStatus.putBoolean("modelWakeEnabled", appConfigLoad.modelWakeEnabled);
            Bundle bundleNavigationState = Navigator.navigationState(context, appConfigLoad.navPackage);
            bundleStatus.putString("navSessionStage", bundleNavigationState.getString("sessionStage", "idle"));
            bundleStatus.putInt("navPoiCount", bundleNavigationState.getInt("poiCount", 0));
            bundleStatus.putInt("navRouteCount", bundleNavigationState.getInt("routeCount", 0));
            bundleStatus.putBoolean("navObserved", bundleNavigationState.getBoolean("observed", false));
            bundleStatus.putBoolean("navSenderAuthenticated", bundleNavigationState.getBoolean("senderAuthenticated", false));
            if (bundleNavigationState.containsKey("protocolState")) {
                bundleStatus.putInt("navProtocolState", bundleNavigationState.getInt("protocolState"));
            }
            if (!zCarCaller && !zOwnCaller) {
                bundleStatus.putBoolean("answerPresent", !bundleStatus.getString("lastAnswer", "").isEmpty());
                bundleStatus.remove("lastAnswer");
            }
            return bundleStatus;
        }
        if (!zCarCaller && !zOwnCaller) {
            throw new SecurityException("G3 trusted caller required");
        }
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        if ("config".equals(str)) {
            AppConfig appConfigLoad2 = ConfigStore.load(context);
            Bundle bundle3 = new Bundle();
            bundle3.putInt("schema", 1);
            bundle3.putInt("appVersion", 1);
            bundle3.putBoolean("voiceEnabled", appConfigLoad2.voiceEnabled);
            bundle3.putBoolean("doubaoEnabled", appConfigLoad2.doubaoEnabled);
            bundle3.putString("prefix", appConfigLoad2.prefix);
            bundle3.putString("navPackage", appConfigLoad2.navPackage);
            bundle3.putString("musicProvider", appConfigLoad2.musicProvider);
            bundle3.putBoolean("lunaBridgeVerified", MusicRouter.lunaReady(context));
            bundle3.putBoolean("hasApiConfig", ConfigStore.hasApiKey(context) && !appConfigLoad2.modelId.trim().isEmpty());
            bundle3.putBoolean("speechOutputReady", SpeechOutput.get(context).ready());
            bundle3.putBoolean("musicAvailable", MusicRouter.available(context, appConfigLoad2.musicProvider));
            bundle3.putBoolean("modelWakeEnabled", appConfigLoad2.modelWakeEnabled);
            bundle3.putString("modelWakeWords", appConfigLoad2.modelWakeWords);
            Bundle bundleNavigationState2 = Navigator.navigationState(context, appConfigLoad2.navPackage);
            bundle3.putString("navStage", bundleNavigationState2.getString("sessionStage", "idle"));
            bundle3.putLong("navEpoch", bundleNavigationState2.getLong("sessionEpoch", -1L));
            bundle3.putBoolean("navAvailable", Navigator.available(context, appConfigLoad2.navPackage));
            bundle3.putBoolean("oemMapAvailable", Navigator.available(context, Navigator.NATIVE));
            bundle3.putInt("navPoiCount", bundleNavigationState2.getInt("poiCount", 0));
            bundle3.putInt("navRouteCount", bundleNavigationState2.getInt("routeCount", 0));
            return bundle3;
        }
        if ("heartbeat".equals(str)) {
            if (!zCarCaller) {
                throw new SecurityException("CarSpeech heartbeat required");
            }
            BridgeStore.heartbeat(context, bundle2);
            return new Bundle();
        }
        if ("retire_nav".equals(str)) {
            if (!zCarCaller) {
                throw new SecurityException("CarSpeech navigation owner required");
            }
            Object obj = bundle2.get("navEpoch");
            Bundle bundle4 = new Bundle();
            bundle4.putBoolean("retired", (obj instanceof Long) && NavAutoSession.retire(((Long) obj).longValue()));
            return bundle4;
        }
        if ("next_reply".equals(str)) {
            if (zCarCaller) {
                return BridgeStore.nextReply();
            }
            throw new SecurityException("CarSpeech reply required");
        }
        if ("ack_reply".equals(str)) {
            if (!zCarCaller) {
                throw new SecurityException("CarSpeech acknowledgement required");
            }
            BridgeStore.ack(context, bundle2.getString("id", ""), bundle2.getString("status", "failed"));
            return new Bundle();
        }
        if ("submit".equals(str)) {
            if (!zCarCaller) {
                return refused("语音提交只允许小P进程");
            }
            AppConfig appConfigLoad3 = ConfigStore.load(context);
            if (!appConfigLoad3.voiceEnabled) {
                return refused("小P分流未开启");
            }
            Bundle bundleStatus2 = BridgeStore.status(context);
            if (!bundleStatus2.getBoolean("hookReady")) {
                return refused("模块尚未就绪");
            }
            String string = bundle2.getString("kind", "");
            String string2 = bundle2.getString("requestId", "");
            if (!string2.matches("[A-Za-z0-9_.:-]{1,100}")) {
                return refused("请求标识不正确");
            }
            if ("qa".equals(string)) {
                String strTrim = bundle2.getString("text", "").trim();
                if (strTrim.isEmpty() || strTrim.length() > 1000) {
                    return refused("问题长度不正确");
                }
                if (!appConfigLoad3.doubaoEnabled || !ConfigStore.hasApiKey(context) || appConfigLoad3.modelId.trim().isEmpty()) {
                    return refused("豆包配置尚未完成");
                }
                if (!bundleStatus2.getBoolean("asrHook") || !bundleStatus2.getBoolean("ttsHook")) {
                    return refused("识别或播报接口尚未就绪");
                }
                if (!BridgeStore.firstRequest(string2)) {
                    Bundle bundle5 = new Bundle();
                    bundle5.putBoolean("accepted", true);
                    bundle5.putString("message", "已接受的同一请求");
                    return bundle5;
                }
                try {
                    AssistantService.askFromVoice(context, strTrim, string2);
                } catch (Exception e2) {
                    BridgeStore.releaseRequest(string2);
                    return refused("助手服务未能启动");
                }
            } else if ("music".equals(string)) {
                String string3 = bundle2.getString("data", "");
                String string4 = bundle2.getString("musicProvider", "");
                long jElapsedRealtime = SystemClock.elapsedRealtime() - bundle2.getLong("queuedAt", -15001L);
                if (jElapsedRealtime < 0 || jElapsedRealtime > 15000 || MusicPolicy.song(string3) == null) {
                    return refused("歌曲请求无效或已过期");
                }
                if (!bundleStatus2.getBoolean("musicHook") || !string4.equals(appConfigLoad3.musicProvider) || !MusicRouter.available(context, string4)) {
                    return refused("所选音乐应用未就绪");
                }
                if (!BridgeStore.firstRequest(string2)) {
                    Bundle bundle6 = new Bundle();
                    bundle6.putBoolean("accepted", true);
                    return bundle6;
                }
                try {
                    AssistantService.music(context, string4, string3, string2);
                } catch (Exception e3) {
                    BridgeStore.releaseRequest(string2);
                    return refused("音乐助手未能启动");
                }
            } else {
                if (!"nav".equals(string)) {
                    return refused("不支持的请求类型");
                }
                synchronized (NAV_ADMISSION) {
                    String string5 = bundle2.getString("event", "");
                    String string6 = bundle2.getString("data", "");
                    if (string5.length() <= 120 && string6.length() <= 16384) {
                        if (!bundleStatus2.getBoolean("navHook")) {
                            return refused("导航分流尚未就绪");
                        }
                        long jEpoch = NavAutoSession.epoch();
                        Navigator.Result resultValidate = Navigator.validate(context, appConfigLoad3.navPackage, string5, string6);
                        if (!resultValidate.accepted) {
                            return refused(resultValidate.message);
                        }
                        try {
                            JSONObject jSONObjectObject = NavProtocol.object(string6);
                            boolean zIsConversationControl = Navigator.isConversationControl(string5, jSONObjectObject);
                            boolean zIsNewNavigation = Navigator.isNewNavigation(string5, jSONObjectObject);
                            if (zIsConversationControl || zIsNewNavigation) {
                                jSONObjectObject.put("navEpoch", Long.MAX_VALUE);
                                if (jSONObjectObject.toString().length() > 16384) {
                                    return refused("导航请求过长");
                                }
                            }
                            if (zIsConversationControl) {
                                if (jEpoch != NavAutoSession.epoch()) {
                                    return refused("地图会话已更新，请重新选择");
                                }
                                jSONObjectObject.put("navEpoch", jEpoch);
                                string6 = jSONObjectObject.toString();
                            }
                            if (!BridgeStore.firstRequest(string2)) {
                                Bundle bundle7 = new Bundle();
                                bundle7.putBoolean("accepted", true);
                                return bundle7;
                            }
                            if (zIsNewNavigation) {
                                try {
                                    long jResetIfCurrent = NavAutoSession.resetIfCurrent(jEpoch);
                                    if (jResetIfCurrent < 0) {
                                        BridgeStore.releaseRequest(string2);
                                        return refused("导航会话已更新，请重新发起");
                                    }
                                    jSONObjectObject.put("navEpoch", jResetIfCurrent);
                                    string6 = jSONObjectObject.toString();
                                } catch (Exception e4) {
                                    if (z) {
                                        BridgeStore.releaseRequest(string2);
                                    }
                                    return refused("导航会话标识无效");
                                }
                            }
                            try {
                                AssistantService.navigate(context, string5, string6, string2, bundle2.getBoolean("externalTurn", "g3.asr.navigate".equals(string5) || "g3.asr.nav.control".equals(string5)));
                            } catch (Exception e5) {
                                BridgeStore.releaseRequest(string2);
                                return refused("导航助手未能启动");
                            }
                        } catch (Exception e6) {
                            z = false;
                        }
                    }
                    return refused("导航请求过长");
                }
            }
            Bundle bundle8 = new Bundle();
            bundle8.putBoolean("accepted", true);
            bundle8.putString("message", "请求已接受，实际结果随后更新");
            return bundle8;
        }
        throw new IllegalArgumentException("Unknown bridge method");
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return "vnd.android.cursor.item/vnd.p5home.event";
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }
}
