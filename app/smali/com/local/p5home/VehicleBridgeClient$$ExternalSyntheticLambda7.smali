.class public final synthetic Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/VehicleBridgeClient;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/VehicleBridgeClient;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda7;->f$0:Lcom/local/p5home/VehicleBridgeClient;

    return-void
.end method


# virtual methods
.method public final onActiveSessionsChanged(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda7;->f$0:Lcom/local/p5home/VehicleBridgeClient;

    invoke-virtual {v0, p1}, Lcom/local/p5home/VehicleBridgeClient;->lambda$checkMedia$4$com-local-g3home-VehicleBridgeClient(Ljava/util/List;)V

    return-void
.end method
