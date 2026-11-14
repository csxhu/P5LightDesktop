.class public final synthetic Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/SettingsActivity;

.field public final synthetic f$1:Lcom/local/p5home/SettingsActivity$ToggleChange;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/SettingsActivity;Lcom/local/p5home/SettingsActivity$ToggleChange;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda43;->f$0:Lcom/local/p5home/SettingsActivity;

    iput-object p2, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda43;->f$1:Lcom/local/p5home/SettingsActivity$ToggleChange;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda43;->f$0:Lcom/local/p5home/SettingsActivity;

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda43;->f$1:Lcom/local/p5home/SettingsActivity$ToggleChange;

    invoke-virtual {v0, v1, p1, p2}, Lcom/local/p5home/SettingsActivity;->lambda$toggle$3$com-local-g3home-SettingsActivity(Lcom/local/p5home/SettingsActivity$ToggleChange;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
