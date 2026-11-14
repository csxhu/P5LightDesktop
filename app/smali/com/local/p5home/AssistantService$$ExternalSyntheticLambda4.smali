.class public final synthetic Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/AssistantService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/AssistantService;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda4;->f$0:Lcom/local/p5home/AssistantService;

    iput-object p2, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda4;->f$3:Z

    iput-object p5, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda4;->f$0:Lcom/local/p5home/AssistantService;

    iget-object v1, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda4;->f$3:Z

    iget-object v4, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/local/p5home/AssistantService;->lambda$onStartCommand$5$com-local-g3home-AssistantService(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
