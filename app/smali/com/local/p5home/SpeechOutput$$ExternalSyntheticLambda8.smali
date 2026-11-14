.class public final synthetic Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/SpeechOutput;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/SpeechOutput;JI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda8;->f$0:Lcom/local/p5home/SpeechOutput;

    iput-wide p2, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda8;->f$1:J

    iput p4, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda8;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda8;->f$0:Lcom/local/p5home/SpeechOutput;

    iget-wide v1, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda8;->f$1:J

    iget v3, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda8;->f$2:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/local/p5home/SpeechOutput;->lambda$initialize$0$com-local-g3home-SpeechOutput(JI)V

    return-void
.end method
