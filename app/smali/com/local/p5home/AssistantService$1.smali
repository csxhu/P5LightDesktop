.class Lcom/local/p5home/AssistantService$1;
.super Ljava/lang/Object;
.source "AssistantService.java"

# interfaces
.implements Lcom/local/p5home/SpeechOutput$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/AssistantService;->deliver(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/AssistantService;

.field final synthetic val$error:Ljava/lang/String;

.field final synthetic val$token:I

.field final synthetic val$voiceRequestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/local/p5home/AssistantService;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/local/p5home/AssistantService$1;->this$0:Lcom/local/p5home/AssistantService;

    iput p2, p0, Lcom/local/p5home/AssistantService$1;->val$token:I

    iput-object p3, p0, Lcom/local/p5home/AssistantService$1;->val$voiceRequestId:Ljava/lang/String;

    iput-object p4, p0, Lcom/local/p5home/AssistantService$1;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(ZLjava/lang/String;)V
    .registers 8

    .line 78
    iget-object v0, p0, Lcom/local/p5home/AssistantService$1;->this$0:Lcom/local/p5home/AssistantService;

    # getter for: Lcom/local/p5home/AssistantService;->destroyed:Z
    invoke-static {v0}, Lcom/local/p5home/AssistantService;->access$000(Lcom/local/p5home/AssistantService;)Z

    move-result v0

    if-nez v0, :cond_60

    iget v0, p0, Lcom/local/p5home/AssistantService$1;->val$token:I

    iget-object v1, p0, Lcom/local/p5home/AssistantService$1;->this$0:Lcom/local/p5home/AssistantService;

    # getter for: Lcom/local/p5home/AssistantService;->generation:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/local/p5home/AssistantService;->access$100(Lcom/local/p5home/AssistantService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_60

    iget-object v0, p0, Lcom/local/p5home/AssistantService$1;->val$error:Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/local/p5home/AssistantService$1;->this$0:Lcom/local/p5home/AssistantService;

    if-eqz p1, :cond_22

    goto :goto_23

    :cond_22
    move-object v1, p2

    :goto_23
    invoke-static {v0, p2, v2, v1}, Lcom/local/p5home/BridgeStore;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_27
    iget-object v0, p0, Lcom/local/p5home/AssistantService$1;->this$0:Lcom/local/p5home/AssistantService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/local/p5home/AssistantService$1;->val$error:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_37

    goto :goto_4a

    :cond_37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\uff1b"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u6a21\u578b\u8bf7\u6c42\u672a\u5b8c\u6210"

    invoke-static {v0, p2, v2, p1}, Lcom/local/p5home/BridgeStore;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_57
    iget-object p1, p0, Lcom/local/p5home/AssistantService$1;->this$0:Lcom/local/p5home/AssistantService;

    const-string p2, "turn_complete"

    iget-object v0, p0, Lcom/local/p5home/AssistantService$1;->val$voiceRequestId:Ljava/lang/String;

    # invokes: Lcom/local/p5home/AssistantService;->turnReceipt(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, p2, v0}, Lcom/local/p5home/AssistantService;->access$200(Lcom/local/p5home/AssistantService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    iget-object p1, p0, Lcom/local/p5home/AssistantService$1;->this$0:Lcom/local/p5home/AssistantService;

    # invokes: Lcom/local/p5home/AssistantService;->finishJob()V
    invoke-static {p1}, Lcom/local/p5home/AssistantService;->access$300(Lcom/local/p5home/AssistantService;)V

    return-void
.end method

.method public started()V
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/local/p5home/AssistantService$1;->this$0:Lcom/local/p5home/AssistantService;

    # getter for: Lcom/local/p5home/AssistantService;->destroyed:Z
    invoke-static {v0}, Lcom/local/p5home/AssistantService;->access$000(Lcom/local/p5home/AssistantService;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget v0, p0, Lcom/local/p5home/AssistantService$1;->val$token:I

    iget-object v1, p0, Lcom/local/p5home/AssistantService$1;->this$0:Lcom/local/p5home/AssistantService;

    # getter for: Lcom/local/p5home/AssistantService;->generation:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/local/p5home/AssistantService;->access$100(Lcom/local/p5home/AssistantService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/local/p5home/AssistantService$1;->this$0:Lcom/local/p5home/AssistantService;

    const-string v1, "turn_started"

    iget-object v2, p0, Lcom/local/p5home/AssistantService$1;->val$voiceRequestId:Ljava/lang/String;

    # invokes: Lcom/local/p5home/AssistantService;->turnReceipt(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/local/p5home/AssistantService;->access$200(Lcom/local/p5home/AssistantService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method
