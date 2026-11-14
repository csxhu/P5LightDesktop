.class Lcom/local/p5home/OemVoiceWake$1;
.super Ljava/lang/Object;
.source "OemVoiceWake.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/OemVoiceWake;->start(Lcom/local/p5home/OemVoiceWake$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/OemVoiceWake;

.field final synthetic val$token:J


# direct methods
.method constructor <init>(Lcom/local/p5home/OemVoiceWake;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/local/p5home/OemVoiceWake$1;->this$0:Lcom/local/p5home/OemVoiceWake;

    iput-wide p2, p0, Lcom/local/p5home/OemVoiceWake$1;->val$token:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 6

    .line 67
    iget-object p1, p0, Lcom/local/p5home/OemVoiceWake$1;->this$0:Lcom/local/p5home/OemVoiceWake;

    iget-wide v0, p0, Lcom/local/p5home/OemVoiceWake$1;->val$token:J

    # invokes: Lcom/local/p5home/OemVoiceWake;->current(J)Z
    invoke-static {p1, v0, v1}, Lcom/local/p5home/OemVoiceWake;->access$000(Lcom/local/p5home/OemVoiceWake;J)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/local/p5home/OemVoiceWake$1;->this$0:Lcom/local/p5home/OemVoiceWake;

    # getter for: Lcom/local/p5home/OemVoiceWake;->connection:Landroid/content/ServiceConnection;
    invoke-static {p1}, Lcom/local/p5home/OemVoiceWake;->access$100(Lcom/local/p5home/OemVoiceWake;)Landroid/content/ServiceConnection;

    move-result-object p1

    if-ne p1, p0, :cond_20

    iget-object p1, p0, Lcom/local/p5home/OemVoiceWake$1;->this$0:Lcom/local/p5home/OemVoiceWake;

    iget-wide v0, p0, Lcom/local/p5home/OemVoiceWake$1;->val$token:J

    const-string v2, "\u539f\u8f66\u8bed\u97f3\u8fde\u63a5\u5df2\u5931\u6548"

    # invokes: Lcom/local/p5home/OemVoiceWake;->uncertain(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/local/p5home/OemVoiceWake;->access$500(Lcom/local/p5home/OemVoiceWake;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    # invokes: Lcom/local/p5home/OemVoiceWake;->finish(JZLjava/lang/String;)V
    invoke-static {p1, v0, v1, v3, v2}, Lcom/local/p5home/OemVoiceWake;->access$200(Lcom/local/p5home/OemVoiceWake;JZLjava/lang/String;)V

    .line 68
    :cond_20
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 6

    .line 70
    iget-object p1, p0, Lcom/local/p5home/OemVoiceWake$1;->this$0:Lcom/local/p5home/OemVoiceWake;

    iget-wide v0, p0, Lcom/local/p5home/OemVoiceWake$1;->val$token:J

    # invokes: Lcom/local/p5home/OemVoiceWake;->current(J)Z
    invoke-static {p1, v0, v1}, Lcom/local/p5home/OemVoiceWake;->access$000(Lcom/local/p5home/OemVoiceWake;J)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/local/p5home/OemVoiceWake$1;->this$0:Lcom/local/p5home/OemVoiceWake;

    # getter for: Lcom/local/p5home/OemVoiceWake;->connection:Landroid/content/ServiceConnection;
    invoke-static {p1}, Lcom/local/p5home/OemVoiceWake;->access$100(Lcom/local/p5home/OemVoiceWake;)Landroid/content/ServiceConnection;

    move-result-object p1

    if-ne p1, p0, :cond_1c

    iget-object p1, p0, Lcom/local/p5home/OemVoiceWake$1;->this$0:Lcom/local/p5home/OemVoiceWake;

    iget-wide v0, p0, Lcom/local/p5home/OemVoiceWake$1;->val$token:J

    const/4 v2, 0x0

    const-string v3, "\u539f\u8f66\u8bed\u97f3\u672a\u63d0\u4f9b\u63a5\u53e3\uff0c\u8bf7\u624b\u52a8\u5524\u9192\u5c0fP"

    # invokes: Lcom/local/p5home/OemVoiceWake;->finish(JZLjava/lang/String;)V
    invoke-static {p1, v0, v1, v2, v3}, Lcom/local/p5home/OemVoiceWake;->access$200(Lcom/local/p5home/OemVoiceWake;JZLjava/lang/String;)V

    .line 71
    :cond_1c
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 56
    iget-object v0, p0, Lcom/local/p5home/OemVoiceWake$1;->this$0:Lcom/local/p5home/OemVoiceWake;

    iget-wide v1, p0, Lcom/local/p5home/OemVoiceWake$1;->val$token:J

    # invokes: Lcom/local/p5home/OemVoiceWake;->current(J)Z
    invoke-static {v0, v1, v2}, Lcom/local/p5home/OemVoiceWake;->access$000(Lcom/local/p5home/OemVoiceWake;J)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/local/p5home/OemVoiceWake$1;->this$0:Lcom/local/p5home/OemVoiceWake;

    # getter for: Lcom/local/p5home/OemVoiceWake;->connection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/local/p5home/OemVoiceWake;->access$100(Lcom/local/p5home/OemVoiceWake;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eq v0, p0, :cond_13

    goto :goto_48

    .line 57
    :cond_13
    if-eqz p1, :cond_3d

    const-string v0, "com.xiaopeng.carspeechservice"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "com.xiaopeng.carspeechservice.speechui.daemon.DaemonService"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    if-nez p2, :cond_30

    goto :goto_3d

    .line 60
    :cond_30
    iget-object p1, p0, Lcom/local/p5home/OemVoiceWake$1;->this$0:Lcom/local/p5home/OemVoiceWake;

    # setter for: Lcom/local/p5home/OemVoiceWake;->pendingEngine:Landroid/os/IBinder;
    invoke-static {p1, p2}, Lcom/local/p5home/OemVoiceWake;->access$302(Lcom/local/p5home/OemVoiceWake;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 61
    iget-object p1, p0, Lcom/local/p5home/OemVoiceWake$1;->this$0:Lcom/local/p5home/OemVoiceWake;

    iget-wide v0, p0, Lcom/local/p5home/OemVoiceWake$1;->val$token:J

    # invokes: Lcom/local/p5home/OemVoiceWake;->dispatchIfBound(JLandroid/content/ServiceConnection;)V
    invoke-static {p1, v0, v1, p0}, Lcom/local/p5home/OemVoiceWake;->access$400(Lcom/local/p5home/OemVoiceWake;JLandroid/content/ServiceConnection;)V

    .line 62
    return-void

    .line 58
    :cond_3d
    :goto_3d
    iget-object p1, p0, Lcom/local/p5home/OemVoiceWake$1;->this$0:Lcom/local/p5home/OemVoiceWake;

    iget-wide v0, p0, Lcom/local/p5home/OemVoiceWake$1;->val$token:J

    const/4 p2, 0x0

    const-string v2, "\u539f\u8f66\u8bed\u97f3\u8fde\u63a5\u65e0\u6548\uff0c\u8bf7\u624b\u52a8\u5524\u9192\u5c0fP"

    # invokes: Lcom/local/p5home/OemVoiceWake;->finish(JZLjava/lang/String;)V
    invoke-static {p1, v0, v1, p2, v2}, Lcom/local/p5home/OemVoiceWake;->access$200(Lcom/local/p5home/OemVoiceWake;JZLjava/lang/String;)V

    return-void

    .line 56
    :cond_48
    :goto_48
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    .line 64
    iget-object p1, p0, Lcom/local/p5home/OemVoiceWake$1;->this$0:Lcom/local/p5home/OemVoiceWake;

    iget-wide v0, p0, Lcom/local/p5home/OemVoiceWake$1;->val$token:J

    # invokes: Lcom/local/p5home/OemVoiceWake;->current(J)Z
    invoke-static {p1, v0, v1}, Lcom/local/p5home/OemVoiceWake;->access$000(Lcom/local/p5home/OemVoiceWake;J)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/local/p5home/OemVoiceWake$1;->this$0:Lcom/local/p5home/OemVoiceWake;

    # getter for: Lcom/local/p5home/OemVoiceWake;->connection:Landroid/content/ServiceConnection;
    invoke-static {p1}, Lcom/local/p5home/OemVoiceWake;->access$100(Lcom/local/p5home/OemVoiceWake;)Landroid/content/ServiceConnection;

    move-result-object p1

    if-ne p1, p0, :cond_20

    iget-object p1, p0, Lcom/local/p5home/OemVoiceWake$1;->this$0:Lcom/local/p5home/OemVoiceWake;

    iget-wide v0, p0, Lcom/local/p5home/OemVoiceWake$1;->val$token:J

    const-string v2, "\u539f\u8f66\u8bed\u97f3\u8fde\u63a5\u5df2\u65ad\u5f00"

    # invokes: Lcom/local/p5home/OemVoiceWake;->uncertain(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/local/p5home/OemVoiceWake;->access$500(Lcom/local/p5home/OemVoiceWake;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    # invokes: Lcom/local/p5home/OemVoiceWake;->finish(JZLjava/lang/String;)V
    invoke-static {p1, v0, v1, v3, v2}, Lcom/local/p5home/OemVoiceWake;->access$200(Lcom/local/p5home/OemVoiceWake;JZLjava/lang/String;)V

    .line 65
    :cond_20
    return-void
.end method
