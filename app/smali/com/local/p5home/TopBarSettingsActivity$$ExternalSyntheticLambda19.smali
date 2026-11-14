.class public final synthetic Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/local/p5home/TopBarSettingsActivity$Write;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/TopBarSettingsActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/TopBarSettingsActivity;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda19;->f$0:Lcom/local/p5home/TopBarSettingsActivity;

    iput p2, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda19;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()Z
    .registers 3

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda19;->f$0:Lcom/local/p5home/TopBarSettingsActivity;

    iget v1, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda19;->f$1:I

    invoke-virtual {v0, v1}, Lcom/local/p5home/TopBarSettingsActivity;->lambda$confirmReset$17$com-local-g3home-TopBarSettingsActivity(I)Z

    move-result v0

    return v0
.end method
