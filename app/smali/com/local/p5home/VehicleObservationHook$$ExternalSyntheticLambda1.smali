.class public final synthetic Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:D

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/Boolean;

.field public final synthetic f$4:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(IDLjava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda1;->f$0:I

    iput-wide p2, p0, Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda1;->f$1:D

    iput-object p4, p0, Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p5, p0, Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda1;->f$4:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget v0, p0, Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda1;->f$0:I

    iget-wide v1, p0, Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda1;->f$1:D

    iget-object v3, p0, Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v4, p0, Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda1;->f$4:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/local/p5home/VehicleObservationHook;->lambda$publish$1(IDLjava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    return-void
.end method
