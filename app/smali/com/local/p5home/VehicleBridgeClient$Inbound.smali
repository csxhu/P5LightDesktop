.class final Lcom/local/p5home/VehicleBridgeClient$Inbound;
.super Ljava/lang/Object;
.source "VehicleBridgeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/VehicleBridgeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Inbound"
.end annotation


# instance fields
.field final epoch:J

.field final intent:Landroid/content/Intent;

.field final time:J


# direct methods
.method constructor <init>(Landroid/content/Intent;JJ)V
    .registers 6

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeClient$Inbound;->intent:Landroid/content/Intent;

    iput-wide p2, p0, Lcom/local/p5home/VehicleBridgeClient$Inbound;->epoch:J

    iput-wide p4, p0, Lcom/local/p5home/VehicleBridgeClient$Inbound;->time:J

    return-void
.end method
