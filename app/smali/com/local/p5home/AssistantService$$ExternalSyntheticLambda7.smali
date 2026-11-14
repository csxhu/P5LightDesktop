.class public final synthetic Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/AssistantService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/AssistantService;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda7;->f$0:Lcom/local/p5home/AssistantService;

    iput p2, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda7;->f$1:I

    iput-object p3, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .registers 4

    iget-object v0, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda7;->f$0:Lcom/local/p5home/AssistantService;

    iget v1, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda7;->f$1:I

    iget-object v2, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/AssistantService;->lambda$onStartCommand$3$com-local-g3home-AssistantService(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method
