.class public final synthetic Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/local/p5home/HookSessions$Completion;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HookRuntime;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HookRuntime;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda4;->f$0:Lcom/local/p5home/HookRuntime;

    return-void
.end method


# virtual methods
.method public final done(ZLjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda4;->f$0:Lcom/local/p5home/HookRuntime;

    invoke-virtual {v0, p1, p2}, Lcom/local/p5home/HookRuntime;->lambda$submit$4$com-local-g3home-HookRuntime(ZLjava/lang/String;)V

    return-void
.end method
