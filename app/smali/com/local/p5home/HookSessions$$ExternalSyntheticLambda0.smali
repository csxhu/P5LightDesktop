.class public final synthetic Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HookSessions;

.field public final synthetic f$1:Lcom/local/p5home/HookSessions$Entry;

.field public final synthetic f$2:Lcom/local/p5home/HookSessions$Completion;

.field public final synthetic f$3:Lcom/local/p5home/HookTranscript;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HookSessions;Lcom/local/p5home/HookSessions$Entry;Lcom/local/p5home/HookSessions$Completion;Lcom/local/p5home/HookTranscript;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda0;->f$0:Lcom/local/p5home/HookSessions;

    iput-object p2, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda0;->f$1:Lcom/local/p5home/HookSessions$Entry;

    iput-object p3, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda0;->f$2:Lcom/local/p5home/HookSessions$Completion;

    iput-object p4, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda0;->f$3:Lcom/local/p5home/HookTranscript;

    iput-object p5, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda0;->f$0:Lcom/local/p5home/HookSessions;

    iget-object v1, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda0;->f$1:Lcom/local/p5home/HookSessions$Entry;

    iget-object v2, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda0;->f$2:Lcom/local/p5home/HookSessions$Completion;

    iget-object v3, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda0;->f$3:Lcom/local/p5home/HookTranscript;

    iget-object v4, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/local/p5home/HookSessions;->lambda$display$0$com-local-g3home-HookSessions(Lcom/local/p5home/HookSessions$Entry;Lcom/local/p5home/HookSessions$Completion;Lcom/local/p5home/HookTranscript;Ljava/lang/String;)V

    return-void
.end method
