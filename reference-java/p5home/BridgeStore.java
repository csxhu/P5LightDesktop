package com.local.p5home;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.local.p5home.NavAutoSession;
import java.util.ArrayDeque;
import java.util.LinkedHashMap;
import java.util.UUID;

/* loaded from: classes.dex */
public final class BridgeStore {
    private static final ArrayDeque<Bundle> replies = new ArrayDeque<>();
    private static final LinkedHashMap<String, Long> seen = new LinkedHashMap<>();
    private static final Object LOCK = new Object();
    private static final String[] COUNTERS = {"asrCalls", "busCalls", "navCalls", "qaAccepted", "qaRefused", "navAccepted", "navRefused", "replyDispatched", "replyFailed", "sessionEndRequests", "sessionEnded", "sessionEndFailed", "wakeHits", "musicAccepted", "musicRefused"};
    private static final String[] CODES = {"qaCode", "navCode", "replyCode", "sessionCode", "ttsCode", "turnCode", "soloCode", "hookBuild", "wakeCode", "displayCode", "musicCode"};

    private static SharedPreferences p(Context context) {
        return context.createDeviceProtectedStorageContext().getSharedPreferences("bridge", 0);
    }

    static void heartbeat(Context context, Bundle bundle) {
        String str = "";
        String string = bundle.getString("phase", "");
        if (!string.matches("[A-Za-z0-9_.-]{1,100}")) {
            string = "HOOK_STATUS";
        }
        SharedPreferences.Editor editorPutBoolean = p(context).edit().putLong("hookLastSeen", System.currentTimeMillis()).putString("hookMessage", string).putBoolean("firmwareMatched", bundle.getBoolean("firmwareMatched", false)).putBoolean("asrHook", bundle.getBoolean("asrHook", false)).putBoolean("navHook", bundle.getBoolean("navHook", false)).putBoolean("navTurnHook", bundle.getBoolean("navTurnHook", false)).putBoolean("ttsHook", bundle.getBoolean("ttsHook", false)).putBoolean("sessionHook", bundle.getBoolean("sessionHook", false)).putBoolean("musicHook", bundle.getBoolean("musicHook", false)).putBoolean("transcriptReady", bundle.getBoolean("transcriptReady", false)).putInt("hookPid", Math.max(0, bundle.getInt("hookPid", 0))).putBoolean("soloRequestActive", bundle.getBoolean("soloRequestActive", false)).putBoolean("continuousSupported", bundle.getBoolean("continuousSupported", false)).putBoolean("continuousEnabled", bundle.getBoolean("continuousEnabled", false));
        for (String str2 : COUNTERS) {
            editorPutBoolean.putLong(str2, Math.max(0L, bundle.getLong(str2, 0L)));
        }
        for (String str3 : CODES) {
            String string2 = bundle.getString(str3, "");
            if (!string2.matches("[A-Za-z0-9_.-]{0,100}")) {
                string2 = "INVALID_CODE";
            }
            editorPutBoolean.putString(str3, string2);
        }
        String strReplace = bundle.getString("navTrace", "").replace("\\/", "/");
        if (strReplace.length() <= 2048 && strReplace.matches("[A-Za-z0-9_\\[\\]{}:,./\" -]*")) {
            str = strReplace;
        }
        editorPutBoolean.putString("navTrace", str);
        editorPutBoolean.putInt("navTraceHooks", Math.max(0, Math.min(2, bundle.getInt("navTraceHooks", 0))));
        editorPutBoolean.putInt("wakeWordCount", Math.max(0, Math.min(4, bundle.getInt("wakeWordCount", 0))));
        editorPutBoolean.apply();
    }

    public static Bundle status(Context context) {
        migrateOperationState(context);
        SharedPreferences sharedPreferencesP = p(context);
        Bundle bundle = new Bundle();
        long j = sharedPreferencesP.getLong("hookLastSeen", 0L);
        long jCurrentTimeMillis = System.currentTimeMillis() - j;
        boolean z = true;
        boolean z2 = j > 0 && jCurrentTimeMillis >= 0 && jCurrentTimeMillis < 30000 && sharedPreferencesP.getBoolean("firmwareMatched", false);
        bundle.putBoolean("hookReady", z2 && sharedPreferencesP.getBoolean("sessionHook", false) && (sharedPreferencesP.getBoolean("asrHook", false) || sharedPreferencesP.getBoolean("navHook", false)));
        String[] strArr = {"asrHook", "navHook", "navTurnHook", "ttsHook", "sessionHook", "transcriptReady", "musicHook"};
        for (int i = 0; i < 7; i++) {
            String str = strArr[i];
            bundle.putBoolean(str, z2 && sharedPreferencesP.getBoolean(str, false));
        }
        bundle.putBoolean("soloRequestActive", z2 && sharedPreferencesP.getBoolean("soloRequestActive", false));
        bundle.putBoolean("continuousSupported", z2 && sharedPreferencesP.getBoolean("continuousSupported", false));
        bundle.putBoolean("continuousEnabled", z2 && sharedPreferencesP.getBoolean("continuousEnabled", false));
        boolean z3 = bundle.getBoolean("ttsHook");
        boolean yVar = SpeechOutput.get(context).ready();
        bundle.putBoolean("nativeTtsHook", z3);
        bundle.putBoolean("speechOutputReady", yVar);
        if (!z3 && !yVar) {
            z = false;
        }
        bundle.putBoolean("ttsHook", z);
        bundle.putLong("hookLastSeen", j);
        bundle.putString("hookMessage", z2 ? sharedPreferencesP.getString("hookMessage", "") : "尚未收到小P模块心跳；请在 LSPosed 启用并重启小P");
        bundle.putInt("hookPid", z2 ? sharedPreferencesP.getInt("hookPid", 0) : 0);
        for (String str2 : COUNTERS) {
            bundle.putLong(str2, sharedPreferencesP.getLong(str2, 0L));
        }
        for (String str3 : CODES) {
            bundle.putString(str3, sharedPreferencesP.getString(str3, ""));
        }
        bundle.putString("navTrace", z2 ? sharedPreferencesP.getString("navTrace", "") : "");
        bundle.putInt("navTraceHooks", z2 ? sharedPreferencesP.getInt("navTraceHooks", 0) : 0);
        bundle.putInt("wakeWordCount", z2 ? sharedPreferencesP.getInt("wakeWordCount", 0) : 0);
        bundle.putString("rootState", sharedPreferencesP.getString("rootState", ""));
        bundle.putString("rootError", sharedPreferencesP.getString("rootError", ""));
        bundle.putString("requestState", sharedPreferencesP.getString("requestState", "尚无请求"));
        bundle.putString("lastAnswer", sharedPreferencesP.getString("lastAnswer", ""));
        bundle.putString("lastError", sharedPreferencesP.getString("lastError", ""));
        synchronized (LOCK) {
            bundle.putInt("pendingReplies", replies.size());
        }
        return bundle;
    }

    static boolean firstRequest(String str) {
        synchronized (LOCK) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            LinkedHashMap<String, Long> linkedHashMap = seen;
            Long l = linkedHashMap.get(str);
            if (l != null && jCurrentTimeMillis - l.longValue() < 120000) {
                return false;
            }
            linkedHashMap.put(str, Long.valueOf(jCurrentTimeMillis));
            while (true) {
                LinkedHashMap<String, Long> linkedHashMap2 = seen;
                if (linkedHashMap2.size() <= 64) {
                    return true;
                }
                linkedHashMap2.remove(linkedHashMap2.keySet().iterator().next());
            }
        }
    }

    static void releaseRequest(String str) {
        synchronized (LOCK) {
            seen.remove(str);
        }
    }

    public static void update(Context context, String str, String str2, String str3) {
        SharedPreferences.Editor editorEdit = p(context).edit();
        if (str == null) {
            str = "";
        }
        SharedPreferences.Editor editorPutString = editorEdit.putString("requestState", str);
        if (str3 == null) {
            str3 = "";
        }
        SharedPreferences.Editor editorPutString2 = editorPutString.putString("lastError", str3);
        if (str2 != null) {
            if (str2.length() > 1200) {
                str2 = str2.substring(0, 1200);
            }
            editorPutString2.putString("lastAnswer", str2);
        }
        editorPutString2.apply();
        context.getContentResolver().notifyChange(ConfigStore.EVENTS, null);
    }

    public static void rootUpdate(Context context, String str, String str2) {
        migrateOperationState(context);
        SharedPreferences.Editor editorEdit = p(context).edit();
        if (str == null) {
            str = "";
        }
        SharedPreferences.Editor editorPutString = editorEdit.putString("rootState", str);
        if (str2 == null) {
            str2 = "";
        }
        editorPutString.putString("rootError", str2).apply();
        context.getContentResolver().notifyChange(ConfigStore.EVENTS, null);
    }

    private static void migrateOperationState(Context context) {
        synchronized (LOCK) {
            SharedPreferences sharedPreferencesP = p(context);
            if (sharedPreferencesP.getInt("statusSchema", 0) >= 2) {
                return;
            }
            String string = sharedPreferencesP.getString("requestState", "");
            SharedPreferences.Editor editorPutInt = sharedPreferencesP.edit().putInt("statusSchema", 2);
            if (string.equals("原车回退未完成") || string.equals("已恢复原车默认桌面") || string.equals("轻桌面已设为默认") || string.equals("桌面切换未完成") || string.startsWith("正在检查原地图") || string.startsWith("正在设置轻桌面") || string.startsWith("正在停止旧桌面") || string.startsWith("正在退出原地图")) {
                editorPutInt.putString("rootState", string).putString("rootError", sharedPreferencesP.getString("lastError", "")).putString("requestState", "等待下一次语音请求").putString("lastError", "");
            }
            editorPutInt.apply();
        }
    }

    public static void enqueueReply(Context context, String str, String str2, String str3, String str4) {
        enqueueReply(context, str, str2, str3, str4, "");
    }

    public static void enqueueReply(Context context, String str, String str2, String str3, String str4, String str5) {
        enqueue(context, str, str2, str3, str4, str5, "result".equals(str) ? NavAutoSession.epoch() : -1L);
    }

    static void enqueueRouteCountReply(Context context, String str, String str2, String str3, long j) {
        enqueue(context, "support", str, str2, str3, "", j);
    }

    private static void enqueue(Context context, String str, String str2, String str3, String str4, String str5, long j) {
        if (str4 == null) {
            str4 = "";
        }
        if (str4.length() > 1200) {
            str4 = str4.substring(0, 1200);
        }
        Bundle bundle = new Bundle();
        bundle.putString("id", UUID.randomUUID().toString());
        bundle.putString("kind", str == null ? "speech" : str);
        bundle.putString("event", str2 == null ? "" : str2);
        if (str3 == null) {
            str3 = "";
        }
        bundle.putString("data", str3);
        bundle.putString("text", str4);
        bundle.putLong("created", System.currentTimeMillis());
        if (str5 == null) {
            str5 = "";
        }
        bundle.putString("requestId", str5);
        if ("result".equals(str) || ("support".equals(str) && "native://navi.select.route.count".equals(str2))) {
            bundle.putLong("navEpoch", j);
        }
        synchronized (LOCK) {
            while (true) {
                ArrayDeque<Bundle> arrayDeque = replies;
                if (arrayDeque.size() >= 8) {
                    arrayDeque.removeFirst();
                } else {
                    arrayDeque.addLast(bundle);
                }
            }
        }
        context.getContentResolver().notifyChange(ConfigStore.EVENTS, null);
    }

    static Bundle nextReply() {
        return NavAutoSession.withSessionSnapshot(new NavAutoSession.BridgeRead() { // from class: com.local.p5home.BridgeStore$$ExternalSyntheticLambda0
            @Override // com.local.p5home.NavAutoSession.BridgeRead
            public final Bundle get(long j, String str) {
                return BridgeStore.lambda$nextReply$0(j, str);
            }
        });
    }

    static /* synthetic */ Bundle lambda$nextReply$0(long j, String str) {
        ArrayDeque<Bundle> arrayDeque;
        Bundle bundle;
        synchronized (LOCK) {
            while (true) {
                arrayDeque = replies;
                if (!arrayDeque.isEmpty()) {
                    Bundle bundlePeekFirst = arrayDeque.peekFirst();
                    String string = bundlePeekFirst.getString("kind", "");
                    String string2 = bundlePeekFirst.getString("event", "");
                    boolean zEquals = "result".equals(string);
                    boolean zEquals2 = true;
                    boolean z = "support".equals(string) && "native://navi.select.route.count".equals(string2);
                    if (!zEquals) {
                        zEquals2 = "route_list".equals(str);
                    } else if (!"searching".equals(str) && !"poi_list".equals(str)) {
                        zEquals2 = false;
                    }
                    if (System.currentTimeMillis() - bundlePeekFirst.getLong("created") <= 60000 && ((!zEquals && !z) || (zEquals2 && bundlePeekFirst.getLong("navEpoch", -1L) == j))) {
                        break;
                    }
                    arrayDeque.removeFirst();
                } else {
                    break;
                }
            }
            bundle = arrayDeque.isEmpty() ? new Bundle() : new Bundle(arrayDeque.peekFirst());
        }
        return bundle;
    }

    static void ack(Context context, String str, String str2) {
        String string;
        String str3;
        String str4;
        synchronized (LOCK) {
            ArrayDeque<Bundle> arrayDeque = replies;
            string = (arrayDeque.isEmpty() || !arrayDeque.peekFirst().getString("id").equals(str)) ? null : arrayDeque.removeFirst().getString("kind", "");
        }
        if ("speech".equals(string)) {
            if ("dispatched".equals(str2)) {
                str3 = "已提交小P播报";
                str4 = "";
            } else {
                str3 = "小P投递未完成";
                str4 = "请查看模块状态并重启小P后重试";
            }
            update(context, str3, null, str4);
        }
    }

    private BridgeStore() {
    }
}
