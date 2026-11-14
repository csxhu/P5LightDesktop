.class public final synthetic Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/SettingsActivity;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/local/p5home/Ui$PanelDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/SettingsActivity;Ljava/util/List;Lcom/local/p5home/Ui$PanelDialog;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda20;->f$0:Lcom/local/p5home/SettingsActivity;

    iput-object p2, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda20;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda20;->f$2:Lcom/local/p5home/Ui$PanelDialog;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda20;->f$0:Lcom/local/p5home/SettingsActivity;

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda20;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda20;->f$2:Lcom/local/p5home/Ui$PanelDialog;

    invoke-virtual {v0, v1, v2, p1}, Lcom/local/p5home/SettingsActivity;->lambda$desktopSettings$25$com-local-g3home-SettingsActivity(Ljava/util/List;Lcom/local/p5home/Ui$PanelDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
