.class public final synthetic Lcom/local/p5home/BridgeStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/local/p5home/NavAutoSession$BridgeRead;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(JLjava/lang/String;)Landroid/os/Bundle;
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/local/p5home/BridgeStore;->lambda$nextReply$0(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
