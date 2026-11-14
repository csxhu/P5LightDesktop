.class public final synthetic Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/AssistantService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/AssistantService;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda1;->f$0:Lcom/local/p5home/AssistantService;

    iput p2, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .registers 3

    iget-object v0, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda1;->f$0:Lcom/local/p5home/AssistantService;

    iget v1, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda1;->f$1:I

    invoke-virtual {v0, v1}, Lcom/local/p5home/AssistantService;->lambda$onStartCommand$1$com-local-g3home-AssistantService(I)Z

    move-result v0

    return v0
.end method
