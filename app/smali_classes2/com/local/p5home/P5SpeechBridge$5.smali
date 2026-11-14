.class Lcom/local/p5home/P5SpeechBridge$5;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "P5SpeechBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/P5SpeechBridge;->install()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/P5SpeechBridge;


# direct methods
.method constructor <init>(Lcom/local/p5home/P5SpeechBridge;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/local/p5home/P5SpeechBridge$5;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4

    .line 224
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v1, p0, Lcom/local/p5home/P5SpeechBridge$5;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v1}, Lcom/local/p5home/P5SpeechBridge;->access$1900(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/local/p5home/P5SpeechBridge$5;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v2}, Lcom/local/p5home/P5SpeechBridge;->access$2000(Lcom/local/p5home/P5SpeechBridge;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 227
    const-string p1, "P5_MODEL_NATIVE_NLU_SUPPRESSED"

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->access$100(Ljava/lang/String;)V

    .line 229
    :cond_0
    return-void
.end method
