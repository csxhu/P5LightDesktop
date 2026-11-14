.class public final Lcom/local/p5home/SpeechHook;
.super Ljava/lang/Object;
.source "SpeechHook.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# static fields
.field private static final CAR:Ljava/lang/String; = "com.xiaopeng.carspeechservice"

.field private static final attachInstalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final reported:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final started:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/local/p5home/SpeechHook;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/local/p5home/SpeechHook;->attachInstalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/local/p5home/SpeechHook;->reported:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1

    .line 18
    invoke-static {p0}, Lcom/local/p5home/SpeechHook;->report(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .registers 3

    .line 18
    invoke-static {p0, p1, p2}, Lcom/local/p5home/SpeechHook;->tryStart(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static currentApplication()Landroid/content/Context;
    .registers 5

    .line 49
    :try_start_0
    invoke-static {}, Landroid/app/AndroidAppHelper;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v1, "APP_FOUND_HELPER"

    invoke-static {v1}, Lcom/local/p5home/SpeechHook;->report(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_f
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_b} :catch_d

    return-object v0

    .line 50
    :cond_c
    goto :goto_15

    :catch_d
    move-exception v0

    goto :goto_10

    :catch_f
    move-exception v0

    :goto_10
    const-string v0, "APP_HELPER_UNAVAILABLE"

    invoke-static {v0}, Lcom/local/p5home/SpeechHook;->report(Ljava/lang/String;)V

    .line 52
    :goto_15
    const/4 v0, 0x0

    :try_start_16
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 53
    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 54
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_3b

    const-string v2, "APP_FOUND_THREAD"

    invoke-static {v2}, Lcom/local/p5home/SpeechHook;->report(Ljava/lang/String;)V

    check-cast v1, Landroid/app/Application;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3a} :catch_3e
    .catch Ljava/lang/LinkageError; {:try_start_16 .. :try_end_3a} :catch_3c

    return-object v1

    .line 55
    :cond_3b
    goto :goto_44

    :catch_3c
    move-exception v1

    goto :goto_3f

    :catch_3e
    move-exception v1

    :goto_3f
    const-string v1, "APP_THREAD_UNAVAILABLE"

    invoke-static {v1}, Lcom/local/p5home/SpeechHook;->report(Ljava/lang/String;)V

    .line 56
    :goto_44
    return-object v0
.end method

.method static synthetic lambda$handleLoadPackage$0(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 3

    .line 43
    sget-object v0, Lcom/local/p5home/SpeechHook;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/local/p5home/SpeechHook;->currentApplication()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v1, "START_LATE_APPLICATION"

    invoke-static {v0, p0, v1}, Lcom/local/p5home/SpeechHook;->tryStart(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    .line 44
    :cond_13
    return-void
.end method

.method private static report(Ljava/lang/String;)V
    .registers 3

    .line 68
    sget-object v0, Lcom/local/p5home/SpeechHook;->reported:Ljava/util/Set;

    monitor-enter v0

    :try_start_3
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    monitor-exit v0

    return-void

    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 70
    invoke-static {p0}, Lcom/local/p5home/HookLog;->write(Ljava/lang/String;)V

    .line 71
    return-void

    .line 68
    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p0
.end method

.method private static tryStart(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .registers 6

    .line 59
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 61
    :cond_4
    :try_start_4
    const-string v1, "com.xiaopeng.carspeechservice"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string p0, "APP_CONTEXT_NOT_TARGET"

    invoke-static {p0}, Lcom/local/p5home/SpeechHook;->report(Ljava/lang/String;)V

    return v0

    .line 62
    :cond_16
    sget-object v1, Lcom/local/p5home/SpeechHook;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_25

    const-string p0, "RUNTIME_ALREADY_STARTED"

    invoke-static {p0}, Lcom/local/p5home/SpeechHook;->report(Ljava/lang/String;)V

    return v2

    .line 63
    :cond_25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez p1, :cond_2f

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 64
    :cond_2f
    invoke-static {p2}, Lcom/local/p5home/SpeechHook;->report(Ljava/lang/String;)V

    new-instance p2, Lcom/local/p5home/P5SpeechBridge;

    if-nez v1, :cond_37

    goto :goto_38

    :cond_37
    move-object p0, v1

    :goto_38
    invoke-direct {p2, p0, p1}, Lcom/local/p5home/P5SpeechBridge;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    invoke-virtual {p2}, Lcom/local/p5home/P5SpeechBridge;->start()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3e} :catch_41
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_3e} :catch_3f

    return v2

    .line 65
    :catch_3f
    move-exception p0

    goto :goto_42

    :catch_41
    move-exception p0

    :goto_42
    const-string p0, "HOOK_ATTACH_UNAVAILABLE"

    invoke-static {p0}, Lcom/local/p5home/SpeechHook;->report(Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 9

    .line 24
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    const-string v1, "com.xiaopeng.carspeechservice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 25
    :cond_b
    const-string v0, "PACKAGE_LOADED"

    invoke-static {v0}, Lcom/local/p5home/SpeechHook;->report(Ljava/lang/String;)V

    .line 26
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string p1, "PROCESS_NOT_TARGET"

    invoke-static {p1}, Lcom/local/p5home/SpeechHook;->report(Ljava/lang/String;)V

    return-void

    .line 27
    :cond_1e
    invoke-static {}, Lcom/local/p5home/SpeechHook;->currentApplication()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "START_EXISTING_APPLICATION"

    invoke-static {v0, v1, v2}, Lcom/local/p5home/SpeechHook;->tryStart(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    return-void

    .line 28
    :cond_2d
    sget-object v0, Lcom/local/p5home/SpeechHook;->attachInstalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 29
    :try_start_37
    const-class v0, Landroid/app/Application;

    const-string v3, "attach"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    new-instance v5, Lcom/local/p5home/SpeechHook$1;

    invoke-direct {v5, p0, p1}, Lcom/local/p5home/SpeechHook$1;-><init>(Lcom/local/p5home/SpeechHook;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 34
    const-string v0, "ATTACH_WATCH_INSTALLED"

    invoke-static {v0}, Lcom/local/p5home/SpeechHook;->report(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_51} :catch_54
    .catch Ljava/lang/LinkageError; {:try_start_37 .. :try_end_51} :catch_52

    .line 35
    goto :goto_5f

    :catch_52
    move-exception v0

    goto :goto_55

    :catch_54
    move-exception v0

    :goto_55
    sget-object v0, Lcom/local/p5home/SpeechHook;->attachInstalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "HOOK_ENTRY_UNAVAILABLE"

    invoke-static {v0}, Lcom/local/p5home/SpeechHook;->report(Ljava/lang/String;)V

    .line 39
    :cond_5f
    :goto_5f
    invoke-static {}, Lcom/local/p5home/SpeechHook;->currentApplication()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v3, "START_AFTER_ATTACH_WATCH"

    invoke-static {v0, v2, v3}, Lcom/local/p5home/SpeechHook;->tryStart(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    return-void

    .line 41
    :cond_6e
    :try_start_6e
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 42
    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_9c

    :goto_7d
    if-ge v1, v2, :cond_8c

    aget-wide v4, v3, v1

    new-instance v6, Lcom/local/p5home/SpeechHook$$ExternalSyntheticLambda0;

    invoke-direct {v6, p1}, Lcom/local/p5home/SpeechHook$$ExternalSyntheticLambda0;-><init>(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    .line 45
    :cond_8c
    const-string p1, "ATTACH_WAITING"

    invoke-static {p1}, Lcom/local/p5home/SpeechHook;->report(Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_91} :catch_94
    .catch Ljava/lang/LinkageError; {:try_start_6e .. :try_end_91} :catch_92

    .line 46
    goto :goto_9a

    :catch_92
    move-exception p1

    goto :goto_95

    :catch_94
    move-exception p1

    :goto_95
    const-string p1, "LATE_APP_PROBE_UNAVAILABLE"

    invoke-static {p1}, Lcom/local/p5home/SpeechHook;->report(Ljava/lang/String;)V

    .line 47
    :goto_9a
    return-void

    nop

    :array_9c
    .array-data 8
        0x0
        0xfa
        0x3e8
    .end array-data
.end method
