.class public final synthetic Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HomeActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/Map;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HomeActivity;ILjava/util/List;Ljava/util/Map;ZLjava/lang/Runnable;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda7;->f$0:Lcom/local/p5home/HomeActivity;

    iput p2, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda7;->f$1:I

    iput-object p3, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda7;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda7;->f$3:Ljava/util/Map;

    iput-boolean p5, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda7;->f$4:Z

    iput-object p6, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda7;->f$5:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda7;->f$0:Lcom/local/p5home/HomeActivity;

    iget v1, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda7;->f$1:I

    iget-object v2, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda7;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda7;->f$3:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda7;->f$4:Z

    iget-object v5, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda7;->f$5:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v5}, Lcom/local/p5home/HomeActivity;->lambda$loadApps$25$com-local-g3home-HomeActivity(ILjava/util/List;Ljava/util/Map;ZLjava/lang/Runnable;)V

    return-void
.end method
