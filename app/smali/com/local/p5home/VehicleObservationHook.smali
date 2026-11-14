.class public final Lcom/local/p5home/VehicleObservationHook;
.super Ljava/lang/Object;
.source "VehicleObservationHook.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# static fields
.field private static final CAMERA:Ljava/lang/String; = "com.xiaopeng.drivingimageassist"

.field private static final CERT:Ljava/lang/String; = "162fb40e0725bcfcc0932a4d6bcd9606973b6443ebe1d2fa84ae735867286ee7"

.field private static final PACKAGE:Ljava/lang/String; = "com.xiaopeng.carcontrol"

.field private static final SEND:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final attempted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/local/p5home/VehicleObservationHook;->attempted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x8

    invoke-direct {v7, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/local/p5home/VehicleObservationHook;->SEND:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 3

    .line 27
    invoke-static {p0, p1, p2}, Lcom/local/p5home/VehicleObservationHook;->schedule(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;IDLjava/lang/String;)V
    .registers 5

    .line 27
    invoke-static {p0, p1, p2, p3, p4}, Lcom/local/p5home/VehicleObservationHook;->publish(Landroid/content/Context;IDLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;IDLjava/lang/String;Ljava/lang/Boolean;)V
    .registers 6

    .line 27
    invoke-static/range {p0 .. p5}, Lcom/local/p5home/VehicleObservationHook;->publish(Landroid/content/Context;IDLjava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static allowed(Landroid/content/Context;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_75

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaopeng.carcontrol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_75

    .line 102
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x8000000

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 103
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_74

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_74

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_74

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-eqz v0, :cond_74

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v0, :cond_74

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_74

    .line 104
    :cond_49
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    if-eqz p0, :cond_73

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_73

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/local/p5home/VehicleObservationHook;->hex([B)Ljava/lang/String;

    move-result-object p0

    const-string v0, "162fb40e0725bcfcc0932a4d6bcd9606973b6443ebe1d2fa84ae735867286ee7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_72

    goto :goto_73

    .line 105
    :cond_72
    return v1

    .line 104
    :cond_73
    :goto_73
    return v2

    .line 103
    :cond_74
    :goto_74
    return v2

    .line 101
    :cond_75
    :goto_75
    return v2
.end method

.method private static hex([B)Ljava/lang/String;
    .registers 7

    .line 112
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_c
    array-length v3, p0

    if-ge v2, v3, :cond_26

    mul-int/lit8 v3, v2, 0x2

    aget-byte v4, p0, v2

    and-int/lit16 v5, v4, 0xff

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    aput-char v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_26
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static install(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .registers 15

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/local/p5home/VehicleObservationProvider;->URI:Landroid/net/Uri;

    const-string v3, "config"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_103

    const-string v2, "enabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_103

    invoke-static {p0}, Lcom/local/p5home/VehicleObservationHook;->allowed(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_25

    goto/16 :goto_103

    .line 67
    :cond_25
    const-string v2, "generation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_102

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x40

    if-le v2, v4, :cond_37

    goto/16 :goto_102

    .line 68
    :cond_37
    const-string v2, "com.xiaopeng.carcontrol.carmanager.impl.ScuController"

    invoke-static {v2, v3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 69
    const-string v4, "com.xiaopeng.carcontrol.carmanager.impl.IcmController"

    invoke-static {v4, v3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 70
    const-string v4, "handleBsdUpdate"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v6, "handleRctaUpdate"

    new-array v7, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "handleMileageTotalUpdate"

    new-array v8, v5, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    invoke-virtual {p1, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const-string v7, "handleRcwUpdate"

    new-array v8, v5, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const-string v8, "handleAccUpdate"

    new-array v9, v5, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    invoke-virtual {v2, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string v9, "handleLccUpdate"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v3

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v5

    invoke-virtual {v2, v9, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 71
    invoke-static {v4}, Lcom/local/p5home/VehicleObservationHook;->passiveCallback(Ljava/lang/reflect/Method;)Z

    move-result v9

    if-eqz v9, :cond_101

    invoke-static {v6}, Lcom/local/p5home/VehicleObservationHook;->passiveCallback(Ljava/lang/reflect/Method;)Z

    move-result v9

    if-eqz v9, :cond_101

    invoke-static {p1}, Lcom/local/p5home/VehicleObservationHook;->passiveCallback(Ljava/lang/reflect/Method;)Z

    move-result v9

    if-eqz v9, :cond_101

    invoke-static {v7}, Lcom/local/p5home/VehicleObservationHook;->passiveCallback(Ljava/lang/reflect/Method;)Z

    move-result v9

    if-eqz v9, :cond_101

    invoke-static {v8}, Lcom/local/p5home/VehicleObservationHook;->passiveCallback(Ljava/lang/reflect/Method;)Z

    move-result v9

    if-eqz v9, :cond_101

    invoke-static {v2}, Lcom/local/p5home/VehicleObservationHook;->passiveCallback(Ljava/lang/reflect/Method;)Z

    move-result v9

    if-nez v9, :cond_b6

    goto :goto_101

    .line 72
    :cond_b6
    invoke-static {p0, v5, v1}, Lcom/local/p5home/VehicleObservationHook;->observer(Landroid/content/Context;ILjava/lang/String;)Lde/robv/android/xposed/XC_MethodHook;

    move-result-object v5

    invoke-static {v4, v5}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-static {p0, v10, v1}, Lcom/local/p5home/VehicleObservationHook;->observer(Landroid/content/Context;ILjava/lang/String;)Lde/robv/android/xposed/XC_MethodHook;

    move-result-object v4

    invoke-static {v6, v4}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    const/4 v4, 0x3

    invoke-static {p0, v4, v1}, Lcom/local/p5home/VehicleObservationHook;->observer(Landroid/content/Context;ILjava/lang/String;)Lde/robv/android/xposed/XC_MethodHook;

    move-result-object v4

    invoke-static {p1, v4}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    const/4 p1, 0x4

    invoke-static {p0, p1, v1}, Lcom/local/p5home/VehicleObservationHook;->observer(Landroid/content/Context;ILjava/lang/String;)Lde/robv/android/xposed/XC_MethodHook;

    move-result-object p1

    invoke-static {v7, p1}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    const/4 p1, 0x7

    invoke-static {p0, p1, v1}, Lcom/local/p5home/VehicleObservationHook;->observer(Landroid/content/Context;ILjava/lang/String;)Lde/robv/android/xposed/XC_MethodHook;

    move-result-object p1

    invoke-static {v8, p1}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-static {p0, v1}, Lcom/local/p5home/VehicleObservationHook;->lccObserver(Landroid/content/Context;Ljava/lang/String;)Lde/robv/android/xposed/XC_MethodHook;

    move-result-object p1

    invoke-static {v2, p1}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, v3, v4, v5, v1}, Lcom/local/p5home/VehicleObservationHook;->publish(Landroid/content/Context;IDLjava/lang/String;)V
    :try_end_100
    .catchall {:try_start_5 .. :try_end_100} :catchall_104

    goto :goto_11b

    .line 71
    :cond_101
    :goto_101
    return-void

    .line 67
    :cond_102
    :goto_102
    return-void

    .line 66
    :cond_103
    :goto_103
    return-void

    .line 79
    :catchall_104
    move-exception p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_109
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_11b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/robv/android/xposed/XC_MethodHook$Unhook;

    :try_start_115
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V
    :try_end_118
    .catchall {:try_start_115 .. :try_end_118} :catchall_119

    goto :goto_109

    :catchall_119
    move-exception p1

    goto :goto_109

    :cond_11b
    :goto_11b
    nop

    .line 80
    return-void
.end method

.method private static installCamera(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .registers 8

    .line 52
    nop

    .line 54
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/local/p5home/VehicleObservationProvider;->URI:Landroid/net/Uri;

    const-string v3, "config"

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_60

    const-string v2, "enabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {p0, v2}, Lcom/local/p5home/TurnCameraStatusIdentity;->verified(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_60

    .line 56
    :cond_24
    const-string v2, "generation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x40

    if-le v2, v4, :cond_35

    goto :goto_5f

    .line 57
    :cond_35
    const-string v2, "com.xiaopeng.drivingimageassist.carapi.event.AVMEvent"

    invoke-static {v2, v3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 58
    const-string v2, "onAvmWork"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-virtual {p1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p1}, Lcom/local/p5home/VehicleObservationHook;->passiveCallback(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-nez v2, :cond_4f

    return-void

    .line 59
    :cond_4f
    const/4 v2, 0x5

    invoke-static {p0, v2, v1}, Lcom/local/p5home/VehicleObservationHook;->observer(Landroid/content/Context;ILjava/lang/String;)Lde/robv/android/xposed/XC_MethodHook;

    move-result-object v2

    invoke-static {p1, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v0

    const/4 p1, 0x6

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1, v2, v3, v1}, Lcom/local/p5home/VehicleObservationHook;->publish(Landroid/content/Context;IDLjava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_2 .. :try_end_5e} :catchall_61

    goto :goto_69

    .line 56
    :cond_5f
    :goto_5f
    return-void

    .line 55
    :cond_60
    :goto_60
    return-void

    .line 60
    :catchall_61
    move-exception p0

    if-eqz v0, :cond_69

    :try_start_64
    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_69

    :catchall_68
    move-exception p0

    :cond_69
    :goto_69
    nop

    .line 61
    return-void
.end method

.method static synthetic lambda$publish$1(IDLjava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V
    .registers 8

    .line 98
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "kind"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "value"

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p0, "generation"

    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1f

    const-string p0, "convert"

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1f
    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/local/p5home/VehicleObservationProvider;->URI:Landroid/net/Uri;

    const-string p2, "report"

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    goto :goto_2d

    :catchall_2c
    move-exception p0

    :goto_2d
    return-void
.end method

.method static synthetic lambda$schedule$0(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .registers 4

    .line 49
    const-string v0, "com.xiaopeng.drivingimageassist"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-static {p1, p2}, Lcom/local/p5home/VehicleObservationHook;->installCamera(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    goto :goto_f

    :cond_c
    invoke-static {p1, p2}, Lcom/local/p5home/VehicleObservationHook;->install(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    :goto_f
    return-void
.end method

.method private static lccObserver(Landroid/content/Context;Ljava/lang/String;)Lde/robv/android/xposed/XC_MethodHook;
    .registers 3

    .line 89
    new-instance v0, Lcom/local/p5home/VehicleObservationHook$3;

    invoke-direct {v0, p0, p1}, Lcom/local/p5home/VehicleObservationHook$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private static observer(Landroid/content/Context;ILjava/lang/String;)Lde/robv/android/xposed/XC_MethodHook;
    .registers 4

    .line 81
    new-instance v0, Lcom/local/p5home/VehicleObservationHook$2;

    invoke-direct {v0, p1, p0, p2}, Lcom/local/p5home/VehicleObservationHook$2;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private static passiveCallback(Ljava/lang/reflect/Method;)Z
    .registers 3

    .line 108
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 109
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_20

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    if-nez p0, :cond_20

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result p0

    if-nez p0, :cond_20

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isNative(I)Z

    move-result p0

    if-nez p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method private static publish(Landroid/content/Context;IDLjava/lang/String;)V
    .registers 11

    .line 95
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/local/p5home/VehicleObservationHook;->publish(Landroid/content/Context;IDLjava/lang/String;Ljava/lang/Boolean;)V

    .line 96
    return-void
.end method

.method private static publish(Landroid/content/Context;IDLjava/lang/String;Ljava/lang/Boolean;)V
    .registers 15

    .line 98
    :try_start_0
    sget-object v0, Lcom/local/p5home/VehicleObservationHook;->SEND:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda1;

    move-object v1, v8

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda1;-><init>(IDLjava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    goto :goto_12

    :catchall_11
    move-exception p0

    .line 99
    :goto_12
    return-void
.end method

.method private static schedule(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 6

    .line 48
    sget-object v0, Lcom/local/p5home/VehicleObservationHook;->attempted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 49
    :cond_b
    :try_start_b
    sget-object v0, Lcom/local/p5home/VehicleObservationHook;->SEND:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p0, p1}, Lcom/local/p5home/VehicleObservationHook$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_16

    goto :goto_17

    :catchall_16
    move-exception p0

    .line 50
    :goto_17
    return-void
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 8

    .line 35
    const-string v0, "com.xiaopeng.carcontrol"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "com.xiaopeng.drivingimageassist"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_14
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_1e
    return-void

    .line 36
    :cond_1f
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    .line 38
    :try_start_21
    invoke-static {}, Landroid/app/AndroidAppHelper;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_37

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v1, p1, v0}, Lcom/local/p5home/VehicleObservationHook;->schedule(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_37
    const-class v1, Landroid/app/Application;

    const-string v2, "attach"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lcom/local/p5home/VehicleObservationHook$1;

    invoke-direct {v4, p0, v0, p1}, Lcom/local/p5home/VehicleObservationHook$1;-><init>(Lcom/local/p5home/VehicleObservationHook;Ljava/lang/String;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    const/4 p1, 0x1

    aput-object v4, v3, p1

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_4e
    .catchall {:try_start_21 .. :try_end_4e} :catchall_4f

    goto :goto_50

    .line 45
    :catchall_4f
    move-exception p1

    :goto_50
    nop

    .line 46
    return-void
.end method
