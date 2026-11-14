.class public final synthetic Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/OemVoiceWake;

.field public final synthetic f$1:J

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/OemVoiceWake;JZLjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda5;->f$0:Lcom/local/p5home/OemVoiceWake;

    iput-wide p2, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda5;->f$1:J

    iput-boolean p4, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda5;->f$2:Z

    iput-object p5, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda5;->f$0:Lcom/local/p5home/OemVoiceWake;

    iget-wide v1, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda5;->f$1:J

    iget-boolean v3, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda5;->f$2:Z

    iget-object v4, p0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/local/p5home/OemVoiceWake;->lambda$dispatchIfBound$5$com-local-g3home-OemVoiceWake(JZLjava/lang/String;)V

    return-void
.end method
