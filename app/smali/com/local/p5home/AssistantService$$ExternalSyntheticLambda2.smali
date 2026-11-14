.class public final synthetic Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/local/p5home/SpeechOutput$Callback;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/AssistantService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/AssistantService;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda2;->f$0:Lcom/local/p5home/AssistantService;

    iput p2, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final done(ZLjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda2;->f$0:Lcom/local/p5home/AssistantService;

    iget v1, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda2;->f$1:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/local/p5home/AssistantService;->lambda$onStartCommand$2$com-local-g3home-AssistantService(IZLjava/lang/String;)V

    return-void
.end method
