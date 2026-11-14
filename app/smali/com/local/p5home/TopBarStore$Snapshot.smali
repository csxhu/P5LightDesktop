.class public final Lcom/local/p5home/TopBarStore$Snapshot;
.super Ljava/lang/Object;
.source "TopBarStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/TopBarStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation


# instance fields
.field public final enabled:Z

.field public final migrationAttempted:Z

.field public final revision:J

.field public final slots:[Lcom/local/p5home/TopBarSlot;

.field public final valid:Z


# direct methods
.method constructor <init>(ZJ[Lcom/local/p5home/TopBarSlot;ZZ)V
    .registers 7

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_9

    if-eqz p6, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    iput-boolean p1, p0, Lcom/local/p5home/TopBarStore$Snapshot;->enabled:Z

    iput-wide p2, p0, Lcom/local/p5home/TopBarStore$Snapshot;->revision:J

    iput-object p4, p0, Lcom/local/p5home/TopBarStore$Snapshot;->slots:[Lcom/local/p5home/TopBarSlot;

    iput-boolean p5, p0, Lcom/local/p5home/TopBarStore$Snapshot;->migrationAttempted:Z

    iput-boolean p6, p0, Lcom/local/p5home/TopBarStore$Snapshot;->valid:Z

    return-void
.end method
