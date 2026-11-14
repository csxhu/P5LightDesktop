.class final Lcom/local/p5home/TurnCameraControl;
.super Ljava/lang/Object;
.source "TurnCameraControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/TurnCameraControl$Result;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static describe(ILjava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 4

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x2

    sparse-switch p0, :sswitch_data_fe

    :cond_8
    goto/16 :goto_7c

    :sswitch_a
    const-string p0, "NATIVE_BRIDGE_READY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    goto/16 :goto_7d

    :sswitch_15
    const-string p0, "NATIVE_NOT_READY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0xa

    goto :goto_7d

    :sswitch_20
    const-string p0, "OEM_DISPLAY_BUSY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x6

    goto :goto_7d

    :sswitch_2a
    const-string p0, "PREVIEW_CLOSED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x4

    goto :goto_7d

    :sswitch_34
    const-string p0, "REQUEST_EXPIRED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0x8

    goto :goto_7d

    :sswitch_3f
    const-string p0, "NO_OWN_PREVIEW"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x5

    goto :goto_7d

    :sswitch_49
    const-string p0, "OBSERVER_NOT_READY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    move p0, v0

    goto :goto_7d

    :sswitch_53
    const-string p0, "OBSERVER_ATTACHED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_7d

    :sswitch_5d
    const-string p0, "PREVIEW_REQUESTED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x3

    goto :goto_7d

    :sswitch_67
    const-string p0, "PARKED_CONDITIONS_NOT_READY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x7

    goto :goto_7d

    :sswitch_71
    const-string p0, "DUPLICATE_IGNORED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0x9

    goto :goto_7d

    :goto_7c
    const/4 p0, -0x1

    :goto_7d
    packed-switch p0, :pswitch_data_12c

    .line 43
    const-string p0, "\u539f\u8f66\u6865\u63a5\u672a\u54cd\u5e94\uff1a\u8bf7\u68c0\u67e5\u4f5c\u7528\u57df\u3001\u8fdb\u7a0b\u91cd\u8f7d\u548c\u5347\u7ea7\u540e\u7684\u63a5\u53e3\u517c\u5bb9\u6027\uff1bRoot \u542f\u52a8\u8fdb\u7a0b\u4e0d\u7b49\u4e8e\u63a5\u5165\u5c31\u7eea"

    return-object p0

    .line 42
    :pswitch_83
    const-string p0, "\u539f\u8f66\u663e\u793a\u6216 CarApi \u5c1a\u672a\u5c31\u7eea"

    return-object p0

    .line 41
    :pswitch_86
    const-string p0, "\u91cd\u590d\u64cd\u4f5c\u5df2\u5ffd\u7565"

    return-object p0

    .line 40
    :pswitch_89
    const-string p0, "\u64cd\u4f5c\u5df2\u8fc7\u671f\uff0c\u672a\u663e\u793a\u9884\u89c8"

    return-object p0

    .line 39
    :pswitch_8c
    const-string p0, "\u4ec5\u5141\u8bb8 P \u6321\u3001\u8f66\u901f\u4e3a 0 \u4e14\u539f\u8f66\u5f71\u50cf\u5c31\u7eea\u65f6\u9884\u89c8\uff1b\u539f\u8f66\u76f8\u673a\u3001\u8f85\u52a9\u753b\u9762\u5360\u7528\u65f6\u4e0d\u6253\u5f00"

    return-object p0

    .line 38
    :pswitch_8f
    const-string p0, "\u539f\u8f66\u753b\u9762\u5df2\u663e\u793a\u6216\u6b63\u5728\u6392\u961f\uff0c\u672a\u8986\u76d6"

    return-object p0

    .line 37
    :pswitch_92
    const-string p0, "\u6ca1\u6709\u672c\u6a21\u5757\u62e5\u6709\u7684\u9884\u89c8\uff0c\u4fdd\u7559\u539f\u8f66\u753b\u9762"

    return-object p0

    .line 36
    :pswitch_95
    const-string p0, "\u5df2\u7ed3\u675f\u672c\u6a21\u5757\u9884\u89c8"

    return-object p0

    .line 35
    :pswitch_98
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u5df2\u5411\u539f\u8f66\u63d0\u4ea4"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p2, :cond_b0

    const-string p1, "side"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v0, :cond_b0

    const-string p1, "\u5de6\u4fa7"

    goto :goto_b2

    :cond_b0
    const-string p1, "\u53f3\u4fa7"

    :goto_b2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\u9884\u89c8\uff0c\u6700\u957f 5 \u79d2\uff1b\u5b9e\u9645\u753b\u9762\u8bf7\u5728\u5b9e\u8f66\u786e\u8ba4"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 34
    :pswitch_c1
    const-string p0, "\u539f\u8f66 CarApi \u6216\u4e8b\u4ef6\u5217\u8868\u5c1a\u672a\u5c31\u7eea\uff0c\u672a\u5f3a\u884c\u521d\u59cb\u5316\u8f66\u8f86\u670d\u52a1"

    return-object p0

    .line 33
    :pswitch_c4
    const-string p0, "\u5df2\u8bf7\u6c42\u539f\u8f66\u6ce8\u518c\u8f6c\u5411\u4e8b\u4ef6\uff1b\u4ecd\u9700\u770b\u5230\u8f6c\u5411\u706f\u548c\u6863\u4f4d\u56de\u8c03\u624d\u80fd\u786e\u8ba4\u81ea\u52a8\u63a5\u5165"

    return-object p0

    .line 32
    :pswitch_c7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u539f\u8f66\u6865\u63a5\u5df2\u63a5\u5165\uff1b"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p2, :cond_df

    const-string p1, "parkedReady"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_df

    const-string p1, "\u505c\u8f66\u9884\u89c8\u6761\u4ef6\u5df2\u6ee1\u8db3"

    goto :goto_e1

    :cond_df
    const-string p1, "\u505c\u8f66\u9884\u89c8\u6761\u4ef6\u672a\u6ee1\u8db3"

    :goto_e1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p2, :cond_f2

    const-string p1, "displayOccupied"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f2

    const-string p1, "\uff1b\u539f\u8f66\u753b\u9762\u6b63\u5360\u7528"

    goto :goto_f4

    :cond_f2
    const-string p1, ""

    :goto_f4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_fe
    .sparse-switch
        -0x77c2cea2 -> :sswitch_71
        -0x4df8af5a -> :sswitch_67
        -0x4adf6089 -> :sswitch_5d
        -0x4016d313 -> :sswitch_53
        -0xeac7532 -> :sswitch_49
        0xfb55251 -> :sswitch_3f
        0x13ba7935 -> :sswitch_34
        0x17fef5e3 -> :sswitch_2a
        0x329d1d7e -> :sswitch_20
        0x477faecf -> :sswitch_15
        0x60d41475 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_c7
        :pswitch_c4
        :pswitch_c1
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
    .end packed-switch
.end method

.method static synthetic lambda$startNative$0(Ljava/lang/Process;Ljava/lang/StringBuilder;)V
    .registers 5

    .line 53
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_36

    :cond_10
    :goto_10
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x1000

    if-ge v1, v2, :cond_10

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2c

    goto :goto_10

    :cond_28
    :try_start_28
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_36

    goto :goto_37

    :catchall_2c
    move-exception p0

    :try_start_2d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception p1

    :try_start_32
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_35
    throw p0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_36} :catch_36

    :catch_36
    move-exception p0

    :goto_37
    return-void
.end method

.method static request(Landroid/content/Context;Ljava/lang/String;)Lcom/local/p5home/TurnCameraControl$Result;
    .registers 16

    .line 13
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_13

    new-instance p0, Lcom/local/p5home/TurnCameraControl$Result;

    const-string p1, "\u8bf7\u5728\u540e\u53f0\u5904\u7406\u539f\u8f66\u8bf7\u6c42"

    invoke-direct {p0, v2, p1}, Lcom/local/p5home/TurnCameraControl$Result;-><init>(ZLjava/lang/String;)V

    return-object p0

    .line 14
    :cond_13
    const-string v0, "right"

    const-string v1, "close"

    const-string v3, "probe"

    const-string v4, "repair"

    const-string v5, "left"

    filled-new-array {v3, v4, v5, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    new-instance p0, Lcom/local/p5home/TurnCameraControl$Result;

    const-string p1, "\u64cd\u4f5c\u65e0\u6548"

    invoke-direct {p0, v2, p1}, Lcom/local/p5home/TurnCameraControl$Result;-><init>(ZLjava/lang/String;)V

    return-object p0

    .line 15
    :cond_33
    invoke-static {p0}, Lcom/local/p5home/TurnCameraControl;->supported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_41

    new-instance p0, Lcom/local/p5home/TurnCameraControl$Result;

    const-string p1, "\u539f\u8f66\u5f71\u50cf\u8eab\u4efd\u672a\u901a\u8fc7\u9a8c\u8bc1\uff0c\u672a\u53d1\u9001\u64cd\u4f5c"

    invoke-direct {p0, v2, p1}, Lcom/local/p5home/TurnCameraControl$Result;-><init>(ZLjava/lang/String;)V

    return-object p0

    .line 16
    :cond_41
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/local/p5home/TurnCameraControl$Result;

    const-string v4, "\u539f\u8f66\u6865\u63a5\u672a\u54cd\u5e94\uff1a\u8bf7\u68c0\u67e5 LSPosed \u4f5c\u7528\u57df\u548c\u8fdb\u7a0b\u91cd\u8f7d\uff1b\u82e5\u539f\u8f66\u5e94\u7528\u5df2\u5347\u7ea7\uff0c\u4ecd\u9700\u786e\u8ba4\u76f8\u673a\u63a5\u53e3\u517c\u5bb9\u6027"

    invoke-direct {v3, v2, v4}, Lcom/local/p5home/TurnCameraControl$Result;-><init>(ZLjava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 17
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.local.p5home.TURN_CAMERA_NATIVE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.xiaopeng.drivingimageassist"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "operation"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "requestId"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v3, "sentAt"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v7

    .line 19
    const/4 v8, 0x0

    :try_start_7f
    new-instance v9, Lcom/local/p5home/TurnCameraControl$1;

    invoke-direct {v9, v1, v0}, Lcom/local/p5home/TurnCameraControl$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    new-instance v10, Landroid/os/Handler;

    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v10, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 19
    move-object v6, p0

    invoke-virtual/range {v6 .. v13}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 26
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4

    invoke-virtual {v0, v3, v4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_a5

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/local/p5home/TurnCameraControl$Result;

    return-object p0

    :cond_a5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/local/p5home/TurnCameraControl$Result;
    :try_end_ab
    .catch Ljava/lang/InterruptedException; {:try_start_7f .. :try_end_ab} :catch_b5
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_ab} :catch_ac

    return-object p0

    .line 28
    :catch_ac
    move-exception p0

    new-instance p0, Lcom/local/p5home/TurnCameraControl$Result;

    const-string p1, "\u539f\u8f66\u63a5\u5165\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u6743\u9650\u548c\u4f5c\u7528\u57df"

    invoke-direct {p0, v2, p1}, Lcom/local/p5home/TurnCameraControl$Result;-><init>(ZLjava/lang/String;)V

    return-object p0

    .line 27
    :catch_b5
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    new-instance p0, Lcom/local/p5home/TurnCameraControl$Result;

    const-string p1, "\u64cd\u4f5c\u5df2\u53d6\u6d88"

    invoke-direct {p0, v2, p1}, Lcom/local/p5home/TurnCameraControl$Result;-><init>(ZLjava/lang/String;)V

    return-object p0
.end method

.method static startNative(Landroid/content/Context;)Lcom/local/p5home/TurnCameraControl$Result;
    .registers 9

    .line 48
    invoke-static {p0}, Lcom/local/p5home/TurnCameraControl;->supported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    new-instance p0, Lcom/local/p5home/TurnCameraControl$Result;

    const-string v0, "\u539f\u8f66\u5f71\u50cf\u8eab\u4efd\u672a\u901a\u8fc7\u9a8c\u8bc1\uff0c\u672a\u542f\u52a8\u670d\u52a1"

    invoke-direct {p0, v1, v0}, Lcom/local/p5home/TurnCameraControl$Result;-><init>(ZLjava/lang/String;)V

    return-object p0

    .line 49
    :cond_f
    nop

    .line 52
    const/4 v0, 0x0

    :try_start_11
    new-instance v2, Ljava/lang/ProcessBuilder;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "su"

    aput-object v4, v3, v1

    const-string v4, "-c"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "am startservice --user "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const v7, 0x186a0

    div-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " -n com.xiaopeng.drivingimageassist/.ForegroundService"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/local/p5home/TurnCameraControl$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v2}, Lcom/local/p5home/TurnCameraControl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Process;Ljava/lang/StringBuilder;)V

    const-string v6, "G3TurnStart"

    invoke-direct {v3, v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 54
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x14

    invoke-virtual {v0, v5, v6, v4}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_86

    invoke-virtual {v0}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    new-instance p0, Lcom/local/p5home/TurnCameraControl$Result;

    const-string v2, "Root \u6388\u6743\u6216\u539f\u8f66\u670d\u52a1\u542f\u52a8\u8d85\u65f6"

    invoke-direct {p0, v1, v2}, Lcom/local/p5home/TurnCameraControl$Result;-><init>(ZLjava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_80} :catch_103
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_80} :catch_f5
    .catchall {:try_start_11 .. :try_end_80} :catchall_f3

    .line 59
    if-eqz v0, :cond_85

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 54
    :cond_85
    return-object p0

    :cond_86
    const-wide/16 v4, 0x1f4

    :try_start_88
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v4

    if-nez v4, :cond_e6

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_e6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a4

    goto :goto_e6

    .line 56
    :cond_a4
    const-string v2, "probe"

    invoke-static {p0, v2}, Lcom/local/p5home/TurnCameraControl;->request(Landroid/content/Context;Ljava/lang/String;)Lcom/local/p5home/TurnCameraControl$Result;

    move-result-object p0

    new-instance v2, Lcom/local/p5home/TurnCameraControl$Result;

    iget-boolean v3, p0, Lcom/local/p5home/TurnCameraControl$Result;->accepted:Z

    iget-boolean v4, p0, Lcom/local/p5home/TurnCameraControl$Result;->accepted:Z

    if-eqz v4, :cond_c4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u539f\u8f66\u8fdb\u7a0b\u5df2\u542f\u52a8\u3002"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/local/p5home/TurnCameraControl$Result;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_d5

    :cond_c4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u542f\u52a8\u547d\u4ee4\u5df2\u5b8c\u6210\uff0c\u4f46\u63a5\u5165\u5c1a\u672a\u786e\u8ba4\u3002"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/local/p5home/TurnCameraControl$Result;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :goto_d5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/local/p5home/TurnCameraControl$Result;->autoCapability:Ljava/lang/String;

    iget-object p0, p0, Lcom/local/p5home/TurnCameraControl$Result;->nativeBuild:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, p0}, Lcom/local/p5home/TurnCameraControl$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e0
    .catch Ljava/lang/InterruptedException; {:try_start_88 .. :try_end_e0} :catch_103
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_e0} :catch_f5
    .catchall {:try_start_88 .. :try_end_e0} :catchall_f3

    .line 59
    if-eqz v0, :cond_e5

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 56
    :cond_e5
    return-object v2

    .line 55
    :cond_e6
    :goto_e6
    :try_start_e6
    new-instance p0, Lcom/local/p5home/TurnCameraControl$Result;

    const-string v2, "\u539f\u8f66\u670d\u52a1\u672a\u786e\u8ba4\u542f\u52a8\uff0c\u8bf7\u68c0\u67e5 Root \u6388\u6743\u548c\u539f\u8f66\u5305\u72b6\u6001"

    invoke-direct {p0, v1, v2}, Lcom/local/p5home/TurnCameraControl$Result;-><init>(ZLjava/lang/String;)V
    :try_end_ed
    .catch Ljava/lang/InterruptedException; {:try_start_e6 .. :try_end_ed} :catch_103
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_ed} :catch_f5
    .catchall {:try_start_e6 .. :try_end_ed} :catchall_f3

    .line 59
    if-eqz v0, :cond_f2

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 55
    :cond_f2
    return-object p0

    .line 59
    :catchall_f3
    move-exception p0

    goto :goto_118

    .line 58
    :catch_f5
    move-exception p0

    :try_start_f6
    new-instance p0, Lcom/local/p5home/TurnCameraControl$Result;

    const-string v2, "Root \u64cd\u4f5c\u672a\u5b8c\u6210\uff0c\u8bf7\u5728\u8d85\u7ea7\u7528\u6237\u7ba1\u7406\u4e2d\u6388\u6743 G3\u8f7b\u684c\u9762"

    invoke-direct {p0, v1, v2}, Lcom/local/p5home/TurnCameraControl$Result;-><init>(ZLjava/lang/String;)V
    :try_end_fd
    .catchall {:try_start_f6 .. :try_end_fd} :catchall_f3

    .line 59
    if-eqz v0, :cond_102

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 58
    :cond_102
    return-object p0

    .line 57
    :catch_103
    move-exception p0

    :try_start_104
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    new-instance p0, Lcom/local/p5home/TurnCameraControl$Result;

    const-string v2, "\u64cd\u4f5c\u5df2\u53d6\u6d88"

    invoke-direct {p0, v1, v2}, Lcom/local/p5home/TurnCameraControl$Result;-><init>(ZLjava/lang/String;)V
    :try_end_112
    .catchall {:try_start_104 .. :try_end_112} :catchall_f3

    .line 59
    if-eqz v0, :cond_117

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 57
    :cond_117
    return-object p0

    .line 59
    :goto_118
    if-eqz v0, :cond_11d

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_11d
    throw p0
.end method

.method static supported(Landroid/content/Context;)Z
    .registers 4

    .line 46
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.xiaopeng.drivingimageassist"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0, v1}, Lcom/local/p5home/TurnCameraStatusIdentity;->verified(Landroid/content/Context;I)Z

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    return p0

    :catch_12
    move-exception p0

    return v0
.end method
