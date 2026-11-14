.class public final synthetic Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/SpeechOutput;

.field public final synthetic f$1:Ljava/util/function/BooleanSupplier;

.field public final synthetic f$2:Lcom/local/p5home/SpeechOutput$Callback;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/SpeechOutput;Ljava/util/function/BooleanSupplier;Lcom/local/p5home/SpeechOutput$Callback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda0;->f$0:Lcom/local/p5home/SpeechOutput;

    iput-object p2, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/BooleanSupplier;

    iput-object p3, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda0;->f$2:Lcom/local/p5home/SpeechOutput$Callback;

    iput-object p4, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda0;->f$0:Lcom/local/p5home/SpeechOutput;

    iget-object v1, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/BooleanSupplier;

    iget-object v2, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda0;->f$2:Lcom/local/p5home/SpeechOutput$Callback;

    iget-object v3, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/local/p5home/SpeechOutput$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/local/p5home/SpeechOutput;->lambda$speak$4$com-local-g3home-SpeechOutput(Ljava/util/function/BooleanSupplier;Lcom/local/p5home/SpeechOutput$Callback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
