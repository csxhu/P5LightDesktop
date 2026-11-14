.class public Lcom/local/p5home/Navigator$Result;
.super Ljava/lang/Object;
.source "Navigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/Navigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final accepted:Z

.field final conversationEpoch:J

.field public final message:Ljava/lang/String;

.field public final replyData:Ljava/lang/String;

.field public final replyEvent:Ljava/lang/String;

.field public final replyKind:Ljava/lang/String;

.field public final state:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .registers 11

    .line 46
    if-eqz p1, :cond_5

    const-string v0, "dispatched"

    goto :goto_7

    :cond_5
    const-string v0, "unsupported"

    :goto_7
    move-object v4, v0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 49
    const-wide/16 v7, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 50
    return-void
.end method

.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean p1, p0, Lcom/local/p5home/Navigator$Result;->accepted:Z

    iput-object p2, p0, Lcom/local/p5home/Navigator$Result;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/local/p5home/Navigator$Result;->state:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/local/p5home/Navigator$Result;->replyKind:Ljava/lang/String;

    iput-object p5, p0, Lcom/local/p5home/Navigator$Result;->replyEvent:Ljava/lang/String;

    iput-object p6, p0, Lcom/local/p5home/Navigator$Result;->replyData:Ljava/lang/String;

    .line 54
    iput-wide p7, p0, Lcom/local/p5home/Navigator$Result;->conversationEpoch:J

    .line 55
    return-void
.end method
