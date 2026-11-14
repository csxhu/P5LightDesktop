.class public final synthetic Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/DeviceActions$Callback;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/DeviceActions$Callback;ZLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda1;->f$0:Lcom/local/p5home/DeviceActions$Callback;

    iput-boolean p2, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda1;->f$0:Lcom/local/p5home/DeviceActions$Callback;

    iget-boolean v1, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v2, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/local/p5home/DeviceActions;->lambda$run$4(Lcom/local/p5home/DeviceActions$Callback;ZLjava/lang/String;)V

    return-void
.end method
