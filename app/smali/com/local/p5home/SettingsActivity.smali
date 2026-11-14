.class public final Lcom/local/p5home/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/SettingsActivity$ToggleChange;,
        Lcom/local/p5home/SettingsActivity$Success;
    }
.end annotation


# instance fields
.field private apiDialog:Lcom/local/p5home/Ui$PanelDialog;

.field private apiEndpoint:Ljava/lang/String;

.field private apiKeyStatus:Landroid/widget/TextView;

.field private apiModel:Ljava/lang/String;

.field private apiPrefix:Ljava/lang/String;

.field private apiProtocolDraft:Ljava/lang/String;

.field private arkStatus:Landroid/widget/TextView;

.field private autoNav:Lcom/local/p5home/Ui$Toggle;

.field private binding:Z

.field private busy:Z

.field private continuous:Landroid/widget/TextView;

.field private final controls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private dead:Z

.field private doubao:Lcom/local/p5home/Ui$Toggle;

.field private endpoint:Landroid/widget/EditText;

.field private form:Lcom/local/p5home/AppConfig;

.field private hookStatus:Landroid/widget/TextView;

.field private key:Landroid/widget/EditText;

.field private final main:Landroid/os/Handler;

.field private managementDialog:Lcom/local/p5home/Ui$PanelDialog;

.field private model:Landroid/widget/EditText;

.field private musicValue:Landroid/widget/TextView;

.field private navValue:Landroid/widget/TextView;

.field private operation:Landroid/widget/TextView;

.field private prefix:Landroid/widget/EditText;

.field private restoreWake:Lcom/local/p5home/Ui$Toggle;

.field private resumed:Z

.field private rootResult:Ljava/lang/String;

.field private rootStatus:Landroid/widget/TextView;

.field private rootSummary:Landroid/widget/TextView;

.field private final storeWorker:Ljava/util/concurrent/ExecutorService;

.field private theme:I

.field private final tick:Ljava/lang/Runnable;

.field private voice:Lcom/local/p5home/Ui$Toggle;

.field private wakeNativeToggle:Lcom/local/p5home/Ui$Toggle;


# direct methods
.method public static synthetic $r8$lambda$-bnqz0V5rf3hhT9-bei-Zs57KbQ(Lcom/local/p5home/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->clearKey()V

    return-void
.end method

.method public static synthetic $r8$lambda$-eQJIJozlEYR7kpGNk0U8QZLMpo(Lcom/local/p5home/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->chooseNavigation()V

    return-void
.end method

.method public static synthetic $r8$lambda$32XZhnWx0f9k3iHNeK-GrcngLjE(Lcom/local/p5home/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->apiSettings()V

    return-void
.end method

.method public static synthetic $r8$lambda$3dtyHIm4Z20uzPc9t-W12_QyElQ(Lcom/local/p5home/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->wakeSettings()V

    return-void
.end method

.method public static synthetic $r8$lambda$7ZIl5d2mVY-Fx5Jfk707oEVlQo8(Lcom/local/p5home/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->showStatus()V

    return-void
.end method

.method public static synthetic $r8$lambda$9j4iwSv44ILZd96lliB86XE4jbA(Lcom/local/p5home/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->checkRoot()V

    return-void
.end method

.method public static synthetic $r8$lambda$APWmJTLA3xCL739VsflfFipaIa0(Lcom/local/p5home/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->testSpeech()V

    return-void
.end method

.method public static synthetic $r8$lambda$ITBfYT-j6KCwVTRVzUHsiDsI4rA(Lcom/local/p5home/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->returnHome()V

    return-void
.end method

.method public static synthetic $r8$lambda$JrUcCzO9pqo_FvUeBhSRrgnorZ4(Lcom/local/p5home/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->turnCameraSettings()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ua6VL8pKCD6_4BRIqTUeRcQbyUs(Lcom/local/p5home/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->appearance()V

    return-void
.end method

.method public static synthetic $r8$lambda$aXAlIr4LfGJhoFJiVbLV1KNIJbc(Lcom/local/p5home/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->vehicleBridge()V

    return-void
.end method

.method public static synthetic $r8$lambda$ar9WxDLDOdw1wOqI5gtMHE0gQB0(Lcom/local/p5home/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->vehicleLab()V

    return-void
.end method

.method public static synthetic $r8$lambda$drf1CVGd7mGJaYii1ByZYxN6ASY(Lcom/local/p5home/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->shortcutSettings()V

    return-void
.end method

.method public static synthetic $r8$lambda$nJcEhlNVN8VaTvM9jbZU1HX4vO0(Lcom/local/p5home/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->topBarSettings()V

    return-void
.end method

.method public static synthetic $r8$lambda$nLtJQaiXsVvpfcwAuM78uArcfog(Lcom/local/p5home/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->desktopSettings()V

    return-void
.end method

.method public static synthetic $r8$lambda$t7aoum8_2LnnuoZoKPXIGjL3op8(Lcom/local/p5home/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->chooseMusic()V

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

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->main:Landroid/os/Handler;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->storeWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/local/p5home/SettingsActivity;->theme:I

    .line 6
    const-string v0, "\u9996\u6b21\u8bbe\u7f6e\u9ed8\u8ba4\u684c\u9762\u9700\u8981 Root"

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->rootResult:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/local/p5home/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/local/p5home/SettingsActivity$1;-><init>(Lcom/local/p5home/SettingsActivity;)V

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/local/p5home/SettingsActivity;)Z
    .registers 1

    .line 4
    iget-boolean p0, p0, Lcom/local/p5home/SettingsActivity;->dead:Z

    return p0
.end method

.method static synthetic access$100(Lcom/local/p5home/SettingsActivity;)Z
    .registers 1

    .line 4
    iget-boolean p0, p0, Lcom/local/p5home/SettingsActivity;->resumed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/local/p5home/SettingsActivity;)V
    .registers 1

    .line 4
    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->updateStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/local/p5home/SettingsActivity;)Landroid/os/Handler;
    .registers 1

    .line 4
    iget-object p0, p0, Lcom/local/p5home/SettingsActivity;->main:Landroid/os/Handler;

    return-object p0
.end method

.method private apiSettings()V
    .registers 17

    .line 54
    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/local/p5home/SettingsActivity;->busy:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    iget-object v0, v6, Lcom/local/p5home/SettingsActivity;->apiProtocolDraft:Ljava/lang/String;

    if-nez v0, :cond_15

    iget-object v0, v6, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-object v0, v0, Lcom/local/p5home/AppConfig;->apiProtocol:Ljava/lang/String;

    iput-object v0, v6, Lcom/local/p5home/SettingsActivity;->apiProtocolDraft:Ljava/lang/String;

    .line 55
    :cond_15
    const-string v0, "openai"

    const-string v1, "responses"

    const-string v2, "ark"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "OpenAI \u517c\u5bb9 \u00b7 Chat Completions"

    const-string v1, "OpenAI \u00b7 Responses"

    const-string v2, "\u706b\u5c71\u65b9\u821f \u00b7 \u81ea\u52a8\u9002\u914d"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v9

    .line 56
    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v0

    iget v0, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v1, "\u63a5\u53e3\u683c\u5f0f"

    const/16 v2, 0x1c

    invoke-static {v6, v1, v2, v0}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v0, 0xe

    invoke-static {v6, v7, v0}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 57
    const/4 v10, 0x3

    new-array v11, v10, [Landroid/widget/Button;

    const/4 v12, 0x0

    move v13, v12

    :goto_44
    const-string v0, ""

    const/4 v15, -0x1

    if-ge v13, v10, :cond_8e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v8, v13

    iget-object v3, v6, Lcom/local/p5home/SettingsActivity;->apiProtocolDraft:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    const-string v0, "\u2713  "

    :cond_5a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v9, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda5;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v8

    move v3, v13

    move-object v10, v4

    move-object v4, v11

    move-object v14, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda5;-><init>(Lcom/local/p5home/SettingsActivity;[Ljava/lang/String;I[Landroid/widget/Button;[Ljava/lang/String;)V

    invoke-static {v6, v14, v12, v10}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    aput-object v0, v11, v13

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v15, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0xc

    invoke-static {v6, v7, v0}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x3

    goto :goto_44

    .line 58
    :cond_8e
    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v2, "\u5730\u5740\u586b\u5199\u670d\u52a1\u5546\u7684 HTTPS \u57fa\u7840\u5730\u5740\uff0c\u4f8b\u5982 https://api.openai.com/v1\uff1b\u4e5f\u652f\u6301\u5b8c\u6574\u63a5\u53e3\u8def\u5f84\u3002\u5207\u6362\u670d\u52a1\u5668\u540e\u9700\u586b\u5199\u5bf9\u5e94\u5bc6\u94a5\u3002"

    const/16 v3, 0x1a

    invoke-static {v6, v2, v3, v1}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x14

    invoke-static {v6, v7, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 59
    iget-object v1, v6, Lcom/local/p5home/SettingsActivity;->apiEndpoint:Ljava/lang/String;

    if-nez v1, :cond_ac

    iget-object v1, v6, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-object v1, v1, Lcom/local/p5home/AppConfig;->endpoint:Ljava/lang/String;

    :cond_ac
    const-string v2, "HTTPS API \u57fa\u7840\u5730\u5740"

    invoke-static {v6, v2, v1, v12}, Lcom/local/p5home/Ui;->input(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, v6, Lcom/local/p5home/SettingsActivity;->endpoint:Landroid/widget/EditText;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 60
    iget-object v1, v6, Lcom/local/p5home/SettingsActivity;->apiModel:Ljava/lang/String;

    if-nez v1, :cond_c1

    iget-object v1, v6, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-object v1, v1, Lcom/local/p5home/AppConfig;->modelId:Ljava/lang/String;

    :cond_c1
    const-string v2, "\u6a21\u578b ID / \u63a8\u7406\u63a5\u5165\u70b9"

    invoke-static {v6, v2, v1, v12}, Lcom/local/p5home/Ui;->input(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, v6, Lcom/local/p5home/SettingsActivity;->model:Landroid/widget/EditText;

    iget-object v1, v6, Lcom/local/p5home/SettingsActivity;->apiPrefix:Ljava/lang/String;

    if-nez v1, :cond_d1

    iget-object v1, v6, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-object v1, v1, Lcom/local/p5home/AppConfig;->prefix:Ljava/lang/String;

    :cond_d1
    const-string v2, "\u4f8b\u5982\uff1a\u95ee\u8c46\u5305"

    invoke-static {v6, v2, v1, v12}, Lcom/local/p5home/Ui;->input(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, v6, Lcom/local/p5home/SettingsActivity;->prefix:Landroid/widget/EditText;

    .line 61
    const-string v1, "\u7559\u7a7a\u4fdd\u7559\u5f53\u524d\u670d\u52a1\u5668\u5bc6\u94a5"

    invoke-static {v6, v1, v0, v12}, Lcom/local/p5home/Ui;->input(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, v6, Lcom/local/p5home/SettingsActivity;->key:Landroid/widget/EditText;

    const v2, 0x80081

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, v6, Lcom/local/p5home/SettingsActivity;->key:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v1, v6, Lcom/local/p5home/SettingsActivity;->key:Landroid/widget/EditText;

    invoke-virtual {v1, v12}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    iget-object v1, v6, Lcom/local/p5home/SettingsActivity;->key:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImportantForAutofill(I)V

    iget-object v1, v6, Lcom/local/p5home/SettingsActivity;->key:Landroid/widget/EditText;

    const/high16 v3, 0x1000000

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 62
    const-string v1, "API Endpoint"

    iget-object v3, v6, Lcom/local/p5home/SettingsActivity;->endpoint:Landroid/widget/EditText;

    invoke-static {v6, v7, v1, v3}, Lcom/local/p5home/Ui;->field(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/EditText;)V

    const-string v1, "\u6a21\u578b ID"

    iget-object v3, v6, Lcom/local/p5home/SettingsActivity;->model:Landroid/widget/EditText;

    invoke-static {v6, v7, v1, v3}, Lcom/local/p5home/Ui;->field(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/EditText;)V

    const-string v1, "\u539f\u8f66\u8bed\u97f3\u63d0\u95ee\u89e6\u53d1\u8bcd"

    iget-object v3, v6, Lcom/local/p5home/SettingsActivity;->prefix:Landroid/widget/EditText;

    invoke-static {v6, v7, v1, v3}, Lcom/local/p5home/Ui;->field(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/EditText;)V

    const-string v1, "API Key \u00b7 \u4e0d\u56de\u663e"

    iget-object v3, v6, Lcom/local/p5home/SettingsActivity;->key:Landroid/widget/EditText;

    invoke-static {v6, v7, v1, v3}, Lcom/local/p5home/Ui;->field(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/EditText;)V

    .line 63
    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const/16 v3, 0x1b

    invoke-static {v6, v0, v3, v1}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v6, Lcom/local/p5home/SettingsActivity;->apiKeyStatus:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v0, 0x18

    invoke-static {v6, v7, v0}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 64
    new-instance v0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, v6}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda6;-><init>(Lcom/local/p5home/SettingsActivity;)V

    const-string v1, "\u4fdd\u5b58\u5e76\u6d4b\u8bd5\u8fde\u63a5"

    invoke-static {v6, v1, v12, v0}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, v6}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda7;-><init>(Lcom/local/p5home/SettingsActivity;)V

    const-string v3, "\u6e05\u9664\u5df2\u4fdd\u5b58\u5bc6\u94a5"

    invoke-static {v6, v3, v12, v1}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v15, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x12

    invoke-static {v6, v7, v3}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v15, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v3

    const-string v4, "\u5927\u6a21\u578b\u63a5\u53e3"

    invoke-virtual {v3, v4}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/local/p5home/Ui$PanelBuilder;->setView(Landroid/view/View;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v3

    const-string v4, "\u53d6\u6d88"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v3

    const-string v4, "\u4fdd\u5b58\u8bbe\u7f6e"

    invoke-virtual {v3, v4, v5}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object v3

    iput-object v3, v6, Lcom/local/p5home/SettingsActivity;->apiDialog:Lcom/local/p5home/Ui$PanelDialog;

    iget-object v4, v6, Lcom/local/p5home/SettingsActivity;->key:Landroid/widget/EditText;

    .line 66
    new-instance v5, Ljava/util/ArrayList;

    new-array v2, v2, [Landroid/widget/TextView;

    iget-object v7, v6, Lcom/local/p5home/SettingsActivity;->endpoint:Landroid/widget/EditText;

    aput-object v7, v2, v12

    iget-object v7, v6, Lcom/local/p5home/SettingsActivity;->model:Landroid/widget/EditText;

    const/4 v8, 0x1

    aput-object v7, v2, v8

    const/4 v7, 0x2

    iget-object v8, v6, Lcom/local/p5home/SettingsActivity;->prefix:Landroid/widget/EditText;

    aput-object v8, v2, v7

    iget-object v7, v6, Lcom/local/p5home/SettingsActivity;->key:Landroid/widget/EditText;

    const/4 v8, 0x3

    aput-object v7, v2, v8

    const/4 v7, 0x4

    aput-object v0, v2, v7

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v3, v15}, Lcom/local/p5home/Ui$PanelDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const/4 v1, -0x2

    invoke-virtual {v3, v1}, Lcom/local/p5home/Ui$PanelDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v6, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v15}, Lcom/local/p5home/Ui$PanelDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, v6}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda8;-><init>(Lcom/local/p5home/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    new-instance v0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, v6, v4, v5, v3}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda9;-><init>(Lcom/local/p5home/SettingsActivity;Landroid/widget/EditText;Ljava/util/List;Lcom/local/p5home/Ui$PanelDialog;)V

    invoke-virtual {v3, v0}, Lcom/local/p5home/Ui$PanelDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/SettingsActivity;->updateStatus()V

    invoke-virtual {v3}, Lcom/local/p5home/Ui$PanelDialog;->show()V

    .line 68
    return-void
.end method

.method private appearance()V
    .registers 10

    .line 52
    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/local/p5home/Ui$PanelDialog;

    const-string v2, "\u6d45\u8272 \u00b7 \u767d\u5929"

    const-string v3, "\u6df1\u8272 \u00b7 \u591c\u95f4"

    const-string v4, "\u8ddf\u968f\u7cfb\u7edf"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    const/4 v5, 0x3

    if-ge v4, v5, :cond_4f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/local/p5home/Ui;->themeMode(Landroid/content/Context;)I

    move-result v6

    if-ne v6, v4, :cond_24

    const-string v6, "\u2713  "

    goto :goto_26

    :cond_24
    const-string v6, ""

    :goto_26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda21;

    invoke-direct {v6, p0, v4, v1}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda21;-><init>(Lcom/local/p5home/SettingsActivity;I[Lcom/local/p5home/Ui$PanelDialog;)V

    invoke-static {p0, v5, v3, v6}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x12

    invoke-static {p0, v0, v5}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_4f
    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v2

    const-string v4, "moon"

    invoke-virtual {v2, v4}, Lcom/local/p5home/Ui$PanelBuilder;->setIcon(Ljava/lang/String;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v2

    const-string v4, "\u5916\u89c2\u6a21\u5f0f"

    invoke-virtual {v2, v4}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v2

    const-string v4, "\u539f\u8f66\u4e3b\u9898\u672a\u540c\u6b65\u65f6\uff0c\u53ef\u4ee5\u624b\u52a8\u9009\u62e9\u767d\u5929\u6216\u591c\u95f4\u3002"

    invoke-virtual {v2, v4}, Lcom/local/p5home/Ui$PanelBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setView(Landroid/view/View;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v2, "\u53d6\u6d88"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelDialog;->show()V

    return-void
.end method

.method private bind()V
    .registers 3

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->binding:Z

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->voice:Lcom/local/p5home/Ui$Toggle;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-boolean v1, v1, Lcom/local/p5home/AppConfig;->voiceEnabled:Z

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$Toggle;->setChecked(Z)V

    :cond_e
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->doubao:Lcom/local/p5home/Ui$Toggle;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-boolean v1, v1, Lcom/local/p5home/AppConfig;->doubaoEnabled:Z

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$Toggle;->setChecked(Z)V

    :cond_19
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->autoNav:Lcom/local/p5home/Ui$Toggle;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-boolean v1, v1, Lcom/local/p5home/AppConfig;->autoLaunchNav:Z

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$Toggle;->setChecked(Z)V

    :cond_24
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->restoreWake:Lcom/local/p5home/Ui$Toggle;

    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-boolean v1, v1, Lcom/local/p5home/AppConfig;->restoreAfterWake:Z

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$Toggle;->setChecked(Z)V

    :cond_2f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->binding:Z

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->musicValue:Landroid/widget/TextView;

    if-eqz v0, :cond_41

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-object v1, v1, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/local/p5home/MusicRouter;->label(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_41
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->navValue:Landroid/widget/TextView;

    if-eqz v0, :cond_5b

    :try_start_45
    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-object v1, v1, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/local/p5home/Navigator;->label(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_50
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_50} :catch_51

    goto :goto_5b

    :catch_51
    move-exception v0

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->navValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-object v1, v1, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method private build()V
    .registers 18

    .line 15
    move-object/from16 v7, p0

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->install(Landroid/app/Activity;)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->themeSignature(Landroid/content/Context;)I

    move-result v0

    iput v0, v7, Lcom/local/p5home/SettingsActivity;->theme:I

    iget-object v0, v7, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/local/p5home/SettingsActivity;->restoreWake:Lcom/local/p5home/Ui$Toggle;

    iput-object v0, v7, Lcom/local/p5home/SettingsActivity;->autoNav:Lcom/local/p5home/Ui$Toggle;

    iput-object v0, v7, Lcom/local/p5home/SettingsActivity;->doubao:Lcom/local/p5home/Ui$Toggle;

    iput-object v0, v7, Lcom/local/p5home/SettingsActivity;->voice:Lcom/local/p5home/Ui$Toggle;

    iput-object v0, v7, Lcom/local/p5home/SettingsActivity;->rootStatus:Landroid/widget/TextView;

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v8

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iget v1, v8, Lcom/local/p5home/Ui$Palette;->bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/high16 v1, 0x42300000    # 44.0f

    invoke-static {v7, v1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v7, v3}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v7, v1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v7, v3}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v9, v2, v4, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v0}, Lcom/local/p5home/SettingsActivity;->setContentView(Landroid/view/View;)V

    .line 16
    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda23;

    invoke-direct {v1, v7}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda23;-><init>(Lcom/local/p5home/SettingsActivity;)V

    const-string v2, "back"

    const-string v3, "\u8fd4\u56de\u684c\u9762"

    invoke-static {v7, v2, v3, v1}, Lcom/local/p5home/Ui;->iconButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v10, 0x1e

    invoke-static {v7, v0, v10}, Lcom/local/p5home/Ui;->side(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    const-string v1, "\u8bbe\u7f6e"

    const/16 v2, 0x34

    invoke-static {v7, v1, v2}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, 0x0

    const/4 v12, -0x2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v2, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v14, 0x24

    invoke-static {v7, v9, v14}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 17
    const-string v0, "\u5bfc\u822a\u4e0e\u8bed\u97f3"

    invoke-direct {v7, v9, v0}, Lcom/local/p5home/SettingsActivity;->section(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v15

    iget v0, v8, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v6, ""

    invoke-static {v7, v6, v10, v0}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, v7, Lcom/local/p5home/SettingsActivity;->navValue:Landroid/widget/TextView;

    const-string v2, "nav"

    const-string v3, "\u9ed8\u8ba4\u5bfc\u822a"

    const-string v4, "\u9009\u62e9\u5904\u7406\u5bfc\u822a\u8bf7\u6c42\u7684\u5e94\u7528"

    new-instance v1, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda29;

    invoke-direct {v1, v7}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda29;-><init>(Lcom/local/p5home/SettingsActivity;)V

    move-object/from16 v0, p0

    move-object/from16 v16, v1

    move-object v1, v15

    move-object v12, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/SettingsActivity;->entry(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    iget-object v1, v7, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7, v15}, Lcom/local/p5home/Ui;->line(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    iget v0, v8, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {v7, v12, v10, v0}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, v7, Lcom/local/p5home/SettingsActivity;->musicValue:Landroid/widget/TextView;

    const-string v2, "music"

    const-string v3, "\u9ed8\u8ba4\u97f3\u4e50"

    const-string v4, "\u5c0fP\u70b9\u6b4c\u76f4\u63a5\u4ea4\u7ed9\u6240\u9009\u5e94\u7528\u64ad\u653e"

    new-instance v6, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda30;

    invoke-direct {v6, v7}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda30;-><init>(Lcom/local/p5home/SettingsActivity;)V

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/SettingsActivity;->entry(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    iget-object v1, v7, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7, v15}, Lcom/local/p5home/Ui;->line(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    const-string v2, "mic"

    const-string v3, "\u5c0fP\u8bed\u97f3\u8f6c\u63a5"

    const-string v4, "\u5bfc\u822a\u548c\u70b9\u6b4c\u6309\u9ed8\u8ba4\u5e94\u7528\u5904\u7406\uff1b\u4fdd\u7559\u5c0fP\u8fde\u7eed\u76d1\u542c"

    iget-object v0, v7, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-boolean v5, v0, Lcom/local/p5home/AppConfig;->voiceEnabled:Z

    new-instance v6, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda31;

    invoke-direct {v6, v7}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda31;-><init>(Lcom/local/p5home/SettingsActivity;)V

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/SettingsActivity;->toggle(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/local/p5home/SettingsActivity$ToggleChange;)Lcom/local/p5home/Ui$Toggle;

    move-result-object v0

    iput-object v0, v7, Lcom/local/p5home/SettingsActivity;->voice:Lcom/local/p5home/Ui$Toggle;

    invoke-static {v7, v15}, Lcom/local/p5home/Ui;->line(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    const-string v2, "chat"

    const-string v3, "\u8c46\u5305\u95ee\u7b54"

    const-string v4, "\u89e6\u53d1\u8bcd\u63d0\u95ee\uff0c\u4f7f\u7528\u5df2\u914d\u7f6e\u7684\u5927\u6a21\u578b\u670d\u52a1"

    iget-object v0, v7, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-boolean v5, v0, Lcom/local/p5home/AppConfig;->doubaoEnabled:Z

    new-instance v6, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda32;

    invoke-direct {v6, v7}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda32;-><init>(Lcom/local/p5home/SettingsActivity;)V

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/SettingsActivity;->toggle(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/local/p5home/SettingsActivity$ToggleChange;)Lcom/local/p5home/Ui$Toggle;

    move-result-object v0

    iput-object v0, v7, Lcom/local/p5home/SettingsActivity;->doubao:Lcom/local/p5home/Ui$Toggle;

    invoke-static {v7, v15}, Lcom/local/p5home/Ui;->line(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    const-string v2, "mic"

    const-string v3, "\u81ea\u5b9a\u4e49\u5524\u9192\u8bcd"

    const-string v4, "\u4f60\u597d\u5c0fP\u7528\u539f\u8f66 \u00b7 \u81ea\u5b9a\u4e49\u8bcd\u7528\u5927\u6a21\u578b"

    const/4 v5, 0x0

    new-instance v6, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda33;

    invoke-direct {v6, v7}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda33;-><init>(Lcom/local/p5home/SettingsActivity;)V

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/SettingsActivity;->entry(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    iget-object v1, v7, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, v8, Lcom/local/p5home/Ui$Palette;->muted:I

    const/16 v10, 0x1b

    invoke-static {v7, v12, v10, v0}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v7, Lcom/local/p5home/SettingsActivity;->continuous:Landroid/widget/TextView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v7, v1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v7, v3}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v7, v1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v7, Lcom/local/p5home/SettingsActivity;->continuous:Landroid/widget/TextView;

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v0, 0x1a

    invoke-static {v7, v9, v0}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 18
    const-string v1, "\u8d26\u53f7\u4e0e\u670d\u52a1"

    invoke-direct {v7, v9, v1}, Lcom/local/p5home/SettingsActivity;->section(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget v3, v8, Lcom/local/p5home/Ui$Palette;->accent:I

    const/16 v4, 0x48

    const-string v5, "cloud"

    invoke-static {v7, v5, v3, v4}, Lcom/local/p5home/Ui;->icon(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v3, 0x16

    invoke-static {v7, v2, v3}, Lcom/local/p5home/Ui;->side(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    const-string v4, "\u5927\u6a21\u578b\u670d\u52a1"

    invoke-static {v7, v4, v14}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v4, 0xc

    invoke-static {v7, v3, v4}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    iget v4, v8, Lcom/local/p5home/Ui$Palette;->muted:I

    const/16 v14, 0x1c

    invoke-static {v7, v12, v14, v4}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, v7, Lcom/local/p5home/SettingsActivity;->arkStatus:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v11, v5, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {v7, v1, v0}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance v2, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, v7}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda13;-><init>(Lcom/local/p5home/SettingsActivity;)V

    const-string v3, "\u63a5\u53e3\u914d\u7f6e"

    invoke-static {v7, v3, v11, v2}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda34;

    invoke-direct {v3, v7}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda34;-><init>(Lcom/local/p5home/SettingsActivity;)V

    const-string v4, "\u6d4b\u8bd5\u64ad\u62a5"

    invoke-static {v7, v4, v11, v3}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v3

    iget-object v4, v7, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v7, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    filled-new-array {v2, v3}, [Landroid/widget/Button;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/local/p5home/Ui;->buttons(Landroid/content/Context;Landroid/widget/LinearLayout;[Landroid/widget/Button;)V

    invoke-static {v7, v9, v0}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 19
    const-string v0, "\u7cfb\u7edf\u7ba1\u7406"

    invoke-direct {v7, v9, v0}, Lcom/local/p5home/SettingsActivity;->section(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v11

    iget v0, v8, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {v7, v12, v14, v0}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v7, Lcom/local/p5home/SettingsActivity;->rootSummary:Landroid/widget/TextView;

    const-string v2, "apps"

    const-string v3, "\u684c\u9762\u7ba1\u7406"

    const-string v4, "\u9ed8\u8ba4\u684c\u9762\u3001\u81ea\u52a8\u5bfc\u822a\u4e0e\u70ed\u70b9\u3001\u539f\u8f66\u56de\u9000"

    const/4 v5, 0x0

    new-instance v6, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda35;

    invoke-direct {v6, v7}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda35;-><init>(Lcom/local/p5home/SettingsActivity;)V

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/SettingsActivity;->entry(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    iget-object v1, v7, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lcom/local/p5home/SettingsActivity;->rootSummary:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {v7, v11}, Lcom/local/p5home/Ui;->line(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    const-string v2, "apps"

    const-string v3, "\u684c\u9762\u5feb\u6377\u5e94\u7528"

    const-string v4, "\u81ea\u5b9a\u4e49\u4f4d\u7f6e\u6216\u81ea\u52a8\u663e\u793a\u9ad8\u9891\u5e94\u7528"

    new-instance v6, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda36;

    invoke-direct {v6, v7}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda36;-><init>(Lcom/local/p5home/SettingsActivity;)V

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/SettingsActivity;->entry(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    iget-object v1, v7, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x12

    invoke-static {v7, v11, v0}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static {v7, v11}, Lcom/local/p5home/Ui;->line(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    const-string v2, "apps"

    const-string v3, "\u9876\u90e8\u680f\u5e94\u7528"

    const-string v4, "\u72ec\u7acb\u5f00\u5173 \u00b7 \u516d\u4e2a\u5feb\u6377\u5165\u53e3"

    new-instance v6, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda24;

    invoke-direct {v6, v7}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda24;-><init>(Lcom/local/p5home/SettingsActivity;)V

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/SettingsActivity;->entry(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    iget-object v1, v7, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7, v11}, Lcom/local/p5home/Ui;->line(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    const-string v2, "car"

    const-string v3, "\u8f6c\u5411\u4fa7\u6444"

    const-string v4, "\u539f\u8f66\u8f6c\u5411\u706f\u5f71\u50cf\u5f00\u5173\u4e0e\u72b6\u6001"

    new-instance v6, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda25;

    invoke-direct {v6, v7}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda25;-><init>(Lcom/local/p5home/SettingsActivity;)V

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/SettingsActivity;->entry(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    iget-object v1, v7, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7, v11}, Lcom/local/p5home/Ui;->line(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    const-string v2, "car"

    const-string v3, "\u4eea\u8868\u4e0e\u8f66\u8f86\u63a5\u53e3"

    const-string v4, "\u8f66\u8f86\u6570\u636e\u3001\u4eea\u8868\u63a8\u9001\u4e0e\u624b\u52a8\u6d4b\u8bd5"

    new-instance v6, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda26;

    invoke-direct {v6, v7}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda26;-><init>(Lcom/local/p5home/SettingsActivity;)V

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/SettingsActivity;->entry(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    iget-object v1, v7, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7, v11}, Lcom/local/p5home/Ui;->line(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    const-string v2, "settings"

    const-string v3, "\u8f66\u673a\u529f\u80fd\u4e0e\u7814\u7a76"

    const-string v4, "\u5de5\u5177\u5165\u53e3\u3001\u539f\u5382\u63a5\u53e3\u4e0e\u9a8c\u8bc1\u8fdb\u5c55"

    new-instance v6, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda27;

    invoke-direct {v6, v7}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda27;-><init>(Lcom/local/p5home/SettingsActivity;)V

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/SettingsActivity;->entry(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    iget-object v1, v7, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7, v11}, Lcom/local/p5home/Ui;->line(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    const-string v2, "moon"

    const-string v3, "\u5916\u89c2\u6a21\u5f0f"

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->themeLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda28;

    invoke-direct {v6, v7}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda28;-><init>(Lcom/local/p5home/SettingsActivity;)V

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/SettingsActivity;->entry(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    iget-object v1, v7, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7, v11}, Lcom/local/p5home/Ui;->line(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    iget v0, v8, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {v7, v12, v14, v0}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, v7, Lcom/local/p5home/SettingsActivity;->hookStatus:Landroid/widget/TextView;

    const-string v2, "settings"

    const-string v3, "\u5c0fP\u63a5\u5165\u72b6\u6001"

    const-string v4, "LSPosed \u4e0e\u539f\u8f66\u8bed\u97f3\u5b9e\u9645\u72b6\u6001"

    new-instance v6, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda22;

    invoke-direct {v6, v7}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda22;-><init>(Lcom/local/p5home/SettingsActivity;)V

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/SettingsActivity;->entry(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    iget-object v1, v7, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x18

    invoke-static {v7, v9, v0}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    iget v0, v8, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {v7, v12, v10, v0}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v7, Lcom/local/p5home/SettingsActivity;->operation:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v7, Lcom/local/p5home/SettingsActivity;->operation:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/SettingsActivity;->bind()V

    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/SettingsActivity;->updateStatus()V

    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/SettingsActivity;->updateBusy()V

    .line 20
    return-void
.end method

.method private captureApiDraft()V
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->endpoint:Landroid/widget/EditText;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->apiEndpoint:Ljava/lang/String;

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->model:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->apiModel:Ljava/lang/String;

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->prefix:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->apiPrefix:Ljava/lang/String;

    :cond_26
    return-void
.end method

.method private changeHome(Z)V
    .registers 4

    .line 97
    iget-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    if-eqz p1, :cond_d

    const-string v0, "\u6b63\u5728\u6062\u590d\u539f\u8f66\u684c\u9762\u2026"

    goto :goto_f

    :cond_d
    const-string v0, "\u6b63\u5728\u8bbe\u7f6e\u9ed8\u8ba4\u684c\u9762\u2026"

    :goto_f
    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->rootResult:Ljava/lang/String;

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->rootStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_18

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->updateBusy()V

    new-instance v0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda14;-><init>(Lcom/local/p5home/SettingsActivity;)V

    if-eqz p1, :cond_26

    :try_start_22
    invoke-static {p0, v0}, Lcom/local/p5home/DeviceActions;->restoreOemHome(Landroid/app/Activity;Lcom/local/p5home/DeviceActions$Callback;)V

    goto :goto_54

    :cond_26
    invoke-static {p0, v0}, Lcom/local/p5home/DeviceActions;->setDefaultHome(Landroid/app/Activity;Lcom/local/p5home/DeviceActions$Callback;)V
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_29} :catch_2a

    goto :goto_54

    :catch_2a
    move-exception p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u684c\u9762\u64cd\u4f5c\u672a\u5b8c\u6210\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/SettingsActivity;->rootResult:Ljava/lang/String;

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->updateBusy()V

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->updateStatus()V

    const-string p1, "\u684c\u9762\u64cd\u4f5c\u672a\u5b8c\u6210"

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->rootResult:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    return-void
.end method

.method private checkRoot()V
    .registers 4

    .line 95
    iget-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    const-string v0, "\u6b63\u5728\u7b49\u5f85 Root \u6388\u6743\u2026"

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->rootResult:Ljava/lang/String;

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->rootStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->updateBusy()V

    :try_start_16
    new-instance v0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda47;-><init>(Lcom/local/p5home/SettingsActivity;)V

    invoke-static {p0, v0}, Lcom/local/p5home/DeviceActions;->checkRoot(Landroid/app/Activity;Lcom/local/p5home/DeviceActions$Callback;)V
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_1e} :catch_1f

    goto :goto_42

    :catch_1f
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Root \u68c0\u6d4b\u672a\u5b8c\u6210\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->rootResult:Ljava/lang/String;

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->updateBusy()V

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->updateStatus()V

    :goto_42
    return-void
.end method

.method private chooseMusic()V
    .registers 13

    .line 38
    iget-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/local/p5home/Ui$PanelDialog;

    .line 39
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v2

    iget v2, v2, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v3, "\u9009\u62e9\u540e\uff0c\u5c0fP\u70b9\u6b4c\u5c06\u6253\u5f00\u6240\u9009\u5e94\u7528\u5e76\u8bf7\u6c42\u64ad\u653e\u3002\u6b4c\u66f2\u662f\u5426\u53ef\u64ad\u53d6\u51b3\u4e8e\u5e94\u7528\u767b\u5f55\u3001\u7f51\u7edc\u548c\u7248\u6743\u3002"

    const/16 v4, 0x1b

    invoke-static {p0, v3, v4, v2}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v2, 0x12

    invoke-static {p0, v0, v2}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 40
    invoke-static {p0}, Lcom/local/p5home/MusicRouter;->providers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "music"

    const/4 v5, 0x0

    if-eqz v3, :cond_145

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/local/p5home/MusicRouter$Provider;

    .line 41
    iget-boolean v6, v3, Lcom/local/p5home/MusicRouter$Provider;->supported:Z

    invoke-static {p0}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {p0, v8}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x41b00000    # 22.0f

    invoke-static {p0, v10}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v11

    invoke-static {p0, v8}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v8

    invoke-static {p0, v10}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v7, v9, v11, v8, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 42
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    :try_start_5b
    invoke-virtual {p0}, Lcom/local/p5home/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v3, Lcom/local/p5home/MusicRouter$Provider;->pkg:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_68} :catch_69

    goto :goto_78

    :catch_69
    move-exception v9

    new-instance v9, Lcom/local/p5home/Ui$Symbol;

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v10

    iget v10, v10, Lcom/local/p5home/Ui$Palette;->accent:I

    invoke-direct {v9, v4, v10}, Lcom/local/p5home/Ui$Symbol;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_78
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42840000    # 66.0f

    invoke-static {p0, v9}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v10

    invoke-static {p0, v9}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v4, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x16

    invoke-static {p0, v7, v4}, Lcom/local/p5home/Ui;->side(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 43
    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Lcom/local/p5home/MusicRouter$Provider;->id:Ljava/lang/String;

    iget-object v10, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-object v10, v10, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ac

    const-string v9, "\u2713  "

    goto :goto_ae

    :cond_ac
    const-string v9, ""

    :goto_ae
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/local/p5home/MusicRouter$Provider;->label:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    invoke-static {p0, v8, v9}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v8, 0xa

    invoke-static {p0, v4, v8}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 44
    const-string v8, "system"

    iget-object v9, v3, Lcom/local/p5home/MusicRouter$Provider;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d7

    const-string v8, "\u4fdd\u7559\u539f\u8f66\u97f3\u4e50\u5904\u7406\u65b9\u5f0f"

    goto :goto_108

    :cond_d7
    iget-boolean v8, v3, Lcom/local/p5home/MusicRouter$Provider;->installed:Z

    if-nez v8, :cond_de

    const-string v8, "\u672a\u5b89\u88c5"

    goto :goto_108

    :cond_de
    iget-object v8, v3, Lcom/local/p5home/MusicRouter$Provider;->id:Ljava/lang/String;

    const-string v9, "qishui"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_101

    invoke-static {p0, v9}, Lcom/local/p5home/MusicRouter;->available(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f1

    const-string v8, "\u6865\u63a5\u5df2\u63a5\u5165 \u00b7 \u652f\u6301\u76f4\u63a5\u70b9\u6b4c"

    goto :goto_108

    :cond_f1
    iget-object v8, v3, Lcom/local/p5home/MusicRouter$Provider;->pkg:Ljava/lang/String;

    const-string v10, "com.luna.music"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fe

    const-string v8, "\u624b\u673a\u7248\u5df2\u5b89\u88c5 \u00b7 \u53ef\u4f5c\u4e3a\u9ed8\u8ba4\u97f3\u4e50\u6253\u5f00\uff1b\u5c0fP\u76f4\u63a5\u70b9\u6b4c\u672a\u9002\u914d"

    goto :goto_108

    :cond_fe
    const-string v8, "\u8f66\u673a\u7248\u5f85\u6fc0\u6d3b\uff1a\u52fe\u9009 LSPosed \u4f5c\u7528\u57df\u5e76\u6253\u5f00\u6c7d\u6c34"

    goto :goto_108

    :cond_101
    if-eqz v6, :cond_106

    const-string v8, "\u5df2\u5b89\u88c5 \u00b7 \u652f\u6301\u76f4\u63a5\u70b9\u6b4c"

    goto :goto_108

    :cond_106
    const-string v8, "\u5f53\u524d\u7248\u672c\u672a\u63d0\u4f9b\u53ef\u7528\u7684\u76f4\u63a5\u70b9\u6b4c\u5165\u53e3"

    .line 45
    :goto_108
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v9

    iget v9, v9, Lcom/local/p5home/Ui$Palette;->muted:I

    const/16 v10, 0x19

    invoke-static {p0, v8, v10, v9}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v8, v5, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v6, :cond_125

    goto :goto_127

    :cond_125
    const/high16 v10, 0x3f000000    # 0.5f

    :goto_127
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 46
    if-eqz v6, :cond_137

    new-instance v4, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda44;

    invoke-direct {v4, p0, v1, v3}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda44;-><init>(Lcom/local/p5home/SettingsActivity;[Lcom/local/p5home/Ui$PanelDialog;Lcom/local/p5home/MusicRouter$Provider;)V

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_137
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->line(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 48
    goto/16 :goto_2a

    .line 49
    :cond_145
    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/local/p5home/Ui$PanelBuilder;->setIcon(Ljava/lang/String;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v2

    const-string v3, "\u9ed8\u8ba4\u97f3\u4e50"

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

    aput-object v0, v1, v5

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelDialog;->show()V

    .line 50
    return-void
.end method

.method private chooseNavigation()V
    .registers 10

    .line 51
    iget-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-static {p0}, Lcom/local/p5home/Navigator;->providers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_9} :catch_f1

    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/local/p5home/Ui$PanelDialog;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/local/p5home/Navigator$Provider;

    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {p0, v5}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {p0, v7}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v8

    invoke-static {p0, v5}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v7}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v4, v6, v8, v5, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/local/p5home/Navigator$Provider;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-object v7, v7, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    const-string v6, "\u2713  "

    goto :goto_51

    :cond_4f
    const-string v6, ""

    :goto_51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/local/p5home/Navigator$Provider;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x22

    invoke-static {p0, v5, v6}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v5, 0xc

    invoke-static {p0, v4, v5}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    iget-boolean v5, v3, Lcom/local/p5home/Navigator$Provider;->installed:Z

    if-nez v5, :cond_74

    const-string v5, "\u672a\u5b89\u88c5"

    goto :goto_7d

    :cond_74
    iget-boolean v5, v3, Lcom/local/p5home/Navigator$Provider;->voiceSupported:Z

    if-eqz v5, :cond_7b

    const-string v5, "\u5df2\u5b89\u88c5 \u00b7 \u652f\u6301\u5c0fP\u8bed\u97f3\u8f6c\u63a5"

    goto :goto_7d

    :cond_7b
    const-string v5, "\u5df2\u5b89\u88c5 \u00b7 \u624b\u52a8\u6253\u5f00"

    :goto_7d
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v6

    iget v6, v6, Lcom/local/p5home/Ui$Palette;->muted:I

    const/16 v7, 0x1c

    invoke-static {p0, v5, v7, v6}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/high16 v5, 0x43040000    # 132.0f

    invoke-static {p0, v5}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget-boolean v5, v3, Lcom/local/p5home/Navigator$Provider;->installed:Z

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-boolean v5, v3, Lcom/local/p5home/Navigator$Provider;->installed:Z

    if-eqz v5, :cond_a1

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_a4

    :cond_a1
    const v5, 0x3f0ccccd    # 0.55f

    :goto_a4
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-boolean v5, v3, Lcom/local/p5home/Navigator$Provider;->installed:Z

    if-eqz v5, :cond_b3

    new-instance v5, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda37;

    invoke-direct {v5, p0, v2, v3}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda37;-><init>(Lcom/local/p5home/SettingsActivity;[Lcom/local/p5home/Ui$PanelDialog;Lcom/local/p5home/Navigator$Provider;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b3
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0, v1}, Lcom/local/p5home/Ui;->line(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto/16 :goto_14

    :cond_c2
    new-instance v3, Lcom/local/p5home/CustomNavOpen;

    invoke-direct {v3, p0, v2}, Lcom/local/p5home/CustomNavOpen;-><init>(Lcom/local/p5home/SettingsActivity;[Lcom/local/p5home/Ui$PanelDialog;)V

    const-string v4, "\u81ea\u5b9a\u4e49\u9009\u62e9\u5e94\u7528"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5, v3}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v3, "\u9009\u62e9\u9ed8\u8ba4\u5bfc\u822a"

    invoke-virtual {v0, v3}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setView(Landroid/view/View;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "\u5173\u95ed"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelDialog;->show()V

    return-void

    :catch_f1
    move-exception v0

    const-string v1, "\u5bfc\u822a\u5217\u8868\u672a\u8bfb\u53d6"

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private clearKey()V
    .registers 4

    .line 90
    iget-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "\u6e05\u9664 API Key"

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "\u5220\u9664\u5df2\u52a0\u5bc6\u4fdd\u5b58\u7684\u5bc6\u94a5\u540e\uff0c\u8c46\u5305\u95ee\u7b54\u5c06\u7b49\u5f85\u91cd\u65b0\u914d\u7f6e\u3002\u5176\u4ed6\u672a\u4fdd\u5b58\u8f93\u5165\u4e0d\u4f1a\u81ea\u52a8\u63d0\u4ea4\u3002"

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    new-instance v1, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda39;-><init>(Lcom/local/p5home/SettingsActivity;)V

    const-string v2, "\u6e05\u9664\u5bc6\u94a5"

    invoke-virtual {v0, v2, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelBuilder;->show()Lcom/local/p5home/Ui$PanelDialog;

    return-void
.end method

.method private confirmHome(Z)V
    .registers 5

    .line 96
    iget-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "apps"

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setIcon(Ljava/lang/String;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    if-eqz p1, :cond_14

    const-string v1, "\u6062\u590d\u539f\u8f66\u684c\u9762"

    goto :goto_16

    :cond_14
    const-string v1, "\u8bbe\u4e3a\u9ed8\u8ba4\u684c\u9762"

    :goto_16
    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u786e\u8ba4\u5df2\u505c\u8f66\uff0c\u4e14\u6682\u65f6\u4e0d\u4f9d\u8d56\u5bfc\u822a\u3002\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_2a

    const-string v2, "\u5c06\u6062\u590d\u539f\u8f66\u9ed8\u8ba4\u684c\u9762\uff0c\u5e76\u505c\u7528\u8f7b\u91cf\u684c\u9762\u81ea\u52a8\u542f\u52a8\u3002"

    goto :goto_2c

    :cond_2a
    const-string v2, "\u9700\u8981 Root \u6388\u6743\u3002\u5c06\u505c\u6b62\u65e7 G3 \u684c\u9762\u4e0e\u8bed\u97f3\u6a21\u5757\uff0c\u8bbe\u7f6e\u8f7b\u91cf\u684c\u9762\u3002"

    :goto_2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u5207\u6362\u65f6\u684c\u9762\u4e0e\u7cfb\u7edf\u680f\u53ef\u80fd\u77ed\u6682\u91cd\u8f7d\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    new-instance v1, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0, p1}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda38;-><init>(Lcom/local/p5home/SettingsActivity;Z)V

    const-string p1, "\u5df2\u505c\u8f66\uff0c\u6267\u884c"

    invoke-virtual {v0, p1, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelBuilder;->show()Lcom/local/p5home/Ui$PanelDialog;

    return-void
.end method

.method private static copy(Lcom/local/p5home/AppConfig;)Lcom/local/p5home/AppConfig;
    .registers 3

    .line 34
    new-instance v0, Lcom/local/p5home/AppConfig;

    invoke-direct {v0}, Lcom/local/p5home/AppConfig;-><init>()V

    iget-boolean v1, p0, Lcom/local/p5home/AppConfig;->voiceEnabled:Z

    iput-boolean v1, v0, Lcom/local/p5home/AppConfig;->voiceEnabled:Z

    iget-boolean v1, p0, Lcom/local/p5home/AppConfig;->doubaoEnabled:Z

    iput-boolean v1, v0, Lcom/local/p5home/AppConfig;->doubaoEnabled:Z

    iget-boolean v1, p0, Lcom/local/p5home/AppConfig;->autoLaunchNav:Z

    iput-boolean v1, v0, Lcom/local/p5home/AppConfig;->autoLaunchNav:Z

    iget-boolean v1, p0, Lcom/local/p5home/AppConfig;->restoreAfterWake:Z

    iput-boolean v1, v0, Lcom/local/p5home/AppConfig;->restoreAfterWake:Z

    iget-object v1, p0, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    iput-object v1, v0, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    iput-object v1, v0, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    iget-object v1, p0, Lcom/local/p5home/AppConfig;->endpoint:Ljava/lang/String;

    iput-object v1, v0, Lcom/local/p5home/AppConfig;->endpoint:Ljava/lang/String;

    iget-object v1, p0, Lcom/local/p5home/AppConfig;->modelId:Ljava/lang/String;

    iput-object v1, v0, Lcom/local/p5home/AppConfig;->modelId:Ljava/lang/String;

    iget-object v1, p0, Lcom/local/p5home/AppConfig;->prefix:Ljava/lang/String;

    iput-object v1, v0, Lcom/local/p5home/AppConfig;->prefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/local/p5home/AppConfig;->apiProtocol:Ljava/lang/String;

    iput-object v1, v0, Lcom/local/p5home/AppConfig;->apiProtocol:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/local/p5home/AppConfig;->modelWakeEnabled:Z

    iput-boolean v1, v0, Lcom/local/p5home/AppConfig;->modelWakeEnabled:Z

    iget-boolean v1, p0, Lcom/local/p5home/AppConfig;->customWakeUseNative:Z

    iput-boolean v1, v0, Lcom/local/p5home/AppConfig;->customWakeUseNative:Z

    iget-object p0, p0, Lcom/local/p5home/AppConfig;->modelWakeWords:Ljava/lang/String;

    iput-object p0, v0, Lcom/local/p5home/AppConfig;->modelWakeWords:Ljava/lang/String;

    return-object v0
.end method

.method private desktopSettings()V
    .registers 15

    .line 92
    iget-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->rootResult:Ljava/lang/String;

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v2

    iget v2, v2, Lcom/local/p5home/Ui$Palette;->muted:I

    const/16 v3, 0x1d

    invoke-static {p0, v1, v3, v2}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/SettingsActivity;->rootStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x18

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance v1, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda15;-><init>(Lcom/local/p5home/SettingsActivity;)V

    const-string v2, "\u68c0\u6d4b / \u7533\u8bf7 Root"

    const/4 v8, 0x0

    invoke-static {p0, v2, v8, v1}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v9

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x12

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance v1, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda16;-><init>(Lcom/local/p5home/SettingsActivity;)V

    const-string v2, "\u8bbe\u4e3a\u9ed8\u8ba4\u684c\u9762"

    const/4 v10, 0x1

    invoke-static {p0, v2, v10, v1}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v11

    new-instance v1, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda17;-><init>(Lcom/local/p5home/SettingsActivity;)V

    const-string v2, "\u6062\u590d\u539f\u8f66\u684c\u9762"

    invoke-static {p0, v2, v8, v1}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v12

    filled-new-array {v11, v12}, [Landroid/widget/Button;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->buttons(Landroid/content/Context;Landroid/widget/LinearLayout;[Landroid/widget/Button;)V

    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->line(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    invoke-static {p0}, Lcom/local/p5home/HotspotController;->isEnabled(Landroid/content/Context;)Z

    move-result v6

    new-instance v7, Lcom/local/p5home/HotspotManualToggleChange;

    invoke-direct {v7, p0}, Lcom/local/p5home/HotspotManualToggleChange;-><init>(Landroid/content/Context;)V

    const-string v3, "wifi"

    const-string v4, "\u8f66\u673a Wi-Fi \u70ed\u70b9"

    const-string v5, "\u624b\u52a8\u5f00\u542f\u6216\u5173\u95ed\u70ed\u70b9"

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/local/p5home/SettingsActivity;->toggle(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/local/p5home/SettingsActivity$ToggleChange;)Lcom/local/p5home/Ui$Toggle;

    move-result-object v8

    invoke-static {p0}, Lcom/local/p5home/HotspotController;->getCredentials(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const/16 v3, 0x1b

    invoke-static {p0, v2, v3, v1}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "autoWifiHotspot"

    const/4 v6, 0x0

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    new-instance v7, Lcom/local/p5home/HotspotToggleChange;

    invoke-direct {v7, p0}, Lcom/local/p5home/HotspotToggleChange;-><init>(Landroid/content/Context;)V

    const-string v3, "wifi"

    const-string v4, "\u8fdb\u5165\u684c\u9762\u65f6\u6253\u5f00\u8f66\u673a Wi-Fi \u70ed\u70b9"

    const-string v5, "\u8fdb\u5165\u8f7b\u91cf\u684c\u9762\u65f6\u81ea\u52a8\u5f00\u542f"

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/local/p5home/SettingsActivity;->toggle(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/local/p5home/SettingsActivity$ToggleChange;)Lcom/local/p5home/Ui$Toggle;

    move-result-object v13

    const-string v3, "nav"

    const-string v4, "\u81ea\u52a8\u6253\u5f00\u5bfc\u822a"

    const-string v5, "\u8fdb\u5165\u8f7b\u91cf\u684c\u9762\u65f6\u6253\u5f00\u9ed8\u8ba4\u5730\u56fe"

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-boolean v6, v1, Lcom/local/p5home/AppConfig;->autoLaunchNav:Z

    new-instance v7, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda18;

    invoke-direct {v7, p0}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda18;-><init>(Lcom/local/p5home/SettingsActivity;)V

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/local/p5home/SettingsActivity;->toggle(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/local/p5home/SettingsActivity$ToggleChange;)Lcom/local/p5home/Ui$Toggle;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/SettingsActivity;->autoNav:Lcom/local/p5home/Ui$Toggle;

    const-string v3, "moon"

    const-string v4, "\u5524\u9192\u540e\u6062\u590d\u5bfc\u822a"

    const-string v5, "\u4ec5\u684c\u9762\u4f4d\u4e8e\u524d\u53f0\u65f6\u6062\u590d"

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-boolean v6, v1, Lcom/local/p5home/AppConfig;->restoreAfterWake:Z

    new-instance v7, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda19;

    invoke-direct {v7, p0}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda19;-><init>(Lcom/local/p5home/SettingsActivity;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/local/p5home/SettingsActivity;->toggle(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/local/p5home/SettingsActivity$ToggleChange;)Lcom/local/p5home/Ui$Toggle;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/SettingsActivity;->restoreWake:Lcom/local/p5home/Ui$Toggle;

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v2, "\u539f\u8f66\u5730\u56fe\u5165\u53e3\u53ea\u6253\u5f00\u5730\u56fe\uff0c\u4e0d\u6539\u53d8\u9ed8\u8ba4\u684c\u9762\u3002"

    const/16 v3, 0x1b

    invoke-static {p0, v2, v3, v1}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x7

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v13, v2, v3

    const/4 v3, 0x2

    aput-object v9, v2, v3

    const/4 v3, 0x3

    aput-object v11, v2, v3

    const/4 v3, 0x4

    aput-object v12, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/local/p5home/SettingsActivity;->autoNav:Lcom/local/p5home/Ui$Toggle;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/local/p5home/SettingsActivity;->restoreWake:Lcom/local/p5home/Ui$Toggle;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    filled-new-array {v9, v11, v12}, [Landroid/widget/Button;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v2

    const-string v3, "\u684c\u9762\u7ba1\u7406"

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

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->managementDialog:Lcom/local/p5home/Ui$PanelDialog;

    new-instance v2, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, v1, v0}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda20;-><init>(Lcom/local/p5home/SettingsActivity;Ljava/util/List;Lcom/local/p5home/Ui$PanelDialog;)V

    invoke-virtual {v0, v2}, Lcom/local/p5home/Ui$PanelDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->updateBusy()V

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->updateStatus()V

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelDialog;->show()V

    return-void
.end method

.method private entry(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Runnable;)Landroid/view/View;
    .registers 12

    .line 22
    invoke-static {p0}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/high16 v1, 0x42f80000    # 124.0f

    invoke-static {p0, v1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->text:I

    const/16 v2, 0x3a

    invoke-static {p0, p2, v1, v2}, Lcom/local/p5home/Ui;->icon(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 p2, 0x18

    invoke-static {p0, v0, p2}, Lcom/local/p5home/Ui;->side(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p2

    const/16 v1, 0x22

    invoke-static {p0, p3, v1}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0xc

    if-eqz p4, :cond_58

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_58

    invoke-static {p0, p2, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v2

    iget v2, v2, Lcom/local/p5home/Ui$Palette;->muted:I

    const/16 v4, 0x1b

    invoke-static {p0, p4, v4, v2}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_58
    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, -0x2

    invoke-direct {p4, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p2, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_78

    const/4 p2, 0x2

    invoke-virtual {p5, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/high16 p2, 0x438c0000    # 280.0f

    invoke-static {p0, p2}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p5, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {v0, p5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->side(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    :cond_78
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object p2

    iget p2, p2, Lcom/local/p5home/Ui$Palette;->muted:I

    const/16 p4, 0x24

    const-string p5, "chevron"

    invoke-static {p0, p5, p2, p4}, Lcom/local/p5home/Ui;->icon(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda12;

    invoke-direct {p2, p6}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private incomplete(Lcom/local/p5home/AppConfig;)Ljava/lang/String;
    .registers 4

    .line 89
    iget-object v0, p1, Lcom/local/p5home/AppConfig;->modelId:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_15

    iget-object p1, p1, Lcom/local/p5home/AppConfig;->modelId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    move-object p1, v1

    goto :goto_17

    :cond_15
    :goto_15
    const-string p1, "\u6a21\u578b ID"

    :goto_17
    :try_start_17
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->hasApiKey(Landroid/content/Context;)Z

    move-result v0
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_1b} :catch_1c

    goto :goto_1e

    :catch_1c
    move-exception v0

    const/4 v0, 0x0

    :goto_1e
    if-nez v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_30

    goto :goto_32

    :cond_30
    const-string v1, "\u3001"

    :goto_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "API Key"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_40
    return-object p1
.end method

.method static synthetic lambda$entry$2(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 22
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$wakeSettings$14(Z)V
    .registers 1

    .line 70
    return-void
.end method

.method private note(Ljava/lang/String;)V
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->operation:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/local/p5home/SettingsActivity;->operation:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method private returnHome()V
    .registers 3

    .line 33
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/local/p5home/DeviceActions;->isDefaultHome(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-class v1, Lcom/local/p5home/HomeEntry;

    goto :goto_d

    :cond_b
    const-class v1, Lcom/local/p5home/HomeActivity;

    :goto_d
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->launch(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/local/p5home/SettingsActivity;->finish()V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_27

    :catch_1d
    move-exception v0

    const-string v1, "\u684c\u9762\u672a\u6253\u5f00"

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_27
    return-void
.end method

.method private safeError(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 36
    invoke-static {p1}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_13

    :cond_d
    const-string v0, "[\u5bc6\u94a5\u5df2\u9690\u85cf]"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_13
    :goto_13
    return-object p1
.end method

.method private saveApi(Z)V
    .registers 5

    .line 87
    iget-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->endpoint:Landroid/widget/EditText;

    if-nez v0, :cond_9

    goto :goto_59

    :cond_9
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    invoke-static {v0}, Lcom/local/p5home/SettingsActivity;->copy(Lcom/local/p5home/AppConfig;)Lcom/local/p5home/AppConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->endpoint:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/AppConfig;->endpoint:Ljava/lang/String;

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->model:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/AppConfig;->modelId:Ljava/lang/String;

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->prefix:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/AppConfig;->prefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->apiProtocolDraft:Ljava/lang/String;

    iput-object v1, v0, Lcom/local/p5home/AppConfig;->apiProtocol:Ljava/lang/String;

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->key:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/SettingsActivity;Z)V

    invoke-direct {p0, v0, v1, v2}, Lcom/local/p5home/SettingsActivity;->saveConfig(Lcom/local/p5home/AppConfig;Ljava/lang/String;Lcom/local/p5home/SettingsActivity$Success;)V

    :cond_59
    :goto_59
    return-void
.end method

.method private saveConfig(Lcom/local/p5home/AppConfig;Ljava/lang/String;Lcom/local/p5home/SettingsActivity$Success;)V
    .registers 6

    .line 35
    iget-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->updateBusy()V

    const-string v0, "\u6b63\u5728\u4fdd\u5b58\u8bbe\u7f6e\u2026"

    invoke-direct {p0, v0}, Lcom/local/p5home/SettingsActivity;->note(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->storeWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda4;-><init>(Lcom/local/p5home/SettingsActivity;Lcom/local/p5home/AppConfig;Ljava/lang/String;Lcom/local/p5home/SettingsActivity$Success;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private section(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 6

    .line 21
    invoke-static {p0}, Lcom/local/p5home/Ui;->panel(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const/16 v2, 0x1e

    invoke-static {p0, p2, v2, v1}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 p2, 0x16

    invoke-static {p0, v0, p2}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private shortcutSettings()V
    .registers 4

    .line 28
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/local/p5home/DeviceActions;->isDefaultHome(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-class v1, Lcom/local/p5home/HomeEntry;

    goto :goto_d

    :cond_b
    const-class v1, Lcom/local/p5home/HomeActivity;

    :goto_d
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "shortcut_settings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->launch(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/local/p5home/SettingsActivity;->finish()V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_2e

    :catch_24
    move-exception v0

    const-string v1, "\u5feb\u6377\u5e94\u7528\u8bbe\u7f6e\u672a\u6253\u5f00"

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    return-void
.end method

.method private showStatus()V
    .registers 10

    .line 93
    invoke-static {p0}, Lcom/local/p5home/Ui;->bridge(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u539f\u8f66\u8bed\u97f3\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hookReady"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "\u5df2\u6536\u5230\u6709\u6548\u5fc3\u8df3"

    goto :goto_1d

    :cond_1b
    const-string v2, "\u672a\u5c31\u7eea / \u5fc3\u8df3\u5df2\u5931\u6548"

    :goto_1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u7cfb\u7edf\u64ad\u62a5\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "speechOutputReady"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "\u672a\u5c31\u7eea"

    if-eqz v2, :cond_34

    const-string v2, "\u5df2\u5c31\u7eea"

    goto :goto_35

    :cond_34
    move-object v2, v4

    :goto_35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u5bfc\u822a\u8f6c\u63a5\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "navHook"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v5, "\u5df2\u63a5\u5165"

    if-eqz v2, :cond_4b

    move-object v2, v5

    goto :goto_4c

    :cond_4b
    move-object v2, v4

    :goto_4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u5730\u70b9\u4e0e\u8def\u7ebf\u9009\u62e9\uff1a\u9ad8\u5fb7\u9875\u9762\u5185\u8bed\u97f3\u9009\u62e9\n\u5bf9\u8bdd\u6536\u5c3e\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sessionHook"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5f

    move-object v4, v5

    :cond_5f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hookMessage"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hookLastSeen"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-lez v2, :cond_ae

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u6700\u8fd1\u5fc3\u8df3\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "MM-dd HH:mm:ss"

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_ae
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\u6700\u8fd1\u8bf7\u6c42\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "requestState"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/local/p5home/Ui;->requestLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lastError"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "lastAnswer"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const-string v5, "\n"

    if-nez v4, :cond_ff

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x384

    invoke-static {v2, v1}, Lcom/local/p5home/Ui;->limited(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_fa
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_11d

    :cond_ff
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x4b0

    invoke-static {v0, v2}, Lcom/local/p5home/Ui;->limited(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_fa

    :cond_11d
    :goto_11d
    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v2

    iget v2, v2, Lcom/local/p5home/Ui$Palette;->text:I

    const/16 v4, 0x1d

    invoke-static {p0, v1, v4, v2}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x1a

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance v1, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/local/p5home/SettingsActivity;)V

    const-string v2, "\u6253\u5f00 LSPosed \u7ba1\u7406\u5668"

    invoke-static {p0, v2, v3, v1}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x16

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v2, "\u542f\u7528\u672c\u6a21\u5757\uff0c\u4f5c\u7528\u57df\u9009\u62e9\u539f\u8f66\u8bed\u97f3\u670d\u52a1\uff0c\u518d\u91cd\u542f\u8bed\u97f3\u8fdb\u7a0b\u3002\u5b89\u88c5\u5e94\u7528\u4e0d\u4ee3\u8868\u5df2\u63a5\u5165\u3002"

    const/16 v3, 0x1b

    invoke-static {p0, v2, v3, v1}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v1

    const-string v2, "\u5b9e\u9645\u63a5\u5165\u72b6\u6001"

    invoke-virtual {v1, v2}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setView(Landroid/view/View;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "\u5173\u95ed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    new-instance v1, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/local/p5home/SettingsActivity;)V

    const-string v2, "\u5237\u65b0\u72b6\u6001"

    invoke-virtual {v0, v2, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelBuilder;->show()Lcom/local/p5home/Ui$PanelDialog;

    return-void
.end method

.method private testConnection()V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    invoke-direct {p0, v0}, Lcom/local/p5home/SettingsActivity;->incomplete(Lcom/local/p5home/AppConfig;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u8865\u9f50"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u540e\u518d\u6d4b\u8bd5\u3002\u5f53\u524d\u8bbe\u7f6e\u5df2\u4fdd\u5b58\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u63a5\u53e3\u914d\u7f6e\u672a\u5b8c\u6210"

    invoke-static {p0, v1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2b
    :try_start_2b
    invoke-static {p0}, Lcom/local/p5home/AssistantService;->testConnection(Landroid/content/Context;)V

    const-string v0, "\u8fde\u63a5\u6d4b\u8bd5\u5df2\u63d0\u4ea4\uff0c\u7b49\u5f85\u63a5\u53e3\u8fd4\u56de\u3002"

    invoke-direct {p0, v0}, Lcom/local/p5home/SettingsActivity;->note(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->apiDialog:Lcom/local/p5home/Ui$PanelDialog;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    :cond_3a
    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->showStatus()V
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_3d} :catch_3e

    goto :goto_48

    :catch_3e
    move-exception v0

    const-string v1, "\u8fde\u63a5\u6d4b\u8bd5\u672a\u5f00\u59cb"

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_48
    return-void
.end method

.method private testSpeech()V
    .registers 3

    .line 91
    :try_start_0
    invoke-static {p0}, Lcom/local/p5home/AssistantService;->testSpeech(Landroid/content/Context;)V

    const-string v0, "\u5df2\u63d0\u4ea4\u7cfb\u7edf\u64ad\u62a5\u6d4b\u8bd5\uff0c\u64ad\u653e\u7ed3\u679c\u4ee5\u5f15\u64ce\u56de\u6267\u4e3a\u51c6\u3002"

    invoke-direct {p0, v0}, Lcom/local/p5home/SettingsActivity;->note(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_13

    :catch_9
    move-exception v0

    const-string v1, "\u64ad\u62a5\u6d4b\u8bd5\u672a\u5f00\u59cb"

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method private toggle(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/local/p5home/SettingsActivity$ToggleChange;)Lcom/local/p5home/Ui$Toggle;
    .registers 11

    .line 24
    invoke-static {p0}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x43080000    # 136.0f

    invoke-static {p0, v1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->text:I

    const/16 v2, 0x3a

    invoke-static {p0, p2, v1, v2}, Lcom/local/p5home/Ui;->icon(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 p2, 0x18

    invoke-static {p0, v0, p2}, Lcom/local/p5home/Ui;->side(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p2

    const/16 v1, 0x22

    invoke-static {p0, p3, v1}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0xc

    invoke-static {p0, p2, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const/16 v2, 0x1b

    invoke-static {p0, p4, v2, v1}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x2

    invoke-direct {p4, v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p2, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lcom/local/p5home/Ui$Toggle;

    invoke-direct {p2, p0}, Lcom/local/p5home/Ui$Toggle;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/local/p5home/Ui$Toggle;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p5}, Lcom/local/p5home/Ui$Toggle;->setChecked(Z)V

    new-instance p3, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda43;

    invoke-direct {p3, p0, p6}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda43;-><init>(Lcom/local/p5home/SettingsActivity;Lcom/local/p5home/SettingsActivity$ToggleChange;)V

    invoke-virtual {p2, p3}, Lcom/local/p5home/Ui$Toggle;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p3, p0, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p3, p4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method private topBarSettings()V
    .registers 3

    .line 32
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/local/p5home/TopBarSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->launch(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_15

    :catch_b
    move-exception v0

    const-string v1, "\u9876\u90e8\u680f\u8bbe\u7f6e\u672a\u6253\u5f00"

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method private turnCameraSettings()V
    .registers 3

    .line 29
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/local/p5home/TurnCameraSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->launch(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_15

    :catch_b
    move-exception v0

    const-string v1, "\u8f6c\u5411\u4fa7\u6444\u8bbe\u7f6e\u672a\u6253\u5f00"

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method private updateBusy()V
    .registers 5

    .line 26
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-boolean v3, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_6

    :cond_1a
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->restoreWake:Lcom/local/p5home/Ui$Toggle;

    if-eqz v0, :cond_2d

    iget-boolean v1, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-boolean v1, v1, Lcom/local/p5home/AppConfig;->autoLaunchNav:Z

    if-eqz v1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    invoke-virtual {v0, v2}, Lcom/local/p5home/Ui$Toggle;->setEnabled(Z)V

    :cond_2d
    return-void
.end method

.method private updateStatus()V
    .registers 6

    .line 94
    iget-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->dead:Z

    if-nez v0, :cond_f1

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->arkStatus:Landroid/widget/TextView;

    if-nez v0, :cond_a

    goto/16 :goto_f1

    :cond_a
    invoke-static {p0}, Lcom/local/p5home/Ui;->bridge(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hookReady"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v3, p0, Lcom/local/p5home/SettingsActivity;->hookStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_1c

    const-string v4, "\u5df2\u63a5\u5165"

    goto :goto_1e

    :cond_1c
    const-string v4, "\u5f85\u63a5\u5165"

    :goto_1e
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/local/p5home/SettingsActivity;->hookStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_2c

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->accent:I

    goto :goto_32

    :cond_2c
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    :goto_32
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->continuous:Landroid/widget/TextView;

    const-string v3, "continuousSupported"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_42

    const-string v2, "\u8fde\u7eed\u5bf9\u8bdd\uff1a\u8ddf\u968f\u539f\u8f66 \u00b7 \u72b6\u6001\u672a\u5c31\u7eea"

    goto :goto_62

    :cond_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8fde\u7eed\u5bf9\u8bdd\uff1a\u8ddf\u968f\u539f\u8f66 \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "continuousEnabled"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string v2, "\u5df2\u5f00\u542f"

    goto :goto_5a

    :cond_58
    const-string v2, "\u672a\u5f00\u542f"

    :goto_5a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_62
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    invoke-direct {p0, v1}, Lcom/local/p5home/SettingsActivity;->incomplete(Lcom/local/p5home/AppConfig;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/local/p5home/SettingsActivity;->arkStatus:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_76

    const-string v3, "\u25cf \u5df2\u914d\u7f6e \u00b7 \u7ed3\u679c\u8bf7\u67e5\u770b\u63a5\u5165\u72b6\u6001"

    goto :goto_89

    :cond_76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f85\u914d\u7f6e \u00b7 \u7f3a\u5c11"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_89
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/local/p5home/SettingsActivity;->arkStatus:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->accent:I

    goto :goto_a1

    :cond_9b
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    :goto_a1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v1, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    if-nez v1, :cond_c7

    const-string v1, "rootState"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "rootError"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_bf

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->rootResult:Ljava/lang/String;

    goto :goto_c7

    :cond_bf
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c7

    iput-object v1, p0, Lcom/local/p5home/SettingsActivity;->rootResult:Ljava/lang/String;

    :cond_c7
    :goto_c7
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->rootSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->rootResult:Ljava/lang/String;

    const/16 v2, 0x6e

    invoke-static {v1, v2}, Lcom/local/p5home/Ui;->limited(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->rootStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_dd

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->rootResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_dd
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->apiKeyStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_f1

    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->hasApiKey(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->apiKeyStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_ec

    const-string v0, "\u5bc6\u94a5\u5df2\u52a0\u5bc6\u4fdd\u5b58\u3002\u7559\u7a7a\u4fdd\u6301\u5f53\u524d\u670d\u52a1\u5668\u5bc6\u94a5\uff0c\u5185\u5bb9\u4e0d\u56de\u663e\u3002"

    goto :goto_ee

    :cond_ec
    const-string v0, "\u5f53\u524d\u670d\u52a1\u5668\u5c1a\u672a\u914d\u7f6e\u5bc6\u94a5\u3002\u8f93\u5165\u540e\u4fdd\u5b58\uff0c\u5185\u5bb9\u4e0d\u4f1a\u56de\u663e\u3002"

    :goto_ee
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f1
    :goto_f1
    return-void
.end method

.method private vehicleBridge()V
    .registers 3

    .line 30
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/local/p5home/VehicleBridgeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->launch(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_15

    :catch_b
    move-exception v0

    const-string v1, "\u8f66\u8f86\u63a5\u53e3\u9875\u9762\u672a\u6253\u5f00"

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method private vehicleLab()V
    .registers 3

    .line 31
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/local/p5home/VehicleLabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->launch(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_15

    :catch_b
    move-exception v0

    const-string v1, "\u8f66\u673a\u529f\u80fd\u9875\u672a\u6253\u5f00"

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method private static wakeLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 80
    const-string v0, "WAKE_WORDS_DISPATCHED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "\u5df2\u63d0\u4ea4\u539f\u8f66\u5f15\u64ce\uff0c\u9700\u5b9e\u9645\u547c\u53eb\u9a8c\u8bc1"

    return-object p0

    .line 81
    :cond_b
    const-string v0, "WAKE_WORDS_HIT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "\u5df2\u6536\u5230\u81ea\u5b9a\u4e49\u5524\u9192\u8bcd\u547d\u4e2d"

    return-object p0

    .line 82
    :cond_16
    const-string v0, "WAKE_WORDS_DISABLED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "\u672a\u542f\u7528\u6216\u95ee\u7b54\u670d\u52a1\u672a\u5c31\u7eea"

    return-object p0

    .line 83
    :cond_21
    const-string v0, "WAKE_WORDS_CONFLICT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p0, "\u90e8\u5206\u8bcd\u4e0e\u539f\u5382\u5df2\u6709\u8bcd\u51b2\u7a81\uff0c\u8bf7\u4fee\u6539"

    return-object p0

    .line 84
    :cond_2c
    const-string v0, "WAKE_WORDS_CONFIG_INVALID"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    const-string p0, "\u5524\u9192\u8bcd\u914d\u7f6e\u65e0\u6548\uff0c\u8bf7\u6838\u5bf9\u62fc\u97f3"

    return-object p0

    .line 85
    :cond_37
    const-string p0, "\u7b49\u5f85\u539f\u8f66\u5f15\u64ce\u5c31\u7eea\uff0c\u8bf7\u5728\u63a5\u5165\u72b6\u6001\u67e5\u770b"

    return-object p0
.end method

.method private wakeSettings()V
    .registers 11

    .line 70
    iget-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v3, "mic"

    const-string v4, "\u542f\u7528\u81ea\u5b9a\u4e49\u5524\u9192"

    const-string v5, "\u4f60\u597d\u5c0fP\u7ee7\u7eed\u4f7f\u7528\u539f\u8f66\u8bed\u97f3"

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-boolean v6, v1, Lcom/local/p5home/AppConfig;->modelWakeEnabled:Z

    new-instance v7, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda40;

    invoke-direct {v7}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda40;-><init>()V

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/local/p5home/SettingsActivity;->toggle(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/local/p5home/SettingsActivity$ToggleChange;)Lcom/local/p5home/Ui$Toggle;

    move-result-object v1

    move-object v9, v1

    const-string v3, "mic"

    const-string v4, "\u81ea\u5b9a\u4e49\u8bcd\u4f7f\u7528\u539f\u8f66\u8bed\u97f3"

    const-string v5, "\u5173\u95ed\u65f6\u8c03\u7528\u5927\u6a21\u578b\u56de\u590d"

    iget-object v6, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-boolean v6, v6, Lcom/local/p5home/AppConfig;->customWakeUseNative:Z

    new-instance v7, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda40;

    invoke-direct {v7}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda40;-><init>()V

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/local/p5home/SettingsActivity;->toggle(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/local/p5home/SettingsActivity$ToggleChange;)Lcom/local/p5home/Ui$Toggle;

    move-result-object v8

    iput-object v8, p0, Lcom/local/p5home/SettingsActivity;->wakeNativeToggle:Lcom/local/p5home/Ui$Toggle;

    move-object v1, v9

    .line 71
    iget-object v2, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-object v2, v2, Lcom/local/p5home/AppConfig;->modelWakeWords:Ljava/lang/String;

    const-string v3, "\u8c46\u5305\u8c46\u5305\n\u5c0f\u7231\u540c\u5b66"

    const/4 v4, 0x1

    invoke-static {p0, v3, v2, v4}, Lcom/local/p5home/Ui;->input(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMinLines(I)V

    const-string v5, "\u81ea\u5b9a\u4e49\u5524\u9192\u8bcd"

    invoke-static {p0, v0, v5, v2}, Lcom/local/p5home/Ui;->field(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/EditText;)V

    .line 72
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v5

    iget v5, v5, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v6, "\u6bcf\u884c\u4e00\u4e2a\u8bcd\uff0c\u6700\u591a4\u4e2a\u8bcd\uff0c\u6bcf\u8bcd4\u20148\u4e2a\u6c49\u5b57\u3002\u8c46\u5305\u8c46\u5305\u3001\u5c0f\u7231\u540c\u5b66\u53ef\u76f4\u63a5\u586b\u5199\uff1b\u5176\u5b83\u8bcd\u8bf7\u7528 \u4e2d\u6587|pin yin \u683c\u5f0f\u63d0\u4f9b\u62fc\u97f3\uff08\u4e0d\u5e26\u58f0\u8c03\uff09\u3002\u6253\u5f00\u539f\u8f66\u8bed\u97f3\u5f00\u5173\u540e\uff0c\u81ea\u5b9a\u4e49\u8bcd\u4ea4\u7ed9\u539f\u8f66\u6267\u884c\u6307\u4ee4\uff1b\u5173\u95ed\u65f6\u4ea4\u7ed9\u5927\u6a21\u578b\u56de\u590d\u3002\u201c\u95ee\u8c46\u5305\u201d\u59cb\u7ec8\u8c03\u7528\u5927\u6a21\u578b\u3002\u539f\u8f66\u5524\u9192\u8bcd\u4f1a\u4fdd\u7559\u3002"

    const/16 v7, 0x1a

    invoke-static {p0, v6, v7, v5}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    invoke-static {p0}, Lcom/local/p5home/Ui;->bridge(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5f15\u64ce\u72b6\u6001\uff1a"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "wakeCode"

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/local/p5home/SettingsActivity;->wakeLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v6

    iget v6, v6, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v5, v7, v6}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v5

    const-string v6, "\u81ea\u5b9a\u4e49\u5524\u9192\u8bcd"

    invoke-virtual {v5, v6}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setView(Landroid/view/View;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v5, "\u53d6\u6d88"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v5, "\u4fdd\u5b58\u8bbe\u7f6e"

    invoke-virtual {v0, v5, v6}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object v0

    .line 75
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x5

    new-array v6, v6, [Landroid/widget/TextView;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    aput-object v2, v6, v4

    const/4 v4, 0x2

    const/4 v7, -0x1

    invoke-virtual {v0, v7}, Lcom/local/p5home/Ui$PanelDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    aput-object v8, v6, v4

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Lcom/local/p5home/Ui$PanelDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v4, 0x4

    iget-object v8, p0, Lcom/local/p5home/SettingsActivity;->wakeNativeToggle:Lcom/local/p5home/Ui$Toggle;

    aput-object v8, v6, v4

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    invoke-virtual {v0, v7}, Lcom/local/p5home/Ui$PanelDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda41;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda41;-><init>(Lcom/local/p5home/SettingsActivity;Lcom/local/p5home/Ui$Toggle;Landroid/widget/EditText;Lcom/local/p5home/Ui$PanelDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance v1, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0, v5}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda42;-><init>(Lcom/local/p5home/SettingsActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$PanelDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelDialog;->show()V

    .line 78
    return-void
.end method


# virtual methods
.method public chooseCustomNavigation()V
    .registers 9

    invoke-static {p0}, Lcom/local/p5home/Navigator;->customProviders(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/local/p5home/Ui$PanelDialog;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/local/p5home/Navigator$Provider;

    new-instance v4, Lcom/local/p5home/CustomNavSelect;

    invoke-direct {v4, p0, v2, v3}, Lcom/local/p5home/CustomNavSelect;-><init>(Lcom/local/p5home/SettingsActivity;[Lcom/local/p5home/Ui$PanelDialog;Lcom/local/p5home/Navigator$Provider;)V

    iget-object v5, v3, Lcom/local/p5home/Navigator$Provider;->label:Ljava/lang/String;

    iget-object v6, v3, Lcom/local/p5home/Navigator$Provider;->packageName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v5, "  \u00b7  "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v5, v6, v4}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_f

    :cond_44
    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v3, "\u81ea\u5b9a\u4e49\u9009\u62e9\u5e94\u7528"

    invoke-virtual {v0, v3}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setView(Landroid/view/View;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "\u5173\u95ed"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelDialog;->show()V

    return-void
.end method

.method synthetic lambda$apiSettings$10$com-local-g3home-SettingsActivity([Ljava/lang/String;I[Landroid/widget/Button;[Ljava/lang/String;)V
    .registers 9

    .line 57
    aget-object p2, p1, p2

    iput-object p2, p0, Lcom/local/p5home/SettingsActivity;->apiProtocolDraft:Ljava/lang/String;

    const/4 p2, 0x0

    :goto_5
    array-length v0, p1

    if-ge p2, v0, :cond_32

    aget-object v0, p3, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, p2

    iget-object v3, p0, Lcom/local/p5home/SettingsActivity;->apiProtocolDraft:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "\u2713  "

    goto :goto_1e

    :cond_1c
    const-string v2, ""

    :goto_1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p4, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_32
    return-void
.end method

.method synthetic lambda$apiSettings$11$com-local-g3home-SettingsActivity()V
    .registers 2

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/local/p5home/SettingsActivity;->saveApi(Z)V

    return-void
.end method

.method synthetic lambda$apiSettings$12$com-local-g3home-SettingsActivity(Landroid/view/View;)V
    .registers 2

    .line 66
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/local/p5home/SettingsActivity;->saveApi(Z)V

    return-void
.end method

.method synthetic lambda$apiSettings$13$com-local-g3home-SettingsActivity(Landroid/widget/EditText;Ljava/util/List;Lcom/local/p5home/Ui$PanelDialog;Landroid/content/DialogInterface;)V
    .registers 5

    .line 67
    const-string p4, ""

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/local/p5home/SettingsActivity;->apiDialog:Lcom/local/p5home/Ui$PanelDialog;

    if-ne p1, p3, :cond_1b

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/local/p5home/SettingsActivity;->apiDialog:Lcom/local/p5home/Ui$PanelDialog;

    iput-object p1, p0, Lcom/local/p5home/SettingsActivity;->key:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/local/p5home/SettingsActivity;->prefix:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/local/p5home/SettingsActivity;->model:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/local/p5home/SettingsActivity;->endpoint:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/local/p5home/SettingsActivity;->apiKeyStatus:Landroid/widget/TextView;

    :cond_1b
    return-void
.end method

.method synthetic lambda$appearance$9$com-local-g3home-SettingsActivity(I[Lcom/local/p5home/Ui$PanelDialog;)V
    .registers 3

    .line 52
    invoke-static {p0, p1}, Lcom/local/p5home/Ui;->setThemeMode(Landroid/content/Context;I)V

    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->build()V

    return-void
.end method

.method synthetic lambda$build$0$com-local-g3home-SettingsActivity(Z)V
    .registers 4

    .line 17
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iput-boolean p1, v0, Lcom/local/p5home/AppConfig;->voiceEnabled:Z

    iget-object p1, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    invoke-static {p1}, Lcom/local/p5home/SettingsActivity;->copy(Lcom/local/p5home/AppConfig;)Lcom/local/p5home/AppConfig;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/local/p5home/SettingsActivity;->saveConfig(Lcom/local/p5home/AppConfig;Ljava/lang/String;Lcom/local/p5home/SettingsActivity$Success;)V

    return-void
.end method

.method synthetic lambda$build$1$com-local-g3home-SettingsActivity(Z)V
    .registers 4

    .line 17
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iput-boolean p1, v0, Lcom/local/p5home/AppConfig;->doubaoEnabled:Z

    iget-object p1, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    invoke-static {p1}, Lcom/local/p5home/SettingsActivity;->copy(Lcom/local/p5home/AppConfig;)Lcom/local/p5home/AppConfig;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/local/p5home/SettingsActivity;->saveConfig(Lcom/local/p5home/AppConfig;Ljava/lang/String;Lcom/local/p5home/SettingsActivity$Success;)V

    return-void
.end method

.method synthetic lambda$changeHome$30$com-local-g3home-SettingsActivity(ZLjava/lang/String;)V
    .registers 4

    .line 97
    iget-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->dead:Z

    if-nez v0, :cond_37

    invoke-virtual {p0}, Lcom/local/p5home/SettingsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_37

    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    const-string v0, "\u684c\u9762\u64cd\u4f5c\u672a\u5b8c\u6210"

    if-nez p2, :cond_18

    if-eqz p1, :cond_17

    const-string p2, "\u684c\u9762\u8bbe\u7f6e\u5df2\u786e\u8ba4"

    goto :goto_18

    :cond_17
    move-object p2, v0

    :cond_18
    :goto_18
    iput-object p2, p0, Lcom/local/p5home/SettingsActivity;->rootResult:Ljava/lang/String;

    if-eqz p1, :cond_22

    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    :cond_22
    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->bind()V

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->updateBusy()V

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->updateStatus()V

    iget-object p2, p0, Lcom/local/p5home/SettingsActivity;->rootResult:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/local/p5home/SettingsActivity;->note(Ljava/lang/String;)V

    if-nez p1, :cond_37

    iget-object p1, p0, Lcom/local/p5home/SettingsActivity;->rootResult:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    :goto_37
    return-void
.end method

.method synthetic lambda$checkRoot$28$com-local-g3home-SettingsActivity(ZLjava/lang/String;)V
    .registers 4

    .line 95
    iget-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->dead:Z

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/local/p5home/SettingsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1f

    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    if-nez p2, :cond_17

    if-eqz p1, :cond_15

    const-string p2, "Root \u5df2\u9a8c\u8bc1"

    goto :goto_17

    :cond_15
    const-string p2, "Root \u672a\u5b8c\u6210\u6388\u6743"

    :cond_17
    :goto_17
    iput-object p2, p0, Lcom/local/p5home/SettingsActivity;->rootResult:Ljava/lang/String;

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->updateBusy()V

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->updateStatus()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method synthetic lambda$chooseMusic$6$com-local-g3home-SettingsActivity([Lcom/local/p5home/Ui$PanelDialog;Lcom/local/p5home/MusicRouter$Provider;Landroid/view/View;)V
    .registers 4

    .line 46
    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    iget-object p1, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    invoke-static {p1}, Lcom/local/p5home/SettingsActivity;->copy(Lcom/local/p5home/AppConfig;)Lcom/local/p5home/AppConfig;

    move-result-object p1

    iget-object p2, p2, Lcom/local/p5home/MusicRouter$Provider;->id:Ljava/lang/String;

    iput-object p2, p1, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    const-string p2, ""

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/local/p5home/SettingsActivity;->saveConfig(Lcom/local/p5home/AppConfig;Ljava/lang/String;Lcom/local/p5home/SettingsActivity$Success;)V

    return-void
.end method

.method synthetic lambda$chooseNavigation$7$com-local-g3home-SettingsActivity(Lcom/local/p5home/Navigator$Provider;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 51
    iget-object p2, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    invoke-static {p2}, Lcom/local/p5home/SettingsActivity;->copy(Lcom/local/p5home/AppConfig;)Lcom/local/p5home/AppConfig;

    move-result-object p2

    iget-object p1, p1, Lcom/local/p5home/Navigator$Provider;->packageName:Ljava/lang/String;

    iput-object p1, p2, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    const-string p1, ""

    const/4 p3, 0x0

    invoke-direct {p0, p2, p1, p3}, Lcom/local/p5home/SettingsActivity;->saveConfig(Lcom/local/p5home/AppConfig;Ljava/lang/String;Lcom/local/p5home/SettingsActivity$Success;)V

    return-void
.end method

.method synthetic lambda$chooseNavigation$8$com-local-g3home-SettingsActivity([Lcom/local/p5home/Ui$PanelDialog;Lcom/local/p5home/Navigator$Provider;Landroid/view/View;)V
    .registers 5

    .line 51
    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    iget-object p1, p2, Lcom/local/p5home/Navigator$Provider;->packageName:Ljava/lang/String;

    iget-object p3, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iget-object p3, p3, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    return-void

    :cond_13
    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    const-string p3, "nav"

    invoke-virtual {p1, p3}, Lcom/local/p5home/Ui$PanelBuilder;->setIcon(Ljava/lang/String;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    const-string p3, "\u5207\u6362\u9ed8\u8ba4\u5bfc\u822a"

    invoke-virtual {p1, p3}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5c06\u5bfc\u822a\u8bf7\u6c42\u8f6c\u4ea4\u7ed9"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p2, Lcom/local/p5home/Navigator$Provider;->label:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "\u3002\n\u5207\u6362\u504f\u597d\u4e0d\u4f1a\u7ed3\u675f\u5df2\u6709\u8def\u7ebf\u3002"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/local/p5home/Ui$PanelBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    const-string p3, "\u53d6\u6d88"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    new-instance p3, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0, p2}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda11;-><init>(Lcom/local/p5home/SettingsActivity;Lcom/local/p5home/Navigator$Provider;)V

    const-string p2, "\u786e\u8ba4\u5207\u6362"

    invoke-virtual {p1, p2, p3}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelBuilder;->show()Lcom/local/p5home/Ui$PanelDialog;

    return-void
.end method

.method synthetic lambda$clearKey$18$com-local-g3home-SettingsActivity(Ljava/lang/String;)V
    .registers 3

    .line 90
    iget-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->dead:Z

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/local/p5home/SettingsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2a

    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->updateBusy()V

    if-nez p1, :cond_22

    iget-object p1, p0, Lcom/local/p5home/SettingsActivity;->key:Landroid/widget/EditText;

    if-eqz p1, :cond_1c

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1c
    const-string p1, "\u5df2\u6e05\u9664\u4fdd\u5b58\u7684\u5bc6\u94a5"

    invoke-direct {p0, p1}, Lcom/local/p5home/SettingsActivity;->note(Ljava/lang/String;)V

    goto :goto_27

    :cond_22
    const-string v0, "\u6e05\u9664\u672a\u5b8c\u6210"

    invoke-static {p0, v0, p1}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_27
    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->updateStatus()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method synthetic lambda$clearKey$19$com-local-g3home-SettingsActivity()V
    .registers 4

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/local/p5home/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/local/p5home/ConfigStore;->clearApiKey(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    const/4 v0, 0x0

    goto :goto_e

    :catch_9
    move-exception v0

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->main:Landroid/os/Handler;

    new-instance v2, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda45;

    invoke-direct {v2, p0, v0}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda45;-><init>(Lcom/local/p5home/SettingsActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$clearKey$20$com-local-g3home-SettingsActivity(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 90
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->updateBusy()V

    iget-object p1, p0, Lcom/local/p5home/SettingsActivity;->storeWorker:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda10;-><init>(Lcom/local/p5home/SettingsActivity;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$confirmHome$29$com-local-g3home-SettingsActivity(ZLandroid/content/DialogInterface;I)V
    .registers 4

    .line 96
    invoke-direct {p0, p1}, Lcom/local/p5home/SettingsActivity;->changeHome(Z)V

    return-void
.end method

.method synthetic lambda$desktopSettings$21$com-local-g3home-SettingsActivity()V
    .registers 2

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/local/p5home/SettingsActivity;->confirmHome(Z)V

    return-void
.end method

.method synthetic lambda$desktopSettings$22$com-local-g3home-SettingsActivity()V
    .registers 2

    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/local/p5home/SettingsActivity;->confirmHome(Z)V

    return-void
.end method

.method synthetic lambda$desktopSettings$23$com-local-g3home-SettingsActivity(Z)V
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iput-boolean p1, v0, Lcom/local/p5home/AppConfig;->autoLaunchNav:Z

    iget-object p1, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    invoke-static {p1}, Lcom/local/p5home/SettingsActivity;->copy(Lcom/local/p5home/AppConfig;)Lcom/local/p5home/AppConfig;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/local/p5home/SettingsActivity;->saveConfig(Lcom/local/p5home/AppConfig;Ljava/lang/String;Lcom/local/p5home/SettingsActivity$Success;)V

    return-void
.end method

.method synthetic lambda$desktopSettings$24$com-local-g3home-SettingsActivity(Z)V
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    iput-boolean p1, v0, Lcom/local/p5home/AppConfig;->restoreAfterWake:Z

    iget-object p1, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    invoke-static {p1}, Lcom/local/p5home/SettingsActivity;->copy(Lcom/local/p5home/AppConfig;)Lcom/local/p5home/AppConfig;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/local/p5home/SettingsActivity;->saveConfig(Lcom/local/p5home/AppConfig;Ljava/lang/String;Lcom/local/p5home/SettingsActivity$Success;)V

    return-void
.end method

.method synthetic lambda$desktopSettings$25$com-local-g3home-SettingsActivity(Ljava/util/List;Lcom/local/p5home/Ui$PanelDialog;Landroid/content/DialogInterface;)V
    .registers 4

    .line 92
    iget-object p3, p0, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/local/p5home/SettingsActivity;->managementDialog:Lcom/local/p5home/Ui$PanelDialog;

    if-ne p1, p2, :cond_12

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/local/p5home/SettingsActivity;->managementDialog:Lcom/local/p5home/Ui$PanelDialog;

    iput-object p1, p0, Lcom/local/p5home/SettingsActivity;->rootStatus:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/local/p5home/SettingsActivity;->restoreWake:Lcom/local/p5home/Ui$Toggle;

    iput-object p1, p0, Lcom/local/p5home/SettingsActivity;->autoNav:Lcom/local/p5home/Ui$Toggle;

    :cond_12
    return-void
.end method

.method synthetic lambda$saveApi$17$com-local-g3home-SettingsActivity(Z)V
    .registers 4

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->apiProtocolDraft:Ljava/lang/String;

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->apiPrefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->apiModel:Ljava/lang/String;

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->apiEndpoint:Ljava/lang/String;

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->key:Landroid/widget/EditText;

    if-eqz v0, :cond_12

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    if-eqz p1, :cond_18

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->testConnection()V

    goto :goto_1f

    :cond_18
    iget-object p1, p0, Lcom/local/p5home/SettingsActivity;->apiDialog:Lcom/local/p5home/Ui$PanelDialog;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method synthetic lambda$saveConfig$4$com-local-g3home-SettingsActivity(ZLcom/local/p5home/AppConfig;Ljava/lang/String;Lcom/local/p5home/SettingsActivity$Success;)V
    .registers 6

    .line 35
    iget-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->dead:Z

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/local/p5home/SettingsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_35

    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    if-eqz p1, :cond_11

    goto :goto_15

    :cond_11
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object p2

    :goto_15
    iput-object p2, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->bind()V

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->updateBusy()V

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->updateStatus()V

    if-eqz p3, :cond_2b

    invoke-direct {p0, p3}, Lcom/local/p5home/SettingsActivity;->note(Ljava/lang/String;)V

    const-string p1, "\u4fdd\u5b58\u672a\u5b8c\u6210"

    invoke-static {p0, p1, p3}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_2b
    const-string p1, "\u8bbe\u7f6e\u5df2\u4fdd\u5b58"

    invoke-direct {p0, p1}, Lcom/local/p5home/SettingsActivity;->note(Ljava/lang/String;)V

    if-eqz p4, :cond_35

    invoke-interface {p4}, Lcom/local/p5home/SettingsActivity$Success;->run()V

    :cond_35
    :goto_35
    return-void
.end method

.method synthetic lambda$saveConfig$5$com-local-g3home-SettingsActivity(Lcom/local/p5home/AppConfig;Ljava/lang/String;Lcom/local/p5home/SettingsActivity$Success;)V
    .registers 11

    .line 35
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/local/p5home/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/local/p5home/ConfigStore;->save(Landroid/content/Context;Lcom/local/p5home/AppConfig;)V

    const/4 v0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, Lcom/local/p5home/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/local/p5home/AppConfig;->endpoint:Ljava/lang/String;

    invoke-static {v1, p2, v2}, Lcom/local/p5home/ConfigStore;->storeApiKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1a

    :cond_18
    const/4 p2, 0x0

    goto :goto_37

    :catch_1a
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_25

    const-string v3, "\u8bbe\u7f6e\u5df2\u4fdd\u5b58\uff0c\u5bc6\u94a5\u4fdd\u5b58\u672a\u5b8c\u6210\uff1a"

    goto :goto_27

    :cond_25
    const-string v3, "\u4fdd\u5b58\u672a\u5b8c\u6210\uff1a"

    :goto_27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1, p2}, Lcom/local/p5home/SettingsActivity;->safeError(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_37
    move-object v5, p2

    move v3, v0

    iget-object p2, p0, Lcom/local/p5home/SettingsActivity;->main:Landroid/os/Handler;

    new-instance v0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda46;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda46;-><init>(Lcom/local/p5home/SettingsActivity;ZLcom/local/p5home/AppConfig;Ljava/lang/String;Lcom/local/p5home/SettingsActivity$Success;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$showStatus$26$com-local-g3home-SettingsActivity()V
    .registers 3

    .line 93
    :try_start_0
    invoke-static {p0}, Lcom/local/p5home/DeviceActions;->openLsposed(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_e

    :catch_4
    move-exception v0

    const-string v1, "LSPosed \u672a\u6253\u5f00"

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    return-void
.end method

.method synthetic lambda$showStatus$27$com-local-g3home-SettingsActivity(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 93
    iget-object p1, p0, Lcom/local/p5home/SettingsActivity;->main:Landroid/os/Handler;

    new-instance p2, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda22;

    invoke-direct {p2, p0}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda22;-><init>(Lcom/local/p5home/SettingsActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$toggle$3$com-local-g3home-SettingsActivity(Lcom/local/p5home/SettingsActivity$ToggleChange;Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 24
    iget-boolean p2, p0, Lcom/local/p5home/SettingsActivity;->binding:Z

    if-nez p2, :cond_b

    iget-boolean p2, p0, Lcom/local/p5home/SettingsActivity;->busy:Z

    if-nez p2, :cond_b

    invoke-interface {p1, p3}, Lcom/local/p5home/SettingsActivity$ToggleChange;->change(Z)V

    :cond_b
    return-void
.end method

.method synthetic lambda$wakeSettings$15$com-local-g3home-SettingsActivity(Lcom/local/p5home/Ui$Toggle;Landroid/widget/EditText;Lcom/local/p5home/Ui$PanelDialog;Landroid/view/View;)V
    .registers 5

    .line 76
    iget-object p4, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    invoke-static {p4}, Lcom/local/p5home/SettingsActivity;->copy(Lcom/local/p5home/AppConfig;)Lcom/local/p5home/AppConfig;

    move-result-object p4

    invoke-virtual {p1}, Lcom/local/p5home/Ui$Toggle;->isChecked()Z

    move-result p1

    iput-boolean p1, p4, Lcom/local/p5home/AppConfig;->modelWakeEnabled:Z

    iget-object p1, p0, Lcom/local/p5home/SettingsActivity;->wakeNativeToggle:Lcom/local/p5home/Ui$Toggle;

    invoke-virtual {p1}, Lcom/local/p5home/Ui$Toggle;->isChecked()Z

    move-result p1

    iput-boolean p1, p4, Lcom/local/p5home/AppConfig;->customWakeUseNative:Z

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p4, Lcom/local/p5home/AppConfig;->modelWakeWords:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p3}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/local/p5home/Ui$PanelDialog;)V

    const-string p2, ""

    invoke-direct {p0, p4, p2, p1}, Lcom/local/p5home/SettingsActivity;->saveConfig(Lcom/local/p5home/AppConfig;Ljava/lang/String;Lcom/local/p5home/SettingsActivity$Success;)V

    return-void
.end method

.method synthetic lambda$wakeSettings$16$com-local-g3home-SettingsActivity(Ljava/util/List;Landroid/content/DialogInterface;)V
    .registers 3

    .line 77
    iget-object p2, p0, Lcom/local/p5home/SettingsActivity;->controls:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->returnHome()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    .line 13
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->apiDialog:Lcom/local/p5home/Ui$PanelDialog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-eqz v0, :cond_1c

    iget-object v3, p0, Lcom/local/p5home/SettingsActivity;->key:Landroid/widget/EditText;

    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    if-eqz v0, :cond_27

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->captureApiDraft()V

    iget-object v2, p0, Lcom/local/p5home/SettingsActivity;->apiDialog:Lcom/local/p5home/Ui$PanelDialog;

    invoke-virtual {v2}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    :cond_27
    iget-object v2, p0, Lcom/local/p5home/SettingsActivity;->managementDialog:Lcom/local/p5home/Ui$PanelDialog;

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    :cond_2e
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->build()V

    if-eqz v0, :cond_40

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->apiSettings()V

    if-eqz v1, :cond_40

    const-string p1, "\u672a\u4fdd\u5b58\u7684\u5bc6\u94a5\u8f93\u5165\u5df2\u6e05\u7a7a\uff0c\u8bf7\u91cd\u65b0\u7c98\u8d34\u3002"

    invoke-direct {p0, p1}, Lcom/local/p5home/SettingsActivity;->note(Ljava/lang/String;)V

    :cond_40
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 9
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->form:Lcom/local/p5home/AppConfig;

    if-eqz p1, :cond_2b

    const-string v0, "api_endpoint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->apiEndpoint:Ljava/lang/String;

    const-string v0, "api_model"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->apiModel:Ljava/lang/String;

    const-string v0, "api_prefix"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->apiPrefix:Ljava/lang/String;

    const-string v0, "api_protocol"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/SettingsActivity;->apiProtocolDraft:Ljava/lang/String;

    :cond_2b
    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->build()V

    if-eqz p1, :cond_43

    const-string v0, "api_open"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/local/p5home/SettingsActivity;->main:Landroid/os/Handler;

    new-instance v0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda13;-><init>(Lcom/local/p5home/SettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_43
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->dead:Z

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->main:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->apiDialog:Lcom/local/p5home/Ui$PanelDialog;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    :cond_10
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->managementDialog:Lcom/local/p5home/Ui$PanelDialog;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    :cond_17
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->storeWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->resumed:Z

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 10
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/SettingsActivity;->resumed:Z

    iget v0, p0, Lcom/local/p5home/SettingsActivity;->theme:I

    invoke-static {p0}, Lcom/local/p5home/Ui;->themeSignature(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_11

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->build()V

    :cond_11
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity;->apiDialog:Lcom/local/p5home/Ui$PanelDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/local/p5home/SettingsActivity;->captureApiDraft()V

    :cond_15
    const-string v1, "api_open"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "api_endpoint"

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->apiEndpoint:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "api_model"

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->apiModel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "api_prefix"

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->apiPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "api_protocol"

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity;->apiProtocolDraft:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
