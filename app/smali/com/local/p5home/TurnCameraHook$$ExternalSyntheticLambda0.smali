.class public final synthetic Lcom/local/p5home/TurnCameraHook$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/local/p5home/TurnCameraNativeBridge$Repair;


# instance fields
.field public final synthetic f$0:Ljava/lang/ClassLoader;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/TurnCameraHook$$ExternalSyntheticLambda0;->f$0:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public final attach()Z
    .registers 2

    iget-object v0, p0, Lcom/local/p5home/TurnCameraHook$$ExternalSyntheticLambda0;->f$0:Ljava/lang/ClassLoader;

    invoke-static {v0}, Lcom/local/p5home/TurnCameraHook;->lambda$installOnce$0(Ljava/lang/ClassLoader;)Z

    move-result v0

    return v0
.end method
