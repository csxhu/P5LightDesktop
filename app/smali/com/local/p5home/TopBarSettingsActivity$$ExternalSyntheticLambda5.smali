.class public final synthetic Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/TopBarSettingsActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/TopBarSettingsActivity;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda5;->f$0:Lcom/local/p5home/TopBarSettingsActivity;

    iput-boolean p2, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda5;->f$0:Lcom/local/p5home/TopBarSettingsActivity;

    iget-boolean v1, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda5;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/local/p5home/TopBarSettingsActivity;->lambda$confirmEnabled$13$com-local-g3home-TopBarSettingsActivity(Z)V

    return-void
.end method
