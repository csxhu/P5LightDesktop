.class public final synthetic Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/OemVoiceWake;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/OemVoiceWake;JLandroid/os/IBinder;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda6;->f$0:Lcom/local/p5home/OemVoiceWake;

    iput-wide p2, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda6;->f$1:J

    iput-object p4, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda6;->f$2:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda6;->f$0:Lcom/local/p5home/OemVoiceWake;

    iget-wide v1, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda6;->f$1:J

    iget-object v3, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda6;->f$2:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/local/p5home/OemVoiceWake;->lambda$dispatchIfBound$6$com-local-g3home-OemVoiceWake(JLandroid/os/IBinder;)V

    return-void
.end method
