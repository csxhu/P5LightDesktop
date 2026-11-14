.class public final synthetic Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/ClassLoader;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda0;->f$2:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda0;->f$2:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Lcom/local/p5home/VehicleObservationHook;->lambda$schedule$0(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ClassLoader;)V

    return-void
.end method
