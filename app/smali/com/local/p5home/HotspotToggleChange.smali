.class public final Lcom/local/p5home/HotspotToggleChange;
.super Ljava/lang/Object;
.implements Lcom/local/p5home/SettingsActivity$ToggleChange;

.field private final context:Landroid/content/Context;

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/local/p5home/HotspotToggleChange;->context:Landroid/content/Context;
    return-void
.end method

.method public change(Z)V
    .registers 4
    iget-object v0, p0, Lcom/local/p5home/HotspotToggleChange;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/local/p5home/ConfigStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "autoWifiHotspot"
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    return-void
.end method
