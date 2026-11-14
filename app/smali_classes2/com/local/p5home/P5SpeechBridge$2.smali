.class Lcom/local/p5home/P5SpeechBridge$2;
.super Ljava/lang/Object;
.source "P5SpeechBridge.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


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

    .line 152
    iput-object p1, p0, Lcom/local/p5home/P5SpeechBridge$2;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 154
    const-string p1, "onWake"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/local/p5home/P5SpeechBridge$2;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->access$500(Lcom/local/p5home/P5SpeechBridge;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/local/p5home/P5SpeechBridge$2;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->access$600(Lcom/local/p5home/P5SpeechBridge;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p2, 0x0

    aget-object p2, p3, p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/local/p5home/P5SpeechBridge$2;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/local/p5home/P5SpeechBridge;->access$702(Lcom/local/p5home/P5SpeechBridge;J)J

    .line 157
    iget-object p1, p0, Lcom/local/p5home/P5SpeechBridge$2;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->access$808(Lcom/local/p5home/P5SpeechBridge;)J

    .line 158
    const-string p1, "P5_WAKE_HIT"

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->access$100(Ljava/lang/String;)V

    .line 161
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
