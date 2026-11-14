.class final Lcom/local/p5home/VehicleBridgePushPolicy$Event;
.super Ljava/lang/Object;
.source "VehicleBridgePushPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/VehicleBridgePushPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Event"
.end annotation


# instance fields
.field final created:J

.field final deadline:J

.field final epoch:J

.field final fingerprint:Ljava/lang/String;

.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/Object;J)V
    .registers 7

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Event;->epoch:J

    iput-object p3, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Event;->fingerprint:Ljava/lang/String;

    iput-object p4, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Event;->value:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Event;->created:J

    const-wide/16 p1, 0x9c4

    add-long/2addr p5, p1

    iput-wide p5, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Event;->deadline:J

    return-void
.end method
