package com.local.p5home;

import android.content.Context;
import android.content.Intent;
import android.app.ActivityOptions;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import java.io.File;
import java.io.FileInputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.security.MessageDigest;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import org.json.JSONArray;

public final class P5SpeechBridge {
    private static final Uri BRIDGE = Uri.parse("content://com.local.p5home.bridge");
    private static final String SPEECH_APK = "a9a2fb27edb76f6ed0c171b4db662f36d7cd2c3224cb6f6270f90d093eb68e5f";
    private final Context app;
    private final ClassLoader loader;
    private final ScheduledExecutorService worker = Executors.newSingleThreadScheduledExecutor();
    private Object wakeWords;
    private Method wakeUpdate;
    private Method wakeCode;
    private Method wakeCount;
    private Method stopDialog;
    private Field sdkField;
    private Field sdkDmField;
    private Field dmContextField;
    private Field engineField;
    private Method singleton;
    private Method asrJson;
    private Method speechConfigInstance;
    private Method speechConfigGet;
    private Method speechConfigSet;
    private Field wakeReason;
    private Field wakeWord;
    private Field wakeAllowed;
    private Method customWake;
    private Constructor<?> customWakeData;
    private Field wakeHelperField;
    private Method changeWakeWords;
    private volatile String appliedWakeWords = "";
    private volatile long armedAt;
    private volatile Object ownedNluContext;
    private volatile long ownedNluUntil;
    private final Object turnLock = new Object();
    private long turnNumber;
    private long lastWakeAt;
    private long submittedTurn = -1;
    private String lastRecordId = "";
    private long lastSubmittedAt;
    private volatile boolean enabled;
    private volatile boolean voiceRouting;
    private volatile boolean navAvailable;
    private volatile String navPackage = "";
    private volatile String musicProvider = "system";
    private volatile boolean musicAvailable;
    private String lastMusicRecordId = "";
    private long lastMusicAt;
    private volatile boolean customWakeUseNative;
    private volatile boolean wakeRoutingActive;
    private volatile String prefix = "";
    private volatile String primaryText = "";
    private volatile String primaryPinyin = "";
    private volatile String[] customTexts = new String[0];
    private volatile String[] customPinyins = new String[0];
    private volatile String qaCode = "QA_IDLE";
    private volatile String sessionCode = "SESSION_IDLE";
    private volatile long wakeHits;
    private volatile long asrCalls;
    private volatile long qaAccepted;
    private volatile long qaRefused;
    private volatile String lastNavRecordId = "";
    private volatile long lastNavAt;
    private long submittedNavTurn = -1;

    public P5SpeechBridge(Context context, ClassLoader classLoader) {
        app = context;
        loader = classLoader;
    }

    public void start() {
        worker.execute(new Runnable() {
            @Override public void run() {
                try {
                    if (!trustedCode()) {
                        log("P5_GUARD_REJECTED");
                        return;
                    }
                    install();
                    worker.scheduleWithFixedDelay(new Runnable() {
                        @Override public void run() { refresh(); }
                    }, 0, 5, TimeUnit.SECONDS);
                } catch (Throwable error) {
                    log("P5_INSTALL_FAILED_" + error.getClass().getSimpleName());
                }
            }
        });
    }

    private void install() throws Exception {
        Class<?> server = type("com.xiaopeng.carspeechservice.h.g");
        Class<?> sdk = type("com.xiaopeng.carspeechservice.g.b");
        Class<?> engine = type("com.xiaopeng.carspeechservice.n.a");
        Class<?> result = type("com.xiaopeng.carspeechservice.bean.asr.b");
        Class<?> wakeResult = type("com.xiaopeng.speech.jarvisproto.WakeupResult");
        Class<?> wakeBase = type("com.xiaopeng.speech.jarvisproto.WakeupResultBase");
        Class<?> dm = type("com.xiaopeng.carspeechservice.b.f");
        singleton = method(server, "a");
        sdkField = field(server, "c", sdk);
        Class<?> sdkDm = type("com.xiaopeng.carspeechservice.b.d");
        Class<?> dmContext = type("com.xiaopeng.carspeechservice.b.b");
        sdkDmField = field(sdk, "i", sdkDm);
        dmContextField = field(sdkDm, "a", dmContext);
        engineField = field(sdk, "e", type("com.xiaopeng.carspeechservice.n.c"));
        stopDialog = method(engine, "stopDialog");
        customWake = method(engine, "onCustomWakeupWordData",
                type("com.xiaopeng.carspeechservice.bean.g"));
        customWakeData = type("com.xiaopeng.carspeechservice.bean.g").getConstructor(String.class);
        wakeHelperField = field(engine, "B", type("com.xiaopeng.carspeechservice.n.d"));
        changeWakeWords = method(type("com.xiaopeng.carspeechservice.n.d"), "a",
                String.class, String[].class, String[].class, String[].class,
                String[].class, String[][].class, int.class);
        Class<?> speechConfig = type("com.xiaopeng.speech.common.util.SPConfig");
        speechConfigInstance = method(speechConfig, "getInstance");
        speechConfigGet = method(speechConfig, "getString", String.class, String.class);
        speechConfigSet = method(speechConfig, "setStringSync", String.class, String.class);
        asrJson = method(result, "getJsonData");
        wakeReason = field(wakeBase, "reason", String.class);
        wakeWord = field(wakeBase, "word", String.class);
        wakeAllowed = field(wakeBase, "canWakeup", boolean.class);
        Class<?> listener = Class.forName("com.local.p5home.HookWakeWords$Listener", false,
                P5SpeechBridge.class.getClassLoader());
        Class<?> words = Class.forName("com.local.p5home.HookWakeWords", false,
                P5SpeechBridge.class.getClassLoader());
        Constructor<?> ctor = words.getDeclaredConstructor(ClassLoader.class, listener);
        ctor.setAccessible(true);
        Object callback = Proxy.newProxyInstance(P5SpeechBridge.class.getClassLoader(),
                new Class<?>[]{listener}, new InvocationHandler() {
                    @Override public Object invoke(Object proxy, Method method, Object[] args) {
                        if ("onWake".equals(method.getName())) {
                            if (enabled && !customWakeUseNative && Boolean.TRUE.equals(args[0])) {
                                armedAt = SystemClock.elapsedRealtime();
                                wakeHits++;
                                log("P5_WAKE_HIT");
                            }
                        }
                        return null;
                    }
                });
        wakeWords = ctor.newInstance(loader, callback);
        Method wakeInstall = method(words, "install");
        wakeUpdate = method(words, "update", String.class, boolean.class);
        wakeCode = method(words, "code");
        wakeCount = method(words, "registeredCount");
        wakeInstall.invoke(wakeWords);
        XposedBridge.hookMethod(method(type("com.xiaopeng.carspeechservice.b.c"),
                "a", wakeResult), new XC_MethodHook() {
            @Override protected void beforeHookedMethod(MethodHookParam param) {
                try {
                    Object event = param.args[0];
                    if (enabled && !customWakeUseNative && wakeAllowed.getBoolean(event)
                            && "major".equals(wakeReason.get(event))
                            && isCustomWord((String) wakeWord.get(event))
                            && modelReplyActive()) {
                        param.setResult(null);
                        log("P5_BUSY_WAKE_SUPPRESSED");
                    }
                } catch (Exception error) {
                    log("P5_BUSY_WAKE_CHECK_FAILED");
                }
            }
            @Override protected void afterHookedMethod(MethodHookParam param) {
                try {
                    Object event = param.args[0];
                    if (!wakeRoutingActive || !wakeAllowed.getBoolean(event)
                            || !"major".equals(wakeReason.get(event))) return;
                    String word = (String) wakeWord.get(event);
                    if (isCustomWord(word)) {
                        if (!customWakeUseNative && modelReplyActive()) return;
                        synchronized (turnLock) {
                            turnNumber++;
                            lastWakeAt = SystemClock.elapsedRealtime();
                            armedAt = customWakeUseNative ? 0 : lastWakeAt;
                        }
                        wakeHits++;
                        log(customWakeUseNative ? "P5_CUSTOM_NATIVE_WAKE_HIT" : "P5_CUSTOM_MODEL_WAKE_HIT");
                    } else {
                        synchronized (turnLock) {
                            turnNumber++;
                            lastWakeAt = SystemClock.elapsedRealtime();
                            armedAt = 0;
                        }
                        log("P5_FACTORY_WAKE_PASSTHROUGH");
                    }
                } catch (Exception error) {
                    log("P5_WAKE_EVENT_FAILED_" + error.getClass().getSimpleName());
                }
            }
        });
        Method entry = method(dm, "a", result);
        XposedBridge.hookMethod(entry, new XC_MethodHook() {
            @Override protected void beforeHookedMethod(MethodHookParam param) {
                onAsr(param);
            }
        });
        XposedBridge.hookMethod(method(type("com.xiaopeng.carspeechservice.b.c"),
                "a", type("com.xiaopeng.carspeechservice.bean.a.h")),
                new XC_MethodHook() {
                    @Override protected void beforeHookedMethod(MethodHookParam param) {
                        if (param.thisObject == ownedNluContext
                                && SystemClock.elapsedRealtime() < ownedNluUntil) {
                            param.setResult(null);
                            log("P5_MODEL_NATIVE_NLU_SUPPRESSED");
                        }
                    }
                });
        log("P5_ASR_SESSION_INSTALLED");
    }

    private boolean isCustomWord(String word) {
        if (word == null) return false;
        String text = word.replace(" ", "");
        String pinyin = word.trim().replaceAll("\\s+", " ");
        String[] texts = customTexts;
        String[] pinyins = customPinyins;
        for (int i = 0; i < texts.length; i++) {
            if (texts[i].equals(text) || pinyins[i].equals(pinyin)) return true;
        }
        return false;
    }

    private void onAsr(XC_MethodHook.MethodHookParam param) {
        asrCalls++;
        if (!voiceRouting) return;
        try {
            String json = (String) asrJson.invoke(param.args[0]);
            if (json == null || json.length() > 8192) return;
            JSONObject asr = new JSONObject(json);
            if (asr.optBoolean("isError", true) || asr.optBoolean("isInterrupted", true)
                    || asr.optBoolean("isShouldInterrupt", true)) return;
            String text = asr.optString("text", "").trim();
            long now = SystemClock.elapsedRealtime();
            if (("qishui".equals(musicProvider) || "qishui_phone".equals(musicProvider)) && musicAvailable
                    && (prefix.isEmpty() || !text.startsWith(prefix)) && !modelReplyActive()) {
                Class<?> policy = Class.forName("com.local.p5home.MusicPolicy", false,
                        P5SpeechBridge.class.getClassLoader());
                Object song = method(policy, "fromAsr", String.class).invoke(null, text);
                if (song != null && submitMusic(param, asr, song, now)) return;
            }
            String destination = navigationDestination(text);
            if (destination != null && navAvailable && !isNativeMap(navPackage)
                    && (prefix.isEmpty() || !text.startsWith(prefix)) && !modelReplyActive()) {
                submitNavigation(param, asr, destination, now);
                return;
            }
            if (!enabled) return;
            boolean fromWake = armedAt > 0 && now - armedAt <= 15000;
            boolean fromPrefix = !prefix.isEmpty() && text.startsWith(prefix);
            if (!fromWake && !fromPrefix) return;
            String question = fromPrefix ? text.substring(prefix.length())
                    .replaceFirst("^[\\s，,:：。]+", "").trim() : text;
            if (question.isEmpty() || question.length() > 1000) return;
            if (modelReplyActive()) {
                param.setResult(null);
                armedAt = 0;
                try {
                    stopDialog.invoke(engine());
                } catch (Exception error) {
                    log("P5_BUSY_SESSION_END_FAILED");
                }
                log("P5_QA_BUSY_SUPPRESSED");
                return;
            }
            String recordId = asr.optString("recordId", "");
            if (recordId.isEmpty() || recordId.length() > 100) return;
            long turn;
            synchronized (turnLock) {
                turn = now - lastWakeAt <= 15000 ? turnNumber : 0;
                if ((turn > 0 && submittedTurn == turn) || (recordId.equals(lastRecordId)
                        && now - lastSubmittedAt < 120000)
                        || (!fromWake && now - lastSubmittedAt < 5000)) {
                    param.setResult(null);
                    log("P5_QA_DUPLICATE_SUPPRESSED");
                    return;
                }
                if (turn > 0) submittedTurn = turn;
            }
            Bundle request = new Bundle();
            request.putString("kind", "qa");
            request.putString("text", question);
            request.putString("requestId", "p5-" + Process.myPid() + "-" + turn + "-" + Integer.toHexString(recordId.hashCode()));
            request.putBoolean("externalTurn", true);
            Object nluContext = null;
            if (fromPrefix) {
                try {
                    nluContext = currentNluContext();
                } catch (Exception error) {
                    log("P5_NLU_CONTEXT_UNAVAILABLE");
                }
            }
            if (nluContext != null) {
                ownedNluContext = nluContext;
                ownedNluUntil = now + 8000;
            }
            Bundle ack = call("submit", request);
            if (ack == null || !ack.getBoolean("accepted", false)) {
                if (ownedNluContext == nluContext) ownedNluUntil = 0;
                synchronized (turnLock) {
                    if (turn > 0 && submittedTurn == turn) submittedTurn = -1;
                }
                qaRefused++;
                qaCode = "QA_ACK_REFUSED";
                log(qaCode);
                return;
            }
            qaAccepted++;
            qaCode = "QA_ACCEPTED";
            synchronized (turnLock) {
                lastRecordId = recordId;
                lastSubmittedAt = now;
                armedAt = 0;
            }
            param.setResult(null);
            try {
                Object engine = engine();
                if (engine == null) throw new IllegalStateException("engine");
                stopDialog.invoke(engine);
                sessionCode = "SESSION_END_REQUESTED";
            } catch (Exception error) {
                sessionCode = "SESSION_END_FAILED";
                log(sessionCode);
            }
            log(qaCode);
            heartbeat();
        } catch (Exception error) {
            synchronized (turnLock) {
                if (turnNumber > 0 && submittedTurn == turnNumber) submittedTurn = -1;
            }
            qaRefused++;
            qaCode = "QA_ASR_EXCEPTION";
            log(qaCode);
        }
    }

    private static boolean isNativeMap(String packageName) {
        return packageName.isEmpty() || "native".equals(packageName)
                || "com.xiaopeng.montecarlo".equals(packageName);
    }

    private static String navigationDestination(String text) {
        String destination = text.replaceFirst("[，。！？!?,]+$", "").trim()
                .replaceFirst("^(?:(?:请|麻烦)(?:你)?\\s*)?(?:(?:帮我|我要|我想)\\s*)?导航\\s*(?:到|去|至)\\s*", "");
        if (destination.equals(text.trim()) || destination.isEmpty() || destination.length() > 120
                || destination.matches(".*(?:然后|并且|顺便|同时|打开车|关闭车).*")) return null;
        return destination;
    }

    private void submitNavigation(XC_MethodHook.MethodHookParam param, JSONObject asr,
                                  String destination, long now) throws Exception {
        String recordId = asr.optString("recordId", "");
        if (recordId.isEmpty() || recordId.length() > 100) return;
        long turn;
        synchronized (turnLock) {
            turn = now - lastWakeAt <= 15000 ? turnNumber : 0;
            if ((turn > 0 && submittedNavTurn == turn)
                    || (recordId.equals(lastNavRecordId) && now - lastNavAt < 120000)) {
                param.setResult(null);
                log("P5_NAV_DUPLICATE_SUPPRESSED");
                return;
            }
        }
        if ("com.baidu.naviauto".equals(navPackage)) {
            // The ASR service owns the visible voice session. Launch here: forwarding
            // through the background P5Home provider loses Android's launch eligibility.
            if (!launchBaiduNavigation(destination)) return;
        } else {
            Bundle request = new Bundle();
            request.putString("kind", "nav");
            request.putString("event", "g3.asr.navigate");
            request.putString("data", new JSONObject().put("query", destination).toString());
            request.putString("requestId", "p5-nav-" + Process.myPid() + "-"
                    + Integer.toHexString(recordId.hashCode()));
            Bundle ack = call("submit", request);
            if (ack == null || !ack.getBoolean("accepted", false)) {
                log("P5_NAV_ACK_REFUSED");
                return;
            }
        }
        synchronized (turnLock) {
            if (turn > 0) submittedNavTurn = turn;
            lastNavRecordId = recordId;
            lastNavAt = now;
            armedAt = 0;
        }
        param.setResult(null);
        try {
            ownedNluContext = currentNluContext();
            ownedNluUntil = now + 8000;
            stopDialog.invoke(engine());
        } catch (Exception error) {
            log("P5_NAV_SESSION_END_FAILED");
        }
        log("com.baidu.naviauto".equals(navPackage)
                ? "P5_NAV_LAUNCH_REQUESTED_com.baidu.naviauto"
                : "P5_NAV_ACCEPTED_" + navPackage);
        heartbeat();
    }

    private boolean launchBaiduNavigation(String destination) {
        try {
            Uri uri = new Uri.Builder().scheme("baidumap").authority("map")
                    .path("/navi").appendQueryParameter("query", destination)
                    .appendQueryParameter("src", "andr.local.P5Home").build();
            Intent intent = new Intent(Intent.ACTION_VIEW, uri)
                    .setPackage("com.baidu.naviauto").addCategory(Intent.CATEGORY_DEFAULT)
                    .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
            if (app.getPackageManager().resolveActivity(intent, 0) == null) {
                log("P5_NAV_LAUNCH_UNAVAILABLE");
                return false;
            }
            ActivityOptions options = ActivityOptions.makeBasic();
            options.setLaunchDisplayId(0);
            app.startActivity(intent, options.toBundle());
            // startActivity returning is not proof of route calculation or display.
            return true;
        } catch (RuntimeException error) {
            log("P5_NAV_LAUNCH_FAILED_" + error.getClass().getSimpleName());
            return false;
        }
    }

    private boolean submitMusic(XC_MethodHook.MethodHookParam param, JSONObject asr,
                                Object song, long now) throws Exception {
        String recordId = asr.optString("recordId", "");
        if (recordId.isEmpty() || recordId.length() > 100) return false;
        if (recordId.equals(lastMusicRecordId) && now - lastMusicAt < 120000) {
            param.setResult(null);
            log("P5_MUSIC_DUPLICATE_SUPPRESSED");
            return true;
        }
        boolean phone = "qishui_phone".equals(musicProvider);
        Intent launch = phone ? PhoneMusicRequest.intent(song)
                : app.getPackageManager().getLaunchIntentForPackage("com.luna.music.car");
        if (launch == null) return false;
        launch.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        ActivityOptions options = ActivityOptions.makeBasic();
        options.setLaunchDisplayId(0);
        app.startActivity(launch, options.toBundle());
        if (!phone) {
        heartbeat();
        Bundle request = new Bundle();
        request.putString("kind", "music");
        request.putString("musicProvider", "qishui");
        request.putString("data", (String) method(song.getClass(), "json").invoke(song));
        request.putLong("queuedAt", now);
        request.putString("requestId", "p5-music-" + Process.myPid() + "-"
                + Integer.toHexString(recordId.hashCode()));
        Bundle ack = call("submit", request);
        if (ack == null || !ack.getBoolean("accepted", false)) {
            log("P5_MUSIC_ACK_REFUSED");
            return false;
        }
        }
        lastMusicRecordId = recordId;
        lastMusicAt = now;
        armedAt = 0;
        param.setResult(null);
        try {
            ownedNluContext = currentNluContext();
            ownedNluUntil = now + 8000;
            stopDialog.invoke(engine());
        } catch (Exception error) {
            log("P5_MUSIC_SESSION_END_FAILED");
        }
        log(phone ? "P5_MUSIC_PHONE_REQUESTED" : "P5_MUSIC_SUBMITTED_qishui");
        return true;
    }

    private boolean modelReplyActive() {
        try {
            Bundle status = call("status", null);
            if (status == null) return false;
            String state = status.getString("requestState", "");
            return "正在等待模型回答".equals(state)
                    || "回答已生成，正在准备播报".equals(state)
                    || "正在播放语音".equals(state);
        } catch (Exception error) {
            return false;
        }
    }

    private void refresh() {
        try {
            Bundle config = call("config", null);
            if (config == null || config.getInt("schema") != 1) return;
            boolean nativeMode = config.getBoolean("customWakeUseNative", false);
            if (customWakeUseNative != nativeMode) armedAt = 0;
            customWakeUseNative = nativeMode;
            voiceRouting = config.getBoolean("voiceEnabled");
            navPackage = config.getString("navPackage", "");
            navAvailable = config.getBoolean("navAvailable", false);
            musicProvider = config.getString("musicProvider", "system");
            musicAvailable = config.getBoolean("musicAvailable", false);
            enabled = config.getBoolean("voiceEnabled") && config.getBoolean("doubaoEnabled")
                    && config.getBoolean("hasApiConfig");
            prefix = config.getString("prefix", "").trim();
            String configured = config.getString("modelWakeWords", "");
            boolean wakeEnabled = config.getBoolean("voiceEnabled")
                    && config.getBoolean("modelWakeEnabled") && (nativeMode || enabled);
            wakeRoutingActive = wakeEnabled;
            wakeUpdate.invoke(wakeWords, configured, false);
            String target = wakeEnabled ? configured : "";
            if (!target.equals(appliedWakeWords) && engine() != null) {
                if (wakeEnabled) {
                    Class<?> policy = Class.forName("com.local.p5home.WakeWordPolicy", false,
                            P5SpeechBridge.class.getClassLoader());
                    Method parse = method(policy, "parse", String.class);
                    List<?> parsed = (List<?>) parse.invoke(null, configured);
                    Object primary = parsed.get(0);
                    Class<?> word = primary.getClass();
                    Field text = field(word, "text", String.class);
                    Field pinyin = field(word, "pinyin", String.class);
                    Field threshold = field(word, "threshold", String.class);
                    String[] texts = new String[parsed.size()];
                    String[] pinyins = new String[parsed.size()];
                    for (int i = 0; i < parsed.size(); i++) {
                        texts[i] = (String) text.get(parsed.get(i));
                        pinyins[i] = (String) pinyin.get(parsed.get(i));
                    }
                    customTexts = texts;
                    customPinyins = pinyins;
                    primaryText = (String) text.get(primary);
                    primaryPinyin = (String) pinyin.get(primary);
                    JSONObject data = new JSONObject();
                    data.put("isXiaop", false);
                    data.put("words", text.get(primary));
                    data.put("pinyin", pinyin.get(primary));
                    data.put("threshold", threshold.get(primary));
                    customWake.invoke(engine(), customWakeData.newInstance(data.toString()));
                    restoreFactoryCloudWake();
                    log("P5_CUSTOM_MODEL_REQUESTED");
                } else if (!appliedWakeWords.isEmpty()) {
                    primaryText = "";
                    primaryPinyin = "";
                    customTexts = new String[0];
                    customPinyins = new String[0];
                    JSONObject data = new JSONObject();
                    data.put("isXiaop", true);
                    data.put("words", "\u4f60\u597d\u5c0fP");
                    data.put("pinyin", "ni hao xiao pi");
                    data.put("threshold", "0.31");
                    customWake.invoke(engine(), customWakeData.newInstance(data.toString()));
                    log("P5_FACTORY_MODEL_REQUESTED");
                }
                appliedWakeWords = target;
                if (wakeEnabled) {
                    worker.schedule(new Runnable() {
                        @Override public void run() {
                            try {
                                Object helper = wakeHelperField.get(engine());
                                changeWakeWords.invoke(helper, "major", null,
                                        new String[]{"\u4f60\u597d\u5c0fP"},
                                        new String[]{"ni hao xiao pi"},
                                        new String[]{"0.31"}, null, 1);
                                Class<?> policy = Class.forName("com.local.p5home.WakeWordPolicy", false,
                                        P5SpeechBridge.class.getClassLoader());
                                java.util.List<?> parsed = (java.util.List<?>) method(policy, "parse", String.class)
                                        .invoke(null, configured);
                                for (int i = 1; i < parsed.size(); i++) {
                                    Object word = parsed.get(i);
                                    Class<?> type = word.getClass();
                                    changeWakeWords.invoke(helper, "major", null,
                                            new String[]{(String) field(type, "text", String.class).get(word)},
                                            new String[]{(String) field(type, "pinyin", String.class).get(word)},
                                            new String[]{(String) field(type, "threshold", String.class).get(word)},
                                            null, 1);
                                }
                                registerSpeechAgentWords(parsed);
                                restoreFactoryCloudWake();
                                log("P5_CUSTOM_WORDS_REAPPLIED");
                                heartbeat();
                            } catch (Exception error) {
                                log("P5_CUSTOM_REAPPLY_FAILED_" + error.getClass().getSimpleName());
                            }
                        }
                    }, 1200, TimeUnit.MILLISECONDS);
                }
            }
            heartbeat();
        } catch (Exception error) {
            log("P5_REFRESH_FAILED_" + error.getClass().getSimpleName());
        }
    }

    private void registerSpeechAgentWords(List<?> parsed) throws Exception {
        Object helper = wakeHelperField.get(engine());
        Object agent = field(helper.getClass(), "a", type("com.xiaopeng.speech.SpeechAgent"))
                .get(helper);
        Method add = method(agent.getClass(), "addMainWakeupWords", String.class, boolean.class);
        if (parsed.size() > 1) {
            JSONArray pinyins = new JSONArray();
            JSONArray texts = new JSONArray();
            Class<?> word = parsed.get(0).getClass();
            Field text = field(word, "text", String.class);
            Field pinyin = field(word, "pinyin", String.class);
            for (int i = 1; i < parsed.size(); i++) {
                texts.put(text.get(parsed.get(i)));
                pinyins.put(pinyin.get(parsed.get(i)));
            }
            JSONObject custom = new JSONObject();
            custom.put("pinyin", pinyins);
            custom.put("words", texts);
            add.invoke(agent, custom.toString(), false);
        }
        JSONObject factory = new JSONObject();
        factory.put("pinyin", new JSONArray().put("ni hao xiao pi"));
        factory.put("words", new JSONArray().put("\u4f60\u597d\u5c0fP"));
        add.invoke(agent, factory.toString(), true);
        log("P5_AGENT_MAIN_WORDS_RESTORED");
    }

    private void heartbeat() {
        try {
            Bundle status = new Bundle();
            boolean sessionReady = engine() != null;
            status.putString("hookBuild", "p5-voice-20261113-phone1");
            status.putString("phase", sessionReady ? "HOOK_READY" : "HOOK_SESSION_WAIT");
            status.putBoolean("firmwareMatched", true);
            status.putBoolean("asrHook", true);
            status.putBoolean("sessionHook", sessionReady);
            status.putBoolean("ttsHook", false);
            status.putBoolean("navHook", voiceRouting);
            status.putBoolean("musicHook", voiceRouting);
            status.putInt("hookPid", Process.myPid());
            String code = (String) wakeCode.invoke(wakeWords);
            status.putString("wakeCode", !primaryText.isEmpty()
                    ? "WAKE_WORDS_DISPATCHED" : code);
            status.putInt("wakeWordCount", customTexts.length);
            status.putLong("wakeHits", wakeHits);
            status.putLong("asrCalls", asrCalls);
            status.putLong("qaAccepted", qaAccepted);
            status.putLong("qaRefused", qaRefused);
            status.putString("qaCode", qaCode);
            status.putString("sessionCode", sessionCode);
            call("heartbeat", status);
        } catch (Exception error) {
            log("P5_HEARTBEAT_FAILED_" + error.getClass().getSimpleName());
        }
    }

    private Object engine() throws Exception {
        Object sdk = sdkField.get(singleton.invoke(null));
        return sdk == null ? null : engineField.get(sdk);
    }

    private Object currentNluContext() throws Exception {
        Object sdk = sdkField.get(singleton.invoke(null));
        if (sdk == null) return null;
        Object dm = sdkDmField.get(sdk);
        return dm == null ? null : dmContextField.get(dm);
    }

    private void restoreFactoryCloudWake() throws Exception {
        Object config = speechConfigInstance.invoke(null);
        String key = "key.custom.wakeup.config";
        String saved = (String) speechConfigGet.invoke(config, key, "");
        if (saved == null || saved.isEmpty()) return;
        JSONObject root = new JSONObject(saved);
        root.getJSONObject("recog").getJSONObject("cloud")
                .put("wakeup_word", "\u4f60\u597d \u5c0f P");
        speechConfigSet.invoke(config, key, root.toString());
        log("P5_FACTORY_CLOUD_WAKE_RESTORED");
    }

    private Bundle call(String name, Bundle extras) {
        return app.getContentResolver().call(BRIDGE, name, null, extras);
    }

    private Class<?> type(String name) throws ClassNotFoundException {
        return Class.forName(name, false, loader);
    }

    private static Method method(Class<?> type, String name, Class<?>... args) throws Exception {
        Method method = type.getDeclaredMethod(name, args);
        method.setAccessible(true);
        return method;
    }

    private static Field field(Class<?> type, String name, Class<?> expected) throws Exception {
        Field field = type.getDeclaredField(name);
        if (field.getType() != expected) throw new NoSuchFieldException(name);
        field.setAccessible(true);
        return field;
    }

    private boolean trustedCode() throws Exception {
        if (!"com.xiaopeng.carspeechservice".equals(app.getPackageName())) return false;
        File apk = new File(app.getApplicationInfo().sourceDir);
        MessageDigest digest = MessageDigest.getInstance("SHA-256");
        try (FileInputStream stream = new FileInputStream(apk)) {
            byte[] buffer = new byte[32768];
            int size;
            while ((size = stream.read(buffer)) != -1) digest.update(buffer, 0, size);
        }
        byte[] bytes = digest.digest();
        StringBuilder hash = new StringBuilder(bytes.length * 2);
        for (byte value : bytes) hash.append(String.format("%02x", value & 255));
        return SPEECH_APK.equals(hash.toString());
    }

    private static void log(String message) {
        Log.i("P5Speech", message);
        XposedBridge.log("P5Speech " + message);
    }
}
