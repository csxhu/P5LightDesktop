.class public Lcom/local/p5home/HomeActivity;
.super Landroid/app/Activity;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/HomeActivity$AppItem;
    }
.end annotation


# static fields
.field private static final OEM:Ljava/lang/String; = "com.xiaopeng.montecarlo"


# instance fields
.field private appListRevision:I

.field private final apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/local/p5home/HomeActivity$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private appsArea:Landroid/widget/LinearLayout;

.field private final appsWorker:Ljava/util/concurrent/ExecutorService;

.field private assistantDetail:Landroid/widget/TextView;

.field private assistantState:Landroid/widget/TextView;

.field private final autoCheck:Ljava/lang/Runnable;

.field private date:Landroid/widget/TextView;

.field private dead:Z

.field private final frequent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private generation:I

.field private lastAutoAt:J

.field private final main:Landroid/os/Handler;

.field private navDetail:Landroid/widget/TextView;

.field private navName:Landroid/widget/TextView;

.field private operation:Landroid/widget/TextView;

.field private pendingHome:Z

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private receiverRegistered:Z

.field private renderedMusicProvider:Ljava/lang/String;

.field private resumed:Z

.field private root:Landroid/widget/LinearLayout;

.field private shortcutManagerRequested:Z

.field private suppressNextResume:Z

.field private theme:I

.field private final tick:Ljava/lang/Runnable;

.field private usageGeneration:I

.field private voiceWake:Lcom/local/p5home/OemVoiceWake;

.field private wakePending:Z


# direct methods
.method public static synthetic $r8$lambda$1aN0Pn4DPXkGAcgHx0NSHx8uPkY(Lcom/local/p5home/HomeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->allApps()V

    return-void
.end method

.method public static synthetic $r8$lambda$ibwtfhjCAwJkstKhIYY-Fx0uQg8(Lcom/local/p5home/HomeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->shortcutSettings()V

    return-void
.end method

.method public static synthetic $r8$lambda$n-mOU55D-ZZwGRE9HDqfWUP8xwo(Lcom/local/p5home/HomeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->settings()V

    return-void
.end method

.method public static synthetic $r8$lambda$nfyO2rO-iszUMcmdnewkjh-sUCg(Lcom/local/p5home/HomeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->ask()V

    return-void
.end method

.method public static synthetic $r8$lambda$t4CJ8DRPeje81NhI-7JFa2kQjrI(Lcom/local/p5home/HomeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->voiceAsk()V

    return-void
.end method

.method public static synthetic $r8$lambda$wKBCo5X0i8-vNFCItKZxW4BlN_4(Lcom/local/p5home/HomeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->search()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/local/p5home/HomeActivity;->main:Landroid/os/Handler;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/HomeActivity;->appsWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HomeActivity;->apps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HomeActivity;->frequent:Ljava/util/List;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/local/p5home/HomeActivity;->renderedMusicProvider:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/local/p5home/HomeActivity;->theme:I

    .line 7
    new-instance v0, Lcom/local/p5home/HomeActivity$1;

    invoke-direct {v0, p0}, Lcom/local/p5home/HomeActivity$1;-><init>(Lcom/local/p5home/HomeActivity;)V

    iput-object v0, p0, Lcom/local/p5home/HomeActivity;->tick:Ljava/lang/Runnable;

    new-instance v0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda28;-><init>(Lcom/local/p5home/HomeActivity;)V

    iput-object v0, p0, Lcom/local/p5home/HomeActivity;->autoCheck:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lcom/local/p5home/HomeActivity$2;

    invoke-direct {v0, p0}, Lcom/local/p5home/HomeActivity$2;-><init>(Lcom/local/p5home/HomeActivity;)V

    iput-object v0, p0, Lcom/local/p5home/HomeActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/local/p5home/HomeActivity;)Z
    .registers 1

    .line 4
    iget-boolean p0, p0, Lcom/local/p5home/HomeActivity;->dead:Z

    return p0
.end method

.method static synthetic access$100(Lcom/local/p5home/HomeActivity;)Z
    .registers 1

    .line 4
    iget-boolean p0, p0, Lcom/local/p5home/HomeActivity;->resumed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/local/p5home/HomeActivity;)V
    .registers 1

    .line 4
    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->updateStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/local/p5home/HomeActivity;)Landroid/os/Handler;
    .registers 1

    .line 4
    iget-object p0, p0, Lcom/local/p5home/HomeActivity;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/local/p5home/HomeActivity;)V
    .registers 1

    .line 4
    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->build()V

    return-void
.end method

.method static synthetic access$502(Lcom/local/p5home/HomeActivity;Z)Z
    .registers 2

    .line 4
    iput-boolean p1, p0, Lcom/local/p5home/HomeActivity;->wakePending:Z

    return p1
.end method

.method static synthetic access$600(Lcom/local/p5home/HomeActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 4
    iget-object p0, p0, Lcom/local/p5home/HomeActivity;->autoCheck:Ljava/lang/Runnable;

    return-object p0
.end method

.method private allApps()V
    .registers 12

    .line 99
    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/local/p5home/HomeActivity;->apps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v2, "\u6682\u65e0\u53ef\u542f\u52a8\u5e94\u7528\uff0c\u70b9\u51fb\u5237\u65b0\u91cd\u65b0\u8bfb\u53d6\u3002"

    const/16 v3, 0x1e

    invoke-static {p0, v2, v3, v1}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1d
    const/4 v1, 0x1

    new-array v2, v1, [Lcom/local/p5home/Ui$PanelDialog;

    iget-object v3, p0, Lcom/local/p5home/HomeActivity;->apps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_aa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/local/p5home/HomeActivity$AppItem;

    invoke-static {p0}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {p0, v7}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {p0, v9}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v10

    invoke-static {p0, v7}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v9}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v6, v8, v10, v7, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v8, v4, Lcom/local/p5home/HomeActivity$AppItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42900000    # 72.0f

    invoke-static {p0, v9}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v10

    invoke-static {p0, v9}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v8, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v7, 0x18

    invoke-static {p0, v6, v7}, Lcom/local/p5home/Ui;->side(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    iget-object v7, v4, Lcom/local/p5home/HomeActivity$AppItem;->label:Ljava/lang/String;

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v8

    iget v8, v8, Lcom/local/p5home/Ui$Palette;->text:I

    const/16 v9, 0x20

    invoke-static {p0, v7, v9, v8}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, -0x2

    invoke-direct {v8, v5, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v5, 0x42e80000    # 116.0f

    invoke-static {p0, v5}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    new-instance v5, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda16;

    invoke-direct {v5, p0, v2, v4}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda16;-><init>(Lcom/local/p5home/HomeActivity;[Lcom/local/p5home/Ui$PanelDialog;Lcom/local/p5home/HomeActivity$AppItem;)V

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->line(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto/16 :goto_26

    :cond_aa
    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v1

    const-string v3, "\u5e94\u7528"

    invoke-virtual {v1, v3}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setView(Landroid/view/View;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "\u5173\u95ed"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    new-instance v1, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda17;-><init>(Lcom/local/p5home/HomeActivity;)V

    const-string v3, "\u5237\u65b0\u5217\u8868"

    invoke-virtual {v0, v3, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelDialog;->show()V

    return-void
.end method

.method private varargs app([Ljava/lang/String;)Lcom/local/p5home/HomeActivity$AppItem;
    .registers 8

    .line 34
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_24

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/local/p5home/HomeActivity;->apps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/local/p5home/HomeActivity$AppItem;

    iget-object v5, v4, Lcom/local/p5home/HomeActivity$AppItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    return-object v4

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    const/4 p1, 0x0

    return-object p1
.end method

.method private ask()V
    .registers 13

    .line 33
    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->config()Lcom/local/p5home/AppConfig;

    move-result-object v0

    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->hasApiKey(Landroid/content/Context;)Z

    move-result v1

    iget-boolean v2, v0, Lcom/local/p5home/AppConfig;->doubaoEnabled:Z

    const-string v3, "\u53d6\u6d88"

    const-string v4, "chat"

    const/4 v5, 0x0

    if-eqz v2, :cond_e2

    if-eqz v1, :cond_e2

    iget-object v1, v0, Lcom/local/p5home/AppConfig;->modelId:Ljava/lang/String;

    if-eqz v1, :cond_e2

    iget-object v1, v0, Lcom/local/p5home/AppConfig;->modelId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    goto/16 :goto_e2

    :cond_25
    const-string v1, "\u60f3\u95ee\u8c46\u5305\u4ec0\u4e48\uff1f"

    const-string v2, ""

    const/4 v6, 0x1

    invoke-static {p0, v1, v2, v6}, Lcom/local/p5home/Ui;->input(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v1

    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setMinLines(I)V

    new-array v6, v6, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/16 v8, 0x3e8

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v7, 0x12

    invoke-static {p0, v6, v7}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v7

    iget v7, v7, Lcom/local/p5home/Ui$Palette;->warning:I

    const/16 v11, 0x1c

    invoke-static {p0, v2, v11, v7}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/local/p5home/Ui$PanelBuilder;->setIcon(Ljava/lang/String;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v4

    const-string v7, "\u95ee\u8c46\u5305"

    invoke-virtual {v4, v7}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/local/p5home/Ui$PanelBuilder;->setView(Landroid/view/View;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v4

    invoke-virtual {v4, v3, v5}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u95ee\u9898"

    invoke-virtual {v3, v4, v5}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object v3

    new-instance v4, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, v2, v3}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda9;-><init>(Lcom/local/p5home/HomeActivity;Landroid/widget/TextView;Lcom/local/p5home/Ui$PanelDialog;)V

    const-string v5, "\u5524\u9192\u5c0fP\u8bed\u97f3\u63d0\u95ee"

    invoke-static {p0, v5, v8, v4}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0xc

    invoke-static {p0, v6, v4}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5524\u9192\u540e\u8bf7\u8bf4\u201c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/local/p5home/AppConfig;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u201d\u548c\u95ee\u9898\uff1b\u4e5f\u53ef\u4ee5\u76f4\u63a5\u8f93\u5165\u6587\u5b57\u3002"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v4

    iget v4, v4, Lcom/local/p5home/Ui$Palette;->muted:I

    const/16 v5, 0x1a

    invoke-static {p0, v0, v5, v4}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda10;-><init>(Lcom/local/p5home/HomeActivity;)V

    invoke-virtual {v3, v0}, Lcom/local/p5home/Ui$PanelDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v3, v9}, Lcom/local/p5home/Ui$PanelDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v4, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda11;-><init>(Lcom/local/p5home/HomeActivity;Landroid/widget/EditText;Landroid/widget/TextView;Lcom/local/p5home/Ui$PanelDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3}, Lcom/local/p5home/Ui$PanelDialog;->show()V

    return-void

    :cond_e2
    :goto_e2
    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/local/p5home/Ui$PanelBuilder;->setIcon(Ljava/lang/String;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "\u5b8c\u6210\u8c46\u5305\u914d\u7f6e"

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "\u5728\u8bbe\u7f6e\u4e2d\u5f00\u542f\u8c46\u5305\u95ee\u7b54\uff0c\u5e76\u4fdd\u5b58\u6a21\u578b ID \u4e0e API Key\u3002"

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    new-instance v1, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda8;-><init>(Lcom/local/p5home/HomeActivity;)V

    const-string v2, "\u6253\u5f00\u8bbe\u7f6e"

    invoke-virtual {v0, v2, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelBuilder;->show()Lcom/local/p5home/Ui$PanelDialog;

    return-void
.end method

.method private build()V
    .registers 17

    .line 17
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->install(Landroid/app/Activity;)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->themeSignature(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/local/p5home/HomeActivity;->theme:I

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget v4, v1, Lcom/local/p5home/Ui$Palette;->bg:I

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    iput-object v4, v0, Lcom/local/p5home/HomeActivity;->root:Landroid/widget/LinearLayout;

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {v0, v5}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x42280000    # 42.0f

    invoke-static {v0, v7}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v8

    invoke-static {v0, v5}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v5

    const/high16 v9, 0x42180000    # 38.0f

    invoke-static {v0, v9}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v4, v6, v8, v5, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v4, v0, Lcom/local/p5home/HomeActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/local/p5home/HomeActivity;->setContentView(Landroid/view/View;)V

    .line 18
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Landroid/widget/TextClock;

    invoke-direct {v5, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;)V

    const-string v6, "HH:mm"

    invoke-virtual {v5, v6}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x42e80000    # 116.0f

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->scale(Landroid/content/Context;)F

    move-result v8

    mul-float/2addr v8, v6

    invoke-virtual {v5, v8}, Landroid/widget/TextClock;->setTextSize(F)V

    iget v6, v1, Lcom/local/p5home/Ui$Palette;->text:I

    invoke-virtual {v5, v6}, Landroid/widget/TextClock;->setTextColor(I)V

    const-string v6, "sans-serif"

    invoke-static {v6, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextClock;->setIncludeFontPadding(Z)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v8, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x10

    invoke-static {v0, v4, v5}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    const/16 v5, 0x20

    iget v8, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v12, ""

    invoke-static {v0, v12, v5, v8}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, v0, Lcom/local/p5home/HomeActivity;->date:Landroid/widget/TextView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v8, 0x43500000    # 208.0f

    invoke-static {v0, v8}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v13

    const/16 v14, 0x33

    invoke-direct {v5, v10, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v13, 0x437a0000    # 250.0f

    invoke-static {v0, v13}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v13

    iput v13, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-string v5, "P5"

    const/16 v13, 0x40

    invoke-static {v0, v5, v13}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    const-string v13, "sans-serif-medium"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v5, 0xc

    invoke-static {v0, v4, v5}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    iget v5, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v13, "\u8f7b\u88c5\u51fa\u53d1"

    const/16 v15, 0x1c

    invoke-static {v0, v13, v15, v5}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v13, 0x43520000    # 210.0f

    invoke-static {v0, v13}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v13

    const/16 v6, 0x35

    invoke-direct {v5, v13, v11, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/local/p5home/HomeActivity;->root:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v8}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/local/p5home/HomeActivity;->root:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v15}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 20
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget v4, v1, Lcom/local/p5home/Ui$Palette;->card:I

    const/16 v5, 0x1e

    invoke-static {v0, v4, v5}, Lcom/local/p5home/Ui;->outline(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v14, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f020002

    invoke-static {v6, v8, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_15c

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v0, v4}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-boolean v4, v1, Lcom/local/p5home/Ui$Palette;->dark:Z

    if-eqz v4, :cond_14a

    const v4, 0x3f59999a    # 0.85f

    goto :goto_14d

    :cond_14a
    const v4, 0x3e75c28f    # 0.24f

    :goto_14d
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_169

    :cond_15c
    new-instance v4, Lcom/local/p5home/Ui$MapArt;

    invoke-direct {v4, v0}, Lcom/local/p5home/Ui$MapArt;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_169
    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-static {v0, v7}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v0, v9}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v8

    invoke-static {v0, v7}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v9

    const/4 v13, 0x0

    invoke-virtual {v4, v6, v8, v9, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v6, 0x36

    invoke-static {v0, v12, v6}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, v0, Lcom/local/p5home/HomeActivity;->navName:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v6, v0, Lcom/local/p5home/HomeActivity;->navName:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v6, v0, Lcom/local/p5home/HomeActivity;->navName:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v6, 0xe

    invoke-static {v0, v4, v6}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    const/16 v8, 0x28

    iget v9, v1, Lcom/local/p5home/Ui$Palette;->text:I

    const-string v13, "\u51c6\u5907\u51fa\u53d1"

    invoke-static {v0, v13, v8, v9}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v8, 0x12

    invoke-static {v0, v4, v8}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    iget v8, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {v0, v12, v5, v8}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, v0, Lcom/local/p5home/HomeActivity;->navDetail:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v5, v0, Lcom/local/p5home/HomeActivity;->navDetail:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x30

    invoke-direct {v5, v10, v11, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-static {v0, v7}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v0, v7}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x41d00000    # 26.0f

    invoke-static {v0, v8}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v5, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda20;

    invoke-direct {v5, v0}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda20;-><init>(Lcom/local/p5home/HomeActivity;)V

    const-string v7, "\u6253\u5f00\u5bfc\u822a"

    invoke-static {v0, v7, v3, v5}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v5

    new-instance v7, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda21;

    invoke-direct {v7, v0}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda21;-><init>(Lcom/local/p5home/HomeActivity;)V

    const-string v8, "\u641c\u7d22\u76ee\u7684\u5730"

    invoke-static {v0, v8, v9, v7}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v7

    filled-new-array {v5, v7}, [Landroid/widget/Button;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/local/p5home/Ui;->buttons(Landroid/content/Context;Landroid/widget/LinearLayout;[Landroid/widget/Button;)V

    const-string v5, "\u539f\u8f66\u5730\u56fe  \u203a"

    iget v7, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {v0, v5, v15, v7}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v0, v7}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v0, v8}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x41800000    # 16.0f

    invoke-static {v0, v9}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v9

    const/4 v13, 0x0

    invoke-virtual {v5, v13, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v7, 0x42900000    # 72.0f

    invoke-static {v0, v7}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMinHeight(I)V

    new-instance v7, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda22;

    invoke-direct {v7, v0}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda22;-><init>(Lcom/local/p5home/HomeActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x50

    invoke-direct {v5, v10, v11, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/local/p5home/HomeActivity;->root:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x44070000    # 540.0f

    invoke-static {v0, v7}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/local/p5home/HomeActivity;->root:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v15}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 21
    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, v0, Lcom/local/p5home/HomeActivity;->appsArea:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/local/p5home/HomeActivity;->root:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/HomeActivity;->renderShortcuts()V

    iget-object v2, v0, Lcom/local/p5home/HomeActivity;->root:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v15}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 22
    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->panel(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v8, 0x4

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f020000

    invoke-static {v8, v9, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_289

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_295

    :cond_289
    new-instance v7, Lcom/local/p5home/Ui$Symbol;

    const-string v8, "chat"

    iget v9, v1, Lcom/local/p5home/Ui$Palette;->accent:I

    invoke-direct {v7, v8, v9}, Lcom/local/p5home/Ui$Symbol;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_295
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42f80000    # 124.0f

    invoke-static {v0, v8}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v0, v8}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x18

    invoke-static {v0, v4, v5}, Lcom/local/p5home/Ui;->side(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    const-string v8, "\u5c0fP \u00b7 \u8c46\u5305"

    const/16 v9, 0x24

    invoke-static {v0, v8, v9}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {v0, v7, v6}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    iget v6, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {v0, v12, v15, v6}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, v0, Lcom/local/p5home/HomeActivity;->assistantState:Landroid/widget/TextView;

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v6, v0, Lcom/local/p5home/HomeActivity;->assistantState:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v6, v9, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v7, 0x2bc

    if-ge v6, v7, :cond_2ed

    goto :goto_2ee

    :cond_2ed
    const/4 v3, 0x0

    :goto_2ee
    if-eqz v3, :cond_2f5

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    goto :goto_2f6

    :cond_2f5
    move-object v6, v4

    :goto_2f6
    new-instance v7, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda23;

    invoke-direct {v7, v0}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda23;-><init>(Lcom/local/p5home/HomeActivity;)V

    const-string v9, "\u95ee\u8c46\u5305"

    const/4 v13, 0x0

    invoke-static {v0, v9, v13, v7}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v7

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_307

    goto :goto_30d

    :cond_307
    const/high16 v13, 0x43580000    # 216.0f

    invoke-static {v0, v13}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v13

    :goto_30d
    if-eqz v3, :cond_310

    goto :goto_311

    :cond_310
    const/4 v8, 0x0

    :goto_311
    invoke-direct {v9, v13, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v7, 0x14

    invoke-static {v0, v6, v7}, Lcom/local/p5home/Ui;->side(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance v8, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda24;

    invoke-direct {v8, v0}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda24;-><init>(Lcom/local/p5home/HomeActivity;)V

    const-string v9, "mic"

    const-string v13, "\u5524\u9192\u5c0fP\u8bed\u97f3\u63d0\u95ee"

    invoke-static {v0, v9, v13, v8}, Lcom/local/p5home/Ui;->iconButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {v0, v6, v7}, Lcom/local/p5home/Ui;->side(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance v8, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda25;

    invoke-direct {v8, v0}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda25;-><init>(Lcom/local/p5home/HomeActivity;)V

    const-string v9, "settings"

    const-string v13, "\u8bbe\u7f6e"

    invoke-static {v0, v9, v13, v8}, Lcom/local/p5home/Ui;->iconButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v3, :cond_354

    invoke-static {v0, v2, v7}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_354
    const/16 v3, 0x16

    invoke-static {v0, v2, v3}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    const/16 v3, 0x1b

    iget v4, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {v0, v12, v3, v4}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/local/p5home/HomeActivity;->assistantDetail:Landroid/widget/TextView;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v3, v0, Lcom/local/p5home/HomeActivity;->assistantDetail:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, v0, Lcom/local/p5home/HomeActivity;->root:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/local/p5home/HomeActivity;->root:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v5}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    const/16 v2, 0x1a

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {v0, v12, v2, v1}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/HomeActivity;->operation:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/local/p5home/HomeActivity;->root:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/local/p5home/HomeActivity;->operation:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/HomeActivity;->updateStatus()V

    iget-object v1, v0, Lcom/local/p5home/HomeActivity;->apps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_39e

    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/HomeActivity;->loadApps()V

    .line 23
    :cond_39e
    return-void
.end method

.method private chooseShortcut(I)V
    .registers 14

    .line 82
    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/local/p5home/Ui$PanelDialog;

    .line 83
    new-instance v3, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, v2, p1}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda12;-><init>(Lcom/local/p5home/HomeActivity;[Lcom/local/p5home/Ui$PanelDialog;I)V

    const-string v4, "\u5237\u65b0\u5e94\u7528\u5217\u8868"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5, v3}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0xc

    invoke-static {p0, v0, v3}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 84
    const-string v4, "@apps"

    const-string v8, "\u5e94\u7528\u5217\u8868"

    filled-new-array {v4, v8}, [Ljava/lang/String;

    move-result-object v4

    const-string v8, "@vehicle"

    const-string v9, "\u8f66\u8f86\u8bbe\u7f6e"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    filled-new-array {v4, v8}, [[Ljava/lang/String;

    move-result-object v4

    move v8, v5

    :goto_37
    const/4 v9, 0x2

    if-ge v8, v9, :cond_57

    aget-object v9, v4, v8

    aget-object v10, v9, v5

    aget-object v9, v9, v1

    new-instance v11, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda13;

    invoke-direct {v11, p0, p1, v10, v2}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda13;-><init>(Lcom/local/p5home/HomeActivity;ILjava/lang/String;[Lcom/local/p5home/Ui$PanelDialog;)V

    invoke-static {p0, v9, v5, v11}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v9

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0, v0, v3}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    .line 85
    :cond_57
    iget-object v3, p0, Lcom/local/p5home/HomeActivity;->apps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/local/p5home/HomeActivity$AppItem;

    invoke-static {p0}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {p0, v8}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x41800000    # 16.0f

    invoke-static {p0, v10}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v11

    invoke-static {p0, v8}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v8

    invoke-static {p0, v10}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v6, v9, v11, v8, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v9, v4, Lcom/local/p5home/HomeActivity$AppItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x428c0000    # 70.0f

    invoke-static {p0, v10}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v11

    invoke-static {p0, v10}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v9, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0x14

    invoke-static {p0, v6, v8}, Lcom/local/p5home/Ui;->side(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    iget-object v8, v4, Lcom/local/p5home/HomeActivity$AppItem;->label:Ljava/lang/String;

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v9

    iget v9, v9, Lcom/local/p5home/Ui$Palette;->text:I

    const/16 v10, 0x1e

    invoke-static {p0, v8, v10, v9}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v9, v5, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    new-instance v8, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda14;

    invoke-direct {v8, p0, p1, v4, v2}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda14;-><init>(Lcom/local/p5home/HomeActivity;ILcom/local/p5home/HomeActivity$AppItem;[Lcom/local/p5home/Ui$PanelDialog;)V

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->line(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto :goto_5d

    .line 86
    :cond_d4
    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u9009\u62e9\u5feb\u6377\u5e94\u7528 \u00b7 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setView(Landroid/view/View;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    new-instance v0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda15;-><init>(Lcom/local/p5home/HomeActivity;)V

    const-string v1, "\u8fd4\u56de"

    invoke-virtual {p1, v1, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelDialog;->show()V

    .line 87
    return-void
.end method

.method private config()Lcom/local/p5home/AppConfig;
    .registers 2

    .line 16
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method private isHome(Landroid/content/Intent;)Z
    .registers 4

    .line 16
    if-eqz p1, :cond_18

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method static synthetic lambda$loadApps$23(Ljava/text/Collator;Lcom/local/p5home/HomeActivity$AppItem;Lcom/local/p5home/HomeActivity$AppItem;)I
    .registers 3

    .line 97
    iget-object p1, p1, Lcom/local/p5home/HomeActivity$AppItem;->label:Ljava/lang/String;

    iget-object p2, p2, Lcom/local/p5home/HomeActivity$AppItem;->label:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private launch(Lcom/local/p5home/HomeActivity$AppItem;)V
    .registers 4

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    :try_start_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/local/p5home/HomeActivity$AppItem;->launch:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->launch(Landroid/app/Activity;Landroid/content/Intent;)V

    iget-object v0, p1, Lcom/local/p5home/HomeActivity$AppItem;->pkg:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/local/p5home/ShortcutStore;->record(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u8bf7\u6c42\u6253\u5f00 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/local/p5home/HomeActivity$AppItem;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/local/p5home/HomeActivity;->notice(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_2a} :catch_2b

    goto :goto_38

    :catch_2b
    move-exception p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    const-string v0, "\u5e94\u7528\u672a\u6253\u5f00"

    invoke-static {p1}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    return-void
.end method

.method private loadApps()V
    .registers 2

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/local/p5home/HomeActivity;->loadApps(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadApps(Ljava/lang/Runnable;)V
    .registers 5

    .line 97
    iget v0, p0, Lcom/local/p5home/HomeActivity;->generation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/local/p5home/HomeActivity;->generation:I

    iget-object v1, p0, Lcom/local/p5home/HomeActivity;->appsWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda34;

    invoke-direct {v2, p0, v0, p1}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda34;-><init>(Lcom/local/p5home/HomeActivity;ILjava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private maybeAutoLaunch()V
    .registers 12

    .line 27
    iget-boolean v0, p0, Lcom/local/p5home/HomeActivity;->dead:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/local/p5home/HomeActivity;->resumed:Z

    if-nez v0, :cond_9

    goto :goto_2d

    :cond_9
    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->config()Lcom/local/p5home/AppConfig;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-boolean v1, p0, Lcom/local/p5home/HomeActivity;->pendingHome:Z

    iget-boolean v2, p0, Lcom/local/p5home/HomeActivity;->wakePending:Z

    iget-boolean v3, v0, Lcom/local/p5home/AppConfig;->autoLaunchNav:Z

    iget-boolean v4, v0, Lcom/local/p5home/AppConfig;->restoreAfterWake:Z

    iget-wide v5, p0, Lcom/local/p5home/HomeActivity;->lastAutoAt:J

    move-wide v7, v9

    invoke-static/range {v1 .. v8}, Lcom/local/p5home/HomeActivity;->shouldAutoLaunch(ZZZZJJ)Z

    move-result v0

    iget-boolean v1, p0, Lcom/local/p5home/HomeActivity;->pendingHome:Z

    if-eqz v1, :cond_hotspot_done

    invoke-static {p0}, Lcom/local/p5home/HotspotController;->enableIfRequested(Landroid/content/Context;)V

    :cond_hotspot_done
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/local/p5home/HomeActivity;->wakePending:Z

    iput-boolean v1, p0, Lcom/local/p5home/HomeActivity;->pendingHome:Z

    if-eqz v0, :cond_2d

    iput-wide v9, p0, Lcom/local/p5home/HomeActivity;->lastAutoAt:J

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/local/p5home/HomeActivity;->openNavigation(Z)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method private notice(Ljava/lang/String;)V
    .registers 3

    .line 25
    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->operation:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/local/p5home/HomeActivity;->operation:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method private openNavigation(Z)V
    .registers 6

    .line 28
    const-string v0, "\u5bfc\u822a\u672a\u6253\u5f00"

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    const/4 v1, 0x0

    :try_start_6
    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->config()Lcom/local/p5home/AppConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/local/p5home/Navigator;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object v2

    iget-object v3, v2, Lcom/local/p5home/Navigator$Result;->message:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/local/p5home/HomeActivity;->notice(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/local/p5home/Navigator$Result;->accepted:Z

    if-nez v3, :cond_49

    iput-boolean v1, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    if-nez p1, :cond_49

    iget-object v2, v2, Lcom/local/p5home/Navigator$Result;->message:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_22} :catch_23

    goto :goto_49

    :catch_23
    move-exception v2

    iput-boolean v1, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5bfc\u822a\u672a\u6253\u5f00\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/local/p5home/HomeActivity;->notice(Ljava/lang/String;)V

    if-nez p1, :cond_49

    invoke-static {v2}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    :goto_49
    return-void
.end method

.method private openOriginal()V
    .registers 5

    .line 29
    const-string v0, "\u539f\u8f66\u5730\u56fe\u672a\u6253\u5f00"

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    const/4 v1, 0x0

    :try_start_6
    const-string v2, "com.xiaopeng.montecarlo"

    invoke-static {p0, v2}, Lcom/local/p5home/Navigator;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object v2

    iget-object v3, v2, Lcom/local/p5home/Navigator$Result;->message:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/local/p5home/HomeActivity;->notice(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/local/p5home/Navigator$Result;->accepted:Z

    if-nez v3, :cond_27

    iput-boolean v1, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    iget-object v2, v2, Lcom/local/p5home/Navigator$Result;->message:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_1c} :catch_1d

    goto :goto_27

    :catch_1d
    move-exception v2

    iput-boolean v1, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    invoke-static {v2}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    :goto_27
    return-void
.end method

.method private openVehicleSettings()V
    .registers 3

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    :try_start_3
    invoke-static {p0}, Lcom/local/p5home/DeviceActions;->openOemSettings(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_14

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    const-string v1, "\u8f66\u8f86\u8bbe\u7f6e\u672a\u6253\u5f00"

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-void
.end method

.method private refreshUsage()V
    .registers 9

    .line 91
    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->loadApps()V

    return-void

    .line 92
    :cond_c
    iget v0, p0, Lcom/local/p5home/HomeActivity;->usageGeneration:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/local/p5home/HomeActivity;->usageGeneration:I

    iget v5, p0, Lcom/local/p5home/HomeActivity;->generation:I

    iget v6, p0, Lcom/local/p5home/HomeActivity;->appListRevision:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/local/p5home/HomeActivity$AppItem;

    iget-object v1, v1, Lcom/local/p5home/HomeActivity$AppItem;->pkg:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 93
    :cond_33
    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->appsWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda30;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda30;-><init>(Lcom/local/p5home/HomeActivity;Ljava/util/List;III)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method private renderShortcuts()V
    .registers 17

    .line 50
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/local/p5home/HomeActivity;->appsArea:Landroid/widget/LinearLayout;

    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/HomeActivity;->config()Lcom/local/p5home/AppConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    iput-object v1, v0, Lcom/local/p5home/HomeActivity;->renderedMusicProvider:Ljava/lang/String;

    iget-object v1, v0, Lcom/local/p5home/HomeActivity;->appsArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v2, 0x258

    const/4 v3, 0x4

    if-ge v1, v2, :cond_25

    const/4 v1, 0x2

    goto :goto_26

    :cond_25
    move v1, v3

    .line 51
    :goto_26
    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/HomeActivity;->shortcutValues()[Ljava/lang/String;

    move-result-object v2

    .line 52
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2c
    if-ge v6, v3, :cond_152

    .line 53
    rem-int v7, v6, v1

    const/4 v8, -0x1

    const/4 v9, -0x2

    if-nez v7, :cond_4b

    if-lez v6, :cond_3d

    iget-object v5, v0, Lcom/local/p5home/HomeActivity;->appsArea:Landroid/widget/LinearLayout;

    const/16 v7, 0x18

    invoke-static {v0, v5, v7}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    :cond_3d
    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    iget-object v7, v0, Lcom/local/p5home/HomeActivity;->appsArea:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    :cond_4b
    aget-object v7, v2, v6

    invoke-direct {v0, v7}, Lcom/local/p5home/HomeActivity;->shortcutApp(Ljava/lang/String;)Lcom/local/p5home/HomeActivity$AppItem;

    move-result-object v10

    .line 55
    const-string v11, "@apps"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "@phone"

    const-string v14, "@vehicle"

    if-eqz v12, :cond_60

    const-string v12, "\u5e94\u7528"

    goto :goto_84

    :cond_60
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_69

    const-string v12, "\u8f66\u8f86\u8bbe\u7f6e"

    goto :goto_84

    :cond_69
    if-eqz v10, :cond_6e

    iget-object v12, v10, Lcom/local/p5home/HomeActivity$AppItem;->label:Ljava/lang/String;

    goto :goto_84

    :cond_6e
    const-string v12, "@music"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_79

    const-string v12, "\u97f3\u4e50"

    goto :goto_84

    :cond_79
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_82

    const-string v12, "\u7535\u8bdd"

    goto :goto_84

    :cond_82
    const-string v12, "\u5e94\u7528\u4e0d\u53ef\u7528"

    .line 56
    :goto_84
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8d

    const-string v11, "apps"

    goto :goto_a1

    :cond_8d
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_96

    const-string v11, "car"

    goto :goto_a1

    :cond_96
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9f

    const-string v11, "phone"

    goto :goto_a1

    :cond_9f
    const-string v11, "music"

    .line 57
    :goto_a1
    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v13

    const/16 v14, 0x11

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v15, 0x41200000    # 10.0f

    invoke-static {v0, v15}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v0, v15}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v15}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v15

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v0, v8}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v13, v3, v4, v15, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 58
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-nez v10, :cond_d4

    new-instance v4, Lcom/local/p5home/Ui$Symbol;

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v8

    iget v8, v8, Lcom/local/p5home/Ui$Palette;->accent:I

    invoke-direct {v4, v11, v8}, Lcom/local/p5home/Ui$Symbol;-><init>(Ljava/lang/String;I)V

    goto :goto_d6

    :cond_d4
    iget-object v4, v10, Lcom/local/p5home/HomeActivity$AppItem;->icon:Landroid/graphics/drawable/Drawable;

    :goto_d6
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 60
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x43000000    # 128.0f

    invoke-static {v0, v8}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v0, v8}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v4, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x14

    invoke-static {v0, v13, v3}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 61
    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v3

    iget v3, v3, Lcom/local/p5home/Ui$Palette;->text:I

    const/16 v4, 0x20

    invoke-static {v0, v12, v4, v3}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v8, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\uff0c\u957f\u6309\u8bbe\u7f6e\u5feb\u6377\u5e94\u7528"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 63
    new-instance v3, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda31;

    invoke-direct {v3, v0, v7, v10}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda31;-><init>(Lcom/local/p5home/HomeActivity;Ljava/lang/String;Lcom/local/p5home/HomeActivity$AppItem;)V

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    new-instance v3, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda32;

    invoke-direct {v3, v0}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda32;-><init>(Lcom/local/p5home/HomeActivity;)V

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v3, v7, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v13, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x4

    goto/16 :goto_2c

    .line 66
    :cond_152
    return-void
.end method

.method private search()V
    .registers 7

    .line 31
    const-string v0, "\u5730\u70b9\u540d\u79f0\u6216\u5730\u5740"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/local/p5home/Ui;->input(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x12

    invoke-static {p0, v2, v3}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v3

    iget v3, v3, Lcom/local/p5home/Ui$Palette;->warning:I

    const/16 v4, 0x1c

    invoke-static {p0, v1, v4, v3}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v3

    const-string v4, "nav"

    invoke-virtual {v3, v4}, Lcom/local/p5home/Ui$PanelBuilder;->setIcon(Ljava/lang/String;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v3

    const-string v4, "\u641c\u7d22\u76ee\u7684\u5730"

    invoke-virtual {v3, v4}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/local/p5home/Ui$PanelBuilder;->setView(Landroid/view/View;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v2

    const-string v3, "\u53d6\u6d88"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u5230\u5730\u56fe"

    invoke-virtual {v2, v3, v4}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/local/p5home/Ui$PanelDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda18;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda18;-><init>(Lcom/local/p5home/HomeActivity;Landroid/widget/EditText;Landroid/widget/TextView;Lcom/local/p5home/Ui$PanelDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Lcom/local/p5home/Ui$PanelDialog;->show()V

    return-void
.end method

.method private settings()V
    .registers 3

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/local/p5home/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->launch(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_13} :catch_14

    goto :goto_21

    :catch_14
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    const-string v1, "\u8bbe\u7f6e\u672a\u6253\u5f00"

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    return-void
.end method

.method private shortcutApp(Ljava/lang/String;)Lcom/local/p5home/HomeActivity$AppItem;
    .registers 4

    .line 36
    const-string v0, "@music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->config()Lcom/local/p5home/AppConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/local/p5home/MusicRouter;->packageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.xiaopeng.musicradio"

    const-string v1, "com.xiaopeng.music"

    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/local/p5home/HomeActivity;->app([Ljava/lang/String;)Lcom/local/p5home/HomeActivity$AppItem;

    move-result-object p1

    return-object p1

    .line 37
    :cond_1f
    const-string v0, "@phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string p1, "com.xiaopeng.btphone"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/local/p5home/HomeActivity;->app([Ljava/lang/String;)Lcom/local/p5home/HomeActivity$AppItem;

    move-result-object p1

    return-object p1

    .line 38
    :cond_32
    const-string v0, "@vehicle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string p1, "com.xiaopeng.car.settings"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/local/p5home/HomeActivity;->app([Ljava/lang/String;)Lcom/local/p5home/HomeActivity$AppItem;

    move-result-object p1

    return-object p1

    .line 39
    :cond_45
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/local/p5home/HomeActivity;->app([Ljava/lang/String;)Lcom/local/p5home/HomeActivity$AppItem;

    move-result-object p1

    return-object p1
.end method

.method private shortcutSettings()V
    .registers 12

    .line 68
    iget-boolean v0, p0, Lcom/local/p5home/HomeActivity;->dead:Z

    if-nez v0, :cond_10b

    invoke-virtual {p0}, Lcom/local/p5home/HomeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_10b

    :cond_c
    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/local/p5home/Ui$PanelDialog;

    .line 69
    invoke-static {p0}, Lcom/local/p5home/ShortcutStore;->automatic(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {p0}, Lcom/local/p5home/ShortcutStore;->usageAccess(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "\u4f18\u5148\u4f7f\u7528\u8fd1 7 \u5929\u7cfb\u7edf\u8bb0\u5f55\uff0c\u7f3a\u5931\u65f6\u4f7f\u7528\u684c\u9762\u8bb0\u5f55"

    goto :goto_27

    :cond_22
    const-string v2, "\u6309\u8f7b\u684c\u9762\u6253\u5f00\u6b21\u6570\u6392\u5e8f \u00b7 \u53ef\u5f00\u542f\u7cfb\u7edf\u4f7f\u7528\u8bb0\u5f55"

    goto :goto_27

    :cond_25
    const-string v2, "\u81ea\u5b9a\u4e49 4 \u4e2a\u5feb\u6377\u4f4d\u7f6e \u00b7 \u957f\u6309\u5165\u53e3\u4e5f\u53ef\u8bbe\u7f6e"

    .line 70
    :goto_27
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v3

    iget v3, v3, Lcom/local/p5home/Ui$Palette;->muted:I

    const/16 v4, 0x1c

    invoke-static {p0, v2, v4, v3}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v2, 0x12

    invoke-static {p0, v0, v2}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 71
    invoke-static {p0}, Lcom/local/p5home/ShortcutStore;->automatic(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string v2, "\u5207\u6362\u4e3a\u81ea\u5b9a\u4e49"

    goto :goto_46

    :cond_44
    const-string v2, "\u81ea\u52a8\u663e\u793a\u9ad8\u9891\u5e94\u7528"

    :goto_46
    new-instance v3, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/local/p5home/HomeActivity;[Lcom/local/p5home/Ui$PanelDialog;)V

    const/4 v4, 0x0

    invoke-static {p0, v2, v4, v3}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x10

    invoke-static {p0, v0, v2}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 72
    invoke-static {p0}, Lcom/local/p5home/ShortcutStore;->automatic(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 73
    new-instance v3, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda2;-><init>(Lcom/local/p5home/HomeActivity;[Lcom/local/p5home/Ui$PanelDialog;)V

    const-string v7, "\u7cfb\u7edf\u4f7f\u7528\u8bb0\u5f55\u6743\u9650"

    invoke-static {p0, v7, v4, v3}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v3

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d6

    .line 75
    :cond_79
    move v3, v4

    :goto_7a
    const/4 v7, 0x4

    if-ge v3, v7, :cond_d6

    invoke-static {p0, v3}, Lcom/local/p5home/ShortcutStore;->slot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/local/p5home/HomeActivity;->shortcutApp(Ljava/lang/String;)Lcom/local/p5home/HomeActivity$AppItem;

    move-result-object v8

    const-string v9, "@apps"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_90

    const-string v7, "\u5e94\u7528\u5217\u8868"

    goto :goto_9f

    :cond_90
    const-string v9, "@vehicle"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9b

    const-string v7, "\u8f66\u8f86\u8bbe\u7f6e"

    goto :goto_9f

    :cond_9b
    if-eqz v8, :cond_9f

    iget-object v7, v8, Lcom/local/p5home/HomeActivity$AppItem;->label:Ljava/lang/String;

    .line 76
    :cond_9f
    :goto_9f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u4f4d\u7f6e "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " \u00b7 "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0, v1, v3}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda3;-><init>(Lcom/local/p5home/HomeActivity;[Lcom/local/p5home/Ui$PanelDialog;I)V

    invoke-static {p0, v7, v4, v8}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v3

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0xc

    invoke-static {p0, v0, v3}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 75
    move v3, v9

    goto :goto_7a

    .line 78
    :cond_d6
    :goto_d6
    invoke-static {p0, v0, v2}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance v2, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v1}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda4;-><init>(Lcom/local/p5home/HomeActivity;[Lcom/local/p5home/Ui$PanelDialog;)V

    const-string v3, "\u6062\u590d\u9ed8\u8ba4\u4f4d\u7f6e"

    invoke-static {p0, v3, v4, v2}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v2

    const-string v3, "\u684c\u9762\u5feb\u6377\u5e94\u7528"

    invoke-virtual {v2, v3}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setView(Landroid/view/View;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v2, "\u5173\u95ed"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelDialog;->show()V

    .line 80
    return-void

    .line 68
    :cond_10b
    :goto_10b
    return-void
.end method

.method private shortcutValues()[Ljava/lang/String;
    .registers 11

    .line 42
    invoke-static {p0}, Lcom/local/p5home/ShortcutStore;->automatic(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_1f

    invoke-static {p0, v1}, Lcom/local/p5home/ShortcutStore;->slot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3}, Lcom/local/p5home/ShortcutStore;->slot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/local/p5home/ShortcutStore;->slot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2}, Lcom/local/p5home/ShortcutStore;->slot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v3, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :cond_1f
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 44
    iget-object v4, p0, Lcom/local/p5home/HomeActivity;->frequent:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-ne v5, v2, :cond_38

    goto :goto_3e

    :cond_38
    add-int/lit8 v7, v5, 0x1

    aput-object v6, v0, v5

    move v5, v7

    goto :goto_29

    .line 45
    :cond_3e
    :goto_3e
    move v4, v1

    :goto_3f
    if-ge v4, v2, :cond_6a

    if-ge v5, v2, :cond_6a

    invoke-static {p0, v4}, Lcom/local/p5home/ShortcutStore;->slot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/local/p5home/HomeActivity;->shortcutApp(Ljava/lang/String;)Lcom/local/p5home/HomeActivity$AppItem;

    move-result-object v7

    if-nez v7, :cond_4e

    goto :goto_50

    :cond_4e
    iget-object v6, v7, Lcom/local/p5home/HomeActivity$AppItem;->pkg:Ljava/lang/String;

    :goto_50
    move v7, v1

    move v8, v7

    :goto_52
    if-ge v7, v5, :cond_60

    aget-object v9, v0, v7

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5d

    move v8, v3

    :cond_5d
    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    :cond_60
    if-nez v8, :cond_67

    add-int/lit8 v7, v5, 0x1

    aput-object v6, v0, v5

    move v5, v7

    :cond_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 46
    :cond_6a
    :goto_6a
    if-ge v5, v2, :cond_84

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@empty"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6a

    .line 47
    :cond_84
    const-string v1, "@apps"

    aput-object v1, v0, v2

    return-object v0
.end method

.method static shouldAutoLaunch(ZZZZJJ)Z
    .registers 8

    .line 26
    if-eqz p2, :cond_1c

    if-nez p0, :cond_8

    if-eqz p1, :cond_1c

    if-eqz p3, :cond_1c

    :cond_8
    const-wide/16 p0, 0x0

    cmp-long p0, p4, p0

    if-lez p0, :cond_1a

    cmp-long p0, p6, p4

    if-ltz p0, :cond_1a

    sub-long/2addr p6, p4

    const-wide/32 p0, 0xea60

    cmp-long p0, p6, p0

    if-ltz p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method private updateStatus()V
    .registers 8

    .line 24
    iget-boolean v0, p0, Lcom/local/p5home/HomeActivity;->dead:Z

    if-nez v0, :cond_13f

    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->navName:Landroid/widget/TextView;

    if-nez v0, :cond_a

    goto/16 :goto_13f

    :cond_a
    :try_start_a
    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->config()Lcom/local/p5home/AppConfig;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_124

    iget-object v1, p0, Lcom/local/p5home/HomeActivity;->date:Landroid/widget/TextView;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "M\u6708d\u65e5  EEEE"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_25
    iget-object v1, p0, Lcom/local/p5home/HomeActivity;->navName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/local/p5home/Navigator;->label(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_30} :catch_31

    goto :goto_39

    :catch_31
    move-exception v1

    iget-object v1, p0, Lcom/local/p5home/HomeActivity;->navName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_39
    iget-object v1, p0, Lcom/local/p5home/HomeActivity;->navDetail:Landroid/widget/TextView;

    iget-boolean v2, v0, Lcom/local/p5home/AppConfig;->autoLaunchNav:Z

    if-eqz v2, :cond_49

    iget-boolean v2, v0, Lcom/local/p5home/AppConfig;->restoreAfterWake:Z

    if-eqz v2, :cond_46

    const-string v2, "\u81ea\u52a8\u6253\u5f00 \u00b7 \u5524\u9192\u6062\u590d"

    goto :goto_4b

    :cond_46
    const-string v2, "\u8fdb\u5165\u684c\u9762\u81ea\u52a8\u6253\u5f00\u5bfc\u822a"

    goto :goto_4b

    :cond_49
    const-string v2, "\u9009\u62e9\u76ee\u7684\u5730\uff0c\u8ba9\u51fa\u884c\u66f4\u4ece\u5bb9"

    :goto_4b
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->bridge(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_53
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->hasApiKey(Landroid/content/Context;)Z

    move-result v3
    :try_end_57
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_57} :catch_58

    goto :goto_5a

    :catch_58
    move-exception v3

    move v3, v2

    :goto_5a
    if-eqz v3, :cond_6e

    iget-object v3, v0, Lcom/local/p5home/AppConfig;->modelId:Ljava/lang/String;

    if-eqz v3, :cond_6e

    iget-object v3, v0, Lcom/local/p5home/AppConfig;->modelId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6e

    const/4 v3, 0x1

    goto :goto_6f

    :cond_6e
    move v3, v2

    :goto_6f
    const-string v4, "hookReady"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "speechOutputReady"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-boolean v5, v0, Lcom/local/p5home/AppConfig;->doubaoEnabled:Z

    if-nez v5, :cond_82

    const-string v4, "\u8c46\u5305\u95ee\u7b54\u5df2\u5173\u95ed"

    goto :goto_99

    :cond_82
    if-nez v3, :cond_87

    const-string v4, "\u63a5\u53e3\u5f85\u914d\u7f6e"

    goto :goto_99

    :cond_87
    iget-boolean v5, v0, Lcom/local/p5home/AppConfig;->voiceEnabled:Z

    if-eqz v5, :cond_92

    if-eqz v4, :cond_92

    if-eqz v2, :cond_92

    const-string v4, "\u25cf \u5c0fP\u5df2\u63a5\u5165 \u00b7 \u64ad\u62a5\u5c31\u7eea"

    goto :goto_99

    :cond_92
    if-eqz v2, :cond_97

    const-string v4, "\u25cf \u53ef\u624b\u52a8\u63d0\u95ee"

    goto :goto_99

    :cond_97
    const-string v4, "\u7cfb\u7edf\u64ad\u62a5\u5f85\u5c31\u7eea"

    :goto_99
    iget-object v5, p0, Lcom/local/p5home/HomeActivity;->assistantState:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/local/p5home/HomeActivity;->assistantState:Landroid/widget/TextView;

    iget-boolean v5, v0, Lcom/local/p5home/AppConfig;->doubaoEnabled:Z

    if-eqz v5, :cond_af

    if-eqz v3, :cond_af

    if-eqz v2, :cond_af

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v2

    iget v2, v2, Lcom/local/p5home/Ui$Palette;->accent:I

    goto :goto_b5

    :cond_af
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v2

    iget v2, v2, Lcom/local/p5home/Ui$Palette;->muted:I

    :goto_b5
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "lastError"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "lastAnswer"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/local/p5home/HomeActivity;->assistantDetail:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/16 v6, 0x5a

    if-nez v5, :cond_d5

    invoke-static {v2, v6}, Lcom/local/p5home/Ui;->limited(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_108

    :cond_d5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e0

    invoke-static {v1, v6}, Lcom/local/p5home/Ui;->limited(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_108

    :cond_e0
    iget-boolean v1, v0, Lcom/local/p5home/AppConfig;->doubaoEnabled:Z

    if-nez v1, :cond_e7

    const-string v0, "\u5728\u8bbe\u7f6e\u4e2d\u542f\u7528\u8c46\u5305\u95ee\u7b54"

    goto :goto_108

    :cond_e7
    if-nez v3, :cond_ec

    const-string v0, "\u5728\u8bbe\u7f6e\u4e2d\u5b8c\u6210\u706b\u5c71\u65b9\u821f\u63a5\u53e3\u914d\u7f6e"

    goto :goto_108

    :cond_ec
    iget-boolean v1, v0, Lcom/local/p5home/AppConfig;->voiceEnabled:Z

    if-eqz v1, :cond_106

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e6\u53d1\u8bcd\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/local/p5home/AppConfig;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_108

    :cond_106
    const-string v0, "\u70b9\u51fb\u95ee\u8c46\u5305\uff0c\u8f93\u5165\u4f60\u7684\u95ee\u9898"

    :goto_108
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->assistantDetail:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11a

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    goto :goto_120

    :cond_11a
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->warning:I

    :goto_120
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :catch_124
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u914d\u7f6e\u8bfb\u53d6\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/local/p5home/HomeActivity;->notice(Ljava/lang/String;)V

    :cond_13f
    :goto_13f
    return-void
.end method

.method private voiceAsk()V
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->voiceWake:Lcom/local/p5home/OemVoiceWake;

    if-nez v0, :cond_b

    new-instance v0, Lcom/local/p5home/OemVoiceWake;

    invoke-direct {v0, p0}, Lcom/local/p5home/OemVoiceWake;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/local/p5home/HomeActivity;->voiceWake:Lcom/local/p5home/OemVoiceWake;

    :cond_b
    const-string v0, "\u6b63\u5728\u8bf7\u6c42\u5c0fP\u8bed\u97f3\uff0c\u8bf7\u7a0d\u5019\u2026"

    invoke-direct {p0, v0}, Lcom/local/p5home/HomeActivity;->notice(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->voiceWake:Lcom/local/p5home/OemVoiceWake;

    new-instance v1, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/local/p5home/OemVoiceWake;->start(Lcom/local/p5home/OemVoiceWake$Callback;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$allApps$27$com-local-g3home-HomeActivity([Lcom/local/p5home/Ui$PanelDialog;Lcom/local/p5home/HomeActivity$AppItem;Landroid/view/View;)V
    .registers 4

    .line 99
    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    invoke-direct {p0, p2}, Lcom/local/p5home/HomeActivity;->launch(Lcom/local/p5home/HomeActivity$AppItem;)V

    return-void
.end method

.method synthetic lambda$allApps$28$com-local-g3home-HomeActivity(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 99
    const-string p1, "\u6b63\u5728\u5237\u65b0\u5e94\u7528\u5217\u8868\u2026"

    invoke-direct {p0, p1}, Lcom/local/p5home/HomeActivity;->notice(Ljava/lang/String;)V

    new-instance p1, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda29;

    invoke-direct {p1, p0}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda29;-><init>(Lcom/local/p5home/HomeActivity;)V

    invoke-direct {p0, p1}, Lcom/local/p5home/HomeActivity;->loadApps(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$ask$5$com-local-g3home-HomeActivity(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 33
    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->settings()V

    return-void
.end method

.method synthetic lambda$ask$6$com-local-g3home-HomeActivity(Lcom/local/p5home/Ui$PanelDialog;Landroid/widget/TextView;ZLjava/lang/String;)V
    .registers 6

    .line 33
    iget-boolean v0, p0, Lcom/local/p5home/HomeActivity;->dead:Z

    if-nez v0, :cond_17

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_17

    :cond_b
    if-eqz p3, :cond_14

    invoke-direct {p0, p4}, Lcom/local/p5home/HomeActivity;->notice(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    goto :goto_17

    :cond_14
    invoke-static {p2, p4}, Lcom/local/p5home/Ui;->error(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_17
    :goto_17
    return-void
.end method

.method synthetic lambda$ask$7$com-local-g3home-HomeActivity(Landroid/widget/TextView;Lcom/local/p5home/Ui$PanelDialog;)V
    .registers 5

    .line 33
    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->voiceWake:Lcom/local/p5home/OemVoiceWake;

    if-nez v0, :cond_b

    new-instance v0, Lcom/local/p5home/OemVoiceWake;

    invoke-direct {v0, p0}, Lcom/local/p5home/OemVoiceWake;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/local/p5home/HomeActivity;->voiceWake:Lcom/local/p5home/OemVoiceWake;

    :cond_b
    const-string v0, "\u6b63\u5728\u8bf7\u6c42\u5c0fP\u8bed\u97f3\uff0c\u8bf7\u7a0d\u5019\u2026"

    invoke-static {p1, v0}, Lcom/local/p5home/Ui;->error(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->voiceWake:Lcom/local/p5home/OemVoiceWake;

    new-instance v1, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p2, p1}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda19;-><init>(Lcom/local/p5home/HomeActivity;Lcom/local/p5home/Ui$PanelDialog;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Lcom/local/p5home/OemVoiceWake;->start(Lcom/local/p5home/OemVoiceWake$Callback;)V

    return-void
.end method

.method synthetic lambda$ask$8$com-local-g3home-HomeActivity(Landroid/content/DialogInterface;)V
    .registers 2

    .line 33
    iget-object p1, p0, Lcom/local/p5home/HomeActivity;->voiceWake:Lcom/local/p5home/OemVoiceWake;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/local/p5home/OemVoiceWake;->cancel()V

    :cond_7
    return-void
.end method

.method synthetic lambda$ask$9$com-local-g3home-HomeActivity(Landroid/widget/EditText;Landroid/widget/TextView;Lcom/local/p5home/Ui$PanelDialog;Landroid/view/View;)V
    .registers 5

    .line 33
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_18

    const-string p1, "\u8bf7\u8f93\u5165\u95ee\u9898"

    invoke-static {p2, p1}, Lcom/local/p5home/Ui;->error(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    :cond_18
    :try_start_18
    invoke-static {p0, p1}, Lcom/local/p5home/AssistantService;->ask(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "\u5df2\u63d0\u4ea4\u95ee\u9898\u3002"

    invoke-direct {p0, p1}, Lcom/local/p5home/HomeActivity;->notice(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->updateStatus()V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_26} :catch_27

    goto :goto_2f

    :catch_27
    move-exception p1

    invoke-static {p1}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/local/p5home/Ui;->error(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_2f
    return-void
.end method

.method synthetic lambda$build$1$com-local-g3home-HomeActivity()V
    .registers 2

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/local/p5home/HomeActivity;->openNavigation(Z)V

    return-void
.end method

.method synthetic lambda$build$2$com-local-g3home-HomeActivity(Landroid/view/View;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->openOriginal()V

    return-void
.end method

.method synthetic lambda$chooseShortcut$16$com-local-g3home-HomeActivity(I)V
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Lcom/local/p5home/HomeActivity;->chooseShortcut(I)V

    return-void
.end method

.method synthetic lambda$chooseShortcut$17$com-local-g3home-HomeActivity([Lcom/local/p5home/Ui$PanelDialog;I)V
    .registers 4

    .line 83
    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    const-string p1, "\u6b63\u5728\u5237\u65b0\u5e94\u7528\u5217\u8868\u2026"

    invoke-direct {p0, p1}, Lcom/local/p5home/HomeActivity;->notice(Ljava/lang/String;)V

    new-instance p1, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda27;

    invoke-direct {p1, p0, p2}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda27;-><init>(Lcom/local/p5home/HomeActivity;I)V

    invoke-direct {p0, p1}, Lcom/local/p5home/HomeActivity;->loadApps(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$chooseShortcut$18$com-local-g3home-HomeActivity(ILjava/lang/String;[Lcom/local/p5home/Ui$PanelDialog;)V
    .registers 4

    .line 84
    invoke-static {p0, p1, p2}, Lcom/local/p5home/ShortcutStore;->setSlot(Landroid/content/Context;ILjava/lang/String;)V

    const/4 p1, 0x0

    aget-object p1, p3, p1

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->renderShortcuts()V

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->shortcutSettings()V

    return-void
.end method

.method synthetic lambda$chooseShortcut$19$com-local-g3home-HomeActivity(ILcom/local/p5home/HomeActivity$AppItem;[Lcom/local/p5home/Ui$PanelDialog;Landroid/view/View;)V
    .registers 5

    .line 85
    iget-object p2, p2, Lcom/local/p5home/HomeActivity$AppItem;->pkg:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/local/p5home/ShortcutStore;->setSlot(Landroid/content/Context;ILjava/lang/String;)V

    const/4 p1, 0x0

    aget-object p1, p3, p1

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->renderShortcuts()V

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->shortcutSettings()V

    return-void
.end method

.method synthetic lambda$chooseShortcut$20$com-local-g3home-HomeActivity(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 86
    iget-object p1, p0, Lcom/local/p5home/HomeActivity;->main:Landroid/os/Handler;

    new-instance p2, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda33;

    invoke-direct {p2, p0}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda33;-><init>(Lcom/local/p5home/HomeActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$loadApps$24$com-local-g3home-HomeActivity(ILjava/lang/RuntimeException;Ljava/lang/Runnable;)V
    .registers 5

    .line 97
    iget-boolean v0, p0, Lcom/local/p5home/HomeActivity;->dead:Z

    if-nez v0, :cond_5f

    iget v0, p0, Lcom/local/p5home/HomeActivity;->generation:I

    if-eq p1, v0, :cond_9

    goto :goto_5f

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5e94\u7528\u5217\u8868\u8bfb\u53d6\u672a\u5b8c\u6210\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/local/p5home/HomeActivity;->notice(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/local/p5home/ShortcutStore;->automatic(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/local/p5home/HomeActivity;->apps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_34

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->refreshUsage()V

    :cond_34
    if-eqz p3, :cond_5f

    iget-boolean p1, p0, Lcom/local/p5home/HomeActivity;->resumed:Z

    if-eqz p1, :cond_5f

    invoke-virtual {p0}, Lcom/local/p5home/HomeActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_5f

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u5df2\u4fdd\u7559\u4e0a\u6b21\u52a0\u8f7d\u7684\u5e94\u7528\u548c\u56fe\u6807\u3002"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u5e94\u7528\u5217\u8868\u8bfb\u53d6\u672a\u5b8c\u6210"

    invoke-static {p0, p2, p1}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method synthetic lambda$loadApps$25$com-local-g3home-HomeActivity(ILjava/util/List;Ljava/util/Map;ZLjava/lang/Runnable;)V
    .registers 7

    .line 97
    iget-boolean v0, p0, Lcom/local/p5home/HomeActivity;->dead:Z

    if-nez v0, :cond_82

    iget v0, p0, Lcom/local/p5home/HomeActivity;->generation:I

    if-eq p1, v0, :cond_a

    goto/16 :goto_82

    :cond_a
    iget-object p1, p0, Lcom/local/p5home/HomeActivity;->apps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/local/p5home/HomeActivity;->apps:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget p1, p0, Lcom/local/p5home/HomeActivity;->appListRevision:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/local/p5home/HomeActivity;->appListRevision:I

    iget-object p1, p0, Lcom/local/p5home/HomeActivity;->frequent:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_28
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/local/p5home/HomeActivity$AppItem;

    iget-object v0, v0, Lcom/local/p5home/HomeActivity$AppItem;->pkg:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_3a
    invoke-static {p1, p3}, Lcom/local/p5home/ShortcutRank;->order(Ljava/util/Collection;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_42
    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_42

    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->frequent:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_65
    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->renderShortcuts()V

    invoke-static {p0}, Lcom/local/p5home/ShortcutStore;->automatic(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_73

    if-nez p4, :cond_73

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->refreshUsage()V

    :cond_73
    if-eqz p5, :cond_82

    iget-boolean p1, p0, Lcom/local/p5home/HomeActivity;->resumed:Z

    if-eqz p1, :cond_82

    invoke-virtual {p0}, Lcom/local/p5home/HomeActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_82

    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_82
    :goto_82
    return-void
.end method

.method synthetic lambda$loadApps$26$com-local-g3home-HomeActivity(ILjava/lang/Runnable;)V
    .registers 14

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/local/p5home/ShortcutStore;->automatic(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static {p0}, Lcom/local/p5home/ShortcutStore;->counts(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    goto :goto_14

    :cond_10
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_14
    move-object v4, v0

    :try_start_15
    invoke-virtual {p0}, Lcom/local/p5home/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_4b

    return-void

    :cond_4b
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/local/p5home/HomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_34

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_60

    goto :goto_34

    :cond_60
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8
    :try_end_64
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_64} :catch_9f

    if-nez v8, :cond_67

    goto :goto_34

    :cond_67
    :try_start_67
    invoke-virtual {v6, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9
    :try_end_6b
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_6b} :catch_6c

    goto :goto_71

    :catch_6c
    move-exception v9

    :try_start_6d
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :goto_71
    new-instance v10, Lcom/local/p5home/HomeActivity$AppItem;

    invoke-virtual {v6, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v7, v6, v8, v9}, Lcom/local/p5home/HomeActivity$AppItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_82
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    new-instance v1, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda5;-><init>(Ljava/text/Collator;)V

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_90
    .catch Ljava/lang/RuntimeException; {:try_start_6d .. :try_end_90} :catch_9f

    iget-object v7, p0, Lcom/local/p5home/HomeActivity;->main:Landroid/os/Handler;

    new-instance v8, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda7;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda7;-><init>(Lcom/local/p5home/HomeActivity;ILjava/util/List;Ljava/util/Map;ZLjava/lang/Runnable;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_9f
    move-exception v0

    iget-object v1, p0, Lcom/local/p5home/HomeActivity;->main:Landroid/os/Handler;

    new-instance v2, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda6;-><init>(Lcom/local/p5home/HomeActivity;ILjava/lang/RuntimeException;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$new$0$com-local-g3home-HomeActivity()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->maybeAutoLaunch()V

    return-void
.end method

.method synthetic lambda$refreshUsage$21$com-local-g3home-HomeActivity(IIILjava/util/List;)V
    .registers 6

    .line 94
    iget-boolean v0, p0, Lcom/local/p5home/HomeActivity;->dead:Z

    if-nez v0, :cond_24

    iget v0, p0, Lcom/local/p5home/HomeActivity;->usageGeneration:I

    if-ne p1, v0, :cond_24

    iget p1, p0, Lcom/local/p5home/HomeActivity;->generation:I

    if-ne p2, p1, :cond_24

    iget p1, p0, Lcom/local/p5home/HomeActivity;->appListRevision:I

    if-ne p3, p1, :cond_24

    invoke-static {p0}, Lcom/local/p5home/ShortcutStore;->automatic(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_24

    :cond_17
    iget-object p1, p0, Lcom/local/p5home/HomeActivity;->frequent:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/local/p5home/HomeActivity;->frequent:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->renderShortcuts()V

    :cond_24
    :goto_24
    return-void
.end method

.method synthetic lambda$refreshUsage$22$com-local-g3home-HomeActivity(Ljava/util/List;III)V
    .registers 12

    .line 93
    invoke-static {p0}, Lcom/local/p5home/ShortcutStore;->counts(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/local/p5home/ShortcutRank;->order(Ljava/util/Collection;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_11

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 94
    :cond_32
    iget-object p1, p0, Lcom/local/p5home/HomeActivity;->main:Landroid/os/Handler;

    new-instance v0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda26;

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda26;-><init>(Lcom/local/p5home/HomeActivity;IIILjava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$renderShortcuts$10$com-local-g3home-HomeActivity(Ljava/lang/String;Lcom/local/p5home/HomeActivity$AppItem;Landroid/view/View;)V
    .registers 4

    .line 63
    const-string p3, "@vehicle"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->openVehicleSettings()V

    goto :goto_25

    :cond_c
    const-string p3, "@apps"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->allApps()V

    goto :goto_25

    :cond_18
    if-eqz p2, :cond_1e

    invoke-direct {p0, p2}, Lcom/local/p5home/HomeActivity;->launch(Lcom/local/p5home/HomeActivity$AppItem;)V

    goto :goto_25

    :cond_1e
    const-string p1, "\u5e94\u7528\u4e0d\u53ef\u7528"

    const-string p2, "\u957f\u6309\u5feb\u6377\u5165\u53e3\u9009\u62e9\u5df2\u5b89\u88c5\u5e94\u7528\u3002"

    invoke-static {p0, p1, p2}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    return-void
.end method

.method synthetic lambda$renderShortcuts$11$com-local-g3home-HomeActivity(Landroid/view/View;)Z
    .registers 2

    .line 64
    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->shortcutSettings()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$search$3$com-local-g3home-HomeActivity(Landroid/widget/EditText;Landroid/widget/TextView;Lcom/local/p5home/Ui$PanelDialog;Landroid/view/View;)V
    .registers 6

    .line 31
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_18

    const-string p1, "\u8bf7\u8f93\u5165\u76ee\u7684\u5730"

    invoke-static {p2, p1}, Lcom/local/p5home/Ui;->error(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    :cond_18
    const/4 p4, 0x1

    const/4 v0, 0x0

    :try_start_1a
    iput-boolean p4, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->config()Lcom/local/p5home/AppConfig;

    move-result-object p4

    iget-object p4, p4, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    invoke-static {p0, p4, p1}, Lcom/local/p5home/Navigator;->search(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p1

    iget-object p4, p1, Lcom/local/p5home/Navigator$Result;->message:Ljava/lang/String;

    invoke-direct {p0, p4}, Lcom/local/p5home/HomeActivity;->notice(Ljava/lang/String;)V

    iget-boolean p4, p1, Lcom/local/p5home/Navigator$Result;->accepted:Z

    if-eqz p4, :cond_33

    invoke-virtual {p3}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    goto :goto_45

    :cond_33
    iput-boolean v0, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    iget-object p1, p1, Lcom/local/p5home/Navigator$Result;->message:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/local/p5home/Ui;->error(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_3a} :catch_3b

    goto :goto_45

    :catch_3b
    move-exception p1

    iput-boolean v0, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    invoke-static {p1}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/local/p5home/Ui;->error(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_45
    return-void
.end method

.method synthetic lambda$shortcutSettings$12$com-local-g3home-HomeActivity([Lcom/local/p5home/Ui$PanelDialog;)V
    .registers 3

    .line 71
    invoke-static {p0}, Lcom/local/p5home/ShortcutStore;->automatic(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/local/p5home/ShortcutStore;->automatic(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    invoke-static {p0}, Lcom/local/p5home/ShortcutStore;->automatic(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->refreshUsage()V

    :cond_18
    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->renderShortcuts()V

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->shortcutSettings()V

    return-void
.end method

.method synthetic lambda$shortcutSettings$13$com-local-g3home-HomeActivity([Lcom/local/p5home/Ui$PanelDialog;)V
    .registers 4

    .line 73
    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    :try_start_9
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.USAGE_ACCESS_SETTINGS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/local/p5home/Ui;->launch(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_20

    :catch_14
    move-exception p1

    iput-boolean v0, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    const-string v0, "\u672a\u80fd\u6253\u5f00\u4f7f\u7528\u8bb0\u5f55\u8bbe\u7f6e"

    invoke-static {p1}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    return-void
.end method

.method synthetic lambda$shortcutSettings$14$com-local-g3home-HomeActivity([Lcom/local/p5home/Ui$PanelDialog;I)V
    .registers 4

    .line 76
    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    invoke-direct {p0, p2}, Lcom/local/p5home/HomeActivity;->chooseShortcut(I)V

    return-void
.end method

.method synthetic lambda$shortcutSettings$15$com-local-g3home-HomeActivity([Lcom/local/p5home/Ui$PanelDialog;)V
    .registers 3

    .line 78
    invoke-static {p0}, Lcom/local/p5home/ShortcutStore;->restore(Landroid/content/Context;)V

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->renderShortcuts()V

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->shortcutSettings()V

    return-void
.end method

.method synthetic lambda$voiceAsk$4$com-local-g3home-HomeActivity(ZLjava/lang/String;)V
    .registers 4

    .line 32
    iget-boolean v0, p0, Lcom/local/p5home/HomeActivity;->dead:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/local/p5home/HomeActivity;->resumed:Z

    if-nez v0, :cond_9

    goto :goto_13

    :cond_9
    invoke-direct {p0, p2}, Lcom/local/p5home/HomeActivity;->notice(Ljava/lang/String;)V

    if-nez p1, :cond_13

    const-string p1, "\u5c0fP\u8bed\u97f3\u8bf7\u6c42\u672a\u786e\u8ba4"

    invoke-static {p0, p1, p2}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 15
    invoke-static {p0}, Lcom/local/p5home/DeviceActions;->isDefaultHome(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->build()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_13

    invoke-virtual {p0}, Lcom/local/p5home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/local/p5home/HomeActivity;->isHome(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v0

    goto :goto_14

    :cond_13
    move v2, v1

    :goto_14
    iput-boolean v2, p0, Lcom/local/p5home/HomeActivity;->pendingHome:Z

    invoke-virtual {p0}, Lcom/local/p5home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "shortcut_settings"

    if-eqz v2, :cond_2a

    invoke-virtual {p0}, Lcom/local/p5home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2a

    move v2, v0

    goto :goto_2b

    :cond_2a
    move v2, v1

    :goto_2b
    iput-boolean v2, p0, Lcom/local/p5home/HomeActivity;->shortcutManagerRequested:Z

    if-eqz v2, :cond_3a

    iput-boolean v1, p0, Lcom/local/p5home/HomeActivity;->pendingHome:Z

    iput-boolean v0, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    invoke-virtual {p0}, Lcom/local/p5home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_3a
    if-eqz p1, :cond_46

    const-string v1, "last_auto_at"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/local/p5home/HomeActivity;->lastAutoAt:J

    :cond_46
    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->build()V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.local.p5home.APPEARANCE_CHANGED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_5d
    iget-object v1, p0, Lcom/local/p5home/HomeActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, p1}, Lcom/local/p5home/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/local/p5home/HomeActivity;->receiverRegistered:Z
    :try_end_64
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_64} :catch_65

    goto :goto_66

    :catch_65
    move-exception p1

    :goto_66
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 14
    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->voiceWake:Lcom/local/p5home/OemVoiceWake;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/local/p5home/OemVoiceWake;->close()V

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/HomeActivity;->dead:Z

    iget v1, p0, Lcom/local/p5home/HomeActivity;->generation:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/local/p5home/HomeActivity;->generation:I

    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->main:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->appsWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-boolean v0, p0, Lcom/local/p5home/HomeActivity;->receiverRegistered:Z

    if-eqz v0, :cond_25

    :try_start_1e
    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/local/p5home/HomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_25

    :catch_24
    move-exception v0

    :cond_25
    :goto_25
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 5

    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/local/p5home/HomeActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/local/p5home/HomeActivity;->isHome(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/local/p5home/HomeActivity;->pendingHome:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    const-string v1, "shortcut_settings"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/local/p5home/HomeActivity;->shortcutManagerRequested:Z

    iput-boolean v0, p0, Lcom/local/p5home/HomeActivity;->pendingHome:Z

    iput-boolean v2, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_21
    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->updateStatus()V

    iget-boolean p1, p0, Lcom/local/p5home/HomeActivity;->resumed:Z

    if-eqz p1, :cond_48

    iget-boolean p1, p0, Lcom/local/p5home/HomeActivity;->shortcutManagerRequested:Z

    if-eqz p1, :cond_38

    iput-boolean v0, p0, Lcom/local/p5home/HomeActivity;->shortcutManagerRequested:Z

    iget-object p1, p0, Lcom/local/p5home/HomeActivity;->main:Landroid/os/Handler;

    new-instance v0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda33;-><init>(Lcom/local/p5home/HomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_38
    iget-object p1, p0, Lcom/local/p5home/HomeActivity;->main:Landroid/os/Handler;

    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->autoCheck:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/local/p5home/HomeActivity;->main:Landroid/os/Handler;

    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->autoCheck:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_48
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 13
    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->voiceWake:Lcom/local/p5home/OemVoiceWake;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/local/p5home/OemVoiceWake;->cancel()V

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/HomeActivity;->resumed:Z

    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/local/p5home/HomeActivity;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/local/p5home/HomeActivity;->autoCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/local/p5home/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/HomeActivity;->wakePending:Z

    :cond_2b
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 5

    .line 12
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/HomeActivity;->resumed:Z

    iget v0, p0, Lcom/local/p5home/HomeActivity;->theme:I

    invoke-static {p0}, Lcom/local/p5home/Ui;->themeSignature(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_11

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->build()V

    :cond_11
    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->renderedMusicProvider:Ljava/lang/String;

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->config()Lcom/local/p5home/AppConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->renderShortcuts()V

    :cond_22
    invoke-static {p0}, Lcom/local/p5home/ShortcutStore;->automatic(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-direct {p0}, Lcom/local/p5home/HomeActivity;->refreshUsage()V

    :cond_33
    iget-boolean v0, p0, Lcom/local/p5home/HomeActivity;->shortcutManagerRequested:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    iput-boolean v1, p0, Lcom/local/p5home/HomeActivity;->shortcutManagerRequested:Z

    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->main:Landroid/os/Handler;

    new-instance v2, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0}, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda33;-><init>(Lcom/local/p5home/HomeActivity;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_44
    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->main:Landroid/os/Handler;

    iget-object v2, p0, Lcom/local/p5home/HomeActivity;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->main:Landroid/os/Handler;

    iget-object v2, p0, Lcom/local/p5home/HomeActivity;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    if-eqz v0, :cond_5d

    iput-boolean v1, p0, Lcom/local/p5home/HomeActivity;->suppressNextResume:Z

    iput-boolean v1, p0, Lcom/local/p5home/HomeActivity;->wakePending:Z

    iput-boolean v1, p0, Lcom/local/p5home/HomeActivity;->pendingHome:Z

    goto :goto_6d

    :cond_5d
    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/local/p5home/HomeActivity;->autoCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/local/p5home/HomeActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/local/p5home/HomeActivity;->autoCheck:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_6d
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "last_auto_at"

    iget-wide v1, p0, Lcom/local/p5home/HomeActivity;->lastAutoAt:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method
