.class public final synthetic Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(JLandroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda4;->f$0:J

    iput-object p3, p0, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-wide v0, p0, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda4;->f$0:J

    iget-object v2, p0, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/local/p5home/NavAutoSession;->lambda$navigationDispatched$4(JLandroid/content/Context;)V

    return-void
.end method
