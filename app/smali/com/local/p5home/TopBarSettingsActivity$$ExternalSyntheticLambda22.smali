.class public final synthetic Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/TopBarSettingsActivity;

.field public final synthetic f$1:Lcom/local/p5home/TopBarSettingsActivity$Write;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/Runnable;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/TopBarSettingsActivity;Lcom/local/p5home/TopBarSettingsActivity$Write;ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda22;->f$0:Lcom/local/p5home/TopBarSettingsActivity;

    iput-object p2, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda22;->f$1:Lcom/local/p5home/TopBarSettingsActivity$Write;

    iput p3, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda22;->f$2:I

    iput-object p4, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda22;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda22;->f$4:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda22;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda22;->f$0:Lcom/local/p5home/TopBarSettingsActivity;

    iget-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda22;->f$1:Lcom/local/p5home/TopBarSettingsActivity$Write;

    iget v2, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda22;->f$2:I

    iget-object v3, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda22;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda22;->f$4:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda22;->f$5:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/local/p5home/TopBarSettingsActivity;->lambda$write$25$com-local-g3home-TopBarSettingsActivity(Lcom/local/p5home/TopBarSettingsActivity$Write;ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
