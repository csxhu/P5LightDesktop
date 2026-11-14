.class final Lcom/local/p5home/TopBarManager;
.super Ljava/lang/Object;
.source "TopBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/TopBarManager$Root;
    }
.end annotation


# static fields
.field static final BUILD:Ljava/lang/String; = "topbar-p5-20261112-2"

.field private static final INSTANCE:Lcom/local/p5home/TopBarManager;


# instance fields
.field private code:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private current:Lcom/local/p5home/TopBarStore$Snapshot;

.field private generation:J

.field private final main:Landroid/os/Handler;

.field private observing:Z

.field private polling:Z

.field private final roots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/local/p5home/TopBarManager$Root;",
            ">;"
        }
    .end annotation
.end field

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/local/p5home/TopBarManager;

    invoke-direct {v0}, Lcom/local/p5home/TopBarManager;-><init>()V

    sput-object v0, Lcom/local/p5home/TopBarManager;->INSTANCE:Lcom/local/p5home/TopBarManager;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/local/p5home/TopBarManager;->main:Landroid/os/Handler;

    .line 26
    new-instance v0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/TopBarManager;->worker:Ljava/util/concurrent/ExecutorService;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/TopBarManager;->roots:Ljava/util/List;

    .line 29
    invoke-static {}, Lcom/local/p5home/TopBarStore;->disabled()Lcom/local/p5home/TopBarStore$Snapshot;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    .line 30
    const-string v0, "WAITING_FOR_LAYOUT"

    iput-object v0, p0, Lcom/local/p5home/TopBarManager;->code:Ljava/lang/String;

    return-void
.end method

.method private accept(Landroid/content/Context;Lcom/local/p5home/TopBarStore$Snapshot;J)V
    .registers 15

    .line 100
    iget-wide v0, p0, Lcom/local/p5home/TopBarManager;->generation:J

    cmp-long v0, p3, v0

    if-eqz v0, :cond_7

    return-void

    .line 101
    :cond_7
    iget-boolean v0, p2, Lcom/local/p5home/TopBarStore$Snapshot;->valid:Z

    if-eqz v0, :cond_bb

    iget-boolean v0, p2, Lcom/local/p5home/TopBarStore$Snapshot;->enabled:Z

    if-nez v0, :cond_11

    goto/16 :goto_bb

    .line 102
    :cond_11
    iget-object v0, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-boolean v0, v0, Lcom/local/p5home/TopBarStore$Snapshot;->valid:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-wide v0, v0, Lcom/local/p5home/TopBarStore$Snapshot;->revision:J

    iget-wide v2, p2, Lcom/local/p5home/TopBarStore$Snapshot;->revision:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    :cond_21
    invoke-direct {p0}, Lcom/local/p5home/TopBarManager;->restoreAll()V

    :cond_24
    iput-object p2, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    .line 103
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object v0, p0, Lcom/local/p5home/TopBarManager;->roots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/local/p5home/TopBarManager$Root;

    iget-wide v4, p2, Lcom/local/p5home/TopBarStore$Snapshot;->revision:J

    iput-wide v4, v1, Lcom/local/p5home/TopBarManager$Root;->requestedRevision:J

    invoke-direct {p0, v1}, Lcom/local/p5home/TopBarManager;->boundsKey(Lcom/local/p5home/TopBarManager$Root;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/local/p5home/TopBarManager$Root;->requestedBounds:J

    iget-object v1, v1, Lcom/local/p5home/TopBarManager$Root;->bindings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/local/p5home/TopBarBinding;

    .line 105
    iget-object v4, p2, Lcom/local/p5home/TopBarStore$Snapshot;->slots:[Lcom/local/p5home/TopBarSlot;

    iget v5, v2, Lcom/local/p5home/TopBarBinding;->index:I

    aget-object v4, v4, v5

    .line 106
    invoke-virtual {v4}, Lcom/local/p5home/TopBarSlot;->isCustom()Z

    move-result v5

    if-nez v5, :cond_6f

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/local/p5home/TopBarManager;->apply(Lcom/local/p5home/TopBarBinding;Lcom/local/p5home/TopBarSlot;Landroid/graphics/drawable/Drawable;)V

    goto :goto_52

    .line 107
    :cond_6f
    invoke-direct {p0}, Lcom/local/p5home/TopBarManager;->density()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/local/p5home/TopBarBinding;->side(F)I

    move-result v4

    if-gtz v4, :cond_7d

    invoke-virtual {v2}, Lcom/local/p5home/TopBarBinding;->restore()V

    goto :goto_52

    .line 108
    :cond_7d
    iget-boolean v5, v2, Lcom/local/p5home/TopBarBinding;->installed:Z

    if-eqz v5, :cond_91

    iget-object v5, v2, Lcom/local/p5home/TopBarBinding;->applied:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_91

    iget-object v5, v2, Lcom/local/p5home/TopBarBinding;->applied:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    if-ne v5, v4, :cond_91

    invoke-virtual {v2}, Lcom/local/p5home/TopBarBinding;->repair()Z

    goto :goto_52

    .line 109
    :cond_91
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    goto :goto_52

    :cond_9c
    goto :goto_36

    .line 111
    :cond_9d
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ab

    const-string p1, "READY"

    iput-object p1, p0, Lcom/local/p5home/TopBarManager;->code:Ljava/lang/String;

    invoke-direct {p0}, Lcom/local/p5home/TopBarManager;->report()V

    return-void

    .line 112
    :cond_ab
    iget-object v0, p0, Lcom/local/p5home/TopBarManager;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda4;

    move-object v1, v9

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda4;-><init>(Lcom/local/p5home/TopBarManager;Ljava/util/List;Lcom/local/p5home/TopBarStore$Snapshot;Landroid/content/Context;Ljava/util/List;J)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 121
    return-void

    .line 101
    :cond_bb
    :goto_bb
    iput-object p2, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    invoke-direct {p0}, Lcom/local/p5home/TopBarManager;->restoreAll()V

    iget-boolean p1, p2, Lcom/local/p5home/TopBarStore$Snapshot;->valid:Z

    if-eqz p1, :cond_c7

    const-string p1, "DISABLED"

    goto :goto_c9

    :cond_c7
    const-string p1, "CONFIG_UNAVAILABLE"

    :goto_c9
    iput-object p1, p0, Lcom/local/p5home/TopBarManager;->code:Ljava/lang/String;

    invoke-direct {p0}, Lcom/local/p5home/TopBarManager;->report()V

    return-void
.end method

.method static synthetic access$000(Lcom/local/p5home/TopBarManager;Z)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/local/p5home/TopBarManager;->refresh(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/local/p5home/TopBarManager;)V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/local/p5home/TopBarManager;->report()V

    return-void
.end method

.method static synthetic access$200(Lcom/local/p5home/TopBarManager;Lcom/local/p5home/TopBarManager$Root;)Z
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/local/p5home/TopBarManager;->needsBounds(Lcom/local/p5home/TopBarManager$Root;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/local/p5home/TopBarManager;Lcom/local/p5home/TopBarManager$Root;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/local/p5home/TopBarManager;->repairBeforeDraw(Lcom/local/p5home/TopBarManager$Root;)V

    return-void
.end method

.method static synthetic access$400(Lcom/local/p5home/TopBarManager;)Landroid/os/Handler;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/local/p5home/TopBarManager;->main:Landroid/os/Handler;

    return-object p0
.end method

.method private apply(Lcom/local/p5home/TopBarBinding;Lcom/local/p5home/TopBarSlot;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 123
    invoke-virtual {p2}, Lcom/local/p5home/TopBarSlot;->isCustom()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez p3, :cond_c

    invoke-virtual {p1}, Lcom/local/p5home/TopBarBinding;->restore()V

    return-void

    .line 124
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/local/p5home/TopBarBinding;->installed:Z

    .line 126
    if-eqz p3, :cond_14

    invoke-virtual {p1, p3}, Lcom/local/p5home/TopBarBinding;->installIcon(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_14
    iget-object p3, p1, Lcom/local/p5home/TopBarBinding;->container:Landroid/view/View;

    new-instance v0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda2;-><init>(Lcom/local/p5home/TopBarManager;Lcom/local/p5home/TopBarBinding;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object p3, p1, Lcom/local/p5home/TopBarBinding;->container:Landroid/view/View;

    new-instance v0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda3;-><init>(Lcom/local/p5home/TopBarManager;Lcom/local/p5home/TopBarBinding;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 135
    iget-object p1, p1, Lcom/local/p5home/TopBarBinding;->container:Landroid/view/View;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/local/p5home/TopBarSlot;->displayLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\uff0c\u957f\u6309\u8bbe\u7f6e\u9876\u90e8\u5feb\u6377\u5165\u53e3"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method private attachMain(Ljava/lang/Object;)V
    .registers 20

    .line 53
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "com.android.systemui"

    const-string v3, "id"

    :try_start_8
    const-string v4, "mRootView"

    invoke-static {v0, v4}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 54
    const-string v5, "mContext"

    invoke-static {v0, v5}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    if-eqz v4, :cond_124

    if-nez v5, :cond_1e

    goto/16 :goto_124

    .line 55
    :cond_1e
    iget-object v6, v1, Lcom/local/p5home/TopBarManager;->roots:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_39

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/local/p5home/TopBarManager$Root;

    iget-object v7, v7, Lcom/local/p5home/TopBarManager$Root;->view:Landroid/view/View;

    if-ne v7, v4, :cond_24

    invoke-direct {v1, v8}, Lcom/local/p5home/TopBarManager;->refresh(Z)V

    return-void

    .line 56
    :cond_39
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_41

    move-object v6, v5

    goto :goto_45

    :cond_41
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    :goto_45
    iput-object v6, v1, Lcom/local/p5home/TopBarManager;->context:Landroid/content/Context;

    new-instance v6, Lcom/local/p5home/TopBarManager$Root;

    invoke-direct {v6, v1, v0, v4}, Lcom/local/p5home/TopBarManager$Root;-><init>(Lcom/local/p5home/TopBarManager;Ljava/lang/Object;Landroid/view/View;)V

    .line 57
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v7, "app_icon"

    invoke-virtual {v0, v7, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 58
    const/4 v15, 0x0

    :goto_57
    const/4 v0, 0x7

    if-ge v15, v0, :cond_cc

    .line 59
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v10, Lcom/local/p5home/TopBarSlot;->IDS:[Ljava/lang/String;

    aget-object v10, v10, v15

    invoke-virtual {v0, v10, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_6b

    move-object v12, v10

    goto :goto_70

    :cond_6b
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    .line 60
    :goto_70
    if-eqz v12, :cond_7a

    if-nez v7, :cond_75

    goto :goto_7a

    :cond_75
    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_7b

    :cond_7a
    :goto_7a
    move-object v0, v10

    .line 61
    :goto_7b
    if-eqz v12, :cond_c6

    instance-of v11, v0, Landroid/widget/ImageView;
    :try_end_7f
    .catchall {:try_start_8 .. :try_end_7f} :catchall_125

    if-nez v11, :cond_84

    move/from16 v17, v15

    goto :goto_c8

    .line 63
    :cond_84
    :try_start_84
    const-string v11, "mListenerInfo"

    invoke-static {v12, v11}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 64
    if-nez v11, :cond_8e

    move-object v14, v10

    goto :goto_97

    :cond_8e
    const-string v13, "mOnClickListener"

    invoke-static {v11, v13}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View$OnClickListener;

    move-object v14, v13

    .line 65
    :goto_97
    if-nez v11, :cond_9c

    :goto_99
    move-object/from16 v16, v10

    goto :goto_a5

    :cond_9c
    const-string v10, "mOnLongClickListener"

    invoke-static {v11, v10}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View$OnLongClickListener;

    goto :goto_99

    .line 66
    :goto_a5
    iget-object v13, v6, Lcom/local/p5home/TopBarManager$Root;->bindings:Ljava/util/List;

    new-instance v11, Lcom/local/p5home/TopBarBinding;

    check-cast v0, Landroid/widget/ImageView;
    :try_end_ab
    .catchall {:try_start_84 .. :try_end_ab} :catchall_bd

    move-object v10, v11

    move-object v8, v11

    move v11, v15

    move-object v9, v13

    move-object v13, v0

    move/from16 v17, v15

    move-object/from16 v15, v16

    :try_start_b4
    invoke-direct/range {v10 .. v15}, Lcom/local/p5home/TopBarBinding;-><init>(ILandroid/view/View;Landroid/widget/ImageView;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ba
    .catchall {:try_start_b4 .. :try_end_ba} :catchall_bb

    goto :goto_c5

    .line 67
    :catchall_bb
    move-exception v0

    goto :goto_c0

    :catchall_bd
    move-exception v0

    move/from16 v17, v15

    :goto_c0
    :try_start_c0
    const-string v0, "LISTENER_SNAPSHOT_UNAVAILABLE"

    invoke-static {v0}, Lcom/local/p5home/TopBarHook;->log(Ljava/lang/String;)V

    :goto_c5
    goto :goto_c8

    .line 61
    :cond_c6
    move/from16 v17, v15

    .line 58
    :goto_c8
    add-int/lit8 v15, v17, 0x1

    const/4 v8, 0x1

    goto :goto_57

    .line 69
    :cond_cc
    iget-object v0, v1, Lcom/local/p5home/TopBarManager;->roots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_e1

    iget-object v0, v1, Lcom/local/p5home/TopBarManager;->roots:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/local/p5home/TopBarManager$Root;

    invoke-virtual {v0}, Lcom/local/p5home/TopBarManager$Root;->dispose()V

    :cond_e1
    iget-object v0, v1, Lcom/local/p5home/TopBarManager;->roots:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, v6, Lcom/local/p5home/TopBarManager$Root;->layout:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v4, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, v6, Lcom/local/p5home/TopBarManager$Root;->attachment:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v4, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 71
    invoke-virtual {v6}, Lcom/local/p5home/TopBarManager$Root;->observeDraw()V

    .line 72
    iget-boolean v0, v1, Lcom/local/p5home/TopBarManager;->observing:Z

    if-nez v0, :cond_10c

    iget-object v0, v1, Lcom/local/p5home/TopBarManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/local/p5home/TopBarStore;->URI:Landroid/net/Uri;

    new-instance v3, Lcom/local/p5home/TopBarManager$1;

    iget-object v4, v1, Lcom/local/p5home/TopBarManager;->main:Landroid/os/Handler;

    invoke-direct {v3, v1, v4}, Lcom/local/p5home/TopBarManager$1;-><init>(Lcom/local/p5home/TopBarManager;Landroid/os/Handler;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v4, v1, Lcom/local/p5home/TopBarManager;->observing:Z

    .line 73
    :cond_10c
    iget-boolean v0, v1, Lcom/local/p5home/TopBarManager;->polling:Z

    if-nez v0, :cond_11f

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/local/p5home/TopBarManager;->polling:Z

    iget-object v0, v1, Lcom/local/p5home/TopBarManager;->main:Landroid/os/Handler;

    new-instance v2, Lcom/local/p5home/TopBarManager$2;

    invoke-direct {v2, v1}, Lcom/local/p5home/TopBarManager$2;-><init>(Lcom/local/p5home/TopBarManager;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    :cond_11f
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/local/p5home/TopBarManager;->refresh(Z)V
    :try_end_123
    .catchall {:try_start_c0 .. :try_end_123} :catchall_125

    .line 75
    goto :goto_133

    .line 54
    :cond_124
    :goto_124
    return-void

    .line 75
    :catchall_125
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/TopBarManager;->restoreAll()V

    const-string v0, "ATTACH_UNAVAILABLE"

    iput-object v0, v1, Lcom/local/p5home/TopBarManager;->code:Ljava/lang/String;

    invoke-static {v0}, Lcom/local/p5home/TopBarHook;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/TopBarManager;->report()V

    .line 76
    :goto_133
    return-void
.end method

.method private boundsKey(Lcom/local/p5home/TopBarManager$Root;)J
    .registers 10

    .line 78
    invoke-direct {p0}, Lcom/local/p5home/TopBarManager;->density()F

    move-result v0

    iget-object p1, p1, Lcom/local/p5home/TopBarManager$Root;->bindings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, 0x0

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/local/p5home/TopBarBinding;

    iget-object v4, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-object v4, v4, Lcom/local/p5home/TopBarStore$Snapshot;->slots:[Lcom/local/p5home/TopBarSlot;

    iget v5, v3, Lcom/local/p5home/TopBarBinding;->index:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/local/p5home/TopBarSlot;->isCustom()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v3, v0}, Lcom/local/p5home/TopBarBinding;->side(F)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iget v3, v3, Lcom/local/p5home/TopBarBinding;->index:I

    mul-int/lit8 v3, v3, 0x8

    shl-long v3, v4, v3

    or-long/2addr v1, v3

    goto :goto_c

    :cond_36
    return-wide v1
.end method

.method private density()F
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/local/p5home/TopBarManager;->context:Landroid/content/Context;

    if-nez v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_11

    :cond_7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    :goto_11
    return v0
.end method

.method static get()Lcom/local/p5home/TopBarManager;
    .registers 1

    .line 31
    sget-object v0, Lcom/local/p5home/TopBarManager;->INSTANCE:Lcom/local/p5home/TopBarManager;

    return-object v0
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 26
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "G3TopBar"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method static synthetic lambda$report$11(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5

    .line 156
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/local/p5home/TopBarStore;->URI:Landroid/net/Uri;

    const-string v1, "heartbeat"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception p0

    const-string p0, "STATUS_UNAVAILABLE"

    invoke-static {p0}, Lcom/local/p5home/TopBarHook;->log(Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method private launch(Lcom/local/p5home/TopBarSlot;J)V
    .registers 12

    .line 137
    iget-object v2, p0, Lcom/local/p5home/TopBarManager;->context:Landroid/content/Context;

    .line 138
    iget-object v6, p0, Lcom/local/p5home/TopBarManager;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda1;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda1;-><init>(Lcom/local/p5home/TopBarManager;Landroid/content/Context;Lcom/local/p5home/TopBarSlot;J)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method private needsBounds(Lcom/local/p5home/TopBarManager$Root;)Z
    .registers 6

    .line 77
    iget-object v0, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-boolean v0, v0, Lcom/local/p5home/TopBarStore$Snapshot;->enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object p1, p1, Lcom/local/p5home/TopBarManager$Root;->bindings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/local/p5home/TopBarBinding;

    iget-object v2, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-object v2, v2, Lcom/local/p5home/TopBarStore$Snapshot;->slots:[Lcom/local/p5home/TopBarSlot;

    iget v3, v0, Lcom/local/p5home/TopBarBinding;->index:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/local/p5home/TopBarSlot;->isCustom()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/local/p5home/TopBarBinding;->applied:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3c

    invoke-direct {p0}, Lcom/local/p5home/TopBarManager;->density()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/local/p5home/TopBarBinding;->side(F)I

    move-result v2

    iget-object v0, v0, Lcom/local/p5home/TopBarBinding;->applied:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-eq v2, v0, :cond_e

    :cond_3c
    const/4 p1, 0x1

    return p1

    :cond_3e
    return v1
.end method

.method private onMain(Ljava/lang/Runnable;)V
    .registers 4

    .line 50
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_13

    :cond_e
    iget-object v0, p0, Lcom/local/p5home/TopBarManager;->main:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_13
    return-void
.end method

.method private refresh(Z)V
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/local/p5home/TopBarManager;->context:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-wide v0, p0, Lcom/local/p5home/TopBarManager;->generation:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/local/p5home/TopBarManager;->generation:J

    .line 95
    if-eqz p1, :cond_1b

    invoke-static {}, Lcom/local/p5home/TopBarStore;->disabled()Lcom/local/p5home/TopBarStore$Snapshot;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    invoke-direct {p0}, Lcom/local/p5home/TopBarManager;->restoreAll()V

    const-string p1, "CHECKING_CONFIG"

    iput-object p1, p0, Lcom/local/p5home/TopBarManager;->code:Ljava/lang/String;

    .line 96
    :cond_1b
    iget-object p1, p0, Lcom/local/p5home/TopBarManager;->context:Landroid/content/Context;

    .line 97
    iget-object v2, p0, Lcom/local/p5home/TopBarManager;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda10;-><init>(Lcom/local/p5home/TopBarManager;Landroid/content/Context;J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method private repairBeforeDraw(Lcom/local/p5home/TopBarManager$Root;)V
    .registers 8

    .line 80
    iget-object v0, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-boolean v0, v0, Lcom/local/p5home/TopBarStore$Snapshot;->valid:Z

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-boolean v0, v0, Lcom/local/p5home/TopBarStore$Snapshot;->enabled:Z

    if-eqz v0, :cond_6f

    iget-object v0, p1, Lcom/local/p5home/TopBarManager$Root;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p1, Lcom/local/p5home/TopBarManager$Root;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_6f

    .line 82
    :cond_1d
    :try_start_1d
    iget-object v0, p1, Lcom/local/p5home/TopBarManager$Root;->bindings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/local/p5home/TopBarBinding;

    iget-object v2, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-object v2, v2, Lcom/local/p5home/TopBarStore$Snapshot;->slots:[Lcom/local/p5home/TopBarSlot;

    iget v3, v1, Lcom/local/p5home/TopBarBinding;->index:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/local/p5home/TopBarSlot;->isCustom()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Lcom/local/p5home/TopBarBinding;->repair()Z

    goto :goto_23

    .line 85
    :cond_41
    invoke-direct {p0, p1}, Lcom/local/p5home/TopBarManager;->boundsKey(Lcom/local/p5home/TopBarManager$Root;)J

    move-result-wide v0

    .line 86
    invoke-direct {p0, p1}, Lcom/local/p5home/TopBarManager;->needsBounds(Lcom/local/p5home/TopBarManager$Root;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-wide v2, p1, Lcom/local/p5home/TopBarManager$Root;->requestedRevision:J

    iget-object v4, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-wide v4, v4, Lcom/local/p5home/TopBarStore$Snapshot;->revision:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5b

    iget-wide v2, p1, Lcom/local/p5home/TopBarManager$Root;->requestedBounds:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_67

    .line 87
    :cond_5b
    iget-object v2, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-wide v2, v2, Lcom/local/p5home/TopBarStore$Snapshot;->revision:J

    iput-wide v2, p1, Lcom/local/p5home/TopBarManager$Root;->requestedRevision:J

    iput-wide v0, p1, Lcom/local/p5home/TopBarManager$Root;->requestedBounds:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/local/p5home/TopBarManager;->refresh(Z)V
    :try_end_67
    .catchall {:try_start_1d .. :try_end_67} :catchall_68

    .line 89
    :cond_67
    goto :goto_6e

    :catchall_68
    move-exception p1

    const-string p1, "ICON_REPAIR_UNAVAILABLE"

    invoke-static {p1}, Lcom/local/p5home/TopBarHook;->log(Ljava/lang/String;)V

    .line 90
    :goto_6e
    return-void

    .line 80
    :cond_6f
    :goto_6f
    return-void
.end method

.method private report()V
    .registers 23

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/local/p5home/TopBarManager;->context:Landroid/content/Context;

    if-nez v1, :cond_7

    return-void

    :cond_7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x7

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v5, v2, [I

    new-array v6, v2, [I

    new-array v7, v2, [I

    new-array v8, v2, [I

    new-array v9, v2, [I

    new-array v2, v2, [I

    .line 147
    iget-object v10, v0, Lcom/local/p5home/TopBarManager;->roots:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :cond_24
    :goto_24
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/local/p5home/TopBarManager$Root;

    iget-object v13, v12, Lcom/local/p5home/TopBarManager$Root;->view:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->isShown()Z

    move-result v13

    if-eqz v13, :cond_24

    move-object v11, v12

    goto :goto_24

    :cond_3a
    const/4 v10, 0x1

    if-nez v11, :cond_52

    iget-object v12, v0, Lcom/local/p5home/TopBarManager;->roots:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_52

    iget-object v11, v0, Lcom/local/p5home/TopBarManager;->roots:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v10

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/local/p5home/TopBarManager$Root;

    .line 148
    :cond_52
    if-eqz v11, :cond_167

    iget-object v13, v11, Lcom/local/p5home/TopBarManager$Root;->bindings:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_60
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_15d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Lcom/local/p5home/TopBarBinding;

    iget v12, v10, Lcom/local/p5home/TopBarBinding;->index:I

    move-object/from16 v19, v13

    iget-object v13, v10, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getWidth()I

    move-result v13

    aput v13, v3, v12

    iget-object v13, v10, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getHeight()I

    move-result v13

    aput v13, v4, v12

    aget v13, v3, v12

    iget-object v0, v10, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v13, v0

    iget-object v0, v10, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v0

    sub-int/2addr v13, v0

    const/4 v0, 0x0

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    aput v13, v5, v12

    aget v13, v4, v12

    iget-object v0, v10, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v0

    sub-int/2addr v13, v0

    iget-object v0, v10, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v13, v0

    const/4 v0, 0x0

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    aput v13, v6, v12

    .line 149
    iget-object v13, v10, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-nez v13, :cond_bd

    move/from16 v18, v0

    move-object/from16 v20, v1

    goto :goto_c7

    :cond_bd
    move-object/from16 v20, v1

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    :goto_c7
    aput v18, v7, v12

    if-nez v13, :cond_cc

    goto :goto_d5

    :cond_cc
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    :goto_d5
    aput v0, v8, v12

    .line 150
    if-eqz v13, :cond_10b

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, v10, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move-object/from16 v21, v8

    const/4 v8, 0x0

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v9, v12

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v2, v12

    goto :goto_10e

    :cond_10b
    move-object/from16 v21, v8

    const/4 v8, 0x0

    .line 151
    :goto_10e
    iget-object v0, v11, Lcom/local/p5home/TopBarManager$Root;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_151

    iget-object v0, v11, Lcom/local/p5home/TopBarManager$Root;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_151

    iget-object v0, v10, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_151

    aget v0, v3, v12

    if-lez v0, :cond_151

    aget v0, v4, v12

    if-lez v0, :cond_151

    const/4 v0, 0x1

    shl-int v1, v0, v12

    or-int/2addr v14, v1

    iget-boolean v1, v10, Lcom/local/p5home/TopBarBinding;->installed:Z

    if-eqz v1, :cond_138

    add-int/lit8 v16, v16, 0x1

    :cond_138
    iget-object v1, v10, Lcom/local/p5home/TopBarBinding;->applied:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_152

    iget-object v1, v10, Lcom/local/p5home/TopBarBinding;->applied:Landroid/graphics/drawable/Drawable;

    if-ne v13, v1, :cond_152

    add-int/lit8 v15, v15, 0x1

    aget v1, v9, v12

    aget v10, v5, v12

    if-gt v1, v10, :cond_14e

    aget v1, v2, v12

    aget v10, v6, v12

    if-le v1, v10, :cond_152

    :cond_14e
    add-int/lit8 v17, v17, 0x1

    goto :goto_152

    :cond_151
    const/4 v0, 0x1

    .line 152
    :cond_152
    :goto_152
    move v10, v0

    move-object/from16 v13, v19

    move-object/from16 v1, v20

    move-object/from16 v8, v21

    move-object/from16 v0, p0

    goto/16 :goto_60

    .line 148
    :cond_15d
    move-object/from16 v20, v1

    move-object/from16 v21, v8

    move v12, v14

    move/from16 v8, v16

    move/from16 v0, v17

    goto :goto_16f

    :cond_167
    move-object/from16 v20, v1

    move-object/from16 v21, v8

    const/4 v8, 0x0

    move v0, v8

    move v12, v0

    move v15, v12

    .line 153
    :goto_16f
    const-string v1, "loadedBuild"

    const-string v10, "topbar-p5-20261112-2"

    move-object/from16 v11, v20

    invoke-virtual {v11, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "boundCount"

    invoke-static {v12}, Ljava/lang/Integer;->bitCount(I)I

    move-result v10

    invoke-virtual {v11, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "boundMask"

    invoke-virtual {v11, v1, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "appliedCount"

    invoke-virtual {v11, v1, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "interceptedCount"

    invoke-virtual {v11, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "overflowCount"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "READY"

    move-object/from16 v1, p0

    iget-object v8, v1, Lcom/local/p5home/TopBarManager;->code:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    const/16 v0, 0x7f

    if-eq v12, v0, :cond_1a8

    const-string v0, "PARTIAL_LAYOUT"

    goto :goto_1aa

    :cond_1a8
    iget-object v0, v1, Lcom/local/p5home/TopBarManager;->code:Ljava/lang/String;

    :goto_1aa
    const-string v8, "code"

    invoke-virtual {v11, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "iconWidths"

    invoke-virtual {v11, v0, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "iconHeights"

    invoke-virtual {v11, v0, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "availableWidths"

    invoke-virtual {v11, v0, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "availableHeights"

    invoke-virtual {v11, v0, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "drawableWidths"

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "drawableHeights"

    move-object/from16 v3, v21

    invoke-virtual {v11, v0, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 155
    const-string v0, "renderedWidths"

    invoke-virtual {v11, v0, v9}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "renderedHeights"

    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 156
    iget-object v0, v1, Lcom/local/p5home/TopBarManager;->context:Landroid/content/Context;

    iget-object v2, v1, Lcom/local/p5home/TopBarManager;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda11;

    invoke-direct {v3, v0, v11}, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda11;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method private restoreAll()V
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/local/p5home/TopBarManager;->roots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/local/p5home/TopBarManager$Root;

    iget-object v1, v1, Lcom/local/p5home/TopBarManager$Root;->bindings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/local/p5home/TopBarBinding;

    invoke-virtual {v2}, Lcom/local/p5home/TopBarBinding;->restore()V

    goto :goto_18

    :cond_28
    return-void
.end method


# virtual methods
.method attach(Ljava/lang/Object;)V
    .registers 3

    .line 49
    new-instance v0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/TopBarManager;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/local/p5home/TopBarManager;->onMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method beforeInit(Ljava/lang/Object;)V
    .registers 3

    .line 48
    new-instance v0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda9;-><init>(Lcom/local/p5home/TopBarManager;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/local/p5home/TopBarManager;->onMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$accept$5$com-local-g3home-TopBarManager(JLcom/local/p5home/TopBarStore$Snapshot;[Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;)V
    .registers 10

    .line 117
    iget-wide v0, p0, Lcom/local/p5home/TopBarManager;->generation:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_5a

    iget-object p1, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-boolean p1, p1, Lcom/local/p5home/TopBarStore$Snapshot;->enabled:Z

    if-eqz p1, :cond_5a

    iget-object p1, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-wide p1, p1, Lcom/local/p5home/TopBarStore$Snapshot;->revision:J

    iget-wide v0, p3, Lcom/local/p5home/TopBarStore$Snapshot;->revision:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_17

    goto :goto_5a

    .line 118
    :cond_17
    const/4 p1, 0x0

    move p2, p1

    :goto_19
    array-length v0, p4

    if-ge p1, v0, :cond_4d

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/local/p5home/TopBarBinding;

    aget-object v1, p4, p1

    if-nez v1, :cond_2b

    invoke-virtual {v0}, Lcom/local/p5home/TopBarBinding;->restore()V

    const/4 p2, 0x1

    goto :goto_4a

    :cond_2b
    invoke-direct {p0}, Lcom/local/p5home/TopBarManager;->density()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/local/p5home/TopBarBinding;->side(F)I

    move-result v1

    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_4a

    iget-object v1, p3, Lcom/local/p5home/TopBarStore$Snapshot;->slots:[Lcom/local/p5home/TopBarSlot;

    iget v2, v0, Lcom/local/p5home/TopBarBinding;->index:I

    aget-object v1, v1, v2

    aget-object v2, p4, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/local/p5home/TopBarManager;->apply(Lcom/local/p5home/TopBarBinding;Lcom/local/p5home/TopBarSlot;Landroid/graphics/drawable/Drawable;)V

    :cond_4a
    :goto_4a
    add-int/lit8 p1, p1, 0x1

    goto :goto_19

    .line 119
    :cond_4d
    if-eqz p2, :cond_52

    const-string p1, "APP_UNAVAILABLE"

    goto :goto_54

    :cond_52
    const-string p1, "READY"

    :goto_54
    iput-object p1, p0, Lcom/local/p5home/TopBarManager;->code:Ljava/lang/String;

    invoke-direct {p0}, Lcom/local/p5home/TopBarManager;->report()V

    return-void

    .line 117
    :cond_5a
    :goto_5a
    return-void
.end method

.method synthetic lambda$accept$6$com-local-g3home-TopBarManager(Ljava/util/List;Lcom/local/p5home/TopBarStore$Snapshot;Landroid/content/Context;Ljava/util/List;J)V
    .registers 16

    .line 113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Landroid/graphics/drawable/Drawable;

    .line 114
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_4c

    :try_start_9
    iget-object v2, p2, Lcom/local/p5home/TopBarStore$Snapshot;->slots:[Lcom/local/p5home/TopBarSlot;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/local/p5home/TopBarBinding;

    iget v3, v3, Lcom/local/p5home/TopBarBinding;->index:I

    aget-object v2, v2, v3

    .line 115
    iget v3, v2, Lcom/local/p5home/TopBarSlot;->index:I

    iget-object v4, v2, Lcom/local/p5home/TopBarSlot;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/local/p5home/TopBarSlot;->activityName:Ljava/lang/String;

    iget-object v7, v2, Lcom/local/p5home/TopBarSlot;->label:Ljava/lang/String;

    invoke-static {p3, v3, v4, v5, v7}, Lcom/local/p5home/TopBarStore;->launcher(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/local/p5home/TopBarSlot;

    move-result-object v3

    if-eqz v3, :cond_48

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v2, Lcom/local/p5home/TopBarSlot;->packageName:Ljava/lang/String;

    iget-object v2, v2, Lcom/local/p5home/TopBarSlot;->activityName:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/local/p5home/TopBarIcon;->render(Landroid/graphics/drawable/Drawable;I)Lcom/local/p5home/TopBarIcon;

    move-result-object v2

    aput-object v2, v6, v1
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_44} :catch_47
    .catch Ljava/lang/LinkageError; {:try_start_9 .. :try_end_44} :catch_45

    goto :goto_48

    .line 116
    :catch_45
    move-exception v2

    goto :goto_48

    :catch_47
    move-exception v2

    :cond_48
    :goto_48
    nop

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 117
    :cond_4c
    iget-object p3, p0, Lcom/local/p5home/TopBarManager;->main:Landroid/os/Handler;

    new-instance v0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda6;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p5

    move-object v5, p2

    move-object v7, p1

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda6;-><init>(Lcom/local/p5home/TopBarManager;JLcom/local/p5home/TopBarStore$Snapshot;[Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void
.end method

.method synthetic lambda$apply$7$com-local-g3home-TopBarManager(Lcom/local/p5home/TopBarBinding;Landroid/view/View;)V
    .registers 6

    .line 127
    iget-object v0, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    .line 128
    iget-boolean v1, v0, Lcom/local/p5home/TopBarStore$Snapshot;->valid:Z

    if-eqz v1, :cond_2a

    iget-boolean v1, v0, Lcom/local/p5home/TopBarStore$Snapshot;->enabled:Z

    if-eqz v1, :cond_2a

    iget-boolean v1, p1, Lcom/local/p5home/TopBarBinding;->installed:Z

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/local/p5home/TopBarStore$Snapshot;->slots:[Lcom/local/p5home/TopBarSlot;

    iget v2, p1, Lcom/local/p5home/TopBarBinding;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/local/p5home/TopBarSlot;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p1, Lcom/local/p5home/TopBarBinding;->applied:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2a

    iget-object p2, v0, Lcom/local/p5home/TopBarStore$Snapshot;->slots:[Lcom/local/p5home/TopBarSlot;

    iget p1, p1, Lcom/local/p5home/TopBarBinding;->index:I

    aget-object p1, p2, p1

    iget-wide v0, v0, Lcom/local/p5home/TopBarStore$Snapshot;->revision:J

    invoke-direct {p0, p1, v0, v1}, Lcom/local/p5home/TopBarManager;->launch(Lcom/local/p5home/TopBarSlot;J)V

    goto :goto_33

    .line 129
    :cond_2a
    iget-object v0, p1, Lcom/local/p5home/TopBarBinding;->click:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_33

    iget-object p1, p1, Lcom/local/p5home/TopBarBinding;->click:Landroid/view/View$OnClickListener;

    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 130
    :cond_33
    :goto_33
    return-void
.end method

.method synthetic lambda$apply$8$com-local-g3home-TopBarManager(Lcom/local/p5home/TopBarBinding;Landroid/view/View;)Z
    .registers 9

    .line 131
    iget-object v0, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-boolean v0, v0, Lcom/local/p5home/TopBarStore$Snapshot;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-boolean v0, v0, Lcom/local/p5home/TopBarStore$Snapshot;->enabled:Z

    if-eqz v0, :cond_53

    iget-boolean v0, p1, Lcom/local/p5home/TopBarBinding;->installed:Z

    if-nez v0, :cond_13

    goto :goto_53

    .line 132
    :cond_13
    :try_start_13
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.local.p5home"

    const-string v5, "com.local.p5home.TopBarSettingsActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "slot_index"

    iget v4, p1, Lcom/local/p5home/TopBarBinding;->index:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "from_topbar"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v3, p0, Lcom/local/p5home/TopBarManager;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3e
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_3e} :catch_3f

    return v2

    .line 133
    :catch_3f
    move-exception v0

    const-string v0, "PICKER_UNAVAILABLE"

    invoke-static {v0}, Lcom/local/p5home/TopBarHook;->log(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/local/p5home/TopBarBinding;->longClick:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_52

    iget-object p1, p1, Lcom/local/p5home/TopBarBinding;->longClick:Landroid/view/View$OnLongClickListener;

    invoke-interface {p1, p2}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_52

    move v1, v2

    :cond_52
    return v1

    .line 131
    :cond_53
    :goto_53
    iget-object v0, p1, Lcom/local/p5home/TopBarBinding;->longClick:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_60

    iget-object p1, p1, Lcom/local/p5home/TopBarBinding;->longClick:Landroid/view/View$OnLongClickListener;

    invoke-interface {p1, p2}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_60

    move v1, v2

    :cond_60
    return v1
.end method

.method synthetic lambda$attach$2$com-local-g3home-TopBarManager(Ljava/lang/Object;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/local/p5home/TopBarManager;->attachMain(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$beforeInit$1$com-local-g3home-TopBarManager(Ljava/lang/Object;)V
    .registers 6

    .line 48
    iget-object v0, p0, Lcom/local/p5home/TopBarManager;->roots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_24

    iget-object v1, p0, Lcom/local/p5home/TopBarManager;->roots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/local/p5home/TopBarManager$Root;

    iget-object v1, v1, Lcom/local/p5home/TopBarManager$Root;->owner:Ljava/lang/Object;

    if-ne v1, p1, :cond_21

    iget-object v1, p0, Lcom/local/p5home/TopBarManager;->roots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/local/p5home/TopBarManager$Root;

    invoke-virtual {v1}, Lcom/local/p5home/TopBarManager$Root;->dispose()V

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_24
    iget-wide v0, p0, Lcom/local/p5home/TopBarManager;->generation:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/local/p5home/TopBarManager;->generation:J

    return-void
.end method

.method synthetic lambda$launch$10$com-local-g3home-TopBarManager(Landroid/content/Context;Lcom/local/p5home/TopBarSlot;J)V
    .registers 16

    .line 138
    iget v0, p2, Lcom/local/p5home/TopBarSlot;->index:I

    iget-object v1, p2, Lcom/local/p5home/TopBarSlot;->packageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/local/p5home/TopBarSlot;->activityName:Ljava/lang/String;

    iget-object v3, p2, Lcom/local/p5home/TopBarSlot;->label:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/local/p5home/TopBarStore;->launcher(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/local/p5home/TopBarSlot;

    move-result-object v8

    iget-object v0, p0, Lcom/local/p5home/TopBarManager;->main:Landroid/os/Handler;

    new-instance v1, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda8;

    move-object v4, v1

    move-object v5, p0

    move-wide v6, p3

    move-object v9, p2

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda8;-><init>(Lcom/local/p5home/TopBarManager;JLcom/local/p5home/TopBarSlot;Lcom/local/p5home/TopBarSlot;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method synthetic lambda$launch$9$com-local-g3home-TopBarManager(JLcom/local/p5home/TopBarSlot;Lcom/local/p5home/TopBarSlot;Landroid/content/Context;)V
    .registers 8

    .line 139
    iget-object v0, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-boolean v0, v0, Lcom/local/p5home/TopBarStore$Snapshot;->enabled:Z

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-boolean v0, v0, Lcom/local/p5home/TopBarStore$Snapshot;->valid:Z

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/local/p5home/TopBarManager;->current:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-wide v0, v0, Lcom/local/p5home/TopBarStore$Snapshot;->revision:J

    cmp-long p1, v0, p1

    if-eqz p1, :cond_15

    goto :goto_7a

    .line 140
    :cond_15
    if-nez p3, :cond_4d

    iget-object p1, p0, Lcom/local/p5home/TopBarManager;->roots:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/local/p5home/TopBarManager$Root;

    iget-object p2, p2, Lcom/local/p5home/TopBarManager$Root;->bindings:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2f
    :goto_2f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/local/p5home/TopBarBinding;

    iget p5, p3, Lcom/local/p5home/TopBarBinding;->index:I

    iget v0, p4, Lcom/local/p5home/TopBarSlot;->index:I

    if-ne p5, v0, :cond_2f

    invoke-virtual {p3}, Lcom/local/p5home/TopBarBinding;->restore()V

    goto :goto_2f

    :cond_45
    const-string p1, "APP_UNAVAILABLE"

    iput-object p1, p0, Lcom/local/p5home/TopBarManager;->code:Ljava/lang/String;

    invoke-direct {p0}, Lcom/local/p5home/TopBarManager;->report()V

    return-void

    .line 141
    :cond_4d
    :try_start_4d
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    new-instance p2, Landroid/content/ComponentName;

    iget-object p4, p3, Lcom/local/p5home/TopBarSlot;->packageName:Ljava/lang/String;

    iget-object p3, p3, Lcom/local/p5home/TopBarSlot;->activityName:Ljava/lang/String;

    invoke-direct {p2, p4, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10200000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_70
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_70} :catch_71

    .line 142
    goto :goto_79

    :catch_71
    move-exception p1

    const-string p1, "LAUNCH_UNAVAILABLE"

    iput-object p1, p0, Lcom/local/p5home/TopBarManager;->code:Ljava/lang/String;

    invoke-direct {p0}, Lcom/local/p5home/TopBarManager;->report()V

    .line 143
    :goto_79
    return-void

    .line 139
    :cond_7a
    :goto_7a
    return-void
.end method

.method synthetic lambda$refresh$3$com-local-g3home-TopBarManager(Landroid/content/Context;Lcom/local/p5home/TopBarStore$Snapshot;J)V
    .registers 5

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/local/p5home/TopBarManager;->accept(Landroid/content/Context;Lcom/local/p5home/TopBarStore$Snapshot;J)V

    return-void
.end method

.method synthetic lambda$refresh$4$com-local-g3home-TopBarManager(Landroid/content/Context;J)V
    .registers 12

    .line 97
    invoke-static {p1}, Lcom/local/p5home/TopBarStore;->fetch(Landroid/content/Context;)Lcom/local/p5home/TopBarStore$Snapshot;

    move-result-object v3

    iget-object v6, p0, Lcom/local/p5home/TopBarManager;->main:Landroid/os/Handler;

    new-instance v7, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda7;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda7;-><init>(Lcom/local/p5home/TopBarManager;Landroid/content/Context;Lcom/local/p5home/TopBarStore$Snapshot;J)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
