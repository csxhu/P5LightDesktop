.class public final synthetic Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HomeActivity;

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:Lcom/local/p5home/Ui$PanelDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HomeActivity;Landroid/widget/TextView;Lcom/local/p5home/Ui$PanelDialog;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda9;->f$0:Lcom/local/p5home/HomeActivity;

    iput-object p2, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda9;->f$1:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda9;->f$2:Lcom/local/p5home/Ui$PanelDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda9;->f$0:Lcom/local/p5home/HomeActivity;

    iget-object v1, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda9;->f$1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda9;->f$2:Lcom/local/p5home/Ui$PanelDialog;

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/HomeActivity;->lambda$ask$7$com-local-g3home-HomeActivity(Landroid/widget/TextView;Lcom/local/p5home/Ui$PanelDialog;)V

    return-void
.end method
