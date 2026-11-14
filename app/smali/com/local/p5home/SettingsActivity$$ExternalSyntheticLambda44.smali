.class public final synthetic Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/SettingsActivity;

.field public final synthetic f$1:[Lcom/local/p5home/Ui$PanelDialog;

.field public final synthetic f$2:Lcom/local/p5home/MusicRouter$Provider;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/SettingsActivity;[Lcom/local/p5home/Ui$PanelDialog;Lcom/local/p5home/MusicRouter$Provider;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda44;->f$0:Lcom/local/p5home/SettingsActivity;

    iput-object p2, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda44;->f$1:[Lcom/local/p5home/Ui$PanelDialog;

    iput-object p3, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda44;->f$2:Lcom/local/p5home/MusicRouter$Provider;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda44;->f$0:Lcom/local/p5home/SettingsActivity;

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda44;->f$1:[Lcom/local/p5home/Ui$PanelDialog;

    iget-object v2, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda44;->f$2:Lcom/local/p5home/MusicRouter$Provider;

    invoke-virtual {v0, v1, v2, p1}, Lcom/local/p5home/SettingsActivity;->lambda$chooseMusic$6$com-local-g3home-SettingsActivity([Lcom/local/p5home/Ui$PanelDialog;Lcom/local/p5home/MusicRouter$Provider;Landroid/view/View;)V

    return-void
.end method
