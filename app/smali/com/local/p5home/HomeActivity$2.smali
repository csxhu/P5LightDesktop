.class Lcom/local/p5home/HomeActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/local/p5home/HomeActivity;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/local/p5home/HomeActivity$2;->this$0:Lcom/local/p5home/HomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.local.p5home.APPEARANCE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    iget-object p1, p0, Lcom/local/p5home/HomeActivity$2;->this$0:Lcom/local/p5home/HomeActivity;

    # getter for: Lcom/local/p5home/HomeActivity;->resumed:Z
    invoke-static {p1}, Lcom/local/p5home/HomeActivity;->access$100(Lcom/local/p5home/HomeActivity;)Z

    move-result p1

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/local/p5home/HomeActivity$2;->this$0:Lcom/local/p5home/HomeActivity;

    # invokes: Lcom/local/p5home/HomeActivity;->build()V
    invoke-static {p1}, Lcom/local/p5home/HomeActivity;->access$400(Lcom/local/p5home/HomeActivity;)V

    goto :goto_59

    :cond_1a
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_29

    iget-object p1, p0, Lcom/local/p5home/HomeActivity$2;->this$0:Lcom/local/p5home/HomeActivity;

    const/4 p2, 0x1

    # setter for: Lcom/local/p5home/HomeActivity;->wakePending:Z
    invoke-static {p1, p2}, Lcom/local/p5home/HomeActivity;->access$502(Lcom/local/p5home/HomeActivity;Z)Z

    goto :goto_59

    :cond_29
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/local/p5home/HomeActivity$2;->this$0:Lcom/local/p5home/HomeActivity;

    # getter for: Lcom/local/p5home/HomeActivity;->resumed:Z
    invoke-static {p1}, Lcom/local/p5home/HomeActivity;->access$100(Lcom/local/p5home/HomeActivity;)Z

    move-result p1

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/local/p5home/HomeActivity$2;->this$0:Lcom/local/p5home/HomeActivity;

    # getter for: Lcom/local/p5home/HomeActivity;->main:Landroid/os/Handler;
    invoke-static {p1}, Lcom/local/p5home/HomeActivity;->access$300(Lcom/local/p5home/HomeActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/local/p5home/HomeActivity$2;->this$0:Lcom/local/p5home/HomeActivity;

    # getter for: Lcom/local/p5home/HomeActivity;->autoCheck:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/local/p5home/HomeActivity;->access$600(Lcom/local/p5home/HomeActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/local/p5home/HomeActivity$2;->this$0:Lcom/local/p5home/HomeActivity;

    # getter for: Lcom/local/p5home/HomeActivity;->main:Landroid/os/Handler;
    invoke-static {p1}, Lcom/local/p5home/HomeActivity;->access$300(Lcom/local/p5home/HomeActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/local/p5home/HomeActivity$2;->this$0:Lcom/local/p5home/HomeActivity;

    # getter for: Lcom/local/p5home/HomeActivity;->autoCheck:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/local/p5home/HomeActivity;->access$600(Lcom/local/p5home/HomeActivity;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x2bc

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_59
    :goto_59
    return-void
.end method
