.class public final synthetic Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/SpeechOutput;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/SpeechOutput;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda3;->f$0:Lcom/local/p5home/SpeechOutput;

    iput-wide p2, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda3;->f$1:J

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .registers 5

    iget-object v0, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda3;->f$0:Lcom/local/p5home/SpeechOutput;

    iget-wide v1, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda3;->f$1:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/local/p5home/SpeechOutput;->lambda$initialize$1$com-local-g3home-SpeechOutput(JI)V

    return-void
.end method
