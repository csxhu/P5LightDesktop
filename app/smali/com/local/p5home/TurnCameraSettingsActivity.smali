.class public final Lcom/local/p5home/TurnCameraSettingsActivity;
.super Landroid/app/Activity;
.source "TurnCameraSettingsActivity.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "turn_assistant_sw"

.field private static final OWNER:Ljava/lang/String; = "com.xiaopeng.drivingimageassist"


# instance fields
.field private authorityText:Landroid/widget/TextView;

.field private authorize:Landroid/widget/Button;

.field private autoCapability:Ljava/lang/String;

.field private automaticStatus:Landroid/widget/TextView;

.field private busy:Z

.field private checked:Z

.field private dead:Z

.field private disable:Landroid/widget/Button;

.field private enable:Landroid/widget/Button;

.field private integrationText:Landroid/widget/TextView;

.field private final main:Landroid/os/Handler;

.field private nativeBuild:Ljava/lang/String;

.field private final nativeButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private nativeMessage:Ljava/lang/String;

.field private nativeResult:Landroid/widget/TextView;

.field private refresh:Landroid/widget/Button;

.field private result:Ljava/lang/String;

.field private resultText:Landroid/widget/TextView;

.field private resumed:Z

.field private rootDisable:Landroid/widget/Button;

.field private rootEnable:Landroid/widget/Button;

.field private serviceText:Landroid/widget/TextView;

.field private final statusTick:Ljava/lang/Runnable;

.field private theme:I

.field private valueText:Landroid/widget/TextView;

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$mYPzi1nEHe0rkvUFN-9mUgZ1hXE(Lcom/local/p5home/TurnCameraSettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->refresh()V

    return-void
.end method

.method public static synthetic $r8$lambda$uBdYzTicSkz7Tc4F3vHIQj_LRN8(Lcom/local/p5home/TurnCameraSettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->openAuthorization()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->worker:Ljava/util/concurrent/ExecutorService;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->main:Landroid/os/Handler;

    .line 29
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->autoCapability:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeBuild:Ljava/lang/String;

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeButtons:Ljava/util/List;

    .line 33
    const-string v1, "\u68c0\u67e5\u539f\u8f66\u63a5\u5165\u540e\uff0c\u53ef\u5728\u505c\u8f66\u65f6\u77ed\u65f6\u9884\u89c8\u5de6\u53f3\u753b\u9762\u3002"

    iput-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeMessage:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->result:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/local/p5home/TurnCameraSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/local/p5home/TurnCameraSettingsActivity$1;-><init>(Lcom/local/p5home/TurnCameraSettingsActivity;)V

    iput-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->statusTick:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/local/p5home/TurnCameraSettingsActivity;)Z
    .registers 1

    .line 24
    iget-boolean p0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->dead:Z

    return p0
.end method

.method static synthetic access$100(Lcom/local/p5home/TurnCameraSettingsActivity;)Z
    .registers 1

    .line 24
    iget-boolean p0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->resumed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/local/p5home/TurnCameraSettingsActivity;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->refresh()V

    return-void
.end method

.method static synthetic access$300(Lcom/local/p5home/TurnCameraSettingsActivity;)Landroid/os/Handler;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->main:Landroid/os/Handler;

    return-object p0
.end method

.method private build()V
    .registers 14

    .line 48
    invoke-static {p0}, Lcom/local/p5home/Ui;->install(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->themeSignature(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->theme:I

    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v2

    iget v2, v2, Lcom/local/p5home/Ui$Palette;->bg:I

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 50
    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/high16 v3, 0x42300000    # 44.0f

    invoke-static {p0, v3}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {p0, v5}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v3}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v5}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 51
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/local/p5home/TurnCameraSettingsActivity;->setContentView(Landroid/view/View;)V

    .line 52
    invoke-static {p0}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 53
    new-instance v3, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda6;-><init>(Lcom/local/p5home/TurnCameraSettingsActivity;)V

    const-string v4, "back"

    const-string v5, "\u8fd4\u56de\u8bbe\u7f6e"

    invoke-static {p0, v4, v5, v3}, Lcom/local/p5home/Ui;->iconButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v3, 0x1a

    invoke-static {p0, v0, v3}, Lcom/local/p5home/Ui;->side(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 54
    const-string v4, "\u8f6c\u5411\u4fa7\u6444"

    const/16 v5, 0x2e

    invoke-static {p0, v4, v5}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v0, 0x20

    invoke-static {p0, v2, v0}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 55
    invoke-static {p0}, Lcom/local/p5home/Ui;->panel(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 56
    const-string v4, "\u539f\u8f66\u8f6c\u5411\u5f71\u50cf"

    const/16 v5, 0x24

    invoke-static {p0, v4, v5}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v4, 0x12

    invoke-static {p0, v0, v4}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 57
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v6

    iget v6, v6, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v9, ""

    const/16 v10, 0x1c

    invoke-static {p0, v9, v10, v6}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->automaticStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v6, 0xc

    invoke-static {p0, v0, v6}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 58
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v11

    iget v11, v11, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v12, "\u6b63\u5728\u8bfb\u53d6\u539f\u8f66\u5f00\u5173\u2026"

    invoke-static {p0, v12, v10, v11}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v10

    iput-object v10, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->valueText:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p0, v0, v6}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 59
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v10

    iget v10, v10, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v11, "\u6b63\u5728\u68c0\u67e5\u539f\u8f66\u5f71\u50cf\u5e94\u7528\u2026"

    const/16 v12, 0x1b

    invoke-static {p0, v11, v12, v10}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v10

    iput-object v10, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->serviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p0, v0, v6}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 60
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v10

    iget v10, v10, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v11, "\u6b63\u5728\u8bfb\u53d6\u6a21\u5757\u63a5\u5165\u72b6\u6001\u2026"

    invoke-static {p0, v11, v12, v10}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v10

    iput-object v10, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->integrationText:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p0, v0, v6}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 61
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v6

    iget v6, v6, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v9, v12, v6}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->authorityText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v6, 0x18

    invoke-static {p0, v0, v6}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 62
    new-instance v6, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0}, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda7;-><init>(Lcom/local/p5home/TurnCameraSettingsActivity;)V

    const-string v9, "\u5f00\u542f\u539f\u8f66\u529f\u80fd"

    invoke-static {p0, v9, v1, v6}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->enable:Landroid/widget/Button;

    .line 63
    new-instance v1, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda8;-><init>(Lcom/local/p5home/TurnCameraSettingsActivity;)V

    const-string v6, "\u5173\u95ed\u539f\u8f66\u529f\u80fd"

    invoke-static {p0, v6, v7, v1}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->disable:Landroid/widget/Button;

    iget-object v6, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->enable:Landroid/widget/Button;

    filled-new-array {v6, v1}, [Landroid/widget/Button;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->buttons(Landroid/content/Context;Landroid/widget/LinearLayout;[Landroid/widget/Button;)V

    .line 64
    new-instance v1, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda9;-><init>(Lcom/local/p5home/TurnCameraSettingsActivity;)V

    const-string v6, "\u6388\u6743\u4fee\u6539\u7cfb\u7edf\u8bbe\u7f6e"

    invoke-static {p0, v6, v7, v1}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->authorize:Landroid/widget/Button;

    .line 65
    new-instance v1, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda10;-><init>(Lcom/local/p5home/TurnCameraSettingsActivity;)V

    const-string v6, "\u5237\u65b0\u72b6\u6001"

    invoke-static {p0, v6, v7, v1}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->refresh:Landroid/widget/Button;

    iget-object v6, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->authorize:Landroid/widget/Button;

    filled-new-array {v6, v1}, [Landroid/widget/Button;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->buttons(Landroid/content/Context;Landroid/widget/LinearLayout;[Landroid/widget/Button;)V

    .line 66
    new-instance v1, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda11;-><init>(Lcom/local/p5home/TurnCameraSettingsActivity;)V

    const-string v6, "\u4f7f\u7528 Root \u5f00\u542f"

    invoke-static {p0, v6, v7, v1}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->rootEnable:Landroid/widget/Button;

    .line 67
    new-instance v1, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda12;-><init>(Lcom/local/p5home/TurnCameraSettingsActivity;)V

    const-string v6, "\u4f7f\u7528 Root \u5173\u95ed"

    invoke-static {p0, v6, v7, v1}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->rootDisable:Landroid/widget/Button;

    iget-object v6, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->rootEnable:Landroid/widget/Button;

    filled-new-array {v6, v1}, [Landroid/widget/Button;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->buttons(Landroid/content/Context;Landroid/widget/LinearLayout;[Landroid/widget/Button;)V

    .line 68
    iget-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->result:Ljava/lang/String;

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v6

    iget v6, v6, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v1, v3, v6}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->resultText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0, v2, v3}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 70
    invoke-static {p0}, Lcom/local/p5home/Ui;->panel(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "\u539f\u8f66\u8fdb\u7a0b\u63a5\u5165"

    invoke-static {p0, v1, v5}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p0, v0, v4}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 71
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v5, "\u4f7f\u7528\u539f\u8f66\u4e8b\u4ef6\u8ba2\u9605\u548c\u76f8\u673a\u663e\u793a\uff0c\u4e0d\u9700\u8981\u7535\u8111\u4fdd\u6301 ADB \u8fde\u63a5\u3002\u9884\u89c8\u4ec5\u5728 P \u6321\u3001\u8f66\u901f\u4e3a 0\u3001\u539f\u8f66\u5f71\u50cf\u5c31\u7eea\u4e14\u6ca1\u6709\u5176\u4ed6\u753b\u9762\u5360\u7528\u65f6\u63d0\u4ea4\uff0c\u6700\u957f 5 \u79d2\u3002"

    invoke-static {p0, v5, v12, v1}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x16

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 72
    const-string v1, "\u68c0\u67e5\u63a5\u5165"

    const-string v5, "probe"

    invoke-direct {p0, v1, v5}, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    const-string v5, "\u91cd\u65b0\u6302\u63a5\u8f6c\u5411\u4e8b\u4ef6"

    const-string v9, "repair"

    invoke-direct {p0, v5, v9}, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    filled-new-array {v1, v5}, [Landroid/widget/Button;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->buttons(Landroid/content/Context;Landroid/widget/LinearLayout;[Landroid/widget/Button;)V

    .line 73
    const-string v1, "\u5de6\u4fa7\u9884\u89c8 \u00b7 5\u79d2"

    const-string v5, "left"

    invoke-direct {p0, v1, v5}, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    const-string v5, "\u53f3\u4fa7\u9884\u89c8 \u00b7 5\u79d2"

    const-string v9, "right"

    invoke-direct {p0, v5, v9}, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    filled-new-array {v1, v5}, [Landroid/widget/Button;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->buttons(Landroid/content/Context;Landroid/widget/LinearLayout;[Landroid/widget/Button;)V

    .line 74
    const-string v1, "\u5173\u95ed\u672c\u6a21\u5757\u9884\u89c8"

    const-string v5, "close"

    invoke-direct {p0, v1, v5}, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    const-string v5, "Root \u542f\u52a8\u539f\u8f66\u8fdb\u7a0b"

    const-string v9, "start"

    invoke-direct {p0, v5, v9}, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    filled-new-array {v1, v5}, [Landroid/widget/Button;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->buttons(Landroid/content/Context;Landroid/widget/LinearLayout;[Landroid/widget/Button;)V

    .line 75
    iget-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeMessage:Ljava/lang/String;

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v5

    iget v5, v5, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v1, v3, v5}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeResult:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0, v2, v3}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 76
    invoke-static {p0}, Lcom/local/p5home/Ui;->panel(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "\u4f7f\u7528\u6761\u4ef6"

    const/16 v3, 0x22

    invoke-static {p0, v1, v3}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p0, v0, v4}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 77
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v3, "\u81ea\u52a8\u8f6c\u5411\u5f71\u50cf\u6cbf\u7528\u539f\u8f66\u4f4e\u901f\u9608\u503c\uff08\u539f\u59cb\u503c 10\uff09\u53ca\u975e\u5012\u6321\u6761\u4ef6\uff0c\u5012\u6321\u3001\u539f\u8f66\u76f8\u673a\u548c\u8f85\u52a9\u753b\u9762\u6309\u539f\u8f66\u89c4\u5219\u4e92\u65a5\u3002\u6a21\u5757\u8865\u5145 Q5 \u7f3a\u5c11\u7684\u8f6c\u5411\u4e8b\u4ef6\u8ba2\u9605\uff0c\u5e76\u62d2\u7edd\u5f02\u5e38\u901f\u5ea6\u548c\u672a\u77e5\u6863\u4f4d\u3002\n\n\u624b\u52a8\u9884\u89c8\u590d\u7528 G3 \u539f\u8f66\u663e\u793a\u63a7\u5236\u5668\u4e0e\u76f8\u673a\u53c2\u6570\uff1b\u4e0d\u4f1a\u7167\u642c\u5176\u4ed6\u8f66\u578b\u6a21\u5f0f\u6216\u626b\u63cf\u5176\u4ed6\u6444\u50cf\u5934\u3002\u5f00\u5173\u4fdd\u5b58\u3001\u4e8b\u4ef6\u6302\u63a5\u548c\u9884\u89c8\u8bf7\u6c42\u5206\u522b\u663e\u793a\u7ed3\u679c\uff0c\u5b83\u4eec\u5747\u4e0d\u80fd\u4ee3\u66ff\u5b9e\u8f66\u786e\u8ba4\u753b\u9762\u53ca\u6570\u636e\u6b63\u786e\u6027\u3002"

    invoke-static {p0, v3, v12, v1}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    invoke-static {p0, v0, v4}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 79
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v3, "Q5 \u63a5\u5165\uff1a\u9700\u5728 LSPosed \u4e3a G3\u8f7b\u684c\u9762\u542f\u7528\u9a7e\u9a76\u5f71\u50cf\u8f85\u52a9\u4f5c\u7528\u57df\uff0c\u5e76\u91cd\u65b0\u52a0\u8f7d\u539f\u8f66\u5f71\u50cf\u8fdb\u7a0b\u3002\u63a5\u5165\u548c\u56de\u8c03\u72b6\u6001\u4e0d\u4ee3\u8868\u5b9e\u9645\u753b\u9762\u5df2\u7ecf\u663e\u793a\u3002"

    invoke-static {p0, v3, v12, v1}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    invoke-static {p0, v0, v4}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 81
    new-instance v1, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda13;-><init>(Lcom/local/p5home/TurnCameraSettingsActivity;)V

    const-string v3, "\u6253\u5f00 LSPosed \u7ba1\u7406\u5668"

    invoke-static {p0, v3, v7, v1}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->busy:Z

    invoke-direct {p0, v0}, Lcom/local/p5home/TurnCameraSettingsActivity;->setBusy(Z)V

    .line 83
    return-void
.end method

.method private canWrite()Z
    .registers 2

    .line 89
    :try_start_0
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method private confirm(ZZ)V
    .registers 6

    .line 140
    iget-boolean v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    .line 141
    :cond_5
    if-nez p1, :cond_15

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->canWrite()Z

    move-result v0

    if-nez v0, :cond_15

    const-string p1, "\u5c1a\u672a\u83b7\u5f97\u4fee\u6539\u7cfb\u7edf\u8bbe\u7f6e\u6743\u9650\uff0c\u8bf7\u6388\u6743\u6216\u9009\u62e9 Root \u64cd\u4f5c\u3002"

    iput-object p1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->result:Ljava/lang/String;

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->refresh()V

    return-void

    .line 142
    :cond_15
    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    if-eqz p2, :cond_1e

    const-string v1, "\u5f00\u542f\u539f\u8f66\u8f6c\u5411\u5f71\u50cf"

    goto :goto_20

    :cond_1e
    const-string v1, "\u5173\u95ed\u539f\u8f66\u8f6c\u5411\u5f71\u50cf"

    :goto_20
    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    if-eqz p1, :cond_2e

    const-string v2, "\u5c06\u901a\u8fc7 Root \u5199\u5165\u539f\u8f66\u8bbe\u7f6e\u3002"

    goto :goto_30

    :cond_2e
    const-string v2, "\u5c06\u5199\u5165\u539f\u8f66\u7cfb\u7edf\u8bbe\u7f6e\u3002"

    :goto_30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u5f00\u5173\u72b6\u6001\u4f1a\u5728\u5199\u5165\u540e\u91cd\u65b0\u8bfb\u53d6\uff1b\u5b9e\u9645\u663e\u793a\u4ecd\u53d7\u539f\u8f66\u6761\u4ef6\u9650\u5236\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    .line 144
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    new-instance v1, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/local/p5home/TurnCameraSettingsActivity;ZZ)V

    const-string p1, "\u786e\u8ba4"

    invoke-virtual {v0, p1, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelBuilder;->show()Lcom/local/p5home/Ui$PanelDialog;

    .line 145
    return-void
.end method

.method static describeIntegration(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 8

    .line 116
    if-eqz p0, :cond_93

    const-string v0, "hookReady"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_93

    .line 117
    :cond_d
    const-string v0, "connectionSeen"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "\u672a\u6536\u5230\u8fde\u63a5\u72b6\u6001"

    goto :goto_25

    :cond_18
    const-string v0, "connected"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "\u6536\u5230\u8fde\u63a5\u56de\u8c03"

    goto :goto_25

    :cond_23
    const-string v0, "\u6536\u5230\u65ad\u5f00\u56de\u8c03"

    .line 118
    :goto_25
    const-string v2, "lampCallbackFault"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "\u5df2\u6536\u5230\u56de\u8c03"

    const-string v4, "\u672a\u6536\u5230\u56de\u8c03"

    const-string v5, "\u56de\u8c03\u5f02\u5e38"

    if-eqz v2, :cond_35

    move-object v2, v5

    goto :goto_40

    :cond_35
    const-string v2, "lampCallbackSeen"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3f

    move-object v2, v3

    goto :goto_40

    :cond_3f
    move-object v2, v4

    .line 119
    :goto_40
    const-string v6, "gearCallbackFault"

    invoke-virtual {p0, v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4a

    move-object v3, v5

    goto :goto_54

    :cond_4a
    const-string v5, "gearCallbackSeen"

    invoke-virtual {p0, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_53

    goto :goto_54

    :cond_53
    move-object v3, v4

    .line 120
    :goto_54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6a21\u5757\u63a5\u5165\uff1a\u5df2\u6536\u5230\u5fc3\u8df3 \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "observerAdded"

    invoke-virtual {p0, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_6a

    const-string p0, "\u4e8b\u4ef6\u5bf9\u8c61\u5df2\u52a0\u5165"

    goto :goto_6c

    :cond_6a
    const-string p0, "\u4e8b\u4ef6\u5bf9\u8c61\u672a\u786e\u8ba4"

    :goto_6c
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " \u00b7 \u8f6c\u5411\u706f"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " \u00b7 \u6863\u4f4d"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 116
    :cond_93
    :goto_93
    const-string p0, "\u6a21\u5757\u63a5\u5165\uff1a\u672a\u6536\u5230\u6709\u6548\u5fc3\u8df3\uff0c\u8bf7\u68c0\u67e5\u4f5c\u7528\u57df\u548c\u5f71\u50cf\u8fdb\u7a0b"

    return-object p0
.end method

.method private finishWrite(ZZZ)V
    .registers 5

    .line 172
    invoke-direct {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->readValue()Lcom/local/p5home/TurnCameraState$Value;

    move-result-object v0

    .line 173
    if-eqz p1, :cond_11

    invoke-static {v0, p2}, Lcom/local/p5home/TurnCameraState;->matches(Lcom/local/p5home/TurnCameraState$Value;Z)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 174
    const-string p1, "\u8bbe\u7f6e\u5df2\u5199\u5165\u5e76\u56de\u8bfb\u786e\u8ba4\uff1b\u539f\u8f66\u5f71\u50cf\u80fd\u5426\u663e\u793a\u4ecd\u53d6\u51b3\u4e8e\u4f7f\u7528\u6761\u4ef6\u3002"

    iput-object p1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->result:Ljava/lang/String;

    goto :goto_2d

    .line 175
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_1b

    const-string p2, "Root \u64cd\u4f5c\u672a\u786e\u8ba4\u3002"

    goto :goto_1d

    :cond_1b
    const-string p2, "\u5199\u5165\u672a\u786e\u8ba4\u3002"

    :goto_1d
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\u8bf7\u67e5\u770b\u5f53\u524d\u5f00\u5173\u72b6\u6001\uff0c\u68c0\u67e5\u6743\u9650\u540e\u91cd\u8bd5\u3002"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->result:Ljava/lang/String;

    .line 176
    :goto_2d
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/local/p5home/TurnCameraSettingsActivity;->setBusy(Z)V

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->refresh()V

    .line 177
    return-void
.end method

.method private integrationStatus()Ljava/lang/String;
    .registers 5

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/local/p5home/TurnCameraStatusClient;->URI:Landroid/net/Uri;

    const-string v2, "status"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/local/p5home/TurnCameraSettingsActivity;->describeIntegration(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 113
    :catch_12
    move-exception v0

    const-string v0, "\u6a21\u5757\u63a5\u5165\uff1a\u72b6\u6001\u8bfb\u53d6\u4e0d\u53ef\u7528"

    return-object v0
.end method

.method private nativeButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;
    .registers 5

    .line 129
    new-instance v0, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/TurnCameraSettingsActivity;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeButtons:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private nativeOperation(Ljava/lang/String;)V
    .registers 4

    .line 131
    iget-boolean v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/local/p5home/TurnCameraSettingsActivity;->setBusy(Z)V

    const-string v0, "\u6b63\u5728\u8bf7\u6c42\u539f\u8f66\u7ec4\u4ef6\u2026"

    iput-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeMessage:Ljava/lang/String;

    iget-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeResult:Landroid/widget/TextView;

    if-eqz v1, :cond_14

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_14
    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda5;-><init>(Lcom/local/p5home/TurnCameraSettingsActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method private openAuthorization()V
    .registers 5

    .line 136
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/local/p5home/TurnCameraSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_25
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_25} :catch_28
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_25} :catch_26

    .line 137
    goto :goto_30

    :catch_26
    move-exception v0

    goto :goto_29

    :catch_28
    move-exception v0

    :goto_29
    const-string v0, "\u7cfb\u7edf\u672a\u63d0\u4f9b\u6388\u6743\u9875\u9762\uff1b\u53ef\u624b\u52a8\u9009\u62e9 Root \u64cd\u4f5c\u3002"

    iput-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->result:Ljava/lang/String;

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->refresh()V

    .line 138
    :goto_30
    return-void
.end method

.method private ownerStatus()Ljava/lang/String;
    .registers 4

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.xiaopeng.drivingimageassist"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 93
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_12

    const-string v0, "\u539f\u8f66\u5f71\u50cf\u5e94\u7528\uff1a\u5df2\u5b89\u88c5\u5e76\u542f\u7528\uff1b\u8fd0\u884c\u548c\u753b\u9762\u72b6\u6001\u672a\u786e\u8ba4"

    goto :goto_14

    .line 94
    :cond_12
    const-string v0, "\u539f\u8f66\u5f71\u50cf\u5e94\u7528\uff1a\u5df2\u505c\u7528\uff0c\u5f00\u5173\u4e0d\u80fd\u8bc1\u660e\u529f\u80fd\u751f\u6548"
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_14} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_14} :catch_15

    .line 93
    :goto_14
    return-object v0

    .line 97
    :catch_15
    move-exception v0

    const-string v0, "\u65e0\u6cd5\u68c0\u67e5\u539f\u8f66\u5f71\u50cf\u5e94\u7528\uff0c\u529f\u80fd\u72b6\u6001\u672a\u786e\u8ba4"

    return-object v0

    .line 95
    :catch_19
    move-exception v0

    .line 96
    const-string v0, "\u672a\u627e\u5230\u539f\u8f66\u5f71\u50cf\u5e94\u7528\uff0c\u5f00\u5173\u4e0d\u80fd\u8bc1\u660e\u529f\u80fd\u751f\u6548"

    return-object v0
.end method

.method private readValue()Lcom/local/p5home/TurnCameraState$Value;
    .registers 3

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "turn_assistant_sw"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/local/p5home/TurnCameraState;->parse(Ljava/lang/String;)Lcom/local/p5home/TurnCameraState$Value;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 87
    :catch_f
    move-exception v0

    sget-object v0, Lcom/local/p5home/TurnCameraState$Value;->UNREADABLE:Lcom/local/p5home/TurnCameraState$Value;

    return-object v0
.end method

.method private refresh()V
    .registers 7

    .line 100
    iget-boolean v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->dead:Z

    if-nez v0, :cond_c3

    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->valueText:Landroid/widget/TextView;

    if-nez v0, :cond_a

    goto/16 :goto_c3

    .line 101
    :cond_a
    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->automaticStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->autoCapability:Ljava/lang/String;

    const-string v2, "not_exposed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "\u81ea\u52a8\u8054\u52a8\uff1a\u539f\u8f66\u63a5\u53e3\u672a\u516c\u5f00\u6240\u9700\u8f6c\u5411\u706f\u72b6\u6001\uff0c\u5f53\u524d\u5f85\u9002\u914d\uff1b\u53ef\u5355\u72ec\u4f7f\u7528\u505c\u8f66\u9884\u89c8"

    goto :goto_28

    :cond_19
    const-string v1, "available"

    iget-object v3, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->autoCapability:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "\u81ea\u52a8\u8054\u52a8\uff1a\u8f6c\u5411\u5c5e\u6027\u5df2\u516c\u5f00\uff0c\u4ecd\u9700\u6536\u5230\u771f\u5b9e\u56de\u8c03"

    goto :goto_28

    :cond_26
    const-string v1, "\u81ea\u52a8\u8054\u52a8\uff1a\u8f6c\u5411\u8f93\u5165\u5c1a\u672a\u786e\u8ba4"

    :goto_28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->automaticStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->autoCapability:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->warning:I

    goto :goto_42

    :cond_3c
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    :goto_42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->valueText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->readValue()Lcom/local/p5home/TurnCameraState$Value;

    move-result-object v1

    invoke-static {v1}, Lcom/local/p5home/TurnCameraState;->describe(Lcom/local/p5home/TurnCameraState$Value;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->serviceText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->ownerStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->integrationText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->integrationStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-direct {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->canWrite()Z

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->authorityText:Landroid/widget/TextView;

    if-eqz v0, :cond_6f

    const-string v3, "\u7cfb\u7edf\u8bbe\u7f6e\u6743\u9650\uff1a\u5df2\u6388\u6743"

    goto :goto_71

    :cond_6f
    const-string v3, "\u7cfb\u7edf\u8bbe\u7f6e\u6743\u9650\uff1a\u672a\u6388\u6743\uff1b\u53ef\u6388\u6743\u6216\u624b\u52a8\u9009\u62e9 Root \u64cd\u4f5c"

    :goto_71
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->enable:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->busy:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_86

    iget-object v3, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->autoCapability:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    move v3, v4

    goto :goto_87

    :cond_86
    move v3, v5

    :goto_87
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->authorize:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->busy:Z

    if-nez v3, :cond_94

    if-nez v0, :cond_94

    move v3, v4

    goto :goto_95

    :cond_94
    move v3, v5

    :goto_95
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->rootEnable:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->busy:Z

    if-nez v3, :cond_aa

    if-nez v0, :cond_aa

    iget-object v3, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->autoCapability:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_aa

    move v2, v4

    goto :goto_ab

    :cond_aa
    move v2, v5

    :goto_ab
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->rootDisable:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->busy:Z

    if-nez v2, :cond_b7

    if-nez v0, :cond_b7

    goto :goto_b8

    :cond_b7
    move v4, v5

    :goto_b8
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->resultText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void

    .line 100
    :cond_c3
    :goto_c3
    return-void
.end method

.method private setBusy(Z)V
    .registers 9

    .line 123
    iput-boolean p1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->busy:Z

    .line 124
    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->enable:Landroid/widget/Button;

    if-nez v0, :cond_7

    return-void

    .line 125
    :cond_7
    const-string v1, "not_exposed"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_17

    iget-object v4, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->autoCapability:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    move v4, v3

    goto :goto_18

    :cond_17
    move v4, v2

    :goto_18
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->disable:Landroid/widget/Button;

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->refresh:Landroid/widget/Button;

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    invoke-direct {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->canWrite()Z

    move-result v0

    iget-object v4, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->authorize:Landroid/widget/Button;

    if-nez p1, :cond_35

    if-nez v0, :cond_35

    move v5, v3

    goto :goto_36

    :cond_35
    move v5, v2

    :goto_36
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->rootEnable:Landroid/widget/Button;

    if-nez p1, :cond_49

    if-nez v0, :cond_49

    iget-object v5, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->autoCapability:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    move v5, v3

    goto :goto_4a

    :cond_49
    move v5, v2

    :goto_4a
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->rootDisable:Landroid/widget/Button;

    if-nez p1, :cond_55

    if-nez v0, :cond_55

    move v0, v3

    goto :goto_56

    :cond_55
    move v0, v2

    :goto_56
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    if-nez p1, :cond_83

    const-string v5, "repair"

    invoke-virtual {v4}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    iget-object v5, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->autoCapability:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_83

    :cond_81
    move v5, v3

    goto :goto_84

    :cond_83
    move v5, v2

    :goto_84
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_5f

    .line 128
    :cond_88
    return-void
.end method

.method private write(ZZ)V
    .registers 6

    .line 147
    iget-boolean v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    .line 148
    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/local/p5home/TurnCameraSettingsActivity;->setBusy(Z)V

    const-string v1, "\u6b63\u5728\u5199\u5165\u5e76\u6838\u5bf9\u539f\u8f66\u5f00\u5173\u2026"

    iput-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->result:Ljava/lang/String;

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->refresh()V

    .line 149
    if-nez p1, :cond_29

    .line 150
    nop

    .line 151
    const/4 p1, 0x0

    :try_start_14
    invoke-virtual {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "turn_assistant_sw"

    if-eqz p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, p1

    :goto_1e
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_22} :catch_23

    goto :goto_25

    :catch_23
    move-exception v0

    move v0, p1

    .line 152
    :goto_25
    invoke-direct {p0, v0, p2, p1}, Lcom/local/p5home/TurnCameraSettingsActivity;->finishWrite(ZZZ)V

    .line 153
    return-void

    .line 155
    :cond_29
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    const v0, 0x186a0

    div-int/2addr p1, v0

    .line 156
    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/local/p5home/TurnCameraSettingsActivity;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method


# virtual methods
.method synthetic lambda$build$0$com-local-g3home-TurnCameraSettingsActivity()V
    .registers 3

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/local/p5home/TurnCameraSettingsActivity;->confirm(ZZ)V

    return-void
.end method

.method synthetic lambda$build$1$com-local-g3home-TurnCameraSettingsActivity()V
    .registers 2

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/local/p5home/TurnCameraSettingsActivity;->confirm(ZZ)V

    return-void
.end method

.method synthetic lambda$build$2$com-local-g3home-TurnCameraSettingsActivity()V
    .registers 2

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/local/p5home/TurnCameraSettingsActivity;->confirm(ZZ)V

    return-void
.end method

.method synthetic lambda$build$3$com-local-g3home-TurnCameraSettingsActivity()V
    .registers 3

    .line 67
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/local/p5home/TurnCameraSettingsActivity;->confirm(ZZ)V

    return-void
.end method

.method synthetic lambda$build$4$com-local-g3home-TurnCameraSettingsActivity()V
    .registers 1

    .line 81
    invoke-static {p0}, Lcom/local/p5home/DeviceActions;->openLsposed(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$confirm$8$com-local-g3home-TurnCameraSettingsActivity(ZZLandroid/content/DialogInterface;I)V
    .registers 5

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/local/p5home/TurnCameraSettingsActivity;->write(ZZ)V

    return-void
.end method

.method synthetic lambda$nativeButton$5$com-local-g3home-TurnCameraSettingsActivity(Ljava/lang/String;)V
    .registers 2

    .line 129
    invoke-direct {p0, p1}, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeOperation(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$nativeOperation$6$com-local-g3home-TurnCameraSettingsActivity(Lcom/local/p5home/TurnCameraControl$Result;Ljava/lang/String;)V
    .registers 4

    .line 133
    iget-boolean v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->dead:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p1, Lcom/local/p5home/TurnCameraControl$Result;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeMessage:Ljava/lang/String;

    const-string v0, "probe"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "start"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_46

    :cond_19
    iget-object p2, p1, Lcom/local/p5home/TurnCameraControl$Result;->autoCapability:Ljava/lang/String;

    iput-object p2, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->autoCapability:Ljava/lang/String;

    iget-object p2, p1, Lcom/local/p5home/TurnCameraControl$Result;->nativeBuild:Ljava/lang/String;

    iput-object p2, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeBuild:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/local/p5home/TurnCameraControl$Result;->accepted:Z

    if-eqz p1, :cond_46

    const-string p1, "turn-20261028-d"

    iget-object p2, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeBuild:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\uff1b\u5f71\u50cf\u8fdb\u7a0b\u5c1a\u672a\u52a0\u8f7d\u672c\u6b21\u7248\u672c\uff0c\u505c\u8f66\u540e\u9700\u91cd\u65b0\u52a0\u8f7d"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeMessage:Ljava/lang/String;

    :cond_46
    iget-object p1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeResult:Landroid/widget/TextView;

    if-eqz p1, :cond_4f

    iget-object p2, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4f
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/local/p5home/TurnCameraSettingsActivity;->setBusy(Z)V

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->refresh()V

    return-void
.end method

.method synthetic lambda$nativeOperation$7$com-local-g3home-TurnCameraSettingsActivity(Ljava/lang/String;)V
    .registers 5

    .line 132
    const-string v0, "start"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/local/p5home/TurnCameraControl;->startNative(Landroid/content/Context;)Lcom/local/p5home/TurnCameraControl$Result;

    move-result-object v0

    goto :goto_19

    :cond_11
    invoke-virtual {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/local/p5home/TurnCameraControl;->request(Landroid/content/Context;Ljava/lang/String;)Lcom/local/p5home/TurnCameraControl$Result;

    move-result-object v0

    .line 133
    :goto_19
    iget-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->main:Landroid/os/Handler;

    new-instance v2, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p1}, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda4;-><init>(Lcom/local/p5home/TurnCameraSettingsActivity;Lcom/local/p5home/TurnCameraControl$Result;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$write$10$com-local-g3home-TurnCameraSettingsActivity(IZ)V
    .registers 9

    .line 157
    nop

    .line 160
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settings --user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " put system "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "turn_assistant_sw"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p2, :cond_29

    const-string v2, "1"

    goto :goto_2b

    :cond_29
    const-string v2, "0"

    :goto_2b
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 161
    new-instance v2, Ljava/lang/ProcessBuilder;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "su"

    aput-object v4, v3, v0

    const-string v4, "-c"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 163
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3, p1}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_67

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result p1
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_64} :catch_73
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_64} :catch_6f
    .catchall {:try_start_3 .. :try_end_64} :catchall_6d

    if-nez p1, :cond_67

    move v0, v5

    .line 166
    :cond_67
    if-eqz v1, :cond_7e

    :goto_69
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    goto :goto_7e

    :catchall_6d
    move-exception p1

    goto :goto_8a

    .line 165
    :catch_6f
    move-exception p1

    .line 166
    if-eqz v1, :cond_7e

    goto :goto_69

    .line 164
    :catch_73
    move-exception p1

    :try_start_74
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_6d

    .line 166
    if-eqz v1, :cond_7e

    goto :goto_69

    .line 167
    :cond_7e
    :goto_7e
    nop

    .line 168
    iget-object p1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->main:Landroid/os/Handler;

    new-instance v1, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, p2}, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/local/p5home/TurnCameraSettingsActivity;ZZ)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void

    .line 166
    :goto_8a
    if-eqz v1, :cond_8f

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_8f
    throw p1
.end method

.method synthetic lambda$write$9$com-local-g3home-TurnCameraSettingsActivity(ZZ)V
    .registers 4

    .line 168
    iget-boolean v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->dead:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/local/p5home/TurnCameraSettingsActivity;->finishWrite(ZZZ)V

    :cond_8
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->build()V

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->refresh()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->build()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->dead:Z

    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->statusTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->resumed:Z

    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->statusTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 4

    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->resumed:Z

    iget v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->theme:I

    invoke-static {p0}, Lcom/local/p5home/Ui;->themeSignature(Landroid/content/Context;)I

    move-result v2

    if-eq v1, v2, :cond_11

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraSettingsActivity;->build()V

    :cond_11
    iget-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->main:Landroid/os/Handler;

    iget-object v2, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->statusTick:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->main:Landroid/os/Handler;

    iget-object v2, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->statusTick:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->checked:Z

    if-nez v1, :cond_2a

    iput-boolean v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity;->checked:Z

    const-string v0, "probe"

    invoke-direct {p0, v0}, Lcom/local/p5home/TurnCameraSettingsActivity;->nativeOperation(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method
