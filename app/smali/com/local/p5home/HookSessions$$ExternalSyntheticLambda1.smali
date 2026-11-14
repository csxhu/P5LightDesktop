.class public final synthetic Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HookSessions;

.field public final synthetic f$1:Lcom/local/p5home/HookSessions$Entry;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/local/p5home/HookSessions$Completion;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HookSessions;Lcom/local/p5home/HookSessions$Entry;ILcom/local/p5home/HookSessions$Completion;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda1;->f$0:Lcom/local/p5home/HookSessions;

    iput-object p2, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda1;->f$1:Lcom/local/p5home/HookSessions$Entry;

    iput p3, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda1;->f$3:Lcom/local/p5home/HookSessions$Completion;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda1;->f$0:Lcom/local/p5home/HookSessions;

    iget-object v1, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda1;->f$1:Lcom/local/p5home/HookSessions$Entry;

    iget v2, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda1;->f$3:Lcom/local/p5home/HookSessions$Completion;

    invoke-virtual {v0, v1, v2, v3}, Lcom/local/p5home/HookSessions;->lambda$enqueue$1$com-local-g3home-HookSessions(Lcom/local/p5home/HookSessions$Entry;ILcom/local/p5home/HookSessions$Completion;)V

    return-void
.end method
