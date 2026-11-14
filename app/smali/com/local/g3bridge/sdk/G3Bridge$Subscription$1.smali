.class Lcom/local/g3bridge/sdk/G3Bridge$Subscription$1;
.super Landroid/database/ContentObserver;
.source "G3Bridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/g3bridge/sdk/G3Bridge$Subscription;-><init>(Landroid/content/ContentResolver;Landroid/os/Handler;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/g3bridge/sdk/G3Bridge$Subscription;

.field final synthetic val$listener:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/local/g3bridge/sdk/G3Bridge$Subscription;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 4

    .line 185
    iput-object p1, p0, Lcom/local/g3bridge/sdk/G3Bridge$Subscription$1;->this$0:Lcom/local/g3bridge/sdk/G3Bridge$Subscription;

    iput-object p3, p0, Lcom/local/g3bridge/sdk/G3Bridge$Subscription$1;->val$listener:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 186
    iget-object p1, p0, Lcom/local/g3bridge/sdk/G3Bridge$Subscription$1;->this$0:Lcom/local/g3bridge/sdk/G3Bridge$Subscription;

    # getter for: Lcom/local/g3bridge/sdk/G3Bridge$Subscription;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {p1}, Lcom/local/g3bridge/sdk/G3Bridge$Subscription;->access$600(Lcom/local/g3bridge/sdk/G3Bridge$Subscription;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/local/g3bridge/sdk/G3Bridge$Subscription$1;->val$listener:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_11
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 187
    iget-object p1, p0, Lcom/local/g3bridge/sdk/G3Bridge$Subscription$1;->this$0:Lcom/local/g3bridge/sdk/G3Bridge$Subscription;

    # getter for: Lcom/local/g3bridge/sdk/G3Bridge$Subscription;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {p1}, Lcom/local/g3bridge/sdk/G3Bridge$Subscription;->access$600(Lcom/local/g3bridge/sdk/G3Bridge$Subscription;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/local/g3bridge/sdk/G3Bridge$Subscription$1;->val$listener:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_11
    return-void
.end method
