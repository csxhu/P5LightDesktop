.class public final Lcom/local/g3bridge/sdk/G3Bridge$Subscription;
.super Ljava/lang/Object;
.source "G3Bridge.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/g3bridge/sdk/G3Bridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Subscription"
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final observer:Landroid/database/ContentObserver;

.field private final resolver:Landroid/content/ContentResolver;


# direct methods
.method private constructor <init>(Landroid/content/ContentResolver;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 5

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/local/g3bridge/sdk/G3Bridge$Subscription;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 184
    iput-object p1, p0, Lcom/local/g3bridge/sdk/G3Bridge$Subscription;->resolver:Landroid/content/ContentResolver;

    .line 185
    new-instance p1, Lcom/local/g3bridge/sdk/G3Bridge$Subscription$1;

    invoke-direct {p1, p0, p2, p3}, Lcom/local/g3bridge/sdk/G3Bridge$Subscription$1;-><init>(Lcom/local/g3bridge/sdk/G3Bridge$Subscription;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/local/g3bridge/sdk/G3Bridge$Subscription;->observer:Landroid/database/ContentObserver;

    .line 189
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/local/g3bridge/sdk/G3Bridge$1;)V
    .registers 5

    .line 179
    invoke-direct {p0, p1, p2, p3}, Lcom/local/g3bridge/sdk/G3Bridge$Subscription;-><init>(Landroid/content/ContentResolver;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/local/g3bridge/sdk/G3Bridge$Subscription;)Landroid/database/ContentObserver;
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/local/g3bridge/sdk/G3Bridge$Subscription;->observer:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static synthetic access$600(Lcom/local/g3bridge/sdk/G3Bridge$Subscription;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/local/g3bridge/sdk/G3Bridge$Subscription;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/local/g3bridge/sdk/G3Bridge$Subscription;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/local/g3bridge/sdk/G3Bridge$Subscription;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/local/g3bridge/sdk/G3Bridge$Subscription;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 192
    :cond_11
    return-void
.end method
