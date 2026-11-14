.class final Lcom/local/p5home/HookWakeWords$Owned;
.super Ljava/lang/Object;
.source "HookWakeWords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/HookWakeWords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Owned"
.end annotation


# instance fields
.field final value:Ljava/lang/Object;

.field final word:Lcom/local/p5home/WakeWordPolicy$Word;


# direct methods
.method constructor <init>(Lcom/local/p5home/WakeWordPolicy$Word;Ljava/lang/Object;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HookWakeWords$Owned;->word:Lcom/local/p5home/WakeWordPolicy$Word;

    iput-object p2, p0, Lcom/local/p5home/HookWakeWords$Owned;->value:Ljava/lang/Object;

    return-void
.end method
