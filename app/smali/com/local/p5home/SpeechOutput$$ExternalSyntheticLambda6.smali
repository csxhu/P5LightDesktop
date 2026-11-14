.class public final synthetic Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/SpeechOutput;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/SpeechOutput;Ljava/lang/String;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda6;->f$0:Lcom/local/p5home/SpeechOutput;

    iput-object p2, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda6;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda6;->f$0:Lcom/local/p5home/SpeechOutput;

    iget-object v1, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda6;->f$2:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/local/p5home/SpeechOutput;->lambda$requestAndSpeak$5$com-local-g3home-SpeechOutput(Ljava/lang/String;J)V

    return-void
.end method
