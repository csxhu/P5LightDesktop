.class public final synthetic Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HookRuntime;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HookRuntime;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda8;->f$0:Lcom/local/p5home/HookRuntime;

    iput-object p2, p0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda8;->f$0:Lcom/local/p5home/HookRuntime;

    iget-object v1, p0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/HookRuntime;->lambda$pullReply$9$com-local-g3home-HookRuntime(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
