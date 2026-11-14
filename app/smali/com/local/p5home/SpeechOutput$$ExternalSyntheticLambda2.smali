.class public final synthetic Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/SpeechOutput;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/SpeechOutput;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda2;->f$0:Lcom/local/p5home/SpeechOutput;

    iput-object p2, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda2;->f$0:Lcom/local/p5home/SpeechOutput;

    iget-object v1, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/local/p5home/SpeechOutput;->lambda$cancelOwner$9$com-local-g3home-SpeechOutput(Ljava/lang/String;)V

    return-void
.end method
