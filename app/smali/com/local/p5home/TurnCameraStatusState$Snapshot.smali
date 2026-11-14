.class final Lcom/local/p5home/TurnCameraStatusState$Snapshot;
.super Ljava/lang/Object;
.source "TurnCameraStatusState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/TurnCameraStatusState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Snapshot"
.end annotation


# instance fields
.field final ageMs:J

.field final connected:Z

.field final connectionSeen:Z

.field final fresh:Z

.field final gearFault:Z

.field final gearSeen:Z

.field final lampFault:Z

.field final lampSeen:Z

.field final observerAdded:Z


# direct methods
.method constructor <init>(ZZIIIJ)V
    .registers 10

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/local/p5home/TurnCameraStatusState$Snapshot;->fresh:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    move p2, v1

    goto :goto_e

    :cond_d
    move p2, v0

    :goto_e
    iput-boolean p2, p0, Lcom/local/p5home/TurnCameraStatusState$Snapshot;->observerAdded:Z

    if-eqz p1, :cond_16

    if-eqz p3, :cond_16

    move p2, v1

    goto :goto_17

    :cond_16
    move p2, v0

    :goto_17
    iput-boolean p2, p0, Lcom/local/p5home/TurnCameraStatusState$Snapshot;->connectionSeen:Z

    if-eqz p1, :cond_1f

    if-ne p3, v1, :cond_1f

    move p2, v1

    goto :goto_20

    :cond_1f
    move p2, v0

    :goto_20
    iput-boolean p2, p0, Lcom/local/p5home/TurnCameraStatusState$Snapshot;->connected:Z

    .line 12
    if-eqz p1, :cond_28

    if-eqz p4, :cond_28

    move p2, v1

    goto :goto_29

    :cond_28
    move p2, v0

    :goto_29
    iput-boolean p2, p0, Lcom/local/p5home/TurnCameraStatusState$Snapshot;->lampSeen:Z

    const/4 p2, 0x2

    if-eqz p1, :cond_32

    if-ne p4, p2, :cond_32

    move p3, v1

    goto :goto_33

    :cond_32
    move p3, v0

    :goto_33
    iput-boolean p3, p0, Lcom/local/p5home/TurnCameraStatusState$Snapshot;->lampFault:Z

    .line 13
    if-eqz p1, :cond_3b

    if-eqz p5, :cond_3b

    move p3, v1

    goto :goto_3c

    :cond_3b
    move p3, v0

    :goto_3c
    iput-boolean p3, p0, Lcom/local/p5home/TurnCameraStatusState$Snapshot;->gearSeen:Z

    if-eqz p1, :cond_43

    if-ne p5, p2, :cond_43

    move v0, v1

    :cond_43
    iput-boolean v0, p0, Lcom/local/p5home/TurnCameraStatusState$Snapshot;->gearFault:Z

    iput-wide p6, p0, Lcom/local/p5home/TurnCameraStatusState$Snapshot;->ageMs:J

    .line 14
    return-void
.end method
