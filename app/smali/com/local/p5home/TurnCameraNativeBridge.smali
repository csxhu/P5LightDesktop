.class final Lcom/local/p5home/TurnCameraNativeBridge;
.super Ljava/lang/Object;
.source "TurnCameraNativeBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/TurnCameraNativeBridge$Repair;,
        Lcom/local/p5home/TurnCameraNativeBridge$Permit;
    }
.end annotation


# static fields
.field static final ACTION:Ljava/lang/String; = "com.local.p5home.TURN_CAMERA_NATIVE"

.field static final BUILD:Ljava/lang/String; = "turn-20261028-d"

.field static final PERMISSION:Ljava/lang/String; = "com.local.p5home.permission.TURN_CAMERA_CONTROL"

.field static final SCOPED_ACTION:Ljava/lang/String; = "com.local.p5home.TURN_CAMERA_NATIVE_SCOPED"


# instance fields
.field private final ap:Ljava/lang/reflect/Method;

.field private final app:Landroid/content/Context;

.field private final avm:Ljava/lang/reflect/Method;

.field private final busyInstance:Ljava/lang/reflect/Method;

.field private final camera:Ljava/lang/reflect/Method;

.field private final carClient:Ljava/lang/reflect/Field;

.field private final carConnected:Ljava/lang/reflect/Method;

.field private final displayLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final displayType:Ljava/lang/reflect/Method;

.field private final gear:Ljava/lang/reflect/Method;

.field private final helperInstance:Ljava/lang/reflect/Method;

.field private final hide:Ljava/lang/reflect/Method;

.field private final hideTask:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final ignition:Ljava/lang/reflect/Method;

.field private final main:Landroid/os/Handler;

.field private final moduleContext:Ljava/lang/reflect/Method;

.field private final moduleInstance:Ljava/lang/reflect/Method;

.field private final nra:Ljava/lang/reflect/Method;

.field private final ownCall:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/local/p5home/TurnCameraNativeBridge$Permit;",
            ">;"
        }
    .end annotation
.end field

.field private final panelMode:Ljava/lang/reflect/Field;

.field private final preview:Lcom/local/p5home/TurnCameraPreviewPolicy;

.field private final previewLease:Ljava/util/concurrent/atomic/AtomicLong;

.field private previewOwnerToken:Ljava/lang/String;

.field private final rawSpeed:Ljava/lang/reflect/Method;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private final repair:Lcom/local/p5home/TurnCameraNativeBridge$Repair;

.field private final seen:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final show:Ljava/lang/reflect/Method;

.field private final showInstance:Ljava/lang/reflect/Method;

.field private final showTask:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final showing:Ljava/lang/reflect/Method;

.field private final tasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/local/p5home/TurnCameraNativeBridge$Permit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/ClassLoader;Lcom/local/p5home/TurnCameraNativeBridge$Repair;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->main:Landroid/os/Handler;

    .line 18
    new-instance v0, Lcom/local/p5home/TurnCameraPreviewPolicy;

    invoke-direct {v0}, Lcom/local/p5home/TurnCameraPreviewPolicy;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->preview:Lcom/local/p5home/TurnCameraPreviewPolicy;

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->previewLease:Ljava/util/concurrent/atomic/AtomicLong;

    .line 21
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->ownCall:Ljava/lang/ThreadLocal;

    .line 22
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->tasks:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 24
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->seen:Ljava/util/LinkedHashSet;

    .line 89
    new-instance v0, Lcom/local/p5home/TurnCameraNativeBridge$4;

    invoke-direct {v0, p0}, Lcom/local/p5home/TurnCameraNativeBridge$4;-><init>(Lcom/local/p5home/TurnCameraNativeBridge;)V

    iput-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->receiver:Landroid/content/BroadcastReceiver;

    .line 27
    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->app:Landroid/content/Context;

    iput-object p3, p0, Lcom/local/p5home/TurnCameraNativeBridge;->repair:Lcom/local/p5home/TurnCameraNativeBridge$Repair;

    .line 28
    const-string p1, "com.xiaopeng.drivingimageassist.carapi.CarApiHelper"

    invoke-static {p2, p1}, Lcom/local/p5home/TurnCameraNativeBridge;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p3, "android.car.Car"

    invoke-static {p2, p3}, Lcom/local/p5home/TurnCameraNativeBridge;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    const-string v0, "com.xiaopeng.drivingimageassist.a"

    invoke-static {p2, v0}, Lcom/local/p5home/TurnCameraNativeBridge;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.xiaopeng.drivingimageassist.b"

    invoke-static {p2, v1}, Lcom/local/p5home/TurnCameraNativeBridge;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "k8"

    invoke-static {p2, v2}, Lcom/local/p5home/TurnCameraNativeBridge;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 29
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    const-string v5, "instance"

    invoke-static {p1, v5, p1, v4}, Lcom/local/p5home/TurnCameraNativeBridge;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/local/p5home/TurnCameraNativeBridge;->helperInstance:Ljava/lang/reflect/Method;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Class;

    const-string v6, "getRawCarSpeed"

    invoke-static {p1, v6, v4, v5}, Lcom/local/p5home/TurnCameraNativeBridge;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/local/p5home/TurnCameraNativeBridge;->rawSpeed:Ljava/lang/reflect/Method;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Class;

    const-string v6, "getDisplayGearLevel"

    invoke-static {p1, v6, v4, v5}, Lcom/local/p5home/TurnCameraNativeBridge;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/local/p5home/TurnCameraNativeBridge;->gear:Ljava/lang/reflect/Method;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Class;

    const-string v6, "getAvmWorkState"

    invoke-static {p1, v6, v4, v5}, Lcom/local/p5home/TurnCameraNativeBridge;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/local/p5home/TurnCameraNativeBridge;->avm:Ljava/lang/reflect/Method;

    .line 30
    const-string v4, "mCarClient"

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->carClient:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p3, :cond_170

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Class;

    const-string v6, "isConnected"

    invoke-static {p3, v6, p1, v5}, Lcom/local/p5home/TurnCameraNativeBridge;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->carConnected:Ljava/lang/reflect/Method;

    .line 31
    new-array p1, v3, [Ljava/lang/Class;

    const-string p3, "d"

    invoke-static {v0, p3, v0, p1}, Lcom/local/p5home/TurnCameraNativeBridge;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->showInstance:Ljava/lang/reflect/Method;

    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    const-string v6, "a"

    invoke-static {v0, v6, p1, v5}, Lcom/local/p5home/TurnCameraNativeBridge;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->show:Ljava/lang/reflect/Method;

    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Class;

    const-string v7, "b"

    invoke-static {v0, v7, p1, v5}, Lcom/local/p5home/TurnCameraNativeBridge;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->hide:Ljava/lang/reflect/Method;

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Class;

    const-string v8, "c"

    invoke-static {v0, v8, p1, v5}, Lcom/local/p5home/TurnCameraNativeBridge;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->showing:Ljava/lang/reflect/Method;

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Class;

    invoke-static {v0, v6, p1, v5}, Lcom/local/p5home/TurnCameraNativeBridge;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->displayType:Ljava/lang/reflect/Method;

    .line 32
    const-string p1, "f"

    new-array v0, v3, [Ljava/lang/Class;

    invoke-static {v1, p1, v1, v0}, Lcom/local/p5home/TurnCameraNativeBridge;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->moduleInstance:Ljava/lang/reflect/Method;

    const-class p1, Landroid/content/Context;

    new-array v0, v3, [Ljava/lang/Class;

    invoke-static {v1, v8, p1, v0}, Lcom/local/p5home/TurnCameraNativeBridge;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->moduleContext:Ljava/lang/reflect/Method;

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v0, v3, [Ljava/lang/Class;

    invoke-static {v1, p3, p1, v0}, Lcom/local/p5home/TurnCameraNativeBridge;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->ignition:Ljava/lang/reflect/Method;

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array p3, v3, [Ljava/lang/Class;

    invoke-static {v1, v6, p1, p3}, Lcom/local/p5home/TurnCameraNativeBridge;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->nra:Ljava/lang/reflect/Method;

    .line 33
    new-array p1, v3, [Ljava/lang/Class;

    invoke-static {v2, v8, v2, p1}, Lcom/local/p5home/TurnCameraNativeBridge;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->busyInstance:Ljava/lang/reflect/Method;

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array p3, v3, [Ljava/lang/Class;

    invoke-static {v2, v6, p1, p3}, Lcom/local/p5home/TurnCameraNativeBridge;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->ap:Ljava/lang/reflect/Method;

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array p3, v3, [Ljava/lang/Class;

    invoke-static {v2, v7, p1, p3}, Lcom/local/p5home/TurnCameraNativeBridge;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->camera:Ljava/lang/reflect/Method;

    .line 34
    const-string p1, "com.xiaopeng.drivingimageassist.c"

    invoke-static {p2, p1}, Lcom/local/p5home/TurnCameraNativeBridge;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p3, "g"

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->panelMode:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_168

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p3

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p3

    if-eqz p3, :cond_168

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 35
    const-string p1, "com.xiaopeng.drivingimageassist.c$a"

    invoke-static {p2, p1}, Lcom/local/p5home/TurnCameraNativeBridge;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->showTask:Ljava/lang/Class;

    const-string p1, "com.xiaopeng.drivingimageassist.c$b"

    invoke-static {p2, p1}, Lcom/local/p5home/TurnCameraNativeBridge;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->hideTask:Ljava/lang/Class;

    .line 36
    return-void

    .line 34
    :cond_168
    new-instance p1, Ljava/lang/NoSuchFieldException;

    const-string p2, "panel_mode"

    invoke-direct {p1, p2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_170
    new-instance p1, Ljava/lang/NoSuchFieldException;

    const-string p2, "car_client"

    invoke-direct {p1, p2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$100(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/ThreadLocal;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->ownCall:Ljava/lang/ThreadLocal;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/local/p5home/TurnCameraNativeBridge;)Lcom/local/p5home/TurnCameraNativeBridge$Repair;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->repair:Lcom/local/p5home/TurnCameraNativeBridge$Repair;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->previewOwnerToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/local/p5home/TurnCameraNativeBridge;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->previewOwnerToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/local/p5home/TurnCameraNativeBridge;)Z
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/local/p5home/TurnCameraNativeBridge;->closeOwned()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/reflect/Method;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->showing:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/String;
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/local/p5home/TurnCameraNativeBridge;->lampMetadata()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/reflect/Method;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->moduleInstance:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/reflect/Method;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->moduleContext:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->previewLease:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/reflect/Method;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->show:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/local/p5home/TurnCameraNativeBridge;)Landroid/os/Handler;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/local/p5home/TurnCameraNativeBridge;ZI)V
    .registers 3

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/local/p5home/TurnCameraNativeBridge;->externalDisplay(ZI)V

    return-void
.end method

.method static synthetic access$2000(Lcom/local/p5home/TurnCameraNativeBridge;J)V
    .registers 3

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/local/p5home/TurnCameraNativeBridge;->watch(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/Map;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->tasks:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/local/p5home/TurnCameraNativeBridge;)Z
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/local/p5home/TurnCameraNativeBridge;->parked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/reflect/Method;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->showInstance:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$600(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/reflect/Method;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->displayType:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$700(Lcom/local/p5home/TurnCameraNativeBridge;)Lcom/local/p5home/TurnCameraPreviewPolicy;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->preview:Lcom/local/p5home/TurnCameraPreviewPolicy;

    return-object p0
.end method

.method static synthetic access$800(Lcom/local/p5home/TurnCameraNativeBridge;Lcom/local/p5home/TurnCameraNativeBridge$Permit;)V
    .registers 2

    .line 10
    invoke-direct {p0, p1}, Lcom/local/p5home/TurnCameraNativeBridge;->resetPending(Lcom/local/p5home/TurnCameraNativeBridge$Permit;)V

    return-void
.end method

.method static synthetic access$900(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/LinkedHashSet;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->seen:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method private static add(Ljava/util/List;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lde/robv/android/xposed/XC_MethodHook$Unhook;",
            ">;",
            "Ljava/lang/reflect/Member;",
            "Lde/robv/android/xposed/XC_MethodHook;",
            ")V"
        }
    .end annotation

    .line 163
    invoke-static {p1, p2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "hook unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private closeOwned()Z
    .registers 11

    .line 149
    iget-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 150
    :try_start_5
    iget-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->previewLease:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->previewOwnerToken:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_84

    .line 151
    const/4 v1, 0x0

    :try_start_e
    iget-object v2, p0, Lcom/local/p5home/TurnCameraNativeBridge;->showInstance:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/local/p5home/TurnCameraNativeBridge;->preview:Lcom/local/p5home/TurnCameraPreviewPolicy;

    iget-object v3, p0, Lcom/local/p5home/TurnCameraNativeBridge;->displayType:Ljava/lang/reflect/Method;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/local/p5home/TurnCameraPreviewPolicy;->owns(I)Z

    move-result v2

    iget-object v3, p0, Lcom/local/p5home/TurnCameraNativeBridge;->preview:Lcom/local/p5home/TurnCameraPreviewPolicy;

    invoke-virtual {v3}, Lcom/local/p5home/TurnCameraPreviewPolicy;->release()V
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_78

    if-nez v2, :cond_37

    .line 155
    iget-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 151
    return v1

    .line 152
    :cond_37
    :try_start_37
    new-instance v9, Lcom/local/p5home/TurnCameraNativeBridge$Permit;

    iget-object v2, p0, Lcom/local/p5home/TurnCameraNativeBridge;->preview:Lcom/local/p5home/TurnCameraPreviewPolicy;

    invoke-virtual {v2}, Lcom/local/p5home/TurnCameraPreviewPolicy;->generation()J

    move-result-wide v3

    iget-object v2, p0, Lcom/local/p5home/TurnCameraNativeBridge;->displayType:Ljava/lang/reflect/Method;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/local/p5home/TurnCameraNativeBridge$Permit;-><init>(JIJZ)V

    .line 153
    iget-object v2, p0, Lcom/local/p5home/TurnCameraNativeBridge;->ownCall:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_5b
    .catchall {:try_start_37 .. :try_end_5b} :catchall_78

    :try_start_5b
    iget-object v2, p0, Lcom/local/p5home/TurnCameraNativeBridge;->hide:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v9}, Lcom/local/p5home/TurnCameraNativeBridge;->resetPending(Lcom/local/p5home/TurnCameraNativeBridge$Permit;)V
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_71

    :try_start_65
    iget-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->ownCall:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_78

    .line 155
    iget-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 153
    const/4 v0, 0x1

    return v0

    :catchall_71
    move-exception v0

    :try_start_72
    iget-object v2, p0, Lcom/local/p5home/TurnCameraNativeBridge;->ownCall:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    throw v0
    :try_end_78
    .catchall {:try_start_72 .. :try_end_78} :catchall_78

    .line 154
    :catchall_78
    move-exception v0

    :try_start_79
    iget-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->preview:Lcom/local/p5home/TurnCameraPreviewPolicy;

    invoke-virtual {v0}, Lcom/local/p5home/TurnCameraPreviewPolicy;->release()V
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_84

    .line 155
    iget-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 154
    return v1

    .line 155
    :catchall_84
    move-exception v0

    iget-object v1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private externalDisplay(ZI)V
    .registers 14

    .line 73
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->showInstance:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/local/p5home/TurnCameraNativeBridge;->displayType:Ljava/lang/reflect/Method;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 74
    iget-object v3, p0, Lcom/local/p5home/TurnCameraNativeBridge;->preview:Lcom/local/p5home/TurnCameraPreviewPolicy;

    invoke-virtual {v3, v7}, Lcom/local/p5home/TurnCameraPreviewPolicy;->owns(I)Z

    move-result v3

    if-eqz v3, :cond_80

    iget-object v3, p0, Lcom/local/p5home/TurnCameraNativeBridge;->showing:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_80

    .line 75
    iget-object v1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->preview:Lcom/local/p5home/TurnCameraPreviewPolicy;

    invoke-virtual {v1}, Lcom/local/p5home/TurnCameraPreviewPolicy;->generation()J

    move-result-wide v5

    .line 76
    if-eqz p1, :cond_70

    if-ne p2, v7, :cond_70

    .line 79
    iget-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->tasks:Ljava/util/Map;

    monitor-enter p1
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_7f

    :try_start_3d
    iget-object p2, p0, Lcom/local/p5home/TurnCameraNativeBridge;->tasks:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_47
    :goto_47
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/local/p5home/TurnCameraNativeBridge$Permit;

    iget-boolean v2, v1, Lcom/local/p5home/TurnCameraNativeBridge$Permit;->closing:Z

    if-nez v2, :cond_47

    iget-wide v2, v1, Lcom/local/p5home/TurnCameraNativeBridge$Permit;->generation:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_47

    iget v1, v1, Lcom/local/p5home/TurnCameraNativeBridge$Permit;->side:I

    if-ne v1, v7, :cond_47

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_47

    :cond_6b
    monitor-exit p1

    goto :goto_80

    :catchall_6d
    move-exception p2

    monitor-exit p1
    :try_end_6f
    .catchall {:try_start_3d .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw p2

    .line 80
    :cond_70
    if-nez p1, :cond_80

    .line 83
    new-instance p1, Lcom/local/p5home/TurnCameraNativeBridge$Permit;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/local/p5home/TurnCameraNativeBridge$Permit;-><init>(JIJZ)V

    invoke-direct {p0, p1}, Lcom/local/p5home/TurnCameraNativeBridge;->resetPending(Lcom/local/p5home/TurnCameraNativeBridge$Permit;)V
    :try_end_7e
    .catchall {:try_start_6f .. :try_end_7e} :catchall_7f

    goto :goto_80

    .line 86
    :catchall_7f
    move-exception p1

    :cond_80
    :goto_80
    nop

    .line 87
    iget-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->preview:Lcom/local/p5home/TurnCameraPreviewPolicy;

    invoke-virtual {p1}, Lcom/local/p5home/TurnCameraPreviewPolicy;->externalDisplay()V

    iput-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->previewOwnerToken:Ljava/lang/String;

    iget-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->previewLease:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 88
    return-void
.end method

.method static install(Landroid/content/Context;Ljava/lang/ClassLoader;Lcom/local/p5home/TurnCameraNativeBridge$Repair;)V
    .registers 11

    .line 39
    const-string v0, "run"

    :try_start_2
    new-instance v1, Lcom/local/p5home/TurnCameraNativeBridge;

    invoke-direct {v1, p0, p1, p2}, Lcom/local/p5home/TurnCameraNativeBridge;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;Lcom/local/p5home/TurnCameraNativeBridge$Repair;)V

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_9f

    .line 42
    :try_start_c
    new-instance p2, Lcom/local/p5home/TurnCameraNativeBridge$1;

    invoke-direct {p2, v1}, Lcom/local/p5home/TurnCameraNativeBridge$1;-><init>(Lcom/local/p5home/TurnCameraNativeBridge;)V

    .line 46
    iget-object v2, v1, Lcom/local/p5home/TurnCameraNativeBridge;->show:Ljava/lang/reflect/Method;

    invoke-static {p1, v2, p2}, Lcom/local/p5home/TurnCameraNativeBridge;->add(Ljava/util/List;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)V

    iget-object v2, v1, Lcom/local/p5home/TurnCameraNativeBridge;->hide:Ljava/lang/reflect/Method;

    invoke-static {p1, v2, p2}, Lcom/local/p5home/TurnCameraNativeBridge;->add(Ljava/util/List;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 47
    new-instance p2, Lcom/local/p5home/TurnCameraNativeBridge$2;

    invoke-direct {p2, v1}, Lcom/local/p5home/TurnCameraNativeBridge$2;-><init>(Lcom/local/p5home/TurnCameraNativeBridge;)V

    .line 48
    iget-object v2, v1, Lcom/local/p5home/TurnCameraNativeBridge;->panelMode:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    .line 49
    iget-object v3, v1, Lcom/local/p5home/TurnCameraNativeBridge;->showTask:Ljava/lang/Class;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x2

    aput-object v6, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-static {p1, v3, p2}, Lcom/local/p5home/TurnCameraNativeBridge;->add(Ljava/util/List;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)V

    iget-object v3, v1, Lcom/local/p5home/TurnCameraNativeBridge;->hideTask:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-static {p1, v2, p2}, Lcom/local/p5home/TurnCameraNativeBridge;->add(Ljava/util/List;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 50
    new-instance p2, Lcom/local/p5home/TurnCameraNativeBridge$3;

    invoke-direct {p2, v1}, Lcom/local/p5home/TurnCameraNativeBridge$3;-><init>(Lcom/local/p5home/TurnCameraNativeBridge;)V

    .line 65
    iget-object v2, v1, Lcom/local/p5home/TurnCameraNativeBridge;->showTask:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v4, v5, [Ljava/lang/Class;

    invoke-static {v2, v0, v3, v4}, Lcom/local/p5home/TurnCameraNativeBridge;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {p1, v2, p2}, Lcom/local/p5home/TurnCameraNativeBridge;->add(Ljava/util/List;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)V

    iget-object v2, v1, Lcom/local/p5home/TurnCameraNativeBridge;->hideTask:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v4, v5, [Ljava/lang/Class;

    invoke-static {v2, v0, v3, v4}, Lcom/local/p5home/TurnCameraNativeBridge;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/local/p5home/TurnCameraNativeBridge;->add(Ljava/util/List;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 66
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "com.local.p5home.TURN_CAMERA_NATIVE"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.local.p5home.TURN_CAMERA_NATIVE_SCOPED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/local/p5home/TurnCameraNativeBridge;->receiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.local.p5home.permission.TURN_CAMERA_CONTROL"

    iget-object v1, v1, Lcom/local/p5home/TurnCameraNativeBridge;->main:Landroid/os/Handler;

    invoke-virtual {p0, v0, p2, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_80
    .catchall {:try_start_c .. :try_end_80} :catchall_87

    .line 67
    nop

    .line 68
    :try_start_81
    const-string p0, "TURN_NATIVE_BRIDGE_READY"

    invoke-static {p0}, Lcom/local/p5home/HookLog;->write(Ljava/lang/String;)V

    .line 69
    goto :goto_a5

    .line 67
    :catchall_87
    move-exception p0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_98
    .catchall {:try_start_81 .. :try_end_98} :catchall_9f

    :try_start_98
    invoke-virtual {p2}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9c

    goto :goto_8c

    :catchall_9c
    move-exception p2

    goto :goto_8c

    :cond_9e
    :try_start_9e
    throw p0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9f

    .line 69
    :catchall_9f
    move-exception p0

    const-string p0, "TURN_NATIVE_BRIDGE_UNAVAILABLE"

    invoke-static {p0}, Lcom/local/p5home/HookLog;->write(Ljava/lang/String;)V

    .line 70
    :goto_a5
    return-void
.end method

.method private lampMetadata()Ljava/lang/String;
    .registers 9

    .line 127
    const-string v0, "unknown"

    :try_start_2
    iget-object v1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->helperInstance:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/local/p5home/TurnCameraNativeBridge;->carClient:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/local/p5home/TurnCameraNativeBridge;->carConnected:Ljava/lang/reflect/Method;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto/16 :goto_b1

    .line 128
    :cond_26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getCarManager"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "xp_bcm"

    aput-object v5, v4, v2

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_44

    return-object v0

    .line 129
    :cond_44
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getPropertyList"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/List;

    if-nez v4, :cond_5b

    return-object v0

    .line 130
    :cond_5b
    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x1000

    if-le v4, v5, :cond_6c

    goto :goto_b0

    .line 131
    :cond_6c
    const-string v4, "android.car.hardware.CarPropertyConfig"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v4, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getPropertyId"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 132
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_86
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ad

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_97

    return-object v0

    :cond_97
    const v6, 0x21411cc0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    const-string v0, "available"

    return-object v0

    .line 135
    :cond_ad
    const-string v0, "not_exposed"
    :try_end_af
    .catchall {:try_start_2 .. :try_end_af} :catchall_b2

    return-object v0

    .line 130
    :cond_b0
    :goto_b0
    return-object v0

    .line 127
    :cond_b1
    :goto_b1
    return-object v0

    .line 136
    :catchall_b2
    move-exception v1

    return-object v0
.end method

.method private static varargs method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    if-ne p3, p2, :cond_f

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parked()Z
    .registers 12

    .line 138
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->helperInstance:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/local/p5home/TurnCameraNativeBridge;->carClient:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lcom/local/p5home/TurnCameraNativeBridge;->moduleInstance:Ljava/lang/reflect/Method;

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/local/p5home/TurnCameraNativeBridge;->busyInstance:Ljava/lang/reflect/Method;

    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 139
    const/4 v5, 0x1

    if-eqz v2, :cond_35

    iget-object v6, p0, Lcom/local/p5home/TurnCameraNativeBridge;->carConnected:Ljava/lang/reflect/Method;

    new-array v7, v0, [Ljava/lang/Object;

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_35

    move v2, v5

    goto :goto_36

    :cond_35
    move v2, v0

    :goto_36
    iget-object v6, p0, Lcom/local/p5home/TurnCameraNativeBridge;->rawSpeed:Ljava/lang/reflect/Method;

    new-array v7, v0, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, p0, Lcom/local/p5home/TurnCameraNativeBridge;->gear:Ljava/lang/reflect/Method;

    new-array v8, v0, [Ljava/lang/Object;

    invoke-virtual {v7, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/local/p5home/TurnCameraNativeBridge;->avm:Ljava/lang/reflect/Method;

    new-array v9, v0, [Ljava/lang/Object;

    invoke-virtual {v8, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v8, p0, Lcom/local/p5home/TurnCameraNativeBridge;->ignition:Ljava/lang/reflect/Method;

    new-array v9, v0, [Ljava/lang/Object;

    invoke-virtual {v8, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v9, p0, Lcom/local/p5home/TurnCameraNativeBridge;->nra:Ljava/lang/reflect/Method;

    new-array v10, v0, [Ljava/lang/Object;

    invoke-virtual {v9, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_a1

    iget-object v4, p0, Lcom/local/p5home/TurnCameraNativeBridge;->ap:Ljava/lang/reflect/Method;

    new-array v9, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_a1

    iget-object v4, p0, Lcom/local/p5home/TurnCameraNativeBridge;->camera:Ljava/lang/reflect/Method;

    new-array v9, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9f

    goto :goto_a1

    :cond_9f
    move v9, v0

    goto :goto_a2

    :cond_a1
    :goto_a1
    move v9, v5

    :goto_a2
    move v3, v6

    move v4, v7

    move v5, v1

    move v6, v8

    move v7, v9

    invoke-static/range {v2 .. v7}, Lcom/local/p5home/TurnCameraPreviewPolicy;->parked(ZFIZZZ)Z

    move-result v0
    :try_end_ab
    .catchall {:try_start_1 .. :try_end_ab} :catchall_ac

    return v0

    .line 140
    :catchall_ac
    move-exception v1

    return v0
.end method

.method private resetPending(Lcom/local/p5home/TurnCameraNativeBridge$Permit;)V
    .registers 8

    .line 157
    iget-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 158
    :try_start_5
    iget-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->showInstance:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 159
    iget-object v2, p0, Lcom/local/p5home/TurnCameraNativeBridge;->preview:Lcom/local/p5home/TurnCameraPreviewPolicy;

    iget-wide v4, p1, Lcom/local/p5home/TurnCameraNativeBridge$Permit;->generation:J

    invoke-virtual {v2, v4, v5}, Lcom/local/p5home/TurnCameraPreviewPolicy;->sameGeneration(J)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/local/p5home/TurnCameraNativeBridge;->displayType:Ljava/lang/reflect/Method;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget p1, p1, Lcom/local/p5home/TurnCameraNativeBridge$Permit;->side:I

    if-ne v2, p1, :cond_48

    iget-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->showing:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_48

    .line 160
    iget-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->panelMode:Ljava/lang/reflect/Field;

    const/4 v0, -0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->preview:Lcom/local/p5home/TurnCameraPreviewPolicy;

    invoke-virtual {p1}, Lcom/local/p5home/TurnCameraPreviewPolicy;->release()V
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_47

    goto :goto_48

    .line 162
    :catchall_47
    move-exception p1

    :cond_48
    :goto_48
    iget-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method private static type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private watch(J)V
    .registers 7

    .line 142
    iget-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->previewLease:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_b

    return-void

    .line 143
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->showInstance:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/local/p5home/TurnCameraNativeBridge;->preview:Lcom/local/p5home/TurnCameraPreviewPolicy;

    iget-object v3, p0, Lcom/local/p5home/TurnCameraNativeBridge;->displayType:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/local/p5home/TurnCameraPreviewPolicy;->owns(I)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge;->preview:Lcom/local/p5home/TurnCameraPreviewPolicy;

    invoke-virtual {p1}, Lcom/local/p5home/TurnCameraPreviewPolicy;->release()V

    return-void

    .line 144
    :cond_31
    iget-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->preview:Lcom/local/p5home/TurnCameraPreviewPolicy;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/TurnCameraPreviewPolicy;->expired(J)Z

    move-result v0

    if-nez v0, :cond_51

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraNativeBridge;->parked()Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_51

    .line 145
    :cond_44
    iget-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge;->main:Landroid/os/Handler;

    new-instance v1, Lcom/local/p5home/TurnCameraNativeBridge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/local/p5home/TurnCameraNativeBridge$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/TurnCameraNativeBridge;J)V

    const-wide/16 p1, 0xc8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    goto :goto_59

    .line 144
    :cond_51
    :goto_51
    invoke-direct {p0}, Lcom/local/p5home/TurnCameraNativeBridge;->closeOwned()Z
    :try_end_54
    .catchall {:try_start_b .. :try_end_54} :catchall_55

    return-void

    .line 146
    :catchall_55
    move-exception p1

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraNativeBridge;->closeOwned()Z

    .line 147
    :goto_59
    return-void
.end method


# virtual methods
.method synthetic lambda$watch$0$com-local-g3home-TurnCameraNativeBridge(J)V
    .registers 3

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/local/p5home/TurnCameraNativeBridge;->watch(J)V

    return-void
.end method
