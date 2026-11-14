.class public final synthetic Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/AssistantService;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/AssistantService;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda3;->f$0:Lcom/local/p5home/AssistantService;

    iput-wide p2, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda3;->f$1:J

    iput-object p4, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput-object p5, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iput p6, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda3;->f$4:I

    iput-object p7, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda3;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda3;->f$0:Lcom/local/p5home/AssistantService;

    iget-wide v1, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda3;->f$1:J

    iget-object v3, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget-object v4, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iget v5, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda3;->f$4:I

    iget-object v6, p0, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda3;->f$5:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/local/p5home/AssistantService;->lambda$onStartCommand$4$com-local-g3home-AssistantService(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
