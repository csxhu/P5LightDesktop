.class Lcom/local/p5home/SpeechOutput$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SpeechOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/SpeechOutput;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/SpeechOutput;


# direct methods
.method constructor <init>(Lcom/local/p5home/SpeechOutput;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/local/p5home/SpeechOutput$1;->this$0:Lcom/local/p5home/SpeechOutput;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onDone$2$com-local-g3home-SpeechOutput$1(Ljava/lang/String;)V
    .registers 5

    .line 33
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput$1;->this$0:Lcom/local/p5home/SpeechOutput;

    const/4 v1, 0x1

    const-string v2, "\u8c46\u5305\u56de\u7b54\u64ad\u62a5\u5b8c\u6210"

    # invokes: Lcom/local/p5home/SpeechOutput;->finish(Ljava/lang/String;ZLjava/lang/String;)V
    invoke-static {v0, p1, v1, v2}, Lcom/local/p5home/SpeechOutput;->access$100(Lcom/local/p5home/SpeechOutput;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onError$3$com-local-g3home-SpeechOutput$1(Ljava/lang/String;)V
    .registers 5

    .line 34
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput$1;->this$0:Lcom/local/p5home/SpeechOutput;

    const/4 v1, 0x0

    const-string v2, "\u7cfb\u7edf\u64ad\u62a5\u5f15\u64ce\u672a\u5b8c\u6210\u672c\u6b21\u64ad\u653e"

    # invokes: Lcom/local/p5home/SpeechOutput;->finish(Ljava/lang/String;ZLjava/lang/String;)V
    invoke-static {v0, p1, v1, v2}, Lcom/local/p5home/SpeechOutput;->access$100(Lcom/local/p5home/SpeechOutput;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onError$4$com-local-g3home-SpeechOutput$1(Ljava/lang/String;I)V
    .registers 6

    .line 35
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput$1;->this$0:Lcom/local/p5home/SpeechOutput;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7cfb\u7edf\u64ad\u62a5\u5f15\u64ce\u8fd4\u56de\u9519\u8bef\uff08"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\uff09"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    # invokes: Lcom/local/p5home/SpeechOutput;->finish(Ljava/lang/String;ZLjava/lang/String;)V
    invoke-static {v0, p1, v1, p2}, Lcom/local/p5home/SpeechOutput;->access$100(Lcom/local/p5home/SpeechOutput;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onStart$0$com-local-g3home-SpeechOutput$1(Ljava/lang/String;)V
    .registers 5

    .line 31
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput$1;->this$0:Lcom/local/p5home/SpeechOutput;

    # getter for: Lcom/local/p5home/SpeechOutput;->currentId:Ljava/lang/String;
    invoke-static {v0}, Lcom/local/p5home/SpeechOutput;->access$200(Lcom/local/p5home/SpeechOutput;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/local/p5home/SpeechOutput$1;->this$0:Lcom/local/p5home/SpeechOutput;

    # getter for: Lcom/local/p5home/SpeechOutput;->currentValid:Ljava/util/function/BooleanSupplier;
    invoke-static {p1}, Lcom/local/p5home/SpeechOutput;->access$300(Lcom/local/p5home/SpeechOutput;)Ljava/util/function/BooleanSupplier;

    move-result-object p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/local/p5home/SpeechOutput$1;->this$0:Lcom/local/p5home/SpeechOutput;

    # getter for: Lcom/local/p5home/SpeechOutput;->currentValid:Ljava/util/function/BooleanSupplier;
    invoke-static {p1}, Lcom/local/p5home/SpeechOutput;->access$300(Lcom/local/p5home/SpeechOutput;)Ljava/util/function/BooleanSupplier;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p1

    if-nez p1, :cond_28

    iget-object p1, p0, Lcom/local/p5home/SpeechOutput$1;->this$0:Lcom/local/p5home/SpeechOutput;

    const-string v0, "\u64ad\u62a5\u8bf7\u6c42\u5df2\u8fc7\u671f"

    # invokes: Lcom/local/p5home/SpeechOutput;->cancelOnMain(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/local/p5home/SpeechOutput;->access$400(Lcom/local/p5home/SpeechOutput;Ljava/lang/String;)V

    goto :goto_57

    :cond_28
    iget-object p1, p0, Lcom/local/p5home/SpeechOutput$1;->this$0:Lcom/local/p5home/SpeechOutput;

    # getter for: Lcom/local/p5home/SpeechOutput;->app:Landroid/content/Context;
    invoke-static {p1}, Lcom/local/p5home/SpeechOutput;->access$500(Lcom/local/p5home/SpeechOutput;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, ""

    const-string v2, "\u6b63\u5728\u64ad\u653e\u8bed\u97f3"

    invoke-static {p1, v2, v0, v1}, Lcom/local/p5home/BridgeStore;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_36
    iget-object p1, p0, Lcom/local/p5home/SpeechOutput$1;->this$0:Lcom/local/p5home/SpeechOutput;

    # getter for: Lcom/local/p5home/SpeechOutput;->currentStarted:Z
    invoke-static {p1}, Lcom/local/p5home/SpeechOutput;->access$600(Lcom/local/p5home/SpeechOutput;)Z

    move-result p1

    if-nez p1, :cond_57

    iget-object p1, p0, Lcom/local/p5home/SpeechOutput$1;->this$0:Lcom/local/p5home/SpeechOutput;

    # getter for: Lcom/local/p5home/SpeechOutput;->current:Lcom/local/p5home/SpeechOutput$Callback;
    invoke-static {p1}, Lcom/local/p5home/SpeechOutput;->access$700(Lcom/local/p5home/SpeechOutput;)Lcom/local/p5home/SpeechOutput$Callback;

    move-result-object p1

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/local/p5home/SpeechOutput$1;->this$0:Lcom/local/p5home/SpeechOutput;

    const/4 v0, 0x1

    # setter for: Lcom/local/p5home/SpeechOutput;->currentStarted:Z
    invoke-static {p1, v0}, Lcom/local/p5home/SpeechOutput;->access$602(Lcom/local/p5home/SpeechOutput;Z)Z

    iget-object p1, p0, Lcom/local/p5home/SpeechOutput$1;->this$0:Lcom/local/p5home/SpeechOutput;

    # getter for: Lcom/local/p5home/SpeechOutput;->current:Lcom/local/p5home/SpeechOutput$Callback;
    invoke-static {p1}, Lcom/local/p5home/SpeechOutput;->access$700(Lcom/local/p5home/SpeechOutput;)Lcom/local/p5home/SpeechOutput$Callback;

    move-result-object p1

    invoke-interface {p1}, Lcom/local/p5home/SpeechOutput$Callback;->started()V
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception p1

    :cond_57
    :goto_57
    return-void
.end method

.method synthetic lambda$onStop$1$com-local-g3home-SpeechOutput$1(Ljava/lang/String;Z)V
    .registers 5

    .line 32
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput$1;->this$0:Lcom/local/p5home/SpeechOutput;

    if-eqz p2, :cond_7

    const-string p2, "\u64ad\u62a5\u5df2\u88ab\u65b0\u7684\u8bed\u97f3\u6253\u65ad"

    goto :goto_9

    :cond_7
    const-string p2, "\u7cfb\u7edf\u64ad\u62a5\u5df2\u505c\u6b62"

    :goto_9
    const/4 v1, 0x0

    # invokes: Lcom/local/p5home/SpeechOutput;->finish(Ljava/lang/String;ZLjava/lang/String;)V
    invoke-static {v0, p1, v1, p2}, Lcom/local/p5home/SpeechOutput;->access$100(Lcom/local/p5home/SpeechOutput;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .registers 4

    .line 33
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput$1;->this$0:Lcom/local/p5home/SpeechOutput;

    # getter for: Lcom/local/p5home/SpeechOutput;->main:Landroid/os/Handler;
    invoke-static {v0}, Lcom/local/p5home/SpeechOutput;->access$000(Lcom/local/p5home/SpeechOutput;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/local/p5home/SpeechOutput$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/local/p5home/SpeechOutput$1$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/SpeechOutput$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 4

    .line 34
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput$1;->this$0:Lcom/local/p5home/SpeechOutput;

    # getter for: Lcom/local/p5home/SpeechOutput;->main:Landroid/os/Handler;
    invoke-static {v0}, Lcom/local/p5home/SpeechOutput;->access$000(Lcom/local/p5home/SpeechOutput;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/local/p5home/SpeechOutput$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/local/p5home/SpeechOutput$1$$ExternalSyntheticLambda4;-><init>(Lcom/local/p5home/SpeechOutput$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .registers 5

    .line 35
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput$1;->this$0:Lcom/local/p5home/SpeechOutput;

    # getter for: Lcom/local/p5home/SpeechOutput;->main:Landroid/os/Handler;
    invoke-static {v0}, Lcom/local/p5home/SpeechOutput;->access$000(Lcom/local/p5home/SpeechOutput;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/local/p5home/SpeechOutput$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/local/p5home/SpeechOutput$1$$ExternalSyntheticLambda2;-><init>(Lcom/local/p5home/SpeechOutput$1;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .registers 4

    .line 31
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput$1;->this$0:Lcom/local/p5home/SpeechOutput;

    # getter for: Lcom/local/p5home/SpeechOutput;->main:Landroid/os/Handler;
    invoke-static {v0}, Lcom/local/p5home/SpeechOutput;->access$000(Lcom/local/p5home/SpeechOutput;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/local/p5home/SpeechOutput$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/local/p5home/SpeechOutput$1$$ExternalSyntheticLambda1;-><init>(Lcom/local/p5home/SpeechOutput$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStop(Ljava/lang/String;Z)V
    .registers 5

    .line 32
    iget-object v0, p0, Lcom/local/p5home/SpeechOutput$1;->this$0:Lcom/local/p5home/SpeechOutput;

    # getter for: Lcom/local/p5home/SpeechOutput;->main:Landroid/os/Handler;
    invoke-static {v0}, Lcom/local/p5home/SpeechOutput;->access$000(Lcom/local/p5home/SpeechOutput;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/local/p5home/SpeechOutput$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/local/p5home/SpeechOutput$1$$ExternalSyntheticLambda3;-><init>(Lcom/local/p5home/SpeechOutput$1;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
