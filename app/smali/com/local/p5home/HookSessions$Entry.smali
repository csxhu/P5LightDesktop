.class final Lcom/local/p5home/HookSessions$Entry;
.super Ljava/lang/Object;
.source "HookSessions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/HookSessions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field attempts:I

.field deadline:J

.field ended:Z

.field expiry:Ljava/lang/Runnable;

.field final external:Z

.field prepared:Z

.field queued:I

.field final snapshot:Lcom/local/p5home/HookSessions$Snapshot;

.field soloBorrowed:Z

.field started:Z


# direct methods
.method constructor <init>(Lcom/local/p5home/HookSessions$Snapshot;Z)V
    .registers 5

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HookSessions$Entry;->snapshot:Lcom/local/p5home/HookSessions$Snapshot;

    iput-boolean p2, p0, Lcom/local/p5home/HookSessions$Entry;->external:Z

    iget-wide p1, p1, Lcom/local/p5home/HookSessions$Snapshot;->at:J

    const-wide/16 v0, 0x1388

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/local/p5home/HookSessions$Entry;->deadline:J

    return-void
.end method
