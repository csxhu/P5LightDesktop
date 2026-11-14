.class public final synthetic Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/SettingsActivity;

.field public final synthetic f$1:Lcom/local/p5home/Ui$Toggle;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Lcom/local/p5home/Ui$PanelDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/SettingsActivity;Lcom/local/p5home/Ui$Toggle;Landroid/widget/EditText;Lcom/local/p5home/Ui$PanelDialog;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda41;->f$0:Lcom/local/p5home/SettingsActivity;

    iput-object p2, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda41;->f$1:Lcom/local/p5home/Ui$Toggle;

    iput-object p3, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda41;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda41;->f$3:Lcom/local/p5home/Ui$PanelDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda41;->f$0:Lcom/local/p5home/SettingsActivity;

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda41;->f$1:Lcom/local/p5home/Ui$Toggle;

    iget-object v2, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda41;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda41;->f$3:Lcom/local/p5home/Ui$PanelDialog;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/local/p5home/SettingsActivity;->lambda$wakeSettings$15$com-local-g3home-SettingsActivity(Lcom/local/p5home/Ui$Toggle;Landroid/widget/EditText;Lcom/local/p5home/Ui$PanelDialog;Landroid/view/View;)V

    return-void
.end method
