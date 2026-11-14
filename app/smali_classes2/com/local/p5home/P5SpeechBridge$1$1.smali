.class Lcom/local/p5home/P5SpeechBridge$1$1;
.super Ljava/lang/Object;
.source "P5SpeechBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/P5SpeechBridge$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/local/p5home/P5SpeechBridge$1;


# direct methods
.method constructor <init>(Lcom/local/p5home/P5SpeechBridge$1;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/local/p5home/P5SpeechBridge$1$1;->this$1:Lcom/local/p5home/P5SpeechBridge$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/local/p5home/P5SpeechBridge$1$1;->this$1:Lcom/local/p5home/P5SpeechBridge$1;

    iget-object v0, v0, Lcom/local/p5home/P5SpeechBridge$1;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v0}, Lcom/local/p5home/P5SpeechBridge;->access$300(Lcom/local/p5home/P5SpeechBridge;)V

    return-void
.end method
