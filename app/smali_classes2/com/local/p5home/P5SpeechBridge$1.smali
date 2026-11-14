.class Lcom/local/p5home/P5SpeechBridge$1;
.super Ljava/lang/Object;
.source "P5SpeechBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/P5SpeechBridge;->start()V
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

    .line 96
    iput-object p1, p0, Lcom/local/p5home/P5SpeechBridge$1;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/local/p5home/P5SpeechBridge$1;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v0}, Lcom/local/p5home/P5SpeechBridge;->access$000(Lcom/local/p5home/P5SpeechBridge;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const-string v0, "P5_GUARD_REJECTED"

    invoke-static {v0}, Lcom/local/p5home/P5SpeechBridge;->access$100(Ljava/lang/String;)V

    .line 101
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/local/p5home/P5SpeechBridge$1;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v0}, Lcom/local/p5home/P5SpeechBridge;->access$200(Lcom/local/p5home/P5SpeechBridge;)V

    .line 104
    iget-object v0, p0, Lcom/local/p5home/P5SpeechBridge$1;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v0}, Lcom/local/p5home/P5SpeechBridge;->access$400(Lcom/local/p5home/P5SpeechBridge;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lcom/local/p5home/P5SpeechBridge$1$1;

    invoke-direct {v2, p0}, Lcom/local/p5home/P5SpeechBridge$1$1;-><init>(Lcom/local/p5home/P5SpeechBridge$1;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P5_INSTALL_FAILED_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/local/p5home/P5SpeechBridge;->access$100(Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void
.end method
