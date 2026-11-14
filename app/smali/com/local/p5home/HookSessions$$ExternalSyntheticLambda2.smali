.class public final synthetic Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/local/p5home/HookSessions$Completion;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HookSessions;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HookSessions;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda2;->f$0:Lcom/local/p5home/HookSessions;

    return-void
.end method


# virtual methods
.method public final done(ZLjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda2;->f$0:Lcom/local/p5home/HookSessions;

    invoke-virtual {v0, p1, p2}, Lcom/local/p5home/HookSessions;->lambda$scheduleExpiry$2$com-local-g3home-HookSessions(ZLjava/lang/String;)V

    return-void
.end method
