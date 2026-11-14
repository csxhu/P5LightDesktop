.class public final synthetic Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/TopBarSettingsActivity;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/TopBarSettingsActivity;Landroid/content/Context;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda25;->f$0:Lcom/local/p5home/TopBarSettingsActivity;

    iput-object p2, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda25;->f$1:Landroid/content/Context;

    iput p3, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda25;->f$2:I

    iput p4, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda25;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda25;->f$0:Lcom/local/p5home/TopBarSettingsActivity;

    iget-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda25;->f$1:Landroid/content/Context;

    iget v2, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda25;->f$2:I

    iget v3, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda25;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/local/p5home/TopBarSettingsActivity;->lambda$loadApps$10$com-local-g3home-TopBarSettingsActivity(Landroid/content/Context;II)V

    return-void
.end method
