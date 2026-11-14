.class public final synthetic Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/app/Activity;

.field public final synthetic f$3:Lcom/local/p5home/DeviceActions$Callback;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Landroid/app/Activity;Lcom/local/p5home/DeviceActions$Callback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda5;->f$0:I

    iput-object p2, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda5;->f$2:Landroid/app/Activity;

    iput-object p4, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda5;->f$3:Lcom/local/p5home/DeviceActions$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda5;->f$0:I

    iget-object v1, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda5;->f$2:Landroid/app/Activity;

    iget-object v3, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda5;->f$3:Lcom/local/p5home/DeviceActions$Callback;

    invoke-static {v0, v1, v2, v3}, Lcom/local/p5home/DeviceActions;->lambda$run$5(ILjava/lang/String;Landroid/app/Activity;Lcom/local/p5home/DeviceActions$Callback;)V

    return-void
.end method
