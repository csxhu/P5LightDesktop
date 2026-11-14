.class public final synthetic Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/local/p5home/DeviceActions$Callback;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lcom/local/p5home/DeviceActions$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/local/p5home/DeviceActions$Callback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda2;->f$1:Lcom/local/p5home/DeviceActions$Callback;

    return-void
.end method


# virtual methods
.method public final done(ZLjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda2;->f$1:Lcom/local/p5home/DeviceActions$Callback;

    invoke-static {v0, v1, p1, p2}, Lcom/local/p5home/DeviceActions;->lambda$setDefaultHome$1(Landroid/app/Activity;Lcom/local/p5home/DeviceActions$Callback;ZLjava/lang/String;)V

    return-void
.end method
