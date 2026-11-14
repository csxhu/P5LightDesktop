.class public final synthetic Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HomeActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda10;->f$0:Lcom/local/p5home/HomeActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda10;->f$0:Lcom/local/p5home/HomeActivity;

    invoke-virtual {v0, p1}, Lcom/local/p5home/HomeActivity;->lambda$ask$8$com-local-g3home-HomeActivity(Landroid/content/DialogInterface;)V

    return-void
.end method
