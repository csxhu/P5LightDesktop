.class public final Lcom/local/p5home/DeviceActions;
.super Ljava/lang/Object;
.source "DeviceActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/DeviceActions$Callback;
    }
.end annotation


# static fields
.field private static final GUARD:Ljava/lang/String; = "[ \"$(getprop ro.product.device)\" = d20 ] && [ \"$(getprop ro.build.version.sdk)\" = 28 ] && [ \"$(getprop ro.build.fingerprint)\" = \'XPENG/d20/d20:9/PQ3B.190801.002/root11250001:user/release-keys\' ] || exit 41\n"

.field private static final HOME:Ljava/lang/String; = "com.local.p5home/.HomeEntry"

.field static final MIGRATE:Ljava/lang/String; = "set -eu\n[ \"$(getprop ro.product.device)\" = d55 ] && [ \"$(getprop ro.build.version.sdk)\" = 29 ] || exit 41\npm enable --user 0 com.local.p5home/.HomeEntry\ncmd package set-home-activity --user 0 com.local.p5home/.HomeEntry\nam start -W --display 0 --activityType 2 -a android.intent.action.MAIN -c android.intent.category.HOME -n com.local.p5home/.HomeEntry\n"

.field private static final OEM:Ljava/lang/String; = "com.xiaopeng.montecarlo/.MainActivity"

.field private static final RELOAD_BARS:Ljava/lang/String; = "BB=/data/adb/magisk/busybox\nfor p in $(pidof com.android.systemui 2>/dev/null || true); do\n if [ \"$($BB awk \'/^Uid:/{print $2}\' /proc/$p/status 2>/dev/null)\" = 10012 ] && $BB tr \'\\000\' \'\\n\' < /proc/$p/cmdline | $BB grep -Fxq com.android.systemui; then kill -TERM \"$p\" 2>/dev/null || true; fi\ndone\n"

.field private static final RESTORE:Ljava/lang/String; = "set -eu\n[ \"$(getprop ro.product.device)\" = d55 ] && [ \"$(getprop ro.build.version.sdk)\" = 29 ] || exit 41\npm enable --user 0 com.xiaopeng.montecarlo/.MainActivity\ncmd package set-home-activity --user 0 com.xiaopeng.montecarlo/.MainActivity\nam start -W --display 0 --activityType 2 -a android.intent.action.MAIN -c android.intent.category.HOME -n com.xiaopeng.montecarlo/.MainActivity\npm disable --user 0 com.local.p5home/.HomeEntry\n"

.field private static final STOP_NATIVE:Ljava/lang/String; = ""

.field private static final WORK:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/local/p5home/DeviceActions;->WORK:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRoot(Landroid/app/Activity;Lcom/local/p5home/DeviceActions$Callback;)V
    .registers 4

    .line 81
    const-string v0, "\u6b63\u5728\u68c0\u6d4b Root \u6388\u6743"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/local/p5home/BridgeStore;->rootUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda4;-><init>(Landroid/app/Activity;Lcom/local/p5home/DeviceActions$Callback;)V

    const-string p1, "id -u"

    const/16 v1, 0x1e

    invoke-static {p0, p1, v1, v0}, Lcom/local/p5home/DeviceActions;->run(Landroid/app/Activity;Ljava/lang/String;ILcom/local/p5home/DeviceActions$Callback;)V

    return-void
.end method

.method public static isDefaultHome(Landroid/content/Context;)Z
    .registers 4

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_43

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_43

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    iget-object p0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.local.p5home.HomeEntry"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    iget-object p0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v0, "com.local.p5home.HomeActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    :cond_42
    const/4 v2, 0x1

    :cond_43
    return v2
.end method

.method static synthetic lambda$checkRoot$0(Landroid/app/Activity;Lcom/local/p5home/DeviceActions$Callback;ZLjava/lang/String;)V
    .registers 5

    .line 81
    if-eqz p2, :cond_10

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string p3, "0"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    const/4 p2, 0x1

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    :goto_11
    if-eqz p2, :cond_16

    const-string p3, "Root \u5df2\u6388\u6743\uff08uid=0\uff09"

    goto :goto_18

    :cond_16
    const-string p3, "Root \u5c1a\u672a\u6388\u6743\uff0c\u8bf7\u5728\u8d85\u7ea7\u7528\u6237\u7ba1\u7406\u5668\u5141\u8bb8 G3\u8f7b\u684c\u9762"

    :goto_18
    if-eqz p2, :cond_1d

    const-string v0, ""

    goto :goto_1e

    :cond_1d
    move-object v0, p3

    :goto_1e
    invoke-static {p0, p3, v0}, Lcom/local/p5home/BridgeStore;->rootUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Lcom/local/p5home/DeviceActions$Callback;->done(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$restoreOemHome$2(Landroid/app/Activity;Lcom/local/p5home/DeviceActions$Callback;ZLjava/lang/String;)V
    .registers 7

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz p2, :cond_2c

    if-eqz v0, :cond_2c

    iget-object p2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p2, :cond_2c

    iget-object p2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.xiaopeng.montecarlo"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    const/4 p2, 0x1

    goto :goto_2d

    :cond_2c
    move p2, v2

    :goto_2d
    if-eqz p2, :cond_38

    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object v0

    iput-boolean v2, v0, Lcom/local/p5home/AppConfig;->autoLaunchNav:Z

    invoke-static {p0, v0}, Lcom/local/p5home/ConfigStore;->save(Landroid/content/Context;Lcom/local/p5home/AppConfig;)V

    :cond_38
    if-eqz p2, :cond_3d

    const-string p3, "\u5df2\u6062\u590d\u539f\u8f66\u9ed8\u8ba4\u684c\u9762\uff1b\u8f7b\u684c\u9762\u81ea\u52a8\u6253\u5f00\u5bfc\u822a\u5df2\u5173\u95ed\u3002"

    goto :goto_5b

    :cond_3d
    const-string v0, "\u539f\u5730\u56fe"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string p3, "\u539f\u5730\u56fe\u672a\u80fd\u7a33\u5b9a\u542f\u52a8\uff0c\u5df2\u4fdd\u7559\u8f7b\u684c\u9762\u3002\u8bf7\u5148\u4fee\u590d\u5f53\u524d\u79fb\u690d\u5730\u56fe\uff0c\u518d\u6062\u590d\u539f\u8f66\u684c\u9762\u3002"

    goto :goto_5b

    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6062\u590d\u672a\u786e\u8ba4\uff1a\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_5b
    if-eqz p2, :cond_60

    const-string v0, "\u5df2\u6062\u590d\u539f\u8f66\u9ed8\u8ba4\u684c\u9762"

    goto :goto_62

    :cond_60
    const-string v0, "\u539f\u8f66\u56de\u9000\u672a\u5b8c\u6210"

    :goto_62
    if-eqz p2, :cond_67

    const-string v1, ""

    goto :goto_68

    :cond_67
    move-object v1, p3

    :goto_68
    invoke-static {p0, v0, v1}, Lcom/local/p5home/BridgeStore;->rootUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Lcom/local/p5home/DeviceActions$Callback;->done(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$run$3(Ljava/lang/Process;Ljava/lang/StringBuilder;Landroid/app/Activity;)V
    .registers 6

    .line 93
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_52

    :cond_10
    :goto_10
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_44

    monitor-enter p1
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_48

    :try_start_17
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x7530

    if-ge v1, v2, :cond_28

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_41

    :try_start_29
    const-string v1, "G3_STAGE "

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    invoke-static {v1, p0, v2}, Lcom/local/p5home/BridgeStore;->rootUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_48

    goto :goto_10

    :catchall_41
    move-exception p0

    :try_start_42
    monitor-exit p1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_48

    :cond_44
    :try_start_44
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_52

    goto :goto_53

    :catchall_48
    move-exception p0

    :try_start_49
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception p1

    :try_start_4e
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_51
    throw p0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_52} :catch_52

    :catch_52
    move-exception p0

    :goto_53
    return-void
.end method

.method static synthetic lambda$run$4(Lcom/local/p5home/DeviceActions$Callback;ZLjava/lang/String;)V
    .registers 3

    .line 98
    invoke-interface {p0, p1, p2}, Lcom/local/p5home/DeviceActions$Callback;->done(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$run$5(ILjava/lang/String;Landroid/app/Activity;Lcom/local/p5home/DeviceActions$Callback;)V
    .registers 11

    .line 91
    nop

    .line 92
    const/16 v0, 0x3c

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-gt p0, v0, :cond_12

    :try_start_7
    const-string v0, "set -eu\n[ \"$(getprop ro.product.device)\" = d55 ] && [ \"$(getprop ro.build.version.sdk)\" = 29 ] || exit 41\npm enable --user 0 com.xiaopeng.montecarlo/.MainActivity\ncmd package set-home-activity --user 0 com.xiaopeng.montecarlo/.MainActivity\nam start -W --display 0 --activityType 2 -a android.intent.action.MAIN -c android.intent.category.HOME -n com.xiaopeng.montecarlo/.MainActivity\npm disable --user 0 com.local.p5home/.HomeEntry\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    move-object v0, v2

    goto :goto_1c

    :cond_12
    :goto_12
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    add-int/lit8 v3, p0, 0x14

    invoke-static {v0, v3}, Lcom/local/p5home/AssistantService;->hold(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_9f
    .catchall {:try_start_7 .. :try_end_1c} :catchall_9c

    :goto_1c
    :try_start_1c
    new-instance v3, Ljava/lang/ProcessBuilder;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "su"

    aput-object v5, v4, v1

    const-string v5, "-c"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1, p2}, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Process;Ljava/lang/StringBuilder;Landroid/app/Activity;)V

    const-string v5, "G3-RootOutput"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 94
    int-to-long v4, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, p0}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-eqz p0, :cond_8f

    .line 95
    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V

    monitor-enter p1
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_65} :catch_9a
    .catchall {:try_start_1c .. :try_end_65} :catchall_c5

    :try_start_65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    monitor-exit p1
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_8c

    :try_start_6e
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result p1

    if-nez p1, :cond_7b

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result p1
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_78} :catch_9a
    .catchall {:try_start_6e .. :try_end_78} :catchall_c5

    if-nez p1, :cond_7b

    move v1, v6

    .line 97
    :cond_7b
    if-eqz v2, :cond_80

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_80
    if-eqz v0, :cond_bc

    :try_start_82
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/local/p5home/AssistantService;->releaseHold(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_89} :catch_8a

    goto :goto_bc

    :catch_8a
    move-exception p1

    goto :goto_bc

    .line 95
    :catchall_8c
    move-exception p0

    :try_start_8d
    monitor-exit p1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    :try_start_8e
    throw p0

    .line 94
    :cond_8f
    invoke-virtual {v2}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u7b49\u5f85\u6388\u6743\u6216\u684c\u9762\u6062\u590d\u8d85\u65f6\uff0c\u8bf7\u8bfb\u53d6\u5b9e\u9645\u72b6\u6001\u540e\u91cd\u8bd5"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_9a} :catch_9a
    .catchall {:try_start_8e .. :try_end_9a} :catchall_c5

    .line 96
    :catch_9a
    move-exception p0

    goto :goto_a1

    .line 97
    :catchall_9c
    move-exception p0

    move-object v0, v2

    goto :goto_c6

    .line 96
    :catch_9f
    move-exception p0

    move-object v0, v2

    :goto_a1
    :try_start_a1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_aa

    const-string p0, "Root \u64cd\u4f5c\u672a\u5b8c\u6210"

    goto :goto_ae

    :cond_aa
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0
    :try_end_ae
    .catchall {:try_start_a1 .. :try_end_ae} :catchall_c5

    .line 97
    :goto_ae
    if-eqz v2, :cond_b3

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_b3
    if-eqz v0, :cond_bc

    :try_start_b5
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/local/p5home/AssistantService;->releaseHold(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_bc} :catch_8a

    .line 98
    :cond_bc
    :goto_bc
    new-instance p1, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3, v1, p0}, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda1;-><init>(Lcom/local/p5home/DeviceActions$Callback;ZLjava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 99
    return-void

    .line 97
    :catchall_c5
    move-exception p0

    :goto_c6
    if-eqz v2, :cond_cb

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_cb
    if-eqz v0, :cond_d6

    :try_start_cd
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/local/p5home/AssistantService;->releaseHold(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d4} :catch_d5

    goto :goto_d6

    :catch_d5
    move-exception p1

    :cond_d6
    :goto_d6
    throw p0
.end method

.method static synthetic lambda$setDefaultHome$1(Landroid/app/Activity;Lcom/local/p5home/DeviceActions$Callback;ZLjava/lang/String;)V
    .registers 6

    .line 83
    if-eqz p2, :cond_a

    invoke-static {p0}, Lcom/local/p5home/DeviceActions;->isDefaultHome(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_a

    const/4 p2, 0x1

    goto :goto_b

    :cond_a
    const/4 p2, 0x0

    .line 84
    :goto_b
    if-eqz p2, :cond_10

    const-string v0, "\u8f7b\u684c\u9762\u5df2\u8bbe\u4e3a\u9ed8\u8ba4"

    goto :goto_12

    :cond_10
    const-string v0, "\u684c\u9762\u5207\u6362\u672a\u5b8c\u6210"

    :goto_12
    if-eqz p2, :cond_17

    const-string v1, ""

    goto :goto_18

    :cond_17
    move-object v1, p3

    :goto_18
    invoke-static {p0, v0, v1}, Lcom/local/p5home/BridgeStore;->rootUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    if-eqz p2, :cond_20

    const-string p0, "\u8f7b\u684c\u9762\u5df2\u8bbe\u4e3a\u9ed8\u8ba4\u3002\u65e7\u6269\u5c55\u5df2\u505c\u7528\u5e76\u5173\u95ed\u81ea\u542f\uff1b\u539f\u8f66\u5730\u56fe\u4fdd\u7559\u6309\u9700\u6253\u5f00\u4e0e\u56de\u9000\u5165\u53e3\u3002"

    goto :goto_33

    :cond_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u672a\u786e\u8ba4\u9ed8\u8ba4\u684c\u9762\uff0c\u8bf7\u68c0\u67e5 Root \u4e0e\u6062\u590d\u72b6\u6001\u3002\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_33
    invoke-interface {p1, p2, p0}, Lcom/local/p5home/DeviceActions$Callback;->done(ZLjava/lang/String;)V

    return-void
.end method

.method public static openLsposed(Landroid/content/Context;)V
    .registers 3

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "org.lsposed.manager"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_15

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 104
    :cond_15
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_33

    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p0

    const-string v0, "\u542f\u7528\u5c0fP\u6a21\u5757"

    invoke-virtual {p0, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p0

    const-string v0, "\u8bf7\u4ece LSPosed \u901a\u77e5\u6216\u5df2\u6709\u5feb\u6377\u65b9\u5f0f\u6253\u5f00\u7ba1\u7406\u5668\uff0c\u542f\u7528\u201cG3\u8f7b\u684c\u9762\u201d\uff0c\u4f5c\u7528\u57df\u53ea\u52fe\u9009\u5c0fP\u8bed\u97f3\u670d\u52a1\uff0c\u7136\u540e\u91cd\u542f\u5c0fP\u3002\u5b89\u88c5\u5e94\u7528\u672c\u8eab\u4e0d\u4f1a\u81ea\u52a8\u542f\u7528\u6a21\u5757\u3002"

    invoke-virtual {p0, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p0

    const-string v0, "\u77e5\u9053\u4e86"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/local/p5home/Ui$PanelBuilder;->show()Lcom/local/p5home/Ui$PanelDialog;

    .line 105
    :cond_33
    return-void
.end method

.method public static openOemSettings(Landroid/content/Context;)V
    .registers 3

    .line 106
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_2a

    :catch_11
    move-exception v0

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2a

    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p0

    const-string v0, "\u7cfb\u7edf\u8bbe\u7f6e\u5165\u53e3\u4e0d\u53ef\u7528"

    invoke-virtual {p0, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p0

    const-string v0, "\u5173\u95ed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/local/p5home/Ui$PanelBuilder;->show()Lcom/local/p5home/Ui$PanelDialog;

    :cond_2a
    :goto_2a
    return-void
.end method

.method public static restoreOemHome(Landroid/app/Activity;Lcom/local/p5home/DeviceActions$Callback;)V
    .registers 4

    .line 88
    new-instance v0, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;Lcom/local/p5home/DeviceActions$Callback;)V

    const-string p1, "set -eu\n[ \"$(getprop ro.product.device)\" = d55 ] && [ \"$(getprop ro.build.version.sdk)\" = 29 ] || exit 41\npm enable --user 0 com.xiaopeng.montecarlo/.MainActivity\ncmd package set-home-activity --user 0 com.xiaopeng.montecarlo/.MainActivity\nam start -W --display 0 --activityType 2 -a android.intent.action.MAIN -c android.intent.category.HOME -n com.xiaopeng.montecarlo/.MainActivity\npm disable --user 0 com.local.p5home/.HomeEntry\n"

    const/16 v1, 0x28

    invoke-static {p0, p1, v1, v0}, Lcom/local/p5home/DeviceActions;->run(Landroid/app/Activity;Ljava/lang/String;ILcom/local/p5home/DeviceActions$Callback;)V

    .line 89
    return-void
.end method

.method private static run(Landroid/app/Activity;Ljava/lang/String;ILcom/local/p5home/DeviceActions$Callback;)V
    .registers 6

    .line 91
    sget-object v0, Lcom/local/p5home/DeviceActions;->WORK:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2, p1, p0, p3}, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda5;-><init>(ILjava/lang/String;Landroid/app/Activity;Lcom/local/p5home/DeviceActions$Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public static setDefaultHome(Landroid/app/Activity;Lcom/local/p5home/DeviceActions$Callback;)V
    .registers 5

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set -eu\n[ \"$(getprop ro.product.device)\" = d55 ] && [ \"$(getprop ro.build.version.sdk)\" = 29 ] || exit 41\npm enable --user 0 com.local.p5home/.HomeEntry\ncmd package set-home-activity --user 0 com.local.p5home/.HomeEntry\nam start -W --display 0 --activityType 2 -a android.intent.action.MAIN -c android.intent.category.HOME -n com.local.p5home/.HomeEntry\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    const-string v2, "com.xiaopeng.montecarlo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, ""

    goto :goto_1e

    :cond_1c
    const-string v1, ""

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/local/p5home/DeviceActions$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;Lcom/local/p5home/DeviceActions$Callback;)V

    const/16 p1, 0x118

    invoke-static {p0, v0, p1, v1}, Lcom/local/p5home/DeviceActions;->run(Landroid/app/Activity;Ljava/lang/String;ILcom/local/p5home/DeviceActions$Callback;)V

    .line 86
    return-void
.end method
