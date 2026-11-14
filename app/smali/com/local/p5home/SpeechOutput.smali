.class public final Lcom/local/p5home/SpeechOutput;
.super Ljava/lang/Object;
.source "SpeechOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/SpeechOutput$Callback;
    }
.end annotation


# static fields
.field private static instance:Lcom/local/p5home/SpeechOutput;


# instance fields
.field private final app:Landroid/content/Context;

.field private final attributes:Landroid/media/AudioAttributes;

.field private final audio:Landroid/media/AudioManager;

.field private current:Lcom/local/p5home/SpeechOutput$Callback;

.field private currentId:Ljava/lang/String;

.field private currentOwner:Ljava/lang/String;

.field private currentStarted:Z

.field private currentValid:Ljava/util/function/BooleanSupplier;

.field private focus:Landroid/media/AudioFocusRequest;

.field private focusGeneration:J

.field private initGeneration:J

.field private initTimeout:Ljava/lang/Runnable;

.field private initializing:Z

.field private final main:Landroid/os/Handler;

.field private volatile ready:Z

.field private timeout:Ljava/lang/Runnable;

.field private tts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public static synthetic $r8$lambda$MfnLQ65YrfiF674NG_ipsdNov_0(Lcom/local/p5home/SpeechOutput;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/SpeechOutput;->initialize()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/local/p5home/SpeechOutput;->main:Landroid/os/Handler;

    .line 18
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/SpeechOutput;->attributes:Landroid/media/AudioAttributes;

    .line 19
    iput-object p1, p0, Lcom/local/p5home/SpeechOutput;->app:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/local/p5home/SpeechOutput;->audio:Landroid/media/AudioManager;

    new-instance p1, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda1;-><init>(Lcom/local/p5home/SpeechOutput;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/local/p5home/SpeechOutput;)Landroid/os/Handler;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/local/p5home/SpeechOutput;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/local/p5home/SpeechOutput;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/local/p5home/SpeechOutput;->finish(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/local/p5home/SpeechOutput;)Ljava/lang/String;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/local/p5home/SpeechOutput;->currentId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/local/p5home/SpeechOutput;)Ljava/util/function/BooleanSupplier;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/local/p5home/SpeechOutput;->currentValid:Ljava/util/function/BooleanSupplier;

    return-object p0
.end method

.method static synthetic access$400(Lcom/local/p5home/SpeechOutput;Ljava/lang/String;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/local/p5home/SpeechOutput;->cancelOnMain(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/local/p5home/SpeechOutput;)Landroid/content/Context;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/local/p5home/SpeechOutput;->app:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/local/p5home/SpeechOutput;)Z
    .registers 1

    .line 11
    iget-boolean p0, p0, Lcom/local/p5home/SpeechOutput;->currentStarted:Z

    return p0
.end method

.method static synthetic access$602(Lcom/local/p5home/SpeechOutput;Z)Z
    .registers 2

    .line 11
    iput-boolean p1, p0, Lcom/local/p5home/SpeechOutput;->currentStarted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/local/p5home/SpeechOutput;)Lcom/local/p5home/SpeechOutput$Callback;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/local/p5home/SpeechOutput;->current:Lcom/local/p5home/SpeechOutput$Callback;

    return-object p0
.end method

.method private cancelOnMain(Ljava/lang/String;)V
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput;->currentId:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/local/p5home/SpeechOutput;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-exception v1

    :cond_e
    :goto_e
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/local/p5home/SpeechOutput;->finish(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private finish(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 9

    .line 78
    if-eqz p1, :cond_3e

    iget-object v0, p0, Lcom/local/p5home/SpeechOutput;->currentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_3e

    :cond_b
    iget-object p1, p0, Lcom/local/p5home/SpeechOutput;->current:Lcom/local/p5home/SpeechOutput$Callback;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/local/p5home/SpeechOutput;->current:Lcom/local/p5home/SpeechOutput$Callback;

    iput-object v0, p0, Lcom/local/p5home/SpeechOutput;->currentId:Ljava/lang/String;

    iput-object v0, p0, Lcom/local/p5home/SpeechOutput;->currentOwner:Ljava/lang/String;

    iput-object v0, p0, Lcom/local/p5home/SpeechOutput;->currentValid:Ljava/util/function/BooleanSupplier;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/local/p5home/SpeechOutput;->currentStarted:Z

    iget-wide v1, p0, Lcom/local/p5home/SpeechOutput;->focusGeneration:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/local/p5home/SpeechOutput;->focusGeneration:J

    .line 79
    iget-object v1, p0, Lcom/local/p5home/SpeechOutput;->timeout:Ljava/lang/Runnable;

    if-eqz v1, :cond_2b

    iget-object v2, p0, Lcom/local/p5home/SpeechOutput;->main:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/local/p5home/SpeechOutput;->timeout:Ljava/lang/Runnable;

    :cond_2b
    iget-object v1, p0, Lcom/local/p5home/SpeechOutput;->focus:Landroid/media/AudioFocusRequest;

    if-eqz v1, :cond_38

    :try_start_2f
    iget-object v2, p0, Lcom/local/p5home/SpeechOutput;->audio:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_35

    goto :goto_36

    :catch_35
    move-exception v1

    :goto_36
    iput-object v0, p0, Lcom/local/p5home/SpeechOutput;->focus:Landroid/media/AudioFocusRequest;

    .line 80
    :cond_38
    if-eqz p1, :cond_3d

    invoke-interface {p1, p2, p3}, Lcom/local/p5home/SpeechOutput$Callback;->done(ZLjava/lang/String;)V

    .line 81
    :cond_3d
    return-void

    .line 78
    :cond_3e
    :goto_3e
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/local/p5home/SpeechOutput;
    .registers 3

    const-class v0, Lcom/local/p5home/SpeechOutput;

    monitor-enter v0

    .line 14
    :try_start_3
    sget-object v1, Lcom/local/p5home/SpeechOutput;->instance:Lcom/local/p5home/SpeechOutput;

    if-nez v1, :cond_12

    new-instance v1, Lcom/local/p5home/SpeechOutput;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/local/p5home/SpeechOutput;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/local/p5home/SpeechOutput;->instance:Lcom/local/p5home/SpeechOutput;

    :cond_12
    sget-object p0, Lcom/local/p5home/SpeechOutput;->instance:Lcom/local/p5home/SpeechOutput;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object p0

    .line 14
    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initialize()V
    .registers 7

    .line 22
    iget-boolean v0, p0, Lcom/local/p5home/SpeechOutput;->initializing:Z

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/local/p5home/SpeechOutput;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_9

    goto :goto_57

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/SpeechOutput;->initializing:Z

    iget-wide v0, p0, Lcom/local/p5home/SpeechOutput;->initGeneration:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/local/p5home/SpeechOutput;->initGeneration:J

    .line 23
    :try_start_13
    iget-object v2, p0, Lcom/local/p5home/SpeechOutput;->app:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tts_default_synth"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    new-instance v3, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0, v1}, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda3;-><init>(Lcom/local/p5home/SpeechOutput;J)V

    .line 41
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_35

    :cond_2d
    new-instance v4, Landroid/speech/tts/TextToSpeech;

    iget-object v5, p0, Lcom/local/p5home/SpeechOutput;->app:Landroid/content/Context;

    invoke-direct {v4, v5, v3, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    goto :goto_3c

    :cond_35
    :goto_35
    new-instance v4, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/local/p5home/SpeechOutput;->app:Landroid/content/Context;

    invoke-direct {v4, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    :goto_3c
    iput-object v4, p0, Lcom/local/p5home/SpeechOutput;->tts:Landroid/speech/tts/TextToSpeech;

    .line 42
    new-instance v2, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, v1}, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda4;-><init>(Lcom/local/p5home/SpeechOutput;J)V

    iput-object v2, p0, Lcom/local/p5home/SpeechOutput;->initTimeout:Ljava/lang/Runnable;

    .line 43
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput;->main:Landroid/os/Handler;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4c} :catch_4d

    .line 44
    goto :goto_56

    :catch_4d
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/SpeechOutput;->initializing:Z

    iput-boolean v0, p0, Lcom/local/p5home/SpeechOutput;->ready:Z

    invoke-direct {p0}, Lcom/local/p5home/SpeechOutput;->retryInitialization()V

    .line 45
    :goto_56
    return-void

    .line 22
    :cond_57
    :goto_57
    return-void
.end method

.method static synthetic lambda$speak$3()Z
    .registers 1

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method private requestAndSpeak(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    .line 60
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput;->currentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 61
    :cond_9
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput;->currentValid:Ljava/util/function/BooleanSupplier;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_1a

    const-string p2, "\u64ad\u62a5\u8bf7\u6c42\u5df2\u8fc7\u671f"

    invoke-direct {p0, p1, v1, p2}, Lcom/local/p5home/SpeechOutput;->finish(Ljava/lang/String;ZLjava/lang/String;)V

    return-void

    .line 63
    :cond_1a
    :try_start_1a
    iget-wide v2, p0, Lcom/local/p5home/SpeechOutput;->focusGeneration:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/local/p5home/SpeechOutput;->focusGeneration:J

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    const/4 v6, 0x3

    invoke-direct {v0, v6}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    iget-object v7, p0, Lcom/local/p5home/SpeechOutput;->attributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v7}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    new-instance v7, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda9;

    invoke-direct {v7, p0, p1, v2, v3}, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda9;-><init>(Lcom/local/p5home/SpeechOutput;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/local/p5home/SpeechOutput;->main:Landroid/os/Handler;

    .line 64
    invoke-virtual {v0, v7, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/SpeechOutput;->focus:Landroid/media/AudioFocusRequest;

    .line 65
    iget-object v2, p0, Lcom/local/p5home/SpeechOutput;->audio:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    .line 66
    const/4 v2, 0x1

    if-eq v0, v2, :cond_6b

    iget-wide v2, p0, Lcom/local/p5home/SpeechOutput;->focusGeneration:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/local/p5home/SpeechOutput;->focusGeneration:J

    iget-object v0, p0, Lcom/local/p5home/SpeechOutput;->audio:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/local/p5home/SpeechOutput;->focus:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/local/p5home/SpeechOutput;->focus:Landroid/media/AudioFocusRequest;

    .line 67
    if-ge p3, v6, :cond_65

    iget-object v0, p0, Lcom/local/p5home/SpeechOutput;->main:Landroid/os/Handler;

    new-instance v2, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda10;-><init>(Lcom/local/p5home/SpeechOutput;Ljava/lang/String;Ljava/lang/String;I)V

    const-wide/16 p2, 0x1f4

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_65
    const-string p2, "\u5c0fP\u6216\u5176\u4ed6\u97f3\u9891\u4ecd\u5360\u7528\u7126\u70b9\uff0c\u672a\u5f3a\u884c\u62a2\u64ad"

    invoke-direct {p0, p1, v1, p2}, Lcom/local/p5home/SpeechOutput;->finish(Ljava/lang/String;ZLjava/lang/String;)V

    return-void

    .line 68
    :cond_6b
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "volume"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 69
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p2, v1, p3, p1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p2

    .line 70
    if-eqz p2, :cond_85

    const-string p2, "\u7cfb\u7edf\u64ad\u62a5\u5f15\u64ce\u672a\u63a5\u53d7\u8bf7\u6c42"

    invoke-direct {p0, p1, v1, p2}, Lcom/local/p5home/SpeechOutput;->finish(Ljava/lang/String;ZLjava/lang/String;)V

    return-void

    .line 71
    :cond_85
    new-instance p2, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, p1}, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda11;-><init>(Lcom/local/p5home/SpeechOutput;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/local/p5home/SpeechOutput;->timeout:Ljava/lang/Runnable;

    iget-object p3, p0, Lcom/local/p5home/SpeechOutput;->main:Landroid/os/Handler;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {p3, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_94} :catch_95

    .line 72
    goto :goto_9b

    :catch_95
    move-exception p2

    const-string p2, "\u7cfb\u7edf\u64ad\u62a5\u8bf7\u6c42\u672a\u5b8c\u6210"

    invoke-direct {p0, p1, v1, p2}, Lcom/local/p5home/SpeechOutput;->finish(Ljava/lang/String;ZLjava/lang/String;)V

    .line 73
    :goto_9b
    return-void
.end method

.method private retryInitialization()V
    .registers 5

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/SpeechOutput;->ready:Z

    iget-wide v0, p0, Lcom/local/p5home/SpeechOutput;->initGeneration:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/local/p5home/SpeechOutput;->initGeneration:J

    iget-object v0, p0, Lcom/local/p5home/SpeechOutput;->initTimeout:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v2, p0, Lcom/local/p5home/SpeechOutput;->main:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/local/p5home/SpeechOutput;->initTimeout:Ljava/lang/Runnable;

    .line 48
    :cond_16
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_21

    :try_start_1a
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_1f

    :catch_1e
    move-exception v0

    :goto_1f
    iput-object v1, p0, Lcom/local/p5home/SpeechOutput;->tts:Landroid/speech/tts/TextToSpeech;

    .line 49
    :cond_21
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput;->main:Landroid/os/Handler;

    new-instance v1, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda1;-><init>(Lcom/local/p5home/SpeechOutput;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput;->main:Landroid/os/Handler;

    new-instance v1, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda5;-><init>(Lcom/local/p5home/SpeechOutput;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelOwner(Ljava/lang/String;)V
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput;->main:Landroid/os/Handler;

    new-instance v1, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda2;-><init>(Lcom/local/p5home/SpeechOutput;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$cancel$10$com-local-g3home-SpeechOutput()V
    .registers 2

    .line 75
    const-string v0, "\u64ad\u62a5\u5df2\u53d6\u6d88"

    invoke-direct {p0, v0}, Lcom/local/p5home/SpeechOutput;->cancelOnMain(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$cancelOwner$9$com-local-g3home-SpeechOutput(Ljava/lang/String;)V
    .registers 3

    .line 74
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/local/p5home/SpeechOutput;->currentOwner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "\u64ad\u62a5\u670d\u52a1\u5df2\u7ed3\u675f"

    invoke-direct {p0, p1}, Lcom/local/p5home/SpeechOutput;->cancelOnMain(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method synthetic lambda$initialize$0$com-local-g3home-SpeechOutput(JI)V
    .registers 6

    .line 25
    iget-wide v0, p0, Lcom/local/p5home/SpeechOutput;->initGeneration:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_5b

    iget-boolean p1, p0, Lcom/local/p5home/SpeechOutput;->initializing:Z

    if-nez p1, :cond_b

    goto :goto_5b

    .line 26
    :cond_b
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/local/p5home/SpeechOutput;->initializing:Z

    .line 27
    iget-object p2, p0, Lcom/local/p5home/SpeechOutput;->initTimeout:Ljava/lang/Runnable;

    const/4 v0, 0x0

    if-eqz p2, :cond_1a

    iget-object v1, p0, Lcom/local/p5home/SpeechOutput;->main:Landroid/os/Handler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/local/p5home/SpeechOutput;->initTimeout:Ljava/lang/Runnable;

    .line 28
    :cond_1a
    if-nez p3, :cond_3f

    :try_start_1c
    iget-object p2, p0, Lcom/local/p5home/SpeechOutput;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz p2, :cond_3f

    .line 29
    sget-object p3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p2, p3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result p2

    if-ltz p2, :cond_2a

    const/4 p2, 0x1

    goto :goto_2b

    :cond_2a
    move p2, p1

    :goto_2b
    iput-boolean p2, p0, Lcom/local/p5home/SpeechOutput;->ready:Z

    .line 30
    iget-object p2, p0, Lcom/local/p5home/SpeechOutput;->tts:Landroid/speech/tts/TextToSpeech;

    iget-object p3, p0, Lcom/local/p5home/SpeechOutput;->attributes:Landroid/media/AudioAttributes;

    invoke-virtual {p2, p3}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    iget-object p2, p0, Lcom/local/p5home/SpeechOutput;->tts:Landroid/speech/tts/TextToSpeech;

    new-instance p3, Lcom/local/p5home/SpeechOutput$1;

    invoke-direct {p3, p0}, Lcom/local/p5home/SpeechOutput$1;-><init>(Lcom/local/p5home/SpeechOutput;)V

    invoke-virtual {p2, p3}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 37
    goto :goto_48

    .line 28
    :cond_3f
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    throw p2
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_45} :catch_45

    .line 37
    :catch_45
    move-exception p2

    iput-boolean p1, p0, Lcom/local/p5home/SpeechOutput;->ready:Z

    .line 38
    :goto_48
    iget-boolean p1, p0, Lcom/local/p5home/SpeechOutput;->ready:Z

    if-nez p1, :cond_4f

    invoke-direct {p0}, Lcom/local/p5home/SpeechOutput;->retryInitialization()V

    .line 39
    :cond_4f
    iget-object p1, p0, Lcom/local/p5home/SpeechOutput;->app:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/local/p5home/ConfigStore;->EVENTS:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 40
    return-void

    .line 25
    :cond_5b
    :goto_5b
    return-void
.end method

.method synthetic lambda$initialize$1$com-local-g3home-SpeechOutput(JI)V
    .registers 6

    .line 24
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput;->main:Landroid/os/Handler;

    new-instance v1, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda8;-><init>(Lcom/local/p5home/SpeechOutput;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$initialize$2$com-local-g3home-SpeechOutput(J)V
    .registers 5

    .line 42
    iget-wide v0, p0, Lcom/local/p5home/SpeechOutput;->initGeneration:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_10

    iget-boolean p1, p0, Lcom/local/p5home/SpeechOutput;->initializing:Z

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/local/p5home/SpeechOutput;->initializing:Z

    invoke-direct {p0}, Lcom/local/p5home/SpeechOutput;->retryInitialization()V

    :cond_10
    return-void
.end method

.method synthetic lambda$requestAndSpeak$5$com-local-g3home-SpeechOutput(Ljava/lang/String;J)V
    .registers 6

    .line 64
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput;->currentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-wide v0, p0, Lcom/local/p5home/SpeechOutput;->focusGeneration:J

    cmp-long p1, p2, v0

    if-nez p1, :cond_13

    const-string p1, "\u64ad\u62a5\u88ab\u65b0\u7684\u97f3\u9891\u8bf7\u6c42\u6253\u65ad"

    invoke-direct {p0, p1}, Lcom/local/p5home/SpeechOutput;->cancelOnMain(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method synthetic lambda$requestAndSpeak$6$com-local-g3home-SpeechOutput(Ljava/lang/String;JI)V
    .registers 6

    .line 64
    const/4 v0, -0x1

    if-eq p4, v0, :cond_6

    const/4 v0, -0x2

    if-ne p4, v0, :cond_10

    :cond_6
    iget-object p4, p0, Lcom/local/p5home/SpeechOutput;->main:Landroid/os/Handler;

    new-instance v0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda6;-><init>(Lcom/local/p5home/SpeechOutput;Ljava/lang/String;J)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method

.method synthetic lambda$requestAndSpeak$7$com-local-g3home-SpeechOutput(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 67
    add-int/lit8 p3, p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/local/p5home/SpeechOutput;->requestAndSpeak(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method synthetic lambda$requestAndSpeak$8$com-local-g3home-SpeechOutput(Ljava/lang/String;)V
    .registers 5

    .line 71
    const-string v0, "\u7cfb\u7edf\u64ad\u62a5\u56de\u6267\u8d85\u65f6"

    iget-object v1, p0, Lcom/local/p5home/SpeechOutput;->currentId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    :try_start_b
    iget-object v2, p0, Lcom/local/p5home/SpeechOutput;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->stop()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_16
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_17

    :catchall_11
    move-exception v2

    invoke-direct {p0, p1, v1, v0}, Lcom/local/p5home/SpeechOutput;->finish(Ljava/lang/String;ZLjava/lang/String;)V

    throw v2

    :catch_16
    move-exception v2

    :goto_17
    invoke-direct {p0, p1, v1, v0}, Lcom/local/p5home/SpeechOutput;->finish(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_1a
    return-void
.end method

.method synthetic lambda$speak$4$com-local-g3home-SpeechOutput(Ljava/util/function/BooleanSupplier;Lcom/local/p5home/SpeechOutput$Callback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 54
    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const-string p1, "\u64ad\u62a5\u8bf7\u6c42\u5df2\u8fc7\u671f"

    :goto_9
    invoke-interface {p2, v1, p1}, Lcom/local/p5home/SpeechOutput$Callback;->done(ZLjava/lang/String;)V

    return-void

    :cond_d
    const-string v0, "\u5df2\u88ab\u65b0\u7684\u95ee\u7b54\u66ff\u6362"

    invoke-direct {p0, v0}, Lcom/local/p5home/SpeechOutput;->cancelOnMain(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/local/p5home/SpeechOutput;->ready:Z

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/local/p5home/SpeechOutput;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_1b

    goto :goto_5b

    .line 55
    :cond_1b
    if-eqz p3, :cond_55

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xbb8

    if-le v0, v2, :cond_30

    goto :goto_55

    .line 56
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "g3-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/SpeechOutput;->currentId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/local/p5home/SpeechOutput;->currentStarted:Z

    iput-object p4, p0, Lcom/local/p5home/SpeechOutput;->currentOwner:Ljava/lang/String;

    iput-object p1, p0, Lcom/local/p5home/SpeechOutput;->currentValid:Ljava/util/function/BooleanSupplier;

    iput-object p2, p0, Lcom/local/p5home/SpeechOutput;->current:Lcom/local/p5home/SpeechOutput$Callback;

    invoke-direct {p0, v0, p3, v1}, Lcom/local/p5home/SpeechOutput;->requestAndSpeak(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    return-void

    .line 55
    :cond_55
    :goto_55
    const-string p1, "\u64ad\u62a5\u5185\u5bb9\u4e3a\u7a7a\u6216\u8fc7\u957f"

    invoke-interface {p2, v1, p1}, Lcom/local/p5home/SpeechOutput$Callback;->done(ZLjava/lang/String;)V

    return-void

    .line 54
    :cond_5b
    :goto_5b
    const-string p1, "\u7cfb\u7edf\u4e2d\u6587\u64ad\u62a5\u5c1a\u672a\u5c31\u7eea"

    goto :goto_9
.end method

.method public ready()Z
    .registers 2

    .line 20
    iget-boolean v0, p0, Lcom/local/p5home/SpeechOutput;->ready:Z

    return v0
.end method

.method public speak(Ljava/lang/String;Lcom/local/p5home/SpeechOutput$Callback;)V
    .registers 4

    .line 51
    const-string v0, "standalone"

    invoke-virtual {p0, p1, v0, p2}, Lcom/local/p5home/SpeechOutput;->speak(Ljava/lang/String;Ljava/lang/String;Lcom/local/p5home/SpeechOutput$Callback;)V

    return-void
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;Lcom/local/p5home/SpeechOutput$Callback;)V
    .registers 5

    .line 52
    new-instance v0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/local/p5home/SpeechOutput;->speak(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BooleanSupplier;Lcom/local/p5home/SpeechOutput$Callback;)V

    return-void
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BooleanSupplier;Lcom/local/p5home/SpeechOutput$Callback;)V
    .registers 13

    .line 54
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput;->main:Landroid/os/Handler;

    new-instance v7, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/SpeechOutput;Ljava/util/function/BooleanSupplier;Lcom/local/p5home/SpeechOutput$Callback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method
