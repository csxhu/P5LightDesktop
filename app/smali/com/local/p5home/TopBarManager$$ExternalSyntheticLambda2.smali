.class public final synthetic Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/TopBarManager;

.field public final synthetic f$1:Lcom/local/p5home/TopBarBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/TopBarManager;Lcom/local/p5home/TopBarBinding;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda2;->f$0:Lcom/local/p5home/TopBarManager;

    iput-object p2, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda2;->f$1:Lcom/local/p5home/TopBarBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda2;->f$0:Lcom/local/p5home/TopBarManager;

    iget-object v1, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda2;->f$1:Lcom/local/p5home/TopBarBinding;

    invoke-virtual {v0, v1, p1}, Lcom/local/p5home/TopBarManager;->lambda$apply$7$com-local-g3home-TopBarManager(Lcom/local/p5home/TopBarBinding;Landroid/view/View;)V

    return-void
.end method
