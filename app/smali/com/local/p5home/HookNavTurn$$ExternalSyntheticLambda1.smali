.class public final synthetic Lcom/local/p5home/HookNavTurn$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HookNavTurn;

.field public final synthetic f$1:Lcom/local/p5home/HookNavTurn$Owner;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HookNavTurn;Lcom/local/p5home/HookNavTurn$Owner;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HookNavTurn$$ExternalSyntheticLambda1;->f$0:Lcom/local/p5home/HookNavTurn;

    iput-object p2, p0, Lcom/local/p5home/HookNavTurn$$ExternalSyntheticLambda1;->f$1:Lcom/local/p5home/HookNavTurn$Owner;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/local/p5home/HookNavTurn$$ExternalSyntheticLambda1;->f$0:Lcom/local/p5home/HookNavTurn;

    iget-object v1, p0, Lcom/local/p5home/HookNavTurn$$ExternalSyntheticLambda1;->f$1:Lcom/local/p5home/HookNavTurn$Owner;

    invoke-virtual {v0, v1}, Lcom/local/p5home/HookNavTurn;->lambda$afterAsr$1$com-local-g3home-HookNavTurn(Lcom/local/p5home/HookNavTurn$Owner;)V

    return-void
.end method
