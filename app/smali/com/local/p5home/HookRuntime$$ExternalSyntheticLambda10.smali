.class public final synthetic Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/local/p5home/HookNavTurn$Enabled;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HookRuntime;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HookRuntime;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda10;->f$0:Lcom/local/p5home/HookRuntime;

    return-void
.end method


# virtual methods
.method public final get()Z
    .registers 2

    iget-object v0, p0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda10;->f$0:Lcom/local/p5home/HookRuntime;

    invoke-virtual {v0}, Lcom/local/p5home/HookRuntime;->lambda$install$2$com-local-g3home-HookRuntime()Z

    move-result v0

    return v0
.end method
