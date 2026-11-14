.class public final synthetic Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(JLandroid/content/Context;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda3;->f$0:J

    iput-object p3, p0, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iput p4, p0, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-wide v0, p0, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda3;->f$0:J

    iget-object v2, p0, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iget v3, p0, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda3;->f$2:I

    invoke-static {v0, v1, v2, v3}, Lcom/local/p5home/NavAutoSession;->lambda$pollRoutes$2(JLandroid/content/Context;I)V

    return-void
.end method
