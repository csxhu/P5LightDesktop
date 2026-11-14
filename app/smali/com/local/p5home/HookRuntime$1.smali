.class Lcom/local/p5home/HookRuntime$1;
.super Landroid/database/ContentObserver;
.source "HookRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/HookRuntime;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/HookRuntime;


# direct methods
.method constructor <init>(Lcom/local/p5home/HookRuntime;Landroid/os/Handler;)V
    .registers 3

    .line 61
    iput-object p1, p0, Lcom/local/p5home/HookRuntime$1;->this$0:Lcom/local/p5home/HookRuntime;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 61
    iget-object p1, p0, Lcom/local/p5home/HookRuntime$1;->this$0:Lcom/local/p5home/HookRuntime;

    # invokes: Lcom/local/p5home/HookRuntime;->refreshSoon()V
    invoke-static {p1}, Lcom/local/p5home/HookRuntime;->access$600(Lcom/local/p5home/HookRuntime;)V

    return-void
.end method
