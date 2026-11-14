.class public final synthetic Lcom/local/p5home/HookWakeWords$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HookWakeWords;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HookWakeWords;Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HookWakeWords$$ExternalSyntheticLambda0;->f$0:Lcom/local/p5home/HookWakeWords;

    iput-object p2, p0, Lcom/local/p5home/HookWakeWords$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/local/p5home/HookWakeWords$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-wide p4, p0, Lcom/local/p5home/HookWakeWords$$ExternalSyntheticLambda0;->f$3:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    iget-object v0, p0, Lcom/local/p5home/HookWakeWords$$ExternalSyntheticLambda0;->f$0:Lcom/local/p5home/HookWakeWords;

    iget-object v1, p0, Lcom/local/p5home/HookWakeWords$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lcom/local/p5home/HookWakeWords$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iget-wide v3, p0, Lcom/local/p5home/HookWakeWords$$ExternalSyntheticLambda0;->f$3:J

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/local/p5home/HookWakeWords;->lambda$update$0$com-local-g3home-HookWakeWords(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
