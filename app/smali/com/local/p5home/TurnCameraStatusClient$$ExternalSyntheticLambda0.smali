.class public final synthetic Lcom/local/p5home/TurnCameraStatusClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/TurnCameraStatusClient;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/TurnCameraStatusClient;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/TurnCameraStatusClient$$ExternalSyntheticLambda0;->f$0:Lcom/local/p5home/TurnCameraStatusClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/local/p5home/TurnCameraStatusClient$$ExternalSyntheticLambda0;->f$0:Lcom/local/p5home/TurnCameraStatusClient;

    invoke-virtual {v0}, Lcom/local/p5home/TurnCameraStatusClient;->lambda$requestFlush$1$com-local-g3home-TurnCameraStatusClient()V

    return-void
.end method
