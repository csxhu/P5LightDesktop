.class final Lcom/local/p5home/TurnCameraControl$Result;
.super Ljava/lang/Object;
.source "TurnCameraControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/TurnCameraControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Result"
.end annotation


# instance fields
.field final accepted:Z

.field final autoCapability:Ljava/lang/String;

.field final message:Ljava/lang/String;

.field final nativeBuild:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .registers 5

    .line 11
    const-string v0, "unknown"

    const-string v1, ""

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/local/p5home/TurnCameraControl$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/local/p5home/TurnCameraControl$Result;->accepted:Z

    iput-object p2, p0, Lcom/local/p5home/TurnCameraControl$Result;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/local/p5home/TurnCameraControl$Result;->autoCapability:Ljava/lang/String;

    iput-object p4, p0, Lcom/local/p5home/TurnCameraControl$Result;->nativeBuild:Ljava/lang/String;

    return-void
.end method
