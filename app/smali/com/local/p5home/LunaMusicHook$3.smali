.class Lcom/local/p5home/LunaMusicHook$3;
.super Ljava/lang/Object;
.source "LunaMusicHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/LunaMusicHook;->install(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field attempts:I

.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$main:Landroid/os/Handler;

.field final synthetic val$manager:Ljava/lang/Class;

.field final synthetic val$ready:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/local/p5home/LunaMusicHook$3;->val$ready:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/local/p5home/LunaMusicHook$3;->val$manager:Ljava/lang/Class;

    iput-object p3, p0, Lcom/local/p5home/LunaMusicHook$3;->val$c:Landroid/content/Context;

    iput-object p4, p0, Lcom/local/p5home/LunaMusicHook$3;->val$main:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 57
    const-string v0, "MUSIC_LUNA_POLL_RUN"

    invoke-static {v0}, Lcom/local/p5home/HookLog;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/local/p5home/LunaMusicHook$3;->val$c:Landroid/content/Context;

    iget-object v1, p0, Lcom/local/p5home/LunaMusicHook$3;->val$manager:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/local/p5home/LunaVoiceInitializer;->ensure(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    :try_start_d
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/local/p5home/LunaMusicHook$3;->val$ready:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/local/p5home/LunaMusicHook$3;->val$manager:Ljava/lang/Class;

    const-string v4, "INSTANCE"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "APP_SEARCH_MUSIC"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/local/p5home/LunaMusicHook$3;->val$c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.local.p5home.bridge"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "music_ready"

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string v1, "MUSIC_LUNA_READY_CALLED"

    invoke-static {v1}, Lcom/local/p5home/HookLog;->write(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_45} :catch_48
    .catch Ljava/lang/LinkageError; {:try_start_d .. :try_end_45} :catch_46

    return-void

    .line 58
    :catch_46
    move-exception v1

    goto :goto_49

    :catch_48
    move-exception v1

    :cond_49
    :goto_49
    iget v1, p0, Lcom/local/p5home/LunaMusicHook$3;->attempts:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/local/p5home/LunaMusicHook$3;->attempts:I

    const/16 v0, 0x14

    if-ge v1, v0, :cond_59

    iget-object v0, p0, Lcom/local/p5home/LunaMusicHook$3;->val$main:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_59
    return-void
.end method
