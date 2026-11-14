.class public final synthetic Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HookSessions;

.field public final synthetic f$1:Lcom/local/p5home/HookSessions$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HookSessions;Lcom/local/p5home/HookSessions$Entry;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda3;->f$0:Lcom/local/p5home/HookSessions;

    iput-object p2, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda3;->f$1:Lcom/local/p5home/HookSessions$Entry;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda3;->f$0:Lcom/local/p5home/HookSessions;

    iget-object v1, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda3;->f$1:Lcom/local/p5home/HookSessions$Entry;

    invoke-virtual {v0, v1}, Lcom/local/p5home/HookSessions;->lambda$scheduleExpiry$3$com-local-g3home-HookSessions(Lcom/local/p5home/HookSessions$Entry;)V

    return-void
.end method
