.class public final Lcom/local/p5home/HotspotManualToggleChange;
.super Ljava/lang/Object;
.implements Lcom/local/p5home/SettingsActivity$ToggleChange;

.field private final context:Landroid/content/Context;

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/local/p5home/HotspotManualToggleChange;->context:Landroid/content/Context;
    return-void
.end method

.method public change(Z)V
    .registers 3
    iget-object v0, p0, Lcom/local/p5home/HotspotManualToggleChange;->context:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/local/p5home/HotspotController;->setEnabled(Landroid/content/Context;Z)V
    return-void
.end method
