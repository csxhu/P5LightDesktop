.class Lcom/local/p5home/P5SpeechBridge$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "P5SpeechBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/P5SpeechBridge;->install()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/P5SpeechBridge;


# direct methods
.method constructor <init>(Lcom/local/p5home/P5SpeechBridge;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 5

    .line 188
    :try_start_0
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 189
    iget-object v0, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v0}, Lcom/local/p5home/P5SpeechBridge;->access$1400(Lcom/local/p5home/P5SpeechBridge;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v0}, Lcom/local/p5home/P5SpeechBridge;->access$900(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "major"

    iget-object v1, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    .line 190
    invoke-static {v1}, Lcom/local/p5home/P5SpeechBridge;->access$1000(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v0}, Lcom/local/p5home/P5SpeechBridge;->access$1100(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v0, p1}, Lcom/local/p5home/P5SpeechBridge;->access$1200(Lcom/local/p5home/P5SpeechBridge;Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_4

    .line 193
    iget-object p1, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->access$600(Lcom/local/p5home/P5SpeechBridge;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->access$1300(Lcom/local/p5home/P5SpeechBridge;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 194
    :cond_1
    iget-object p1, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->access$1500(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :try_start_1
    iget-object v2, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v2}, Lcom/local/p5home/P5SpeechBridge;->access$1608(Lcom/local/p5home/P5SpeechBridge;)J

    .line 196
    iget-object v2, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/local/p5home/P5SpeechBridge;->access$1702(Lcom/local/p5home/P5SpeechBridge;J)J

    .line 197
    iget-object v2, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    iget-object v3, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v3}, Lcom/local/p5home/P5SpeechBridge;->access$600(Lcom/local/p5home/P5SpeechBridge;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v0}, Lcom/local/p5home/P5SpeechBridge;->access$1700(Lcom/local/p5home/P5SpeechBridge;)J

    move-result-wide v0

    :goto_0
    invoke-static {v2, v0, v1}, Lcom/local/p5home/P5SpeechBridge;->access$702(Lcom/local/p5home/P5SpeechBridge;J)J

    .line 198
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :try_start_2
    iget-object p1, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->access$808(Lcom/local/p5home/P5SpeechBridge;)J

    .line 200
    iget-object p1, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->access$600(Lcom/local/p5home/P5SpeechBridge;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "P5_CUSTOM_NATIVE_WAKE_HIT"

    goto :goto_1

    :cond_3
    const-string p1, "P5_CUSTOM_MODEL_WAKE_HIT"

    :goto_1
    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->access$100(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 198
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 202
    :cond_4
    iget-object p1, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->access$1500(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 203
    :try_start_5
    iget-object v2, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v2}, Lcom/local/p5home/P5SpeechBridge;->access$1608(Lcom/local/p5home/P5SpeechBridge;)J

    .line 204
    iget-object v2, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/local/p5home/P5SpeechBridge;->access$1702(Lcom/local/p5home/P5SpeechBridge;J)J

    .line 205
    iget-object v2, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v2, v0, v1}, Lcom/local/p5home/P5SpeechBridge;->access$702(Lcom/local/p5home/P5SpeechBridge;J)J

    .line 206
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 207
    :try_start_6
    const-string p1, "P5_FACTORY_WAKE_PASSTHROUGH"

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->access$100(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 211
    :goto_2
    goto :goto_4

    .line 206
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 190
    :cond_5
    :goto_3
    return-void

    .line 209
    :catch_0
    move-exception p1

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P5_WAKE_EVENT_FAILED_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->access$100(Ljava/lang/String;)V

    .line 212
    :goto_4
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3

    .line 174
    :try_start_0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 175
    iget-object v1, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v1}, Lcom/local/p5home/P5SpeechBridge;->access$500(Lcom/local/p5home/P5SpeechBridge;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v1}, Lcom/local/p5home/P5SpeechBridge;->access$600(Lcom/local/p5home/P5SpeechBridge;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v1}, Lcom/local/p5home/P5SpeechBridge;->access$900(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "major"

    iget-object v2, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    .line 176
    invoke-static {v2}, Lcom/local/p5home/P5SpeechBridge;->access$1000(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    iget-object v2, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    .line 177
    invoke-static {v2}, Lcom/local/p5home/P5SpeechBridge;->access$1100(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/local/p5home/P5SpeechBridge;->access$1200(Lcom/local/p5home/P5SpeechBridge;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/local/p5home/P5SpeechBridge$3;->this$0:Lcom/local/p5home/P5SpeechBridge;

    .line 178
    invoke-static {v0}, Lcom/local/p5home/P5SpeechBridge;->access$1300(Lcom/local/p5home/P5SpeechBridge;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 180
    const-string p1, "P5_BUSY_WAKE_SUPPRESSED"

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->access$100(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    goto :goto_0

    .line 182
    :catch_0
    move-exception p1

    .line 183
    const-string p1, "P5_BUSY_WAKE_CHECK_FAILED"

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->access$100(Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void
.end method
