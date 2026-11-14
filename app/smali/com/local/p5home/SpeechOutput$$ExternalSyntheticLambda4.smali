.class public final synthetic Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/SpeechOutput;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/SpeechOutput;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda4;->f$0:Lcom/local/p5home/SpeechOutput;

    iput-wide p2, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda4;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda4;->f$0:Lcom/local/p5home/SpeechOutput;

    iget-wide v1, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda4;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/SpeechOutput;->lambda$initialize$2$com-local-g3home-SpeechOutput(J)V

    return-void
.end method
