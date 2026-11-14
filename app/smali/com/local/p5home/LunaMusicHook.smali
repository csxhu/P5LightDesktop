.class public final Lcom/local/p5home/LunaMusicHook;
.super Ljava/lang/Object;
.source "LunaMusicHook.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# static fields
.field static final ACTION:Ljava/lang/String; = "com.local.p5home.MUSIC_PLAY_LUNA"

.field static final PACKAGE:Ljava/lang/String; = "com.luna.music.car"

.field static final PERMISSION:Ljava/lang/String; = "com.local.p5home.permission.MUSIC_CONTROL"

.field private static final installed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/local/p5home/LunaMusicHook;->installed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 4

    .line 17
    invoke-static {p0, p1, p2, p3}, Lcom/local/p5home/LunaMusicHook;->install(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private static contract(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    const-string v0, "INSTANCE"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p0, :cond_70

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 32
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p0, :cond_70

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_70

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_70

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_70

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isNative(I)Z

    move-result p1

    if-nez p1, :cond_70

    .line 33
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    if-ne p1, p0, :cond_70

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_70

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    if-nez p0, :cond_70

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result p0

    if-nez p0, :cond_70

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isNative(I)Z

    move-result p0

    if-nez p0, :cond_70

    const/4 p0, 0x1

    goto :goto_71

    :cond_70
    const/4 p0, 0x0

    .line 31
    :goto_71
    return p0
.end method

.method private static install(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .line 37
    const-string v0, "com.luna.music.car"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-static {p1, p2, p3}, Lcom/local/p5home/LunaMusicHook;->contract(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_80

    .line 38
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 39
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_7f

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_7f

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v0, v2, :cond_7f

    sget-object v0, Lcom/local/p5home/LunaMusicHook;->installed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_7f

    .line 40
    :cond_3a
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 41
    new-instance v2, Lcom/local/p5home/LunaMusicHook$2;

    invoke-direct {v2, p1, p3, v0, p2}, Lcom/local/p5home/LunaMusicHook$2;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/util/LinkedHashSet;Ljava/lang/reflect/Method;)V

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "com.local.p5home.MUSIC_PLAY_LUNA"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.local.p5home.permission.MUSIC_CONTROL"

    new-instance v3, Landroid/os/Handler;

    .line 54
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    invoke-virtual {p0, v2, p2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 55
    const-string p2, "MUSIC_LUNA_BRIDGE_REGISTERED"

    invoke-static {p2}, Lcom/local/p5home/HookLog;->write(Ljava/lang/String;)V

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "P5LunaVoice"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/local/p5home/LunaMusicHook$3;

    invoke-direct {v0, p3, p1, p0, p2}, Lcom/local/p5home/LunaMusicHook$3;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "MUSIC_LUNA_POLL_POSTED"

    invoke-static {v0}, Lcom/local/p5home/HookLog;->write(Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7e} :catch_83
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_7e} :catch_81

    .line 59
    goto :goto_8e

    .line 39
    :cond_7f
    :goto_7f
    return-void

    .line 37
    :cond_80
    :goto_80
    return-void

    .line 59
    :catch_81
    move-exception p0

    goto :goto_84

    :catch_83
    move-exception p0

    :goto_84
    sget-object p0, Lcom/local/p5home/LunaMusicHook;->installed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p0, "MUSIC_LUNA_BRIDGE_UNAVAILABLE"

    invoke-static {p0}, Lcom/local/p5home/HookLog;->write(Ljava/lang/String;)V

    .line 60
    :goto_8e
    return-void
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 10

    .line 21
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    const-string v1, "com.luna.music.car"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_75

    .line 23
    :cond_13
    :try_start_13
    const-string v0, "com.luna.music.car.adaption.framework.VoiceManager"

    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 24
    const-string v0, "execute"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v1

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v3, "isSupportVoiceAction"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/local/p5home/LunaMusicHook;->contract(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 25
    const-class v4, Landroid/app/Application;

    const-string v6, "attach"

    new-array v2, v2, [Ljava/lang/Object;

    const-class v7, Landroid/content/Context;

    aput-object v7, v2, v1

    new-instance v1, Lcom/local/p5home/LunaMusicHook$1;

    invoke-direct {v1, p0, p1, v0, v3}, Lcom/local/p5home/LunaMusicHook$1;-><init>(Lcom/local/p5home/LunaMusicHook;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    aput-object v1, v2, v5

    invoke-static {v4, v6, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 26
    invoke-static {}, Landroid/app/AndroidAppHelper;->currentApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-static {v1, p1, v0, v3}, Lcom/local/p5home/LunaMusicHook;->install(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 27
    :cond_63
    goto :goto_74

    .line 24
    :cond_64
    new-instance p1, Ljava/lang/NoSuchMethodException;

    const-string v0, "music_contract"

    invoke-direct {p1, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_6c} :catch_6e
    .catch Ljava/lang/LinkageError; {:try_start_13 .. :try_end_6c} :catch_6c

    .line 27
    :catch_6c
    move-exception p1

    goto :goto_6f

    :catch_6e
    move-exception p1

    :goto_6f
    const-string p1, "MUSIC_LUNA_INTERFACE_UNAVAILABLE"

    invoke-static {p1}, Lcom/local/p5home/HookLog;->write(Ljava/lang/String;)V

    .line 28
    :goto_74
    return-void

    .line 21
    :cond_75
    :goto_75
    return-void
.end method
