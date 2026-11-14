.class public final synthetic Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/TopBarSettingsActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/local/p5home/TopBarSettingsActivity$AppChoice;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/TopBarSettingsActivity;ILcom/local/p5home/TopBarSettingsActivity$AppChoice;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda0;->f$0:Lcom/local/p5home/TopBarSettingsActivity;

    iput p2, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda0;->f$2:Lcom/local/p5home/TopBarSettingsActivity$AppChoice;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda0;->f$0:Lcom/local/p5home/TopBarSettingsActivity;

    iget v1, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda0;->f$2:Lcom/local/p5home/TopBarSettingsActivity$AppChoice;

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/TopBarSettingsActivity;->lambda$confirmChoice$16$com-local-g3home-TopBarSettingsActivity(ILcom/local/p5home/TopBarSettingsActivity$AppChoice;)V

    return-void
.end method
