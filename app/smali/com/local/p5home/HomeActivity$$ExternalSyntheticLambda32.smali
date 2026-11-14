.class public final synthetic Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HomeActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda32;->f$0:Lcom/local/p5home/HomeActivity;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda32;->f$0:Lcom/local/p5home/HomeActivity;

    invoke-virtual {v0, p1}, Lcom/local/p5home/HomeActivity;->lambda$renderShortcuts$11$com-local-g3home-HomeActivity(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
