.class public final synthetic Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/OemVoiceWake;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/content/ServiceConnection;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/OemVoiceWake;JLandroid/content/ServiceConnection;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda1;->f$0:Lcom/local/p5home/OemVoiceWake;

    iput-wide p2, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda1;->f$1:J

    iput-object p4, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda1;->f$2:Landroid/content/ServiceConnection;

    iput-boolean p5, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda1;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda1;->f$0:Lcom/local/p5home/OemVoiceWake;

    iget-wide v1, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda1;->f$1:J

    iget-object v3, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda1;->f$2:Landroid/content/ServiceConnection;

    iget-boolean v4, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda1;->f$3:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/local/p5home/OemVoiceWake;->lambda$start$3$com-local-g3home-OemVoiceWake(JLandroid/content/ServiceConnection;Z)V

    return-void
.end method
