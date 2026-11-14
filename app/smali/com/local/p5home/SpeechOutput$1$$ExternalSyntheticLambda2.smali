.class public final synthetic Lcom/local/p5home/SpeechOutput$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/SpeechOutput$1;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/SpeechOutput$1;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/SpeechOutput$1$$ExternalSyntheticLambda2;->f$0:Lcom/local/p5home/SpeechOutput$1;

    iput-object p2, p0, Lcom/local/p5home/SpeechOutput$1$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/local/p5home/SpeechOutput$1$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/local/p5home/SpeechOutput$1$$ExternalSyntheticLambda2;->f$0:Lcom/local/p5home/SpeechOutput$1;

    iget-object v1, p0, Lcom/local/p5home/SpeechOutput$1$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/local/p5home/SpeechOutput$1$$ExternalSyntheticLambda2;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/SpeechOutput$1;->lambda$onError$4$com-local-g3home-SpeechOutput$1(Ljava/lang/String;I)V

    return-void
.end method
