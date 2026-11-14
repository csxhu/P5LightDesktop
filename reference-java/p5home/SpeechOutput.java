package com.local.p5home;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.speech.tts.TextToSpeech;
import android.speech.tts.UtteranceProgressListener;
import java.util.Locale;
import java.util.UUID;
import java.util.function.BooleanSupplier;

/* loaded from: classes.dex */
public final class SpeechOutput {
    private static SpeechOutput instance;
    private final Context app;
    private final AudioAttributes attributes;
    private final AudioManager audio;
    private Callback current;
    private String currentId;
    private String currentOwner;
    private boolean currentStarted;
    private BooleanSupplier currentValid;
    private AudioFocusRequest focus;
    private long focusGeneration;
    private long initGeneration;
    private Runnable initTimeout;
    private boolean initializing;
    private final Handler main;
    private volatile boolean ready;
    private Runnable timeout;
    private TextToSpeech tts;

    public interface Callback {
        void done(boolean z, String str);

        default void started() {
        }
    }

    public static synchronized SpeechOutput get(Context context) {
        if (instance == null) {
            instance = new SpeechOutput(context.getApplicationContext());
        }
        return instance;
    }

    private SpeechOutput(Context context) {
        Handler handler = new Handler(Looper.getMainLooper());
        this.main = handler;
        this.attributes = new AudioAttributes.Builder().setUsage(12).setContentType(1).build();
        this.app = context;
        this.audio = (AudioManager) context.getSystemService("audio");
        handler.post(new SpeechOutput$$ExternalSyntheticLambda1(this));
    }

    public boolean ready() {
        return this.ready;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initialize() {
        if (this.initializing || this.tts != null) {
            return;
        }
        this.initializing = true;
        final long j = this.initGeneration + 1;
        this.initGeneration = j;
        try {
            String string = Settings.Secure.getString(this.app.getContentResolver(), "tts_default_synth");
            TextToSpeech.OnInitListener onInitListener = new TextToSpeech.OnInitListener() { // from class: com.local.p5home.SpeechOutput$$ExternalSyntheticLambda3
                @Override // android.speech.tts.TextToSpeech.OnInitListener
                public final void onInit(int i) {
                    this.f$0.m104lambda$initialize$1$comlocalg3homeSpeechOutput(j, i);
                }
            };
            this.tts = (string == null || string.isEmpty()) ? new TextToSpeech(this.app, onInitListener) : new TextToSpeech(this.app, onInitListener, string);
            Runnable runnable = new Runnable() { // from class: com.local.p5home.SpeechOutput$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m105lambda$initialize$2$comlocalg3homeSpeechOutput(j);
                }
            };
            this.initTimeout = runnable;
            this.main.postDelayed(runnable, 20000L);
        } catch (Exception e) {
            this.initializing = false;
            this.ready = false;
            retryInitialization();
        }
    }

    /* renamed from: lambda$initialize$1$com-local-g3home-SpeechOutput, reason: not valid java name */
    /* synthetic */ void m104lambda$initialize$1$comlocalg3homeSpeechOutput(final long j, final int i) {
        this.main.post(new Runnable() { // from class: com.local.p5home.SpeechOutput$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m103lambda$initialize$0$comlocalg3homeSpeechOutput(j, i);
            }
        });
    }

    /* renamed from: lambda$initialize$0$com-local-g3home-SpeechOutput, reason: not valid java name */
    /* synthetic */ void m103lambda$initialize$0$comlocalg3homeSpeechOutput(long j, int i) {
        TextToSpeech textToSpeech;
        if (j != this.initGeneration || !this.initializing) {
            return;
        }
        this.initializing = false;
        Runnable runnable = this.initTimeout;
        if (runnable != null) {
            this.main.removeCallbacks(runnable);
            this.initTimeout = null;
        }
        if (i == 0) {
            try {
                textToSpeech = this.tts;
            } catch (Exception e) {
                this.ready = false;
            }
            if (textToSpeech != null) {
                this.ready = textToSpeech.setLanguage(Locale.SIMPLIFIED_CHINESE) >= 0;
                this.tts.setAudioAttributes(this.attributes);
                this.tts.setOnUtteranceProgressListener(new AnonymousClass1());
                if (!this.ready) {
                    retryInitialization();
                }
                this.app.getContentResolver().notifyChange(ConfigStore.EVENTS, null);
                return;
            }
        }
        throw new IllegalStateException();
    }

    /* renamed from: com.local.p5home.SpeechOutput$1, reason: invalid class name */
    class AnonymousClass1 extends UtteranceProgressListener {
        AnonymousClass1() {
        }

        /* renamed from: lambda$onStart$0$com-local-g3home-SpeechOutput$1, reason: not valid java name */
        /* synthetic */ void m114lambda$onStart$0$comlocalg3homeSpeechOutput$1(String str) {
            if (str.equals(SpeechOutput.this.currentId)) {
                if (SpeechOutput.this.currentValid == null || SpeechOutput.this.currentValid.getAsBoolean()) {
                    BridgeStore.update(SpeechOutput.this.app, "正在播放语音", null, "");
                    try {
                        if (SpeechOutput.this.currentStarted || SpeechOutput.this.current == null) {
                            return;
                        }
                        SpeechOutput.this.currentStarted = true;
                        SpeechOutput.this.current.started();
                        return;
                    } catch (RuntimeException e) {
                        return;
                    }
                }
                SpeechOutput.this.cancelOnMain("播报请求已过期");
            }
        }

        @Override // android.speech.tts.UtteranceProgressListener
        public void onStart(final String str) {
            SpeechOutput.this.main.post(new Runnable() { // from class: com.local.p5home.SpeechOutput$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m114lambda$onStart$0$comlocalg3homeSpeechOutput$1(str);
                }
            });
        }

        /* renamed from: lambda$onStop$1$com-local-g3home-SpeechOutput$1, reason: not valid java name */
        /* synthetic */ void m115lambda$onStop$1$comlocalg3homeSpeechOutput$1(String str, boolean z) {
            SpeechOutput.this.finish(str, false, z ? "播报已被新的语音打断" : "系统播报已停止");
        }

        @Override // android.speech.tts.UtteranceProgressListener
        public void onStop(final String str, final boolean z) {
            SpeechOutput.this.main.post(new Runnable() { // from class: com.local.p5home.SpeechOutput$1$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m115lambda$onStop$1$comlocalg3homeSpeechOutput$1(str, z);
                }
            });
        }

        /* renamed from: lambda$onDone$2$com-local-g3home-SpeechOutput$1, reason: not valid java name */
        /* synthetic */ void m111lambda$onDone$2$comlocalg3homeSpeechOutput$1(String str) {
            SpeechOutput.this.finish(str, true, "豆包回答播报完成");
        }

        @Override // android.speech.tts.UtteranceProgressListener
        public void onDone(final String str) {
            SpeechOutput.this.main.post(new Runnable() { // from class: com.local.p5home.SpeechOutput$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m111lambda$onDone$2$comlocalg3homeSpeechOutput$1(str);
                }
            });
        }

        /* renamed from: lambda$onError$3$com-local-g3home-SpeechOutput$1, reason: not valid java name */
        /* synthetic */ void m112lambda$onError$3$comlocalg3homeSpeechOutput$1(String str) {
            SpeechOutput.this.finish(str, false, "系统播报引擎未完成本次播放");
        }

        @Override // android.speech.tts.UtteranceProgressListener
        public void onError(final String str) {
            SpeechOutput.this.main.post(new Runnable() { // from class: com.local.p5home.SpeechOutput$1$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m112lambda$onError$3$comlocalg3homeSpeechOutput$1(str);
                }
            });
        }

        /* renamed from: lambda$onError$4$com-local-g3home-SpeechOutput$1, reason: not valid java name */
        /* synthetic */ void m113lambda$onError$4$comlocalg3homeSpeechOutput$1(String str, int i) {
            SpeechOutput.this.finish(str, false, "系统播报引擎返回错误（" + i + "）");
        }

        @Override // android.speech.tts.UtteranceProgressListener
        public void onError(final String str, final int i) {
            SpeechOutput.this.main.post(new Runnable() { // from class: com.local.p5home.SpeechOutput$1$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m113lambda$onError$4$comlocalg3homeSpeechOutput$1(str, i);
                }
            });
        }
    }

    /* renamed from: lambda$initialize$2$com-local-g3home-SpeechOutput, reason: not valid java name */
    /* synthetic */ void m105lambda$initialize$2$comlocalg3homeSpeechOutput(long j) {
        if (j == this.initGeneration && this.initializing) {
            this.initializing = false;
            retryInitialization();
        }
    }

    private void retryInitialization() {
        this.ready = false;
        this.initGeneration++;
        Runnable runnable = this.initTimeout;
        if (runnable != null) {
            this.main.removeCallbacks(runnable);
            this.initTimeout = null;
        }
        TextToSpeech textToSpeech = this.tts;
        if (textToSpeech != null) {
            try {
                textToSpeech.shutdown();
            } catch (Exception e) {
            }
            this.tts = null;
        }
        this.main.postDelayed(new SpeechOutput$$ExternalSyntheticLambda1(this), 30000L);
    }

    public void speak(String str, Callback callback) {
        speak(str, "standalone", callback);
    }

    static /* synthetic */ boolean lambda$speak$3() {
        return true;
    }

    public void speak(String str, String str2, Callback callback) {
        speak(str, str2, new BooleanSupplier() { // from class: com.local.p5home.SpeechOutput$$ExternalSyntheticLambda7
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                return SpeechOutput.lambda$speak$3();
            }
        }, callback);
    }

    /* renamed from: lambda$speak$4$com-local-g3home-SpeechOutput, reason: not valid java name */
    /* synthetic */ void m110lambda$speak$4$comlocalg3homeSpeechOutput(BooleanSupplier booleanSupplier, Callback callback, String str, String str2) {
        String str3;
        if (booleanSupplier.getAsBoolean()) {
            cancelOnMain("已被新的问答替换");
            if (!this.ready || this.tts == null) {
                str3 = "系统中文播报尚未就绪";
            } else {
                if (str == null || str.trim().isEmpty() || str.length() > 1200) {
                    callback.done(false, "播报内容为空或过长");
                    return;
                }
                String str4 = "g3-" + UUID.randomUUID();
                this.currentId = str4;
                this.currentStarted = false;
                this.currentOwner = str2;
                this.currentValid = booleanSupplier;
                this.current = callback;
                requestAndSpeak(str4, str, 0);
                return;
            }
        } else {
            str3 = "播报请求已过期";
        }
        callback.done(false, str3);
    }

    public void speak(final String str, final String str2, final BooleanSupplier booleanSupplier, final Callback callback) {
        this.main.post(new Runnable() { // from class: com.local.p5home.SpeechOutput$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m110lambda$speak$4$comlocalg3homeSpeechOutput(booleanSupplier, callback, str, str2);
            }
        });
    }

    private void requestAndSpeak(final String str, final String str2, final int i) {
        if (str.equals(this.currentId)) {
            BooleanSupplier booleanSupplier = this.currentValid;
            if (booleanSupplier != null && !booleanSupplier.getAsBoolean()) {
                finish(str, false, "播报请求已过期");
                return;
            }
            try {
                final long j = this.focusGeneration + 1;
                this.focusGeneration = j;
                AudioFocusRequest audioFocusRequestBuild = new AudioFocusRequest.Builder(3).setAudioAttributes(this.attributes).setOnAudioFocusChangeListener(new AudioManager.OnAudioFocusChangeListener() { // from class: com.local.p5home.SpeechOutput$$ExternalSyntheticLambda9
                    @Override // android.media.AudioManager.OnAudioFocusChangeListener
                    public final void onAudioFocusChange(int i2) {
                        this.f$0.m107lambda$requestAndSpeak$6$comlocalg3homeSpeechOutput(str, j, i2);
                    }
                }, this.main).build();
                this.focus = audioFocusRequestBuild;
                if (this.audio.requestAudioFocus(audioFocusRequestBuild) != 1) {
                    this.focusGeneration++;
                    this.audio.abandonAudioFocusRequest(this.focus);
                    this.focus = null;
                    if (i < 3) {
                        this.main.postDelayed(new Runnable() { // from class: com.local.p5home.SpeechOutput$$ExternalSyntheticLambda10
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.m108lambda$requestAndSpeak$7$comlocalg3homeSpeechOutput(str, str2, i);
                            }
                        }, 500L);
                        return;
                    } else {
                        finish(str, false, "小P或其他音频仍占用焦点，未强行抢播");
                        return;
                    }
                }
                Bundle bundle = new Bundle();
                bundle.putFloat("volume", 1.0f);
                if (this.tts.speak(str2, 0, bundle, str) != 0) {
                    finish(str, false, "系统播报引擎未接受请求");
                    return;
                }
                Runnable runnable = new Runnable() { // from class: com.local.p5home.SpeechOutput$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m109lambda$requestAndSpeak$8$comlocalg3homeSpeechOutput(str);
                    }
                };
                this.timeout = runnable;
                this.main.postDelayed(runnable, 60000L);
            } catch (Exception e) {
                finish(str, false, "系统播报请求未完成");
            }
        }
    }

    /* renamed from: lambda$requestAndSpeak$5$com-local-g3home-SpeechOutput, reason: not valid java name */
    /* synthetic */ void m106lambda$requestAndSpeak$5$comlocalg3homeSpeechOutput(String str, long j) {
        if (str.equals(this.currentId) && j == this.focusGeneration) {
            cancelOnMain("播报被新的音频请求打断");
        }
    }

    /* renamed from: lambda$requestAndSpeak$6$com-local-g3home-SpeechOutput, reason: not valid java name */
    /* synthetic */ void m107lambda$requestAndSpeak$6$comlocalg3homeSpeechOutput(final String str, final long j, int i) {
        if (i == -1 || i == -2) {
            this.main.post(new Runnable() { // from class: com.local.p5home.SpeechOutput$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m106lambda$requestAndSpeak$5$comlocalg3homeSpeechOutput(str, j);
                }
            });
        }
    }

    /* renamed from: lambda$requestAndSpeak$7$com-local-g3home-SpeechOutput, reason: not valid java name */
    /* synthetic */ void m108lambda$requestAndSpeak$7$comlocalg3homeSpeechOutput(String str, String str2, int i) {
        requestAndSpeak(str, str2, i + 1);
    }

    /* renamed from: lambda$requestAndSpeak$8$com-local-g3home-SpeechOutput, reason: not valid java name */
    /* synthetic */ void m109lambda$requestAndSpeak$8$comlocalg3homeSpeechOutput(String str) {
        if (str.equals(this.currentId)) {
            try {
                this.tts.stop();
            } catch (Exception e) {
            } catch (Throwable th) {
                finish(str, false, "系统播报回执超时");
                throw th;
            }
            finish(str, false, "系统播报回执超时");
        }
    }

    public void cancelOwner(final String str) {
        this.main.post(new Runnable() { // from class: com.local.p5home.SpeechOutput$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m102lambda$cancelOwner$9$comlocalg3homeSpeechOutput(str);
            }
        });
    }

    /* renamed from: lambda$cancelOwner$9$com-local-g3home-SpeechOutput, reason: not valid java name */
    /* synthetic */ void m102lambda$cancelOwner$9$comlocalg3homeSpeechOutput(String str) {
        if (str == null || !str.equals(this.currentOwner)) {
            return;
        }
        cancelOnMain("播报服务已结束");
    }

    public void cancel() {
        this.main.post(new Runnable() { // from class: com.local.p5home.SpeechOutput$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m101lambda$cancel$10$comlocalg3homeSpeechOutput();
            }
        });
    }

    /* renamed from: lambda$cancel$10$com-local-g3home-SpeechOutput, reason: not valid java name */
    /* synthetic */ void m101lambda$cancel$10$comlocalg3homeSpeechOutput() {
        cancelOnMain("播报已取消");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelOnMain(String str) {
        String str2 = this.currentId;
        if (str2 == null) {
            return;
        }
        try {
            TextToSpeech textToSpeech = this.tts;
            if (textToSpeech != null) {
                textToSpeech.stop();
            }
        } catch (Exception e) {
        }
        finish(str2, false, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finish(String str, boolean z, String str2) {
        if (str == null || !str.equals(this.currentId)) {
            return;
        }
        Callback callback = this.current;
        this.current = null;
        this.currentId = null;
        this.currentOwner = null;
        this.currentValid = null;
        this.currentStarted = false;
        this.focusGeneration++;
        Runnable runnable = this.timeout;
        if (runnable != null) {
            this.main.removeCallbacks(runnable);
            this.timeout = null;
        }
        AudioFocusRequest audioFocusRequest = this.focus;
        if (audioFocusRequest != null) {
            try {
                this.audio.abandonAudioFocusRequest(audioFocusRequest);
            } catch (Exception e) {
            }
            this.focus = null;
        }
        if (callback != null) {
            callback.done(z, str2);
        }
    }
}
