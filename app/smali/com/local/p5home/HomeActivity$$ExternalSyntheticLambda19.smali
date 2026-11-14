.class public final synthetic Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/local/p5home/OemVoiceWake$Callback;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HomeActivity;

.field public final synthetic f$1:Lcom/local/p5home/Ui$PanelDialog;

.field public final synthetic f$2:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HomeActivity;Lcom/local/p5home/Ui$PanelDialog;Landroid/widget/TextView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda19;->f$0:Lcom/local/p5home/HomeActivity;

    iput-object p2, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda19;->f$1:Lcom/local/p5home/Ui$PanelDialog;

    iput-object p3, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda19;->f$2:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda19;->f$0:Lcom/local/p5home/HomeActivity;

    iget-object v1, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda19;->f$1:Lcom/local/p5home/Ui$PanelDialog;

    iget-object v2, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda19;->f$2:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/local/p5home/HomeActivity;->lambda$ask$6$com-local-g3home-HomeActivity(Lcom/local/p5home/Ui$PanelDialog;Landroid/widget/TextView;ZLjava/lang/String;)V

    return-void
.end method
