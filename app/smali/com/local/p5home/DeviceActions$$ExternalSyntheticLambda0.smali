.class public final synthetic Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Process;

.field public final synthetic f$1:Ljava/lang/StringBuilder;

.field public final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Process;Ljava/lang/StringBuilder;Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Process;

    iput-object p2, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda0;->f$1:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda0;->f$2:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Process;

    iget-object v1, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda0;->f$1:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda0;->f$2:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/local/p5home/DeviceActions;->lambda$run$3(Ljava/lang/Process;Ljava/lang/StringBuilder;Landroid/app/Activity;)V

    return-void
.end method
