.class final Lcom/local/p5home/HookNavTurn$Owner;
.super Ljava/lang/Object;
.source "HookNavTurn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/HookNavTurn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Owner"
.end annotation


# instance fields
.field accepted:Z

.field final asr:Ljava/lang/Object;

.field final at:J

.field final context:Ljava/lang/Object;

.field final data:Ljava/lang/Object;

.field expiry:Ljava/lang/Runnable;

.field final generation:J

.field final handler:Landroid/os/Handler;

.field neutral:Ljava/lang/Object;

.field final nlu:Ljava/lang/Object;

.field queued:Z

.field final sdk:Ljava/lang/Object;

.field final token:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;Ljava/lang/String;J)V
    .registers 10

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HookNavTurn$Owner;->sdk:Ljava/lang/Object;

    iput-object p2, p0, Lcom/local/p5home/HookNavTurn$Owner;->context:Ljava/lang/Object;

    iput-object p3, p0, Lcom/local/p5home/HookNavTurn$Owner;->data:Ljava/lang/Object;

    iput-object p4, p0, Lcom/local/p5home/HookNavTurn$Owner;->asr:Ljava/lang/Object;

    iput-object p5, p0, Lcom/local/p5home/HookNavTurn$Owner;->nlu:Ljava/lang/Object;

    iput-object p6, p0, Lcom/local/p5home/HookNavTurn$Owner;->handler:Landroid/os/Handler;

    iput-object p7, p0, Lcom/local/p5home/HookNavTurn$Owner;->token:Ljava/lang/String;

    iput-wide p8, p0, Lcom/local/p5home/HookNavTurn$Owner;->generation:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/local/p5home/HookNavTurn$Owner;->at:J

    return-void
.end method
