.class final Lcom/local/p5home/TurnCameraNativeBridge$Permit;
.super Ljava/lang/Object;
.source "TurnCameraNativeBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/TurnCameraNativeBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Permit"
.end annotation


# instance fields
.field final closing:Z

.field final deadline:J

.field final generation:J

.field final side:I


# direct methods
.method constructor <init>(JIJZ)V
    .registers 7

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/local/p5home/TurnCameraNativeBridge$Permit;->generation:J

    iput p3, p0, Lcom/local/p5home/TurnCameraNativeBridge$Permit;->side:I

    iput-wide p4, p0, Lcom/local/p5home/TurnCameraNativeBridge$Permit;->deadline:J

    iput-boolean p6, p0, Lcom/local/p5home/TurnCameraNativeBridge$Permit;->closing:Z

    return-void
.end method
