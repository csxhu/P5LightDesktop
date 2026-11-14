package com.local.p5home;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.widget.Toast;
import com.local.p5home.HookNavTurn;
import com.local.p5home.HookPolicy;
import com.local.p5home.HookSessions;
import com.local.p5home.HookWakeWords;
import com.local.p5home.MusicPolicy;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class HookRuntime {
    private static final Uri BASE = Uri.parse("content://com.local.p5home.bridge");
    private static final String CAR = "com.xiaopeng.carspeechservice";
    private final Context app;
    private volatile boolean asrHook;
    private volatile HookBindings bindings;
    private volatile boolean firmware;
    private volatile long heartbeatAt;
    private final ClassLoader loader;
    private boolean modelWake;
    private volatile boolean modelWakeAllowed;
    private long modelWakeAt;
    private volatile HookMusic music;
    private volatile boolean musicAvailable;
    private volatile boolean navHook;
    private volatile int navTraceHooks;
    private volatile HookNavTurn navTurn;
    private volatile boolean navTurnHook;
    private volatile HookSessions sessions;
    private volatile HookTranscript transcript;
    private volatile boolean tts;
    private volatile HookWakeWords wakeWords;
    private final ScheduledExecutorService worker = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: com.local.p5home.HookRuntime$$ExternalSyntheticLambda5
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return HookRuntime.lambda$new$0(runnable);
        }
    });
    private final Handler main = new Handler(Looper.getMainLooper());
    private final AtomicBoolean refreshQueued = new AtomicBoolean();
    private final AtomicLong sequence = new AtomicLong();
    private final String epoch = Long.toString(SystemClock.elapsedRealtime(), 36);
    private final HookPolicy.Accepted accepted = new HookPolicy.Accepted();
    private final HookPolicy.Replies replies = new HookPolicy.Replies();
    private final NavTrace navTrace = new NavTrace();
    private final Set<String> reported = new HashSet();
    private volatile HookPolicy.Config config = HookPolicy.Config.disabled(0);
    private volatile String musicProvider = "system";
    private final AtomicLong musicAccepted = new AtomicLong();
    private final AtomicLong musicRefused = new AtomicLong();
    private volatile String musicCode = "MUSIC_IDLE";
    private final Object wakeLock = new Object();
    private String modelWakeToken = "";
    private final AtomicLong wakeHits = new AtomicLong();
    private volatile long retiredNavEpoch = -1;
    private final Object ownerLock = new Object();
    private final AtomicLong asrCalls = new AtomicLong();
    private final AtomicLong busCalls = new AtomicLong();
    private final AtomicLong navCalls = new AtomicLong();
    private final AtomicLong qaAccepted = new AtomicLong();
    private final AtomicLong qaRefused = new AtomicLong();
    private final AtomicLong navAccepted = new AtomicLong();
    private final AtomicLong navRefused = new AtomicLong();
    private final AtomicLong replyDispatched = new AtomicLong();
    private final AtomicLong replyFailed = new AtomicLong();
    private final AtomicLong sessionEndRequests = new AtomicLong();
    private final AtomicLong sessionEnded = new AtomicLong();
    private final AtomicLong sessionEndFailed = new AtomicLong();
    private volatile String qaCode = "QA_IDLE";
    private volatile String navCode = "NAV_IDLE";
    private volatile String replyCode = "REPLY_IDLE";
    private volatile String sessionCode = "SESSION_IDLE";

    static /* synthetic */ Thread lambda$new$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "G3SpeechBridge");
        thread.setDaemon(true);
        return thread;
    }

    HookRuntime(Context context, ClassLoader classLoader) {
        this.app = context;
        this.loader = classLoader;
    }

    void start() {
        log("RUNTIME_START_REQUESTED");
        this.worker.execute(new Runnable() { // from class: com.local.p5home.HookRuntime$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m52lambda$start$1$comlocalg3homeHookRuntime();
            }
        });
    }

    /* renamed from: lambda$start$1$com-local-g3home-HookRuntime, reason: not valid java name */
    /* synthetic */ void m52lambda$start$1$comlocalg3homeHookRuntime() {
        log("WORKER_STARTED");
        this.firmware = guard();
        if (this.firmware) {
            try {
                log("GUARD_PASSED");
                this.bindings = new HookBindings(this.loader);
                log("CONTRACT_MATCHED");
                try {
                    this.sessions = new HookSessions(this.loader);
                    log("SESSION_CONTRACT_MATCHED");
                } catch (Exception | LinkageError e) {
                    this.sessionCode = "SESSION_INTERFACE_MISSING";
                    log(this.sessionCode);
                }
                install();
            } catch (Exception | LinkageError e2) {
                log("HOOK_CONTRACT_UNAVAILABLE");
            }
        } else {
            log("HOOK_GUARD_REJECTED");
        }
        if (this.firmware) {
            ContentObserver contentObserver = new ContentObserver(this.main) { // from class: com.local.p5home.HookRuntime.1
                @Override // android.database.ContentObserver
                public void onChange(boolean z, Uri uri) {
                    HookRuntime.this.refreshSoon();
                }
            };
            try {
                ContentResolver contentResolver = this.app.getContentResolver();
                Uri uri = BASE;
                contentResolver.registerContentObserver(uri.buildUpon().appendPath("config").build(), true, contentObserver);
                this.app.getContentResolver().registerContentObserver(uri.buildUpon().appendPath("events").build(), true, contentObserver);
            } catch (Exception e3) {
                log("HOOK_OBSERVER_UNAVAILABLE");
            }
        }
        refresh();
        this.worker.scheduleWithFixedDelay(new Runnable() { // from class: com.local.p5home.HookRuntime$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.refresh();
            }
        }, 5L, 5L, TimeUnit.SECONDS);
    }

    private boolean guard() {
        if (!CAR.equals(this.app.getPackageName()) || this.app.getApplicationInfo().uid != Process.myUid() || !OemSpeechIdentity.trusted(this.app, Process.myUid())) {
            log("HOOK_IDENTITY_UNCONFIRMED");
            return false;
        }
        if (OemSpeechIdentity.knownCode(this.app)) {
            return true;
        }
        log("HOOK_PRIVATE_IMPLEMENTATION_UNCONFIRMED");
        return false;
    }

    private void install() {
        try {
            this.music = new HookMusic(this.loader);
            log("HOOK_MUSIC_READY");
        } catch (Exception | LinkageError e) {
            log("HOOK_MUSIC_UNAVAILABLE");
        }
        try {
            HookWakeWords hookWakeWords = new HookWakeWords(this.loader, new HookWakeWords.Listener() { // from class: com.local.p5home.HookRuntime$$ExternalSyntheticLambda9
                @Override // com.local.p5home.HookWakeWords.Listener
                public final void onWake(boolean z) {
                    this.f$0.observeWake(z);
                }
            });
            hookWakeWords.install();
            this.wakeWords = hookWakeWords;
            log("HOOK_WAKE_WORDS_INSTALLED");
        } catch (Exception | LinkageError e2) {
            log("HOOK_WAKE_WORDS_UNAVAILABLE");
        }
        try {
            final HookNavTurn hookNavTurn = new HookNavTurn(this.loader, new HookNavTurn.Enabled() { // from class: com.local.p5home.HookRuntime$$ExternalSyntheticLambda10
                @Override // com.local.p5home.HookNavTurn.Enabled
                public final boolean get() {
                    return this.f$0.m46lambda$install$2$comlocalg3homeHookRuntime();
                }
            }, new HookNavTurn.Diagnostic() { // from class: com.local.p5home.HookRuntime$$ExternalSyntheticLambda11
                @Override // com.local.p5home.HookNavTurn.Diagnostic
                public final void code(String str) {
                    this.f$0.m47lambda$install$3$comlocalg3homeHookRuntime(str);
                }
            });
            XposedBridge.hookMethod(hookNavTurn.nluEntry, new XC_MethodHook() { // from class: com.local.p5home.HookRuntime.2
                protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                    HookSessions hookSessions = HookRuntime.this.sessions;
                    if (hookNavTurn.suppress(methodHookParam.thisObject, methodHookParam.args[0]) || ((hookSessions != null && hookSessions.suppressNativeResult(methodHookParam.thisObject, methodHookParam.args[0])) || HookRuntime.this.routeMusic(methodHookParam.thisObject, methodHookParam.args[0]))) {
                        methodHookParam.setResult((Object) null);
                    }
                }
            });
            this.navTurn = hookNavTurn;
            this.navTurnHook = true;
            log("HOOK_NAV_TURN_INSTALLED");
        } catch (Throwable th) {
            log("HOOK_NAV_TURN_UNAVAILABLE");
        }
        try {
            XposedBridge.hookMethod(this.bindings.asrEntry, new XC_MethodHook() { // from class: com.local.p5home.HookRuntime.3
                protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                    if (HookRuntime.this.navTurn != null) {
                        HookRuntime.this.navTurn.afterAsr(methodHookParam.args[0], methodHookParam.hasThrowable());
                    }
                }

                protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                    if (HookRuntime.this.sessions != null) {
                        HookRuntime.this.sessions.observe(methodHookParam.thisObject);
                    }
                    if (HookRuntime.this.navTurn != null) {
                        HookRuntime.this.navTurn.observe(methodHookParam.thisObject, methodHookParam.args[0]);
                    }
                    if (HookRuntime.this.routeAsr(methodHookParam.args[0])) {
                        methodHookParam.setResult((Object) null);
                    }
                }
            });
            this.asrHook = true;
            log("HOOK_ASR_INSTALLED");
        } catch (Throwable th2) {
            log("HOOK_ASR_UNAVAILABLE");
        }
        try {
            XposedBridge.hookMethod(this.bindings.busEntry, new XC_MethodHook() { // from class: com.local.p5home.HookRuntime.4
                protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                    if (HookRuntime.this.routeNav((String) methodHookParam.args[0], (String) methodHookParam.args[1])) {
                        methodHookParam.setResult((Object) null);
                    }
                }
            });
            this.navHook = true;
            log("HOOK_NAV_INSTALLED");
        } catch (Throwable th3) {
            log("HOOK_NAV_UNAVAILABLE");
        }
        traceNativePoint("com.xiaopeng.carspeechservice.f.e", "a", "com.xiaopeng.speech.common.bean.Value", "QUERY");
        traceNativePoint("com.xiaopeng.carspeechservice.g.a.b", "f", "void", "RESULT");
    }

    /* renamed from: lambda$install$2$com-local-g3home-HookRuntime, reason: not valid java name */
    /* synthetic */ boolean m46lambda$install$2$comlocalg3homeHookRuntime() {
        HookPolicy.Config config = this.config;
        return config.active(SystemClock.elapsedRealtime()) && !config.nativeNav() && config.navAvailable;
    }

    /* renamed from: lambda$install$3$com-local-g3home-HookRuntime, reason: not valid java name */
    /* synthetic */ void m47lambda$install$3$comlocalg3homeHookRuntime(String str) {
        this.navCode = str;
        log(str);
        diagnosticsSoon();
    }

    private void traceNativePoint(String str, String str2, String str3, final String str4) {
        try {
            Method declaredMethod = Class.forName(str, false, this.loader).getDeclaredMethod(str2, String.class, String.class);
            if (declaredMethod.getReturnType().getName().equals(str3)) {
                declaredMethod.setAccessible(true);
                XposedBridge.hookMethod(declaredMethod, new XC_MethodHook() { // from class: com.local.p5home.HookRuntime.5
                    protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) throws JSONException {
                        if (methodHookParam.args != null && methodHookParam.args.length == 2 && (methodHookParam.args[0] instanceof String)) {
                            HookRuntime.this.navTrace.observe(str4, (String) methodHookParam.args[0], methodHookParam.args[1] instanceof String ? (String) methodHookParam.args[1] : null, "RESULT".equals(str4) ? "REPLY" : "PASS");
                        }
                    }
                });
                this.navTraceHooks++;
            }
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean routeAsr(Object obj) throws JSONException {
        String str;
        this.asrCalls.incrementAndGet();
        HookSessions hookSessions = this.sessions;
        if (hookSessions != null) {
            hookSessions.observeAsr(obj);
        }
        HookBindings hookBindings = this.bindings;
        if (!this.firmware || !this.asrHook || hookBindings == null) {
            return false;
        }
        try {
            String str2 = (String) hookBindings.asrJson.invoke(obj, new Object[0]);
            if (str2 != null && str2.length() <= 8192) {
                JSONObject jSONObject = new JSONObject(str2);
                boolean z = true;
                boolean z2 = jSONObject.optBoolean("isError", true) || jSONObject.optBoolean("isShouldInterrupt", true) || jSONObject.optBoolean("isInterrupted", true);
                String strOptString = jSONObject.optString("text", "");
                if (this.config.prefix.isEmpty() || !strOptString.trim().startsWith(this.config.prefix)) {
                    z = false;
                }
                if (!z2 && !readConfig()) {
                    if (this.navTurn != null) {
                        this.navTurn.disable();
                    }
                    return false;
                }
                MusicPolicy.Song songFromAsr = (!z2 && this.config.active(SystemClock.elapsedRealtime()) && this.musicAvailable) ? MusicPolicy.fromAsr(strOptString) : null;
                if (songFromAsr != null) {
                    String strOptString2 = jSONObject.optString("recordId", "");
                    Bundle bundle = new Bundle();
                    bundle.putString("kind", "music");
                    bundle.putString("data", songFromAsr.json());
                    bundle.putString("musicProvider", this.musicProvider);
                    bundle.putLong("queuedAt", SystemClock.elapsedRealtime());
                    return submit("music-asr-" + HookPolicy.digest(strOptString2.isEmpty() ? songFromAsr.query() : strOptString2), strOptString2.isEmpty() ? 3000L : 60000L, bundle, true);
                }
                HookPolicy.Candidate candidateFinalText = HookPolicy.finalText(this.config, strOptString, true, z2, SystemClock.elapsedRealtime(), modelWakeForCurrentTurn());
                if (candidateFinalText == null) {
                    if (z) {
                        if (z2) {
                            str = "QA_INTERRUPTED";
                        } else if (!this.config.active(SystemClock.elapsedRealtime())) {
                            str = "QA_DISABLED_OR_STALE";
                        } else if (this.config.qa) {
                            str = !this.config.hasApi ? "QA_API_MISSING" : "QA_INPUT_REJECTED";
                        } else {
                            str = "QA_DISABLED";
                        }
                        refused("qa", str);
                    } else if (!z2) {
                        retireNavigation();
                    }
                    return false;
                }
                if ("qa".equals(candidateFinalText.kind) && !this.tts && !this.config.speechOutputReady) {
                    refused("qa", "QA_OUTPUT_NOT_READY");
                    return false;
                }
                if ("nav".equals(candidateFinalText.kind)) {
                    this.navCalls.incrementAndGet();
                }
                String strOptString3 = jSONObject.optString("recordId", "");
                String str3 = "asr-" + HookPolicy.digest((strOptString3.isEmpty() ? new StringBuilder().append(candidateFinalText.kind).append("\u0000").append(candidateFinalText.text) : new StringBuilder().append("record-").append(strOptString3)).toString());
                Bundle bundle2 = new Bundle();
                bundle2.putString("kind", candidateFinalText.kind);
                if ("qa".equals(candidateFinalText.kind)) {
                    bundle2.putString("text", candidateFinalText.text);
                    return submit(str3, strOptString3.isEmpty() ? 3000L : 60000L, bundle2, true);
                }
                if ("g3.asr.navigate".equals(candidateFinalText.event)) {
                    bundle2.putString("event", candidateFinalText.event);
                    bundle2.putString("data", new JSONObject().put("query", candidateFinalText.text).toString());
                    return submit(str3, strOptString3.isEmpty() ? 3000L : 60000L, bundle2, true);
                }
                bundle2.putString("event", candidateFinalText.event);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("action", candidateFinalText.text);
                jSONObject2.put("navEpoch", candidateFinalText.navEpoch);
                if (candidateFinalText.index > 0) {
                    jSONObject2.put("index", candidateFinalText.index);
                }
                bundle2.putString("data", jSONObject2.toString());
                return submit(str3, strOptString3.isEmpty() ? 3000L : 60000L, bundle2, true);
            }
            return false;
        } catch (Exception | LinkageError e) {
            log("HOOK_ASR_PASSTHROUGH");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean routeMusic(Object obj, Object obj2) {
        HookSessions.Snapshot snapshotCapture;
        String str;
        if (!this.firmware || this.music == null || this.sessions == null) {
            return false;
        }
        try {
            if (!readConfig() || !this.config.active(SystemClock.elapsedRealtime()) || !this.musicAvailable || "system".equals(this.musicProvider) || (snapshotCapture = this.sessions.capture()) == null || snapshotCapture.context != obj || (str = this.music.read(obj2, snapshotCapture.token)) == null) {
                return false;
            }
            Bundle bundle = new Bundle();
            bundle.putString("kind", "music");
            bundle.putString("data", str);
            bundle.putString("musicProvider", this.musicProvider);
            bundle.putLong("queuedAt", SystemClock.elapsedRealtime());
            return submit("music-" + snapshotCapture.generation + "-" + HookPolicy.digest(snapshotCapture.token + "\u0000" + str), 60000L, bundle, true);
        } catch (Exception | LinkageError e) {
            log("HOOK_MUSIC_PASSTHROUGH");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x000d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void observeWake(boolean r4) {
        /*
            r3 = this;
            java.lang.Object r0 = r3.wakeLock
            monitor-enter(r0)
            if (r4 == 0) goto Ld
            boolean r4 = r3.modelWakeAllowed     // Catch: java.lang.Throwable -> Lb
            if (r4 == 0) goto Ld
            r4 = 1
            goto Le
        Lb:
            r4 = move-exception
            goto L28
        Ld:
            r4 = 0
        Le:
            r3.modelWake = r4     // Catch: java.lang.Throwable -> Lb
            java.lang.String r4 = ""
            r3.modelWakeToken = r4     // Catch: java.lang.Throwable -> Lb
            long r1 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> Lb
            r3.modelWakeAt = r1     // Catch: java.lang.Throwable -> Lb
            boolean r4 = r3.modelWake     // Catch: java.lang.Throwable -> Lb
            if (r4 == 0) goto L23
            java.util.concurrent.atomic.AtomicLong r4 = r3.wakeHits     // Catch: java.lang.Throwable -> Lb
            r4.incrementAndGet()     // Catch: java.lang.Throwable -> Lb
        L23:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb
            r3.diagnosticsSoon()
            return
        L28:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.HookRuntime.observeWake(boolean):void");
    }

    private boolean modelWakeForCurrentTurn() {
        synchronized (this.wakeLock) {
            if (this.modelWake && this.modelWakeAllowed && this.sessions != null) {
                HookSessions.Snapshot snapshotCapture = this.sessions.capture();
                if (snapshotCapture == null) {
                    return false;
                }
                if (this.modelWakeToken.isEmpty()) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    long j = this.modelWakeAt;
                    if (jElapsedRealtime >= j && jElapsedRealtime - j <= 15000) {
                        this.modelWakeToken = snapshotCapture.token;
                    }
                    this.modelWake = false;
                    return false;
                }
                if (this.modelWakeToken.equals(snapshotCapture.token)) {
                    return true;
                }
                this.modelWake = false;
                this.modelWakeToken = "";
                return false;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean routeNav(String str, String str2) throws JSONException {
        String str3;
        String str4;
        this.busCalls.incrementAndGet();
        if (HookPolicy.canonicalNavigation(str) != null) {
            this.navCalls.incrementAndGet();
        }
        if (!this.firmware || !this.navHook) {
            return false;
        }
        str3 = "PASS";
        try {
            if (str2 != null) {
                try {
                    str4 = str2.isEmpty() ? "{}" : str2;
                } catch (Exception | LinkageError e) {
                    log("HOOK_NAV_PASSTHROUGH");
                    this.navTrace.observe("BUS", str, str2, "ERROR");
                    return false;
                }
            }
            String strNavigationEvent = HookPolicy.navigationEvent(this.config, str, str4, SystemClock.elapsedRealtime());
            if (strNavigationEvent == null) {
                if (HookPolicy.canonicalNavigation(str) != null) {
                    refused("nav", !this.config.active(SystemClock.elapsedRealtime()) ? "NAV_DISABLED_OR_STALE" : this.config.nativeNav() ? "NAV_NATIVE_PASSTHROUGH" : "NAV_INPUT_REJECTED");
                }
                return false;
            }
            new JSONObject(str4);
            Bundle bundle = new Bundle();
            bundle.putString("kind", "nav");
            bundle.putString("event", strNavigationEvent);
            bundle.putString("data", str4);
            boolean zSubmit = submit("nav-" + HookPolicy.digest(strNavigationEvent + "\u0000" + str4), 800L, bundle, "command://navi.control.close".equals(strNavigationEvent) || "command://navi.control.start".equals(strNavigationEvent) || "native://navi.poi.search".equals(strNavigationEvent));
            str3 = zSubmit ? "ACK" : "PASS";
            return zSubmit;
        } finally {
            this.navTrace.observe("BUS", str, str2, "PASS");
        }
    }

    private boolean submit(String str, long j, final Bundle bundle, final boolean z) {
        boolean zSubmit;
        synchronized (this.ownerLock) {
            zSubmit = this.accepted.submit(str, SystemClock.elapsedRealtime(), j, new HookPolicy.Submit() { // from class: com.local.p5home.HookRuntime$$ExternalSyntheticLambda3
                @Override // com.local.p5home.HookPolicy.Submit
                public final boolean send() {
                    return this.f$0.m54lambda$submit$5$comlocalg3homeHookRuntime(bundle, z);
                }
            });
        }
        return zSubmit;
    }

    /* renamed from: lambda$submit$5$com-local-g3home-HookRuntime, reason: not valid java name */
    /* synthetic */ boolean m54lambda$submit$5$comlocalg3homeHookRuntime(Bundle bundle, boolean z) throws Exception {
        HookSessions.Snapshot snapshotCapture;
        String str;
        String string = bundle.getString("kind", "");
        HookSessions hookSessions = this.sessions;
        boolean z2 = z && ("qa".equals(string) || "nav".equals(string) || "music".equals(string));
        bundle.putBoolean("externalTurn", z2);
        if (z2) {
            if (hookSessions == null) {
                str = "SESSION_INTERFACE_MISSING";
            } else {
                snapshotCapture = hookSessions.capture();
                if (snapshotCapture == null) {
                    str = "SESSION_NOT_ACTIVE";
                } else if (!hookSessions.externalReady(snapshotCapture)) {
                    str = "SOLO_UNSUPPORTED";
                }
            }
            refused(string, str);
            return false;
        }
        snapshotCapture = null;
        String str2 = "g3-" + Process.myPid() + "-" + this.epoch + "-" + this.sequence.incrementAndGet();
        bundle.putString("requestId", str2);
        try {
            Bundle bundleCall = call("submit", bundle);
            if (bundleCall == null || !bundleCall.getBoolean("accepted", false)) {
                refused(string, bundleCall == null ? "ACK_MISSING" : "ACK_REFUSED");
                return false;
            }
            if ("qa".equals(string)) {
                this.qaAccepted.incrementAndGet();
                this.qaCode = "QA_ACCEPTED";
            } else if ("music".equals(string)) {
                this.musicAccepted.incrementAndGet();
                this.musicCode = "MUSIC_ACCEPTED";
            } else {
                this.navAccepted.incrementAndGet();
                this.navCode = "NAV_ACCEPTED";
            }
            if (z2) {
                hookSessions.accept(str2, snapshotCapture, true);
                this.sessionEndRequests.incrementAndGet();
                this.sessionCode = "SESSION_END_REQUESTED";
                hookSessions.begin(str2, new HookSessions.Completion() { // from class: com.local.p5home.HookRuntime$$ExternalSyntheticLambda4
                    @Override // com.local.p5home.HookSessions.Completion
                    public final void done(boolean z3, String str3) {
                        this.f$0.m53lambda$submit$4$comlocalg3homeHookRuntime(z3, str3);
                    }
                });
            }
            diagnosticsSoon();
            return true;
        } catch (Exception e) {
            refused(string, "ACK_IPC_EXCEPTION");
            return false;
        }
    }

    /* renamed from: lambda$submit$4$com-local-g3home-HookRuntime, reason: not valid java name */
    /* synthetic */ void m53lambda$submit$4$comlocalg3homeHookRuntime(boolean z, String str) {
        this.sessionCode = str;
        (z ? this.sessionEnded : this.sessionEndFailed).incrementAndGet();
        log(str);
        diagnosticsSoon();
    }

    private void refused(String str, String str2) {
        if ("qa".equals(str)) {
            this.qaRefused.incrementAndGet();
            this.qaCode = str2;
        } else if ("music".equals(str)) {
            this.musicRefused.incrementAndGet();
            this.musicCode = str2;
        } else {
            this.navRefused.incrementAndGet();
            this.navCode = str2;
        }
        diagnosticsSoon();
    }

    private void diagnosticsSoon() {
        this.heartbeatAt = 0L;
        refreshSoon();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshSoon() {
        if (this.refreshQueued.compareAndSet(false, true)) {
            this.worker.execute(new Runnable() { // from class: com.local.p5home.HookRuntime$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m51lambda$refreshSoon$6$comlocalg3homeHookRuntime();
                }
            });
        }
    }

    /* renamed from: lambda$refreshSoon$6$com-local-g3home-HookRuntime, reason: not valid java name */
    /* synthetic */ void m51lambda$refreshSoon$6$comlocalg3homeHookRuntime() {
        this.refreshQueued.set(false);
        refresh();
    }

    private boolean readConfig() {
        try {
            Bundle bundleCall = call("config", null);
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (bundleCall != null && bundleCall.getInt("schema", 0) == 1 && bundleCall.getInt("appVersion", 0) == 1) {
                this.config = new HookPolicy.Config(bundleCall.getBoolean("voiceEnabled", false), bundleCall.getBoolean("doubaoEnabled", false), bundleCall.getBoolean("hasApiConfig", false), bundleCall.getString("prefix", ""), bundleCall.getString("navPackage", ""), jElapsedRealtime, bundleCall.getBoolean("speechOutputReady", false), bundleCall.getBoolean("navAvailable", false), bundleCall.getBoolean("oemMapAvailable", false), bundleCall.getString("navStage", "idle"), bundleCall.getLong("navEpoch", -1L), bundleCall.getInt("navPoiCount", 0), bundleCall.getInt("navRouteCount", 0));
                this.musicProvider = bundleCall.getString("musicProvider", "system");
                this.musicAvailable = bundleCall.getBoolean("musicAvailable", false);
                this.modelWakeAllowed = bundleCall.getBoolean("modelWakeEnabled", false) && this.config.voice && this.config.qa && this.config.hasApi;
                if (!this.modelWakeAllowed) {
                    synchronized (this.wakeLock) {
                        this.modelWake = false;
                        this.modelWakeToken = "";
                    }
                }
                HookWakeWords hookWakeWords = this.wakeWords;
                if (hookWakeWords != null) {
                    hookWakeWords.update(bundleCall.getString("modelWakeWords", ""), this.modelWakeAllowed);
                }
                if (!this.config.voice && this.navTurn != null) {
                    this.navTurn.disable();
                }
                log("CONFIG_ACK");
                return true;
            }
            throw new IllegalStateException("config_contract");
        } catch (Exception | LinkageError e) {
            this.config = HookPolicy.Config.disabled(SystemClock.elapsedRealtime());
            this.musicAvailable = false;
            this.modelWakeAllowed = false;
            synchronized (this.wakeLock) {
                this.modelWake = false;
                this.modelWakeToken = "";
            }
            if (this.navTurn == null) {
                return false;
            }
            this.navTurn.disable();
            return false;
        }
    }

    private void retireNavigation() {
        HookPolicy.Config config = this.config;
        if (config.nativeNav() || config.navEpoch < 0) {
            return;
        }
        this.retiredNavEpoch = config.navEpoch;
        Bundle bundle = new Bundle();
        bundle.putLong("navEpoch", config.navEpoch);
        try {
            call("retire_nav", bundle);
        } catch (Exception | LinkageError e) {
            log("NAV_RETIRE_IPC_FAILED");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refresh() {
        try {
            if (!this.firmware) {
                heartbeat("HOOK_GUARD_REJECTED");
                return;
            }
            if (!readConfig()) {
                throw new IllegalStateException("config_contract");
            }
            this.tts = this.bindings != null && this.bindings.ttsReady();
            if (!this.tts && this.bindings != null) {
                log(this.bindings.ttsCode());
            }
            heartbeat((this.asrHook && this.navHook) ? (this.tts || this.config.speechOutputReady) ? "HOOK_READY" : "HOOK_TTS_WAIT" : "HOOK_PARTIAL");
            for (int i = 0; i < 4 && pullReply(); i++) {
            }
        } catch (Exception | LinkageError e) {
            this.config = HookPolicy.Config.disabled(SystemClock.elapsedRealtime());
            this.tts = false;
            log("HOOK_IPC_UNAVAILABLE");
        }
    }

    private void heartbeat(String str) throws Exception {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.heartbeatAt == 0 || jElapsedRealtime - this.heartbeatAt >= 8000) {
            Bundle bundle = new Bundle();
            bundle.putString("hookBuild", "voice-20261027-music-a");
            bundle.putBoolean("musicHook", this.music != null);
            bundle.putLong("musicAccepted", this.musicAccepted.get());
            bundle.putLong("musicRefused", this.musicRefused.get());
            bundle.putString("musicCode", this.musicCode);
            bundle.putBoolean("transcriptReady", this.transcript != null);
            bundle.putString("displayCode", this.transcript == null ? "TRANSCRIPT_UNAVAILABLE" : this.transcript.code());
            bundle.putString("wakeCode", this.wakeWords == null ? "WAKE_WORDS_UNAVAILABLE" : this.wakeWords.code());
            bundle.putInt("wakeWordCount", this.wakeWords == null ? 0 : this.wakeWords.registeredCount());
            bundle.putLong("wakeHits", this.wakeHits.get());
            bundle.putString("phase", str);
            bundle.putBoolean("firmwareMatched", this.firmware);
            bundle.putBoolean("asrHook", this.asrHook);
            bundle.putBoolean("navHook", this.navHook);
            bundle.putBoolean("ttsHook", this.tts);
            bundle.putString("soloCode", this.sessions == null ? "SOLO_INTERFACE_MISSING" : this.sessions.soloCode());
            bundle.putBoolean("soloRequestActive", this.sessions != null && this.sessions.soloRequestActive());
            bundle.putString("navTrace", this.navTrace.snapshot());
            bundle.putInt("navTraceHooks", this.navTraceHooks);
            bundle.putBoolean("navTurnHook", this.navTurnHook);
            bundle.putBoolean("continuousSupported", this.sessions != null);
            bundle.putBoolean("continuousEnabled", this.sessions != null && this.sessions.continuousEnabled());
            bundle.putString("turnCode", this.sessions == null ? this.sessionCode : this.sessions.code());
            bundle.putBoolean("sessionHook", this.sessions != null);
            bundle.putInt("hookPid", Process.myPid());
            bundle.putLong("asrCalls", this.asrCalls.get());
            bundle.putLong("busCalls", this.busCalls.get());
            bundle.putLong("navCalls", this.navCalls.get());
            bundle.putLong("qaAccepted", this.qaAccepted.get());
            bundle.putLong("qaRefused", this.qaRefused.get());
            bundle.putLong("navAccepted", this.navAccepted.get());
            bundle.putLong("navRefused", this.navRefused.get());
            bundle.putLong("replyDispatched", this.replyDispatched.get());
            bundle.putLong("replyFailed", this.replyFailed.get());
            bundle.putLong("sessionEndRequests", this.sessionEndRequests.get());
            bundle.putLong("sessionEnded", this.sessionEnded.get());
            bundle.putLong("sessionEndFailed", this.sessionEndFailed.get());
            bundle.putString("qaCode", this.qaCode);
            bundle.putString("navCode", this.navCode);
            bundle.putString("replyCode", this.replyCode);
            bundle.putString("sessionCode", this.sessionCode);
            bundle.putString("ttsCode", this.bindings == null ? "TTS_INTERFACE_MISSING" : this.bindings.ttsCode());
            if (call("heartbeat", bundle) == null) {
                throw new IllegalStateException("heartbeat_contract");
            }
            this.heartbeatAt = jElapsedRealtime;
            log("HEARTBEAT_ACK");
        }
    }

    private boolean pullReply() throws Exception {
        Bundle bundleCall = call("next_reply", null);
        boolean zSpeak = false;
        if (bundleCall == null) {
            return false;
        }
        final String string = bundleCall.getString("id", "");
        if (string.isEmpty()) {
            return false;
        }
        if (!HookPolicy.safeId(string)) {
            log("HOOK_REPLY_ID_REJECTED");
            return false;
        }
        String strState = this.replies.state(string);
        if (strState != null) {
            if ("pending".equals(strState)) {
                return false;
            }
            ack(string, strState);
            return true;
        }
        if (!this.replies.begin(string)) {
            return false;
        }
        String string2 = bundleCall.getString("kind", "");
        final String string3 = bundleCall.getString("text", "");
        String string4 = bundleCall.getString("event", "");
        String string5 = bundleCall.getString("data", "");
        if (!HookPolicy.replyEnvelope(string, string2, string3, string4, string5) || !HookPolicy.replyEnabled(this.config, string2, SystemClock.elapsedRealtime())) {
            finishReply(string, false, "REPLY_POLICY_REJECTED");
            ack(string, "failed");
            return true;
        }
        if ("result".equals(string2) && (!readConfig() || !HookPolicy.searchReplyOwned(this.config, bundleCall.getLong("navEpoch", -1L), SystemClock.elapsedRealtime()))) {
            finishReply(string, false, "REPLY_SESSION_STALE");
            ack(string, "stale");
            return true;
        }
        if ("support".equals(string2) && "native://navi.select.route.count".equals(string4) && (!readConfig() || !HookPolicy.routeReplyOwned(this.config, bundleCall.getLong("navEpoch", -1L), SystemClock.elapsedRealtime()))) {
            finishReply(string, false, "REPLY_SESSION_STALE");
            ack(string, "stale");
            return true;
        }
        if ("session_end".equals(string2) || "turn_complete".equals(string2) || "turn_started".equals(string2)) {
            synchronized (this.ownerLock) {
                String string6 = bundleCall.getString("requestId", "");
                HookSessions hookSessions = this.sessions;
                if (HookPolicy.safeId(string6) && hookSessions != null) {
                    HookSessions.Completion completion = new HookSessions.Completion() { // from class: com.local.p5home.HookRuntime$$ExternalSyntheticLambda6
                        @Override // com.local.p5home.HookSessions.Completion
                        public final void done(boolean z, String str) {
                            this.f$0.m48lambda$pullReply$7$comlocalg3homeHookRuntime(string, z, str);
                        }
                    };
                    if ("turn_started".equals(string2)) {
                        hookSessions.started(string6, completion);
                    } else {
                        hookSessions.finish(string6, completion);
                    }
                    return false;
                }
                finishReply(string, false, "SESSION_REPLY_UNKNOWN");
                ack(string, "failed");
                return true;
            }
        }
        if ("transcript".equals(string2)) {
            synchronized (this.ownerLock) {
                String string7 = bundleCall.getString("requestId", "");
                HookSessions hookSessions2 = this.sessions;
                if (HookPolicy.safeId(string7) && hookSessions2 != null) {
                    hookSessions2.display(string7, string3, this.transcript, new HookSessions.Completion() { // from class: com.local.p5home.HookRuntime$$ExternalSyntheticLambda7
                        @Override // com.local.p5home.HookSessions.Completion
                        public final void done(boolean z, String str) {
                            this.f$0.m49lambda$pullReply$8$comlocalg3homeHookRuntime(string, z, str);
                        }
                    });
                    return false;
                }
                finishReply(string, false, "TRANSCRIPT_OWNER_UNKNOWN");
                ack(string, "failed");
                return true;
            }
        }
        if ("notice".equals(string2)) {
            if (!this.main.post(new Runnable() { // from class: com.local.p5home.HookRuntime$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m50lambda$pullReply$9$comlocalg3homeHookRuntime(string3, string);
                }
            })) {
                finishReply(string, false, "NOTICE_HANDLER_REJECTED");
                ack(string, "failed");
            }
            return false;
        }
        try {
            if (this.bindings != null) {
                zSpeak = "speech".equals(string2) ? this.bindings.speak(string, string3) : this.bindings.actor(string2, string4, string5);
            }
        } catch (Exception | LinkageError e) {
            log("HOOK_REPLY_DISPATCH_FAILED");
        }
        finishReply(string, zSpeak, zSpeak ? "REPLY_DISPATCHED" : (!"speech".equals(string2) || this.bindings == null) ? "REPLY_DISPATCH_FAILED" : this.bindings.ttsCode());
        ack(string, zSpeak ? "dispatched" : "failed");
        return true;
    }

    /* renamed from: lambda$pullReply$7$com-local-g3home-HookRuntime, reason: not valid java name */
    /* synthetic */ void m48lambda$pullReply$7$comlocalg3homeHookRuntime(String str, boolean z, String str2) {
        finishReply(str, z, str2);
        diagnosticsSoon();
    }

    /* renamed from: lambda$pullReply$8$com-local-g3home-HookRuntime, reason: not valid java name */
    /* synthetic */ void m49lambda$pullReply$8$comlocalg3homeHookRuntime(String str, boolean z, String str2) {
        finishReply(str, z, str2);
        diagnosticsSoon();
    }

    /* renamed from: lambda$pullReply$9$com-local-g3home-HookRuntime, reason: not valid java name */
    /* synthetic */ void m50lambda$pullReply$9$comlocalg3homeHookRuntime(String str, String str2) {
        boolean z;
        try {
            z = true;
            Toast.makeText(this.app, str, 1).show();
        } catch (Exception e) {
            z = false;
        }
        finishReply(str2, z, z ? "NOTICE_DISPATCHED" : "NOTICE_FAILED");
        refreshSoon();
    }

    private void finishReply(String str, boolean z, String str2) {
        this.replies.finish(str, z);
        this.replyCode = str2;
        (z ? this.replyDispatched : this.replyFailed).incrementAndGet();
        if (z) {
            return;
        }
        log(str2);
    }

    private void ack(String str, String str2) throws Exception {
        Bundle bundle = new Bundle();
        bundle.putString("id", str);
        bundle.putString("status", str2);
        call("ack_reply", bundle);
    }

    private Bundle call(String str, Bundle bundle) {
        return this.app.getContentResolver().call(BASE, str, (String) null, bundle);
    }

    private synchronized void log(String str) {
        if (this.reported.size() < 24 && this.reported.add(str)) {
            HookLog.write(str);
        }
    }
}
