.class Lcom/local/p5home/P5SpeechBridge$6;
.super Ljava/lang/Object;
.source "P5SpeechBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/P5SpeechBridge;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/P5SpeechBridge;

.field final synthetic val$configured:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/local/p5home/P5SpeechBridge;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 571
    iput-object p1, p0, Lcom/local/p5home/P5SpeechBridge$6;->this$0:Lcom/local/p5home/P5SpeechBridge;

    iput-object p2, p0, Lcom/local/p5home/P5SpeechBridge$6;->val$configured:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 574
    move-object/from16 v1, p0

    :try_start_0
    iget-object v2, v1, Lcom/local/p5home/P5SpeechBridge$6;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v2}, Lcom/local/p5home/P5SpeechBridge;->access$2200(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/reflect/Field;

    move-result-object v2

    iget-object v3, v1, Lcom/local/p5home/P5SpeechBridge$6;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v3}, Lcom/local/p5home/P5SpeechBridge;->access$2100(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 575
    iget-object v3, v1, Lcom/local/p5home/P5SpeechBridge$6;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v3}, Lcom/local/p5home/P5SpeechBridge;->access$2300(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x7

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "major"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x0

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string v9, "\u4f60\u597d\u5c0fP"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v5, v10

    const-string v9, "ni hao xiao pi"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x3

    aput-object v9, v5, v11

    const-string v9, "0.31"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x4

    aput-object v9, v5, v12

    const/4 v9, 0x5

    aput-object v6, v5, v9

    .line 578
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x6

    aput-object v13, v5, v14

    .line 575
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-string v3, "com.local.p5home.WakeWordPolicy"

    const-class v5, Lcom/local/p5home/P5SpeechBridge;

    .line 580
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 579
    invoke-static {v3, v7, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 581
    const-string v5, "parse"

    new-array v13, v8, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v7

    invoke-static {v3, v5, v13}, Lcom/local/p5home/P5SpeechBridge;->access$2400(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v13, v1, Lcom/local/p5home/P5SpeechBridge$6;->val$configured:Ljava/lang/String;

    aput-object v13, v5, v7

    .line 582
    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 583
    move v5, v8

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_0

    .line 584
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 585
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    .line 586
    iget-object v14, v1, Lcom/local/p5home/P5SpeechBridge$6;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v14}, Lcom/local/p5home/P5SpeechBridge;->access$2300(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/reflect/Method;

    move-result-object v14

    new-array v9, v4, [Ljava/lang/Object;

    const-string v16, "major"

    aput-object v16, v9, v7

    aput-object v6, v9, v8

    new-array v4, v8, [Ljava/lang/String;

    const-string v6, "text"

    const-class v12, Ljava/lang/String;

    .line 587
    invoke-static {v15, v6, v12}, Lcom/local/p5home/P5SpeechBridge;->access$2500(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v4, v7

    aput-object v4, v9, v10

    new-array v4, v8, [Ljava/lang/String;

    const-string v6, "pinyin"

    const-class v12, Ljava/lang/String;

    .line 588
    invoke-static {v15, v6, v12}, Lcom/local/p5home/P5SpeechBridge;->access$2500(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v4, v7

    aput-object v4, v9, v11

    new-array v4, v8, [Ljava/lang/String;

    const-string v6, "threshold"

    const-class v12, Ljava/lang/String;

    .line 589
    invoke-static {v15, v6, v12}, Lcom/local/p5home/P5SpeechBridge;->access$2500(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v4, v7

    const/4 v6, 0x4

    aput-object v4, v9, v6

    const/4 v4, 0x0

    const/4 v12, 0x5

    aput-object v4, v9, v12

    .line 590
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x6

    aput-object v13, v9, v15

    .line 586
    invoke-virtual {v14, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    add-int/lit8 v5, v5, 0x1

    move v9, v12

    move v14, v15

    move v12, v6

    move-object v6, v4

    const/4 v4, 0x7

    goto :goto_0

    .line 592
    :cond_0
    iget-object v2, v1, Lcom/local/p5home/P5SpeechBridge$6;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v2, v3}, Lcom/local/p5home/P5SpeechBridge;->access$2600(Lcom/local/p5home/P5SpeechBridge;Ljava/util/List;)V

    .line 593
    iget-object v2, v1, Lcom/local/p5home/P5SpeechBridge$6;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v2}, Lcom/local/p5home/P5SpeechBridge;->access$2700(Lcom/local/p5home/P5SpeechBridge;)V

    .line 594
    const-string v2, "P5_CUSTOM_WORDS_REAPPLIED"

    invoke-static {v2}, Lcom/local/p5home/P5SpeechBridge;->access$100(Ljava/lang/String;)V

    .line 595
    iget-object v1, v1, Lcom/local/p5home/P5SpeechBridge$6;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v1}, Lcom/local/p5home/P5SpeechBridge;->access$2800(Lcom/local/p5home/P5SpeechBridge;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    goto :goto_1

    .line 596
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P5_CUSTOM_REAPPLY_FAILED_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/local/p5home/P5SpeechBridge;->access$100(Ljava/lang/String;)V

    .line 599
    :goto_1
    return-void
.end method
