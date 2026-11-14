.class final Lcom/local/p5home/HookSessions$Snapshot;
.super Ljava/lang/Object;
.source "HookSessions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/HookSessions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Snapshot"
.end annotation


# instance fields
.field final asr:Ljava/lang/Object;

.field final at:J

.field final context:Ljava/lang/Object;

.field final data:Ljava/lang/Object;

.field final generation:J

.field final handler:Landroid/os/Handler;

.field final nlu:Ljava/lang/Object;

.field final sdk:Ljava/lang/Object;

.field final solo:Ljava/lang/Object;

.field final token:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;Ljava/lang/String;J)V
    .registers 11

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HookSessions$Snapshot;->sdk:Ljava/lang/Object;

    iput-object p2, p0, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    iput-object p3, p0, Lcom/local/p5home/HookSessions$Snapshot;->data:Ljava/lang/Object;

    iput-object p4, p0, Lcom/local/p5home/HookSessions$Snapshot;->asr:Ljava/lang/Object;

    iput-object p5, p0, Lcom/local/p5home/HookSessions$Snapshot;->nlu:Ljava/lang/Object;

    iput-object p6, p0, Lcom/local/p5home/HookSessions$Snapshot;->solo:Ljava/lang/Object;

    iput-object p7, p0, Lcom/local/p5home/HookSessions$Snapshot;->handler:Landroid/os/Handler;

    iput-object p8, p0, Lcom/local/p5home/HookSessions$Snapshot;->token:Ljava/lang/String;

    iput-wide p9, p0, Lcom/local/p5home/HookSessions$Snapshot;->generation:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/local/p5home/HookSessions$Snapshot;->at:J

    return-void
.end method
