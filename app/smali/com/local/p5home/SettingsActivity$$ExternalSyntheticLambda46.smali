.class public final synthetic Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda46;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/SettingsActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/local/p5home/AppConfig;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/local/p5home/SettingsActivity$Success;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/SettingsActivity;ZLcom/local/p5home/AppConfig;Ljava/lang/String;Lcom/local/p5home/SettingsActivity$Success;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda46;->f$0:Lcom/local/p5home/SettingsActivity;

    iput-boolean p2, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda46;->f$1:Z

    iput-object p3, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda46;->f$2:Lcom/local/p5home/AppConfig;

    iput-object p4, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda46;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda46;->f$4:Lcom/local/p5home/SettingsActivity$Success;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda46;->f$0:Lcom/local/p5home/SettingsActivity;

    iget-boolean v1, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda46;->f$1:Z

    iget-object v2, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda46;->f$2:Lcom/local/p5home/AppConfig;

    iget-object v3, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda46;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda46;->f$4:Lcom/local/p5home/SettingsActivity$Success;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/local/p5home/SettingsActivity;->lambda$saveConfig$4$com-local-g3home-SettingsActivity(ZLcom/local/p5home/AppConfig;Ljava/lang/String;Lcom/local/p5home/SettingsActivity$Success;)V

    return-void
.end method
