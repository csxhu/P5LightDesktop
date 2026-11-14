.class public final synthetic Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/local/p5home/SettingsActivity$Success;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/SettingsActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/SettingsActivity;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda0;->f$0:Lcom/local/p5home/SettingsActivity;

    iput-boolean p2, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda0;->f$0:Lcom/local/p5home/SettingsActivity;

    iget-boolean v1, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda0;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/local/p5home/SettingsActivity;->lambda$saveApi$17$com-local-g3home-SettingsActivity(Z)V

    return-void
.end method
