.class public final synthetic Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/local/p5home/OemVoiceWake$Callback;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HomeActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda0;->f$0:Lcom/local/p5home/HomeActivity;

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda0;->f$0:Lcom/local/p5home/HomeActivity;

    invoke-virtual {v0, p1, p2}, Lcom/local/p5home/HomeActivity;->lambda$voiceAsk$4$com-local-g3home-HomeActivity(ZLjava/lang/String;)V

    return-void
.end method
