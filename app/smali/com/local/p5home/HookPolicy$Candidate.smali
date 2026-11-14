.class final Lcom/local/p5home/HookPolicy$Candidate;
.super Ljava/lang/Object;
.source "HookPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/HookPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Candidate"
.end annotation


# instance fields
.field final event:Ljava/lang/String;

.field final index:I

.field final kind:Ljava/lang/String;

.field final navEpoch:J

.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/local/p5home/HookPolicy$Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    .line 33
    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/HookPolicy$Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 7

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HookPolicy$Candidate;->kind:Ljava/lang/String;

    iput-object p2, p0, Lcom/local/p5home/HookPolicy$Candidate;->text:Ljava/lang/String;

    iput-object p3, p0, Lcom/local/p5home/HookPolicy$Candidate;->event:Ljava/lang/String;

    iput p4, p0, Lcom/local/p5home/HookPolicy$Candidate;->index:I

    iput-wide p5, p0, Lcom/local/p5home/HookPolicy$Candidate;->navEpoch:J

    return-void
.end method
