.class final Lcom/local/p5home/TurnCameraHook$Sample;
.super Ljava/lang/Object;
.source "TurnCameraHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/TurnCameraHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Sample"
.end annotation


# instance fields
.field final at:J

.field final epoch:J

.field final value:F


# direct methods
.method constructor <init>(FJJ)V
    .registers 6

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/local/p5home/TurnCameraHook$Sample;->value:F

    iput-wide p2, p0, Lcom/local/p5home/TurnCameraHook$Sample;->at:J

    iput-wide p4, p0, Lcom/local/p5home/TurnCameraHook$Sample;->epoch:J

    return-void
.end method
