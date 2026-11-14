.class public final synthetic Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/local/p5home/HookSessions$Completion;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HookRuntime;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HookRuntime;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda6;->f$0:Lcom/local/p5home/HookRuntime;

    iput-object p2, p0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final done(ZLjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda6;->f$0:Lcom/local/p5home/HookRuntime;

    iget-object v1, p0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/local/p5home/HookRuntime;->lambda$pullReply$7$com-local-g3home-HookRuntime(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
