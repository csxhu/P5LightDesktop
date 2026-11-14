.class public final synthetic Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/local/p5home/HookPolicy$Submit;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HookRuntime;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HookRuntime;Landroid/os/Bundle;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda3;->f$0:Lcom/local/p5home/HookRuntime;

    iput-object p2, p0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda3;->f$1:Landroid/os/Bundle;

    iput-boolean p3, p0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda3;->f$2:Z

    return-void
.end method


# virtual methods
.method public final send()Z
    .registers 4

    iget-object v0, p0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda3;->f$0:Lcom/local/p5home/HookRuntime;

    iget-object v1, p0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda3;->f$1:Landroid/os/Bundle;

    iget-boolean v2, p0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda3;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/HookRuntime;->lambda$submit$5$com-local-g3home-HookRuntime(Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method
