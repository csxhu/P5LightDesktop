.class public final Lcom/local/p5home/VehicleBridgeActivity;
.super Landroid/app/Activity;
.source "VehicleBridgeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/VehicleBridgeActivity$Change;
    }
.end annotation


# static fields
.field private static final AUTHORIZE:I = 0x10cd


# instance fields
.field private autoStatus:Landroid/widget/TextView;

.field private binding:Z

.field private bridge:Lcom/local/g3bridge/sdk/G3Bridge;

.field private capabilities:Landroid/os/Bundle;

.field private connection:Landroid/widget/TextView;

.field private connectionError:Ljava/lang/String;

.field private controls:Landroid/widget/LinearLayout;

.field private dataText:Landroid/widget/TextView;

.field private dead:Z

.field private final dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/local/p5home/Ui$PanelDialog;",
            ">;"
        }
    .end annotation
.end field

.field private hello:Landroid/os/Bundle;

.field private final history:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private logText:Landroid/widget/TextView;

.field private final main:Landroid/os/Handler;

.field private musicPause:Landroid/widget/Button;

.field private musicTest:Landroid/widget/Button;

.field private navClear:Landroid/widget/Button;

.field private navTest:Landroid/widget/Button;

.field private final pending:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readDialog:Lcom/local/p5home/Ui$PanelDialog;

.field private readGeneration:J

.field private final reading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private resumed:Z

.field private sampleStatus:Landroid/widget/TextView;

.field private snapshot:Landroid/os/Bundle;

.field private subscription:Lcom/local/g3bridge/sdk/G3Bridge$Subscription;

.field private theme:I

.field private final tick:Ljava/lang/Runnable;

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$33-EpD0gFKAKRgOJZlCMCjdq15c(Lcom/local/p5home/VehicleBridgeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->windowsForm()V

    return-void
.end method

.method public static synthetic $r8$lambda$DlECZPtgsqSi3Gti8pC37K5p1_M(Lcom/local/p5home/VehicleBridgeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->navigationForm()V

    return-void
.end method

.method public static synthetic $r8$lambda$LM6z4meofqx-0Et7JqL4NJWHwzI(Lcom/local/p5home/VehicleBridgeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->openModule()V

    return-void
.end method

.method public static synthetic $r8$lambda$U-emq-n2eonaWkUHAipQC1emaSM(Lcom/local/p5home/VehicleBridgeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->authorize()V

    return-void
.end method

.method public static synthetic $r8$lambda$bneypWiS43KveKU0poX0lvvLji4(Lcom/local/p5home/VehicleBridgeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->refresh()V

    return-void
.end method

.method public static synthetic $r8$lambda$sNowT_g2j6sq7QZ3lAoS1aDXMz4(Lcom/local/p5home/VehicleBridgeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->clearNavigation()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->main:Landroid/os/Handler;

    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->worker:Ljava/util/concurrent/ExecutorService;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->reading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->pending:Ljava/util/LinkedHashMap;

    .line 27
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->history:Ljava/util/ArrayDeque;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->dialogs:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->hello:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->snapshot:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->capabilities:Landroid/os/Bundle;

    .line 34
    const-string v0, "\u6b63\u5728\u68c0\u67e5\u672c\u5730\u6865\u63a5\u6a21\u5757\u2026"

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->connectionError:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/local/p5home/VehicleBridgeActivity$1;

    invoke-direct {v0, p0}, Lcom/local/p5home/VehicleBridgeActivity$1;-><init>(Lcom/local/p5home/VehicleBridgeActivity;)V

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/local/p5home/VehicleBridgeActivity;)Z
    .registers 1

    .line 21
    iget-boolean p0, p0, Lcom/local/p5home/VehicleBridgeActivity;->dead:Z

    return p0
.end method

.method static synthetic access$100(Lcom/local/p5home/VehicleBridgeActivity;)Z
    .registers 1

    .line 21
    iget-boolean p0, p0, Lcom/local/p5home/VehicleBridgeActivity;->resumed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/local/p5home/VehicleBridgeActivity;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->refresh()V

    return-void
.end method

.method static synthetic access$300(Lcom/local/p5home/VehicleBridgeActivity;)Landroid/os/Handler;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/local/p5home/VehicleBridgeActivity;->main:Landroid/os/Handler;

    return-object p0
.end method

.method private appendLog(Ljava/lang/String;)V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->history:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->history:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->history:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_1a
    iget-object p1, p0, Lcom/local/p5home/VehicleBridgeActivity;->history:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    const/16 v0, 0xc

    if-le p1, v0, :cond_2a

    iget-object p1, p0, Lcom/local/p5home/VehicleBridgeActivity;->history:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_1a

    :cond_2a
    return-void
.end method

.method private static array([D)Ljava/lang/String;
    .registers 4

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/16 v2, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p0

    if-le v1, v2, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2026\u5171"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\u9879"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_38

    :cond_36
    const-string p0, ""

    :goto_38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static array([F)Ljava/lang/String;
    .registers 4

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/16 v2, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p0

    if-le v1, v2, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2026\u5171"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\u9879"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_38

    :cond_36
    const-string p0, ""

    :goto_38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static array([I)Ljava/lang/String;
    .registers 4

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/16 v2, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p0

    if-le v1, v2, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2026\u5171"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\u9879"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_38

    :cond_36
    const-string p0, ""

    :goto_38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static array([J)Ljava/lang/String;
    .registers 4

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/16 v2, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p0

    if-le v1, v2, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2026\u5171"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\u9879"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_38

    :cond_36
    const-string p0, ""

    :goto_38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private authorize()V
    .registers 4

    .line 79
    const/16 v0, 0x10cd

    :try_start_2
    invoke-static {p0, v0}, Lcom/local/g3bridge/sdk/G3Bridge;->requestAuthorization(Landroid/app/Activity;I)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_23

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u5148\u5b89\u88c5\u5e76\u542f\u7528 G3\u8f66\u8f86\u63a5\u53e3\u3002\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8f66\u8f86\u63a5\u53e3\u6388\u6743\u672a\u6253\u5f00"

    invoke-static {p0, v1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_23
    return-void
.end method

.method private static availableEvent(Landroid/os/Bundle;)Z
    .registers 7

    .line 160
    const-string v0, "available"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "freshEvent"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "eventAgeMs"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-ltz p0, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method private build()V
    .registers 16

    .line 50
    invoke-static {p0}, Lcom/local/p5home/Ui;->install(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->themeSignature(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->theme:I

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v0

    .line 51
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget v3, v0, Lcom/local/p5home/Ui$Palette;->bg:I

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 52
    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {p0, v4}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42100000    # 36.0f

    invoke-static {p0, v6}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v4}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v6}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v5, v7, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/local/p5home/VehicleBridgeActivity;->setContentView(Landroid/view/View;)V

    .line 53
    invoke-static {p0}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v4, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda14;-><init>(Lcom/local/p5home/VehicleBridgeActivity;)V

    const-string v5, "back"

    const-string v6, "\u8fd4\u56de\u8bbe\u7f6e"

    invoke-static {p0, v5, v6, v4}, Lcom/local/p5home/Ui;->iconButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v4, 0x1a

    invoke-static {p0, v1, v4}, Lcom/local/p5home/Ui;->side(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    const-string v5, "\u4eea\u8868\u4e0e\u8f66\u8f86\u63a5\u53e3"

    const/16 v6, 0x2e

    invoke-static {p0, v5, v6}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x1c

    invoke-static {p0, v3, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 54
    const-string v5, "\u8fde\u63a5\u4e0e\u6388\u6743"

    invoke-direct {p0, v3, v5}, Lcom/local/p5home/VehicleBridgeActivity;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v5

    iget v6, v0, Lcom/local/p5home/Ui$Palette;->text:I

    const-string v7, ""

    invoke-static {p0, v7, v1, v6}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, p0, Lcom/local/p5home/VehicleBridgeActivity;->connection:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v6, 0x14

    invoke-static {p0, v5, v6}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 55
    new-instance v10, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda18;

    invoke-direct {v10, p0}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda18;-><init>(Lcom/local/p5home/VehicleBridgeActivity;)V

    const-string v11, "\u8fde\u63a5 / \u7533\u8bf7\u6388\u6743"

    invoke-static {p0, v11, v2, v10}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v10

    new-instance v11, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda19;

    invoke-direct {v11, p0}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda19;-><init>(Lcom/local/p5home/VehicleBridgeActivity;)V

    const-string v12, "\u6253\u5f00\u6865\u63a5\u6a21\u5757\u8bbe\u7f6e"

    invoke-static {p0, v12, v8, v11}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v11

    filled-new-array {v10, v11}, [Landroid/widget/Button;

    move-result-object v10

    invoke-static {p0, v5, v10}, Lcom/local/p5home/Ui;->buttons(Landroid/content/Context;Landroid/widget/LinearLayout;[Landroid/widget/Button;)V

    .line 56
    const-string v10, "\u9700\u5b89\u88c5 G3\u8f66\u8f86\u63a5\u53e3\uff0c\u5e76\u5728 LSPosed \u4e3a\u5b83\u52fe\u9009 CarService\u3002\u5ba2\u6237\u7aef\u6388\u6743\u3001\u6a21\u5757\u5c31\u7eea\u548c\u5355\u9879\u80fd\u529b\u5206\u522b\u68c0\u6d4b\uff1b\u4ec5\u5b89\u88c5 APK \u4e0d\u4ee3\u8868\u63a5\u53e3\u5df2\u63a5\u5165\u3002"

    iget v11, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v10, v4, v11}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    const-string v5, "\u4eea\u8868\u81ea\u52a8\u63a8\u9001"

    invoke-direct {p0, v3, v5}, Lcom/local/p5home/VehicleBridgeActivity;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 59
    iget v10, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v11, "\u5f00\u542f\u540e\u4ec5\u53d1\u9001\u5b9e\u9645\u5bfc\u822a\u6216\u64ad\u653e\u4f1a\u8bdd\u63d0\u4f9b\u7684\u4fe1\u606f\u3002\u6ca1\u6709\u53ef\u7528\u6570\u636e\u65f6\u4fdd\u6301\u7b49\u5f85\uff1b\u624b\u52a8\u6d4b\u8bd5\u5185\u5bb9\u4e0d\u4f1a\u53d8\u6210\u81ea\u52a8\u63a8\u9001\u6765\u6e90\u3002"

    const/16 v12, 0x1b

    invoke-static {p0, v11, v12, v10}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v10, 0x10

    invoke-static {p0, v5, v10}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 60
    invoke-static {p0}, Lcom/local/p5home/VehicleBridgeClient;->navEnabled(Landroid/content/Context;)Z

    move-result v11

    new-instance v13, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda20;

    invoke-direct {v13, p0}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda20;-><init>(Lcom/local/p5home/VehicleBridgeActivity;)V

    const-string v14, "\u5bfc\u822a\u4fe1\u606f\u63a8\u9001"

    invoke-direct {p0, v5, v14, v11, v13}, Lcom/local/p5home/VehicleBridgeActivity;->toggle(Landroid/widget/LinearLayout;Ljava/lang/String;ZLcom/local/p5home/VehicleBridgeActivity$Change;)V

    .line 61
    invoke-static {p0}, Lcom/local/p5home/VehicleBridgeClient;->musicEnabled(Landroid/content/Context;)Z

    move-result v11

    new-instance v13, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda21;

    invoke-direct {v13, p0}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda21;-><init>(Lcom/local/p5home/VehicleBridgeActivity;)V

    const-string v14, "\u97f3\u4e50\u4fe1\u606f\u63a8\u9001"

    invoke-direct {p0, v5, v14, v11, v13}, Lcom/local/p5home/VehicleBridgeActivity;->toggle(Landroid/widget/LinearLayout;Ljava/lang/String;ZLcom/local/p5home/VehicleBridgeActivity$Change;)V

    .line 62
    iget v11, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v7, v4, v11}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/local/p5home/VehicleBridgeActivity;->autoStatus:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p0, v5, v10}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance v4, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda22;

    invoke-direct {v4, p0}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda22;-><init>(Lcom/local/p5home/VehicleBridgeActivity;)V

    const-string v11, "\u5141\u8bb8\u8bfb\u53d6\u6b63\u5728\u64ad\u653e\u7684\u97f3\u4e50"

    invoke-static {p0, v11, v8, v4}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v4

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    invoke-direct {v11, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    const-string v4, "\u4eea\u8868\u4e0e\u8f66\u51b5\u6570\u636e"

    invoke-direct {p0, v3, v4}, Lcom/local/p5home/VehicleBridgeActivity;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget v5, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v7, v12, v5}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/local/p5home/VehicleBridgeActivity;->sampleStatus:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v5, 0x12

    invoke-static {p0, v4, v5}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 65
    const-string v7, "\u5c1a\u65e0\u6709\u6548\u6570\u636e"

    iget v11, v0, Lcom/local/p5home/Ui$Palette;->text:I

    invoke-static {p0, v7, v1, v11}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity;->dataText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity;->dataText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p0, v4, v6}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 66
    new-instance v1, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda5;-><init>(Lcom/local/p5home/VehicleBridgeActivity;)V

    const-string v6, "\u5237\u65b0\u6570\u636e\u4e0e\u80fd\u529b"

    invoke-static {p0, v6, v8, v1}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0xe

    invoke-static {p0, v4, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance v1, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda23;-><init>(Lcom/local/p5home/VehicleBridgeActivity;)V

    const-string v6, "\u5168\u90e8\u63a5\u53e3\u76ee\u5f55 / \u5355\u9879\u8bfb\u53d6"

    invoke-static {p0, v6, v8, v1}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    const-string v1, "\u624b\u52a8\u4eea\u8868\u6d4b\u8bd5"

    invoke-direct {p0, v3, v1}, Lcom/local/p5home/VehicleBridgeActivity;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    const-string v4, "\u6d4b\u8bd5\u4f1a\u5411\u4eea\u8868\u63d0\u4ea4\u4f60\u586b\u5199\u7684\u5185\u5bb9\u3002\u539f\u5382\u663e\u793a\u63a5\u53e3\u6ca1\u6709\u5df2\u786e\u8ba4\u7684\u663e\u793a\u56de\u6267\uff0c\u5df2\u63d0\u4ea4\u4e0d\u80fd\u5f53\u4f5c\u5b9e\u9645\u663e\u793a\u6210\u529f\u3002"

    iget v6, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v4, v12, v6}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p0, v1, v5}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 69
    new-instance v4, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda24;

    invoke-direct {v4, p0}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda24;-><init>(Lcom/local/p5home/VehicleBridgeActivity;)V

    const-string v6, "\u7f16\u8f91\u5bfc\u822a\u6d4b\u8bd5"

    invoke-static {p0, v6, v8, v4}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/local/p5home/VehicleBridgeActivity;->navTest:Landroid/widget/Button;

    new-instance v4, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda25;

    invoke-direct {v4, p0}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda25;-><init>(Lcom/local/p5home/VehicleBridgeActivity;)V

    const-string v6, "\u6e05\u9664\u5bfc\u822a\u663e\u793a"

    invoke-static {p0, v6, v8, v4}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/local/p5home/VehicleBridgeActivity;->navClear:Landroid/widget/Button;

    iget-object v6, p0, Lcom/local/p5home/VehicleBridgeActivity;->navTest:Landroid/widget/Button;

    filled-new-array {v6, v4}, [Landroid/widget/Button;

    move-result-object v4

    invoke-static {p0, v1, v4}, Lcom/local/p5home/Ui;->buttons(Landroid/content/Context;Landroid/widget/LinearLayout;[Landroid/widget/Button;)V

    .line 70
    new-instance v4, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda15;-><init>(Lcom/local/p5home/VehicleBridgeActivity;)V

    const-string v6, "\u7f16\u8f91\u97f3\u4e50\u6d4b\u8bd5"

    invoke-static {p0, v6, v8, v4}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/local/p5home/VehicleBridgeActivity;->musicTest:Landroid/widget/Button;

    new-instance v4, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda16;-><init>(Lcom/local/p5home/VehicleBridgeActivity;)V

    const-string v6, "\u97f3\u4e50\u6682\u505c\u72b6\u6001\u6d4b\u8bd5"

    invoke-static {p0, v6, v8, v4}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/local/p5home/VehicleBridgeActivity;->musicPause:Landroid/widget/Button;

    iget-object v6, p0, Lcom/local/p5home/VehicleBridgeActivity;->musicTest:Landroid/widget/Button;

    filled-new-array {v6, v4}, [Landroid/widget/Button;

    move-result-object v4

    invoke-static {p0, v1, v4}, Lcom/local/p5home/Ui;->buttons(Landroid/content/Context;Landroid/widget/LinearLayout;[Landroid/widget/Button;)V

    .line 72
    const-string v1, "\u8f66\u8f86\u63a7\u5236\u4e0e\u6444\u50cf\u5934"

    invoke-direct {p0, v3, v1}, Lcom/local/p5home/VehicleBridgeActivity;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    const-string v4, "\u53ea\u663e\u793a\u6a21\u5757\u5f53\u524d\u8fd4\u56de\u7684\u5177\u540d\u80fd\u529b\u3002\u63a7\u5236\u6d4b\u8bd5\u63d0\u4ea4\u524d\u4f1a\u786e\u8ba4\u53c2\u6570\uff1b\u53ef\u6267\u884c\u6027\u53ca\u505c\u8f66\u3001\u8303\u56f4\u548c\u753b\u9762\u4e92\u65a5\u6761\u4ef6\u7531\u8f66\u8f86\u63a5\u53e3\u6a21\u5757\u6821\u9a8c\u3002"

    iget v6, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v4, v12, v6}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p0, v1, v10}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    iput-object v4, p0, Lcom/local/p5home/VehicleBridgeActivity;->controls:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    const-string v1, "\u672c\u9875\u64cd\u4f5c\u8bb0\u5f55"

    invoke-direct {p0, v3, v1}, Lcom/local/p5home/VehicleBridgeActivity;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    const-string v3, "\u5c1a\u672a\u63d0\u4ea4\u6d4b\u8bd5"

    iget v0, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v3, v12, v0}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->logText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->logText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p0, v1, v5}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance v0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda17;-><init>(Lcom/local/p5home/VehicleBridgeActivity;)V

    const-string v2, "\u6e05\u9664\u672c\u9875\u8bb0\u5f55"

    invoke-static {p0, v2, v8, v0}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->render()V

    .line 75
    return-void
.end method

.method private cancelRead()V
    .registers 5

    .line 121
    iget-wide v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->readGeneration:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->readGeneration:J

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->readDialog:Lcom/local/p5home/Ui$PanelDialog;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity;->readDialog:Lcom/local/p5home/Ui$PanelDialog;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    :cond_11
    return-void
.end method

.method private card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 4

    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/local/p5home/Ui;->card(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method private catalogPage(I)V
    .registers 3

    .line 118
    new-instance v0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda9;-><init>(Lcom/local/p5home/VehicleBridgeActivity;I)V

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleBridgeActivity;->work(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method private clearNavigation()V
    .registers 4

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "active"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/local/g3bridge/sdk/G3Bridge;->payload(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "\u5411\u539f\u5382\u4eea\u8868\u63d0\u4ea4\u5bfc\u822a\u663e\u793a\u6e05\u9664\u8bf7\u6c42\u3002\u5f53\u524d\u5730\u56fe\u8def\u7ebf\u4e0d\u4f1a\u7531\u6b64\u6d4b\u8bd5\u7ed3\u675f\u3002"

    const-string v2, "cluster.navigation"

    invoke-direct {p0, v2, v0, v1}, Lcom/local/p5home/VehicleBridgeActivity;->confirm(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private closeDialogs()V
    .registers 3

    .line 46
    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->cancelRead()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity;->dialogs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/local/p5home/Ui$PanelDialog;

    invoke-virtual {v1}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    goto :goto_e

    :cond_1e
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private command(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    .line 106
    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->commands()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method private commandAvailable(Ljava/lang/String;)Z
    .registers 5

    .line 107
    invoke-direct {p0, p1}, Lcom/local/p5home/VehicleBridgeActivity;->command(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->hello:Landroid/os/Bundle;

    const-string v1, "writeAuthorized"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_1a

    const-string v0, "available"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    return v2
.end method

.method private commandReason(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 108
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->hello:Landroid/os/Bundle;

    const-string v1, "authorized"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->hello:Landroid/os/Bundle;

    const-string v1, "writeAuthorized"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_18

    const-string p1, "\u7b49\u5f85\u8bfb\u5199\u6388\u6743"

    return-object p1

    :cond_18
    invoke-direct {p0, p1}, Lcom/local/p5home/VehicleBridgeActivity;->command(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_21

    const-string p1, "\u7b49\u5f85\u80fd\u529b\u68c0\u67e5"

    goto :goto_34

    :cond_21
    const-string v0, "available"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p1, "\u63a5\u53e3\u53ef\u63d0\u4ea4\uff0c\u7b49\u5f85\u5b9e\u9645\u6765\u6e90"

    goto :goto_34

    :cond_2c
    const-string v0, "reason"

    const-string v1, "\u80fd\u529b\u5c1a\u672a\u63a5\u5165"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_34
    return-object p1
.end method

.method private commands()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->capabilities:Landroid/os/Bundle;

    const-string v1, "commands"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_f
    return-object v0
.end method

.method private confirm(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6

    .line 146
    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "\u786e\u8ba4\u63d0\u4ea4\u6d4b\u8bd5"

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, "\n\n\u547d\u4ee4\uff1a"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/local/p5home/Ui$PanelBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p3

    const-string v0, "\u53d6\u6d88"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p3

    new-instance v0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda10;-><init>(Lcom/local/p5home/VehicleBridgeActivity;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "\u786e\u8ba4\u63d0\u4ea4"

    invoke-virtual {p3, p1, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/local/p5home/VehicleBridgeActivity;->show(Lcom/local/p5home/Ui$PanelDialog;)V

    return-void
.end method

.method private controlForm(Landroid/os/Bundle;)V
    .registers 12

    .line 138
    const-string v0, "key"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "type"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {p1}, Lcom/local/p5home/VehicleBridgeActivity;->hasRange(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u539f\u5382\u8303\u56f4\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "min"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u2014 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "max"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_44

    :cond_42
    const-string v2, "\u8303\u56f4\u4e0e\u6267\u884c\u6761\u4ef6\u7531\u6a21\u5757\u6821\u9a8c"

    :goto_44
    const-string v3, "enumValues"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    if-eqz v3, :cond_6a

    array-length v4, v3

    if-lez v4, :cond_6a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n\u5141\u8bb8\u503c\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v3

    iget v3, v3, Lcom/local/p5home/Ui$Palette;->muted:I

    const/16 v4, 0x1b

    invoke-static {p0, v2, v4, v3}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    const-string v2, "boolean"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    const-string v2, "bool"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    goto :goto_a4

    :cond_a1
    const-string v2, "\u76ee\u6807\u503c"

    goto :goto_a6

    :cond_a4
    :goto_a4
    const-string v2, "\u503c\uff080\u5173\u95ed\uff0f1\u5f00\u542f\uff09"

    :goto_a6
    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/local/p5home/VehicleBridgeActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v4

    .line 140
    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6d4b\u8bd5 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Lcom/local/p5home/VehicleBridgeActivity;->propertyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setView(Landroid/view/View;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "\u68c0\u67e5\u5e76\u63d0\u4ea4"

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$PanelDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v9, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda31;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-object v7, v0

    invoke-direct/range {v2 .. v8}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda31;-><init>(Lcom/local/p5home/VehicleBridgeActivity;Landroid/widget/EditText;Landroid/os/Bundle;Ljava/lang/String;Lcom/local/p5home/Ui$PanelDialog;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleBridgeActivity;->show(Lcom/local/p5home/Ui$PanelDialog;)V

    .line 141
    return-void
.end method

.method private field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;
    .registers 6

    .line 143
    const/4 v0, 0x0

    invoke-static {p0, p2, p3, v0}, Lcom/local/p5home/Ui;->input(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object p3

    if-eqz p4, :cond_c

    const/16 p4, 0x3002

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setInputType(I)V

    :cond_c
    invoke-static {p0, p1, p2, p3}, Lcom/local/p5home/Ui;->field(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/EditText;)V

    return-object p3
.end method

.method static formatProperty(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 19

    .line 153
    move-object/from16 v0, p0

    const-string v1, "key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/local/p5home/VehicleBridgeActivity;->propertyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "unit"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sourceAgeMs"

    const-wide/16 v6, -0x1

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    const-wide/16 v12, 0x3e8

    if-gez v8, :cond_27

    const-string v8, "\u6765\u6e90\u65f6\u95f4\u672a\u77e5"

    goto :goto_45

    :cond_27
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6765\u6e90 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    div-long/2addr v14, v12

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u79d2\u524d"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 154
    :goto_45
    const-string v9, "timestampSemantics"

    invoke-virtual {v0, v9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "read_time"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v15, 0x0

    if-nez v9, :cond_5f

    const-string v9, "getter_read_time"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    goto :goto_5f

    :cond_5d
    move v2, v15

    goto :goto_60

    :cond_5f
    :goto_5f
    const/4 v2, 0x1

    :goto_60
    invoke-static/range {p0 .. p0}, Lcom/local/p5home/VehicleBridgeActivity;->availableEvent(Landroid/os/Bundle;)Z

    move-result v9

    .line 155
    if-eqz v9, :cond_88

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "HAL\u56de\u8c03 "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, "eventAgeMs"

    invoke-virtual {v0, v14, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    div-long v12, v16, v12

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " \u79d2\u524d\uff1bECU\u91c7\u6837\u65f6\u523b\u672a\u77e5"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_8c

    :cond_88
    if-eqz v2, :cond_8c

    const-string v8, "\u8bfb\u53d6\u65f6\u95f4\u72ec\u7acb\u8bb0\u5f55\uff1bECU\u91c7\u6837\u65f6\u523b\u672a\u77e5"

    .line 156
    :cond_8c
    :goto_8c
    invoke-static/range {p0 .. p0}, Lcom/local/p5home/VehicleBridgeActivity;->value(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "available"

    invoke-virtual {v0, v13, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_b2

    const-string v14, "valid"

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_b2

    const-string v14, "freshSource"

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_b2

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v5, v5, v10

    if-ltz v5, :cond_b2

    const/4 v14, 0x1

    goto :goto_b3

    :cond_b2
    move v14, v15

    :goto_b3
    if-nez v13, :cond_b8

    const-string v5, "\u2014 \u00b7 \u4e0d\u53ef\u7528"

    goto :goto_e7

    :cond_b8
    if-nez v12, :cond_bd

    const-string v5, "\u2014 \u00b7 \u503c\u7f3a\u5931"

    goto :goto_e7

    :cond_bd
    if-eqz v14, :cond_c1

    move-object v5, v12

    goto :goto_e7

    :cond_c1
    if-eqz v9, :cond_d7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HAL\u4e8b\u4ef6\u503c "

    :goto_ca
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_e7

    :cond_d7
    new-instance v5, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_e1

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8bfb\u53d6\u503c "

    goto :goto_ca

    :cond_e1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u7f13\u5b58\u503c "

    goto :goto_ca

    .line 157
    :goto_e7
    if-eqz v13, :cond_112

    if-eqz v12, :cond_112

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_112

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "oem_raw"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10a

    const-string v4, "\uff08\u539f\u59cb\u5355\u4f4d\u672a\u786e\u8ba4\uff09"

    :cond_10a
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 158
    :cond_112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v14, :cond_138

    const-string v2, "\u6709\u6548\u6837\u672c"

    goto :goto_144

    :cond_138
    if-eqz v9, :cond_13d

    const-string v2, "\u8fd1\u671fHAL\u4e8b\u4ef6\uff1b\u4e0d\u4ee3\u8868\u4f20\u611f\u5668\u5fc3\u8df3"

    goto :goto_144

    :cond_13d
    if-eqz v2, :cond_142

    const-string v2, "\u8bfb\u53d6\u5b8c\u6210\uff1b\u6e90\u91c7\u6837\u65f6\u523b\u672a\u786e\u8ba4"

    goto :goto_144

    :cond_142
    const-string v2, "\u975e\u5b9e\u65f6 / \u72b6\u6001\u672a\u786e\u8ba4"

    :goto_144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 \u7c7b\u578b "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "\u672a\u77e5"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasRange(Landroid/os/Bundle;)Z
    .registers 5

    .line 142
    const-string v0, "min"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "max"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isFinite(D)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isFinite(D)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    cmpg-double p0, v2, v0

    if-gez p0, :cond_32

    const/4 p0, 0x1

    goto :goto_33

    :cond_32
    const/4 p0, 0x0

    :goto_33
    return p0
.end method

.method private static integer(Landroid/widget/EditText;II)I
    .registers 5

    .line 144
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lt p0, p1, :cond_15

    if-gt p0, p2, :cond_15

    return p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6570\u5b57\u5fc5\u987b\u5728 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u81f3 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " \u8303\u56f4\u5185"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3e} :catch_3e

    :catch_3e
    move-exception p0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u8bf7\u8f93\u5165\u8303\u56f4\u5185\u7684\u6574\u6570"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private musicForm(Z)V
    .registers 13

    .line 133
    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v2, "\u4ec5\u6d4b\u8bd5\u4eea\u8868\u4e0a\u7684\u6807\u9898\u3001\u6b4c\u624b\u4e0e\u64ad\u653e\u72b6\u6001\uff1b\u4e0d\u4f1a\u64ad\u653e\u6216\u6682\u505c\u5b9e\u9645\u97f3\u4e50\u3002\u8fdb\u5ea6\u56fa\u5b9a0\uff0c\u6765\u6e900\u4ee3\u8868\u666e\u901a\u97f3\u4e50\u3002"

    const/16 v3, 0x1a

    invoke-static {p0, v2, v3, v1}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "\u66f2\u540d"

    const-string v2, "\u4eea\u8868\u97f3\u4e50\u6d4b\u8bd5"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/local/p5home/VehicleBridgeActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v6

    const-string v1, "\u6b4c\u624b"

    const-string v2, "G3\u8f7b\u684c\u9762"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/local/p5home/VehicleBridgeActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v7

    const-string v1, "0"

    const/4 v2, 0x1

    const-string v3, "\u539f\u5382\u5a92\u4f53\u6765\u6e90\uff080\u20136\uff09"

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/local/p5home/VehicleBridgeActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v9

    .line 134
    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v1

    if-eqz p1, :cond_38

    const-string v2, "\u624b\u52a8\u97f3\u4e50\u663e\u793a\u6d4b\u8bd5"

    goto :goto_3a

    :cond_38
    const-string v2, "\u624b\u52a8\u6682\u505c\u663e\u793a\u6d4b\u8bd5"

    :goto_3a
    invoke-virtual {v1, v2}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setView(Landroid/view/View;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "\u68c0\u67e5\u5e76\u63d0\u4ea4"

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$PanelDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda6;

    move-object v4, v2

    move-object v5, p0

    move v8, p1

    move-object v10, v0

    invoke-direct/range {v4 .. v10}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda6;-><init>(Lcom/local/p5home/VehicleBridgeActivity;Landroid/widget/EditText;Landroid/widget/EditText;ZLandroid/widget/EditText;Lcom/local/p5home/Ui$PanelDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleBridgeActivity;->show(Lcom/local/p5home/Ui$PanelDialog;)V

    .line 135
    return-void
.end method

.method private navigationForm()V
    .registers 14

    .line 127
    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v2, "\u4ee5\u4e0b\u662f\u624b\u52a8\u6d4b\u8bd5\u5185\u5bb9\uff0c\u4e0d\u662f\u5f53\u524d\u8def\u7ebf\u3002\u56fe\u6807\u7f16\u53f7\u4ec5\u7528\u4e8e\u9a8c\u8bc1\u539f\u5382\u663e\u793a\uff0c\u4e0d\u4ee3\u8868\u5df2\u786e\u8ba4\u7684\u8f6c\u5411\u542b\u4e49\u3002"

    const/16 v3, 0x1a

    invoke-static {p0, v2, v3, v1}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    const-string v1, "\u5f53\u524d\u9053\u8def"

    const-string v2, "\u4eea\u8868\u6d4b\u8bd5"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/local/p5home/VehicleBridgeActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v6

    const-string v1, "\u4e0b\u4e00\u9053\u8def"

    const-string v2, "\u4e0b\u4e00\u9053\u8def\u6d4b\u8bd5"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/local/p5home/VehicleBridgeActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v7

    const-string v1, "\u8def\u7ebf\u5269\u4f59\u8ddd\u79bb\uff08\u7c73\uff09"

    const-string v2, "1000"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/local/p5home/VehicleBridgeActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v8

    const-string v1, "\u8def\u7ebf\u5269\u4f59\u65f6\u95f4\uff08\u79d2\uff09"

    const-string v2, "300"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/local/p5home/VehicleBridgeActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v9

    const-string v1, "\u4e0b\u4e00\u8f6c\u5f2f\u8ddd\u79bb\uff08\u7c73\uff09"

    const-string v2, "200"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/local/p5home/VehicleBridgeActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v10

    const-string v1, "\u539f\u5382\u56fe\u6807\u7f16\u53f7\uff081\u201313\uff0c8\u4ec5\u6d4b\u8bd5\u7f16\u53f7\uff09"

    const-string v2, "8"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/local/p5home/VehicleBridgeActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v11

    .line 129
    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v1

    const-string v2, "\u624b\u52a8\u5bfc\u822a\u6d4b\u8bd5"

    invoke-virtual {v1, v2}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setView(Landroid/view/View;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "\u68c0\u67e5\u5e76\u63d0\u4ea4"

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$PanelDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda1;

    move-object v4, v2

    move-object v5, p0

    move-object v12, v0

    invoke-direct/range {v4 .. v12}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/local/p5home/VehicleBridgeActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/local/p5home/Ui$PanelDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleBridgeActivity;->show(Lcom/local/p5home/Ui$PanelDialog;)V

    .line 130
    return-void
.end method

.method private openModule()V
    .registers 5

    .line 80
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.local.g3bridge"

    const-string v3, "com.local.g3bridge.SettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->launch(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_33

    :catch_16
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u5148\u5b89\u88c5 G3\u8f66\u8f86\u63a5\u53e3\u3002\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8f66\u8f86\u63a5\u53e3\u6a21\u5757\u672a\u6253\u5f00"

    invoke-static {p0, v1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    return-void
.end method

.method static propertyLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 166
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_ce

    :cond_7
    goto/16 :goto_9f

    :sswitch_9
    const-string v0, "battery.soc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto/16 :goto_a0

    :sswitch_14
    const-string v0, "vehicle.odometer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto/16 :goto_a0

    :sswitch_1f
    const-string v0, "body.lock"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto/16 :goto_a0

    :sswitch_2a
    const-string v0, "hvac.temperature.driver"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto/16 :goto_a0

    :sswitch_36
    const-string v0, "vehicle.speed.raw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_a0

    :sswitch_40
    const-string v0, "cluster.connection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto :goto_a0

    :sswitch_4b
    const-string v0, "hvac.power"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_a0

    :sswitch_56
    const-string v0, "vehicle.trip_b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_a0

    :sswitch_60
    const-string v0, "vehicle.trip_a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_a0

    :sswitch_6a
    const-string v0, "body.doors"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_a0

    :sswitch_74
    const-string v0, "ignition.state"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_a0

    :sswitch_7f
    const-string v0, "hvac.fan.speed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto :goto_a0

    :sswitch_8a
    const-string v0, "cluster.media_source"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto :goto_a0

    :sswitch_95
    const-string v0, "vehicle.gear"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_a0

    :goto_9f
    const/4 v0, -0x1

    :goto_a0
    packed-switch v0, :pswitch_data_108

    return-object p0

    :pswitch_a4
    const-string p0, "\u4eea\u8868\u5a92\u4f53\u6765\u6e90"

    return-object p0

    :pswitch_a7
    const-string p0, "\u4eea\u8868\u8fde\u63a5"

    return-object p0

    :pswitch_aa
    const-string p0, "\u7a7a\u8c03\u98ce\u91cf"

    return-object p0

    :pswitch_ad
    const-string p0, "\u4e3b\u9a7e\u6e29\u5ea6"

    return-object p0

    :pswitch_b0
    const-string p0, "\u7a7a\u8c03\u5f00\u5173"

    return-object p0

    :pswitch_b3
    const-string p0, "\u70b9\u706b\u72b6\u6001"

    return-object p0

    :pswitch_b6
    const-string p0, "\u95e8\u9501"

    return-object p0

    :pswitch_b9
    const-string p0, "\u8f66\u95e8\u72b6\u6001"

    return-object p0

    :pswitch_bc
    const-string p0, "\u7535\u91cf"

    return-object p0

    :pswitch_bf
    const-string p0, "B\u91cc\u7a0b"

    return-object p0

    :pswitch_c2
    const-string p0, "A\u91cc\u7a0b"

    return-object p0

    :pswitch_c5
    const-string p0, "\u603b\u91cc\u7a0b"

    return-object p0

    :pswitch_c8
    const-string p0, "\u6321\u4f4d"

    return-object p0

    :pswitch_cb
    const-string p0, "\u539f\u59cb\u8f66\u901f"

    return-object p0

    :sswitch_data_ce
    .sparse-switch
        -0x7bb460ef -> :sswitch_95
        -0x71a353b6 -> :sswitch_8a
        -0x6a025d12 -> :sswitch_7f
        -0x693beab0 -> :sswitch_74
        -0x493ac8c7 -> :sswitch_6a
        -0x49360837 -> :sswitch_60
        -0x49360836 -> :sswitch_56
        -0x446680b9 -> :sswitch_4b
        -0xc8794ae -> :sswitch_40
        0xf0601bf -> :sswitch_36
        0x4351f2e0 -> :sswitch_2a
        0x47f979f7 -> :sswitch_1f
        0x4a43e711 -> :sswitch_14
        0x78888626 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
    .end packed-switch
.end method

.method private queryProperty(Ljava/lang/String;JJ)V
    .registers 14

    .line 123
    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->dead:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->resumed:Z

    if-eqz v0, :cond_1c

    iget-wide v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->readGeneration:J

    cmp-long v0, p2, v0

    if-eqz v0, :cond_f

    goto :goto_1c

    :cond_f
    new-instance v0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda28;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda28;-><init>(Lcom/local/p5home/VehicleBridgeActivity;Ljava/lang/String;JJ)V

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleBridgeActivity;->work(Ljava/lang/Runnable;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method private readProperty(Ljava/lang/String;)V
    .registers 9

    .line 122
    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->cancelRead()V

    iget-wide v2, p0, Lcom/local/p5home/VehicleBridgeActivity;->readGeneration:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v4, 0x1388

    add-long/2addr v4, v0

    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "\u8bfb\u53d6\u5355\u9879\u72b6\u6001"

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\n\u6b63\u5728\u7b49\u5f85\u6a21\u5757\u8fd4\u56de\uff0c\u6700\u591a5\u79d2\u3002\u53d6\u6d88\u6216\u79bb\u5f00\u672c\u9875\u4f1a\u505c\u6b62\u540e\u7eed\u67e5\u8be2\u3002"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->readDialog:Lcom/local/p5home/Ui$PanelDialog;

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleBridgeActivity;->show(Lcom/local/p5home/Ui$PanelDialog;)V

    new-instance v1, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda36;-><init>(Lcom/local/p5home/VehicleBridgeActivity;Lcom/local/p5home/Ui$PanelDialog;J)V

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$PanelDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/local/p5home/VehicleBridgeActivity;->queryProperty(Ljava/lang/String;JJ)V

    return-void
.end method

.method private refresh()V
    .registers 4

    .line 83
    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->dead:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->reading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_18

    .line 84
    :cond_f
    new-instance v0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda7;-><init>(Lcom/local/p5home/VehicleBridgeActivity;)V

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleBridgeActivity;->work(Ljava/lang/Runnable;)V

    .line 93
    return-void

    .line 83
    :cond_18
    :goto_18
    return-void
.end method

.method private render()V
    .registers 8

    .line 96
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->connection:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->hello:Landroid/os/Bundle;

    const-string v1, "authorized"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity;->connection:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/local/p5home/VehicleBridgeActivity;->connectionError:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, p0, Lcom/local/p5home/VehicleBridgeActivity;->connectionError:Ljava/lang/String;

    goto :goto_49

    :cond_1b
    if-nez v0, :cond_20

    const-string v3, "\u5c1a\u672a\u6388\u6743"

    goto :goto_49

    :cond_20
    iget-object v3, p0, Lcom/local/p5home/VehicleBridgeActivity;->snapshot:Landroid/os/Bundle;

    const-string v4, "enabled"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "\u5df2\u6388\u6743 \u00b7 \u8f66\u8f86\u63a5\u53e3\u603b\u5f00\u5173\u5173\u95ed"

    goto :goto_49

    :cond_2d
    iget-object v3, p0, Lcom/local/p5home/VehicleBridgeActivity;->snapshot:Landroid/os/Bundle;

    const-string v4, "connected"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3a

    const-string v3, "\u5df2\u6388\u6743 \u00b7 \u539f\u5382\u670d\u52a1\u672a\u8fde\u63a5"

    goto :goto_49

    :cond_3a
    iget-object v3, p0, Lcom/local/p5home/VehicleBridgeActivity;->snapshot:Landroid/os/Bundle;

    const-string v4, "ready"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_47

    const-string v3, "\u5df2\u8fde\u63a5 \u00b7 \u539f\u5382\u63a5\u53e3\u672a\u5c31\u7eea"

    goto :goto_49

    :cond_47
    const-string v3, "\u5df2\u6388\u6743 \u00b7 \u539f\u5382\u670d\u52a1\u5df2\u5c31\u7eea"

    :goto_49
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    if-eqz v0, :cond_5f

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity;->hello:Landroid/os/Bundle;

    const-string v3, "writeAuthorized"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5f

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity;->connection:Landroid/widget/TextView;

    const-string v2, "\n\u5f53\u524d\u4e3a\u53ea\u8bfb\u6388\u6743\uff1b\u9700\u8981\u63a8\u9001\u6216\u63a7\u5236\u65f6\u8bf7\u91cd\u65b0\u7533\u8bf7\u8bfb\u5199\u6388\u6743"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 99
    :cond_5f
    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity;->sampleStatus:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeActivity;->snapshot:Landroid/os/Bundle;

    if-eqz v0, :cond_68

    const-string v0, "\u7b49\u5f85\u539f\u5382\u72b6\u6001"

    goto :goto_6a

    :cond_68
    const-string v0, "\u6388\u6743\u540e\u8bfb\u53d6\u771f\u5b9e\u6570\u636e"

    :goto_6a
    const-string v3, "diagnostic"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->snapshot:Landroid/os/Bundle;

    const-string v1, "properties"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_a5

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_86
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_9d

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9d
    invoke-static {v2}, Lcom/local/p5home/VehicleBridgeActivity;->formatProperty(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_86

    :cond_a5
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->dataText:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_b0

    const-string v1, "\u5c1a\u65e0\u4eea\u8868\u6216\u8f66\u51b5\u6570\u636e"

    goto :goto_b4

    :cond_b0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_b4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->navTest:Landroid/widget/Button;

    const-string v1, "cluster.navigation"

    invoke-direct {p0, v1}, Lcom/local/p5home/VehicleBridgeActivity;->commandAvailable(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->navClear:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/local/p5home/VehicleBridgeActivity;->commandAvailable(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->musicTest:Landroid/widget/Button;

    const-string v2, "cluster.music"

    invoke-direct {p0, v2}, Lcom/local/p5home/VehicleBridgeActivity;->commandAvailable(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->musicPause:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/local/p5home/VehicleBridgeActivity;->commandAvailable(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->autoStatus:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5bfc\u822a\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/local/p5home/VehicleBridgeClient;->navEnabled(Landroid/content/Context;)Z

    move-result v4

    const-string v5, "\u504f\u597d\u5df2\u5f00\u542f"

    const-string v6, "\u5173\u95ed"

    if-eqz v4, :cond_f8

    move-object v4, v5

    goto :goto_f9

    :cond_f8
    move-object v4, v6

    :goto_f9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/local/p5home/VehicleBridgeActivity;->commandReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\u97f3\u4e50\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/local/p5home/VehicleBridgeClient;->musicEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_118

    goto :goto_119

    :cond_118
    move-object v5, v6

    :goto_119
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/local/p5home/VehicleBridgeActivity;->commandReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/local/p5home/VehicleBridgeClient;->status(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->renderControls()V

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->renderLog()V

    .line 104
    return-void
.end method

.method private renderControls()V
    .registers 18

    .line 109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/local/p5home/VehicleBridgeActivity;->controls:Landroid/widget/LinearLayout;

    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/VehicleBridgeActivity;->commands()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x1b

    if-eqz v4, :cond_19c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 110
    const-string v6, "key"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "cluster."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_33

    goto :goto_14

    :cond_33
    add-int/lit8 v3, v3, 0x1

    const-string v8, "type"

    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/local/p5home/VehicleBridgeActivity;->propertyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 111
    iget-object v9, v0, Lcom/local/p5home/VehicleBridgeActivity;->controls:Landroid/widget/LinearLayout;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " \u00b7 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "available"

    invoke-virtual {v4, v11, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_65

    const-string v12, "\u53ef\u63d0\u4ea4"

    goto :goto_6d

    :cond_65
    const-string v12, "reason"

    const-string v13, "\u672a\u5c31\u7eea"

    invoke-virtual {v4, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_6d
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v12

    iget v12, v12, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {v0, v10, v5, v12}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    const-string v5, "camera.preview.close"

    const-string v9, "camera.preview.left"

    const-string v10, "camera.preview.right"

    filled-new-array {v9, v10, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/16 v12, 0xe

    const/4 v13, -0x2

    const/4 v14, -0x1

    const-string v15, "writeAuthorized"

    const/16 v16, 0x1

    if-eqz v5, :cond_e1

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a7

    const-string v5, "\u5de6\u4fa7\u505c\u8f66\u9884\u89c8 \u00b7 5\u79d2"

    goto :goto_b2

    :cond_a7
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b0

    const-string v5, "\u53f3\u4fa7\u505c\u8f66\u9884\u89c8 \u00b7 5\u79d2"

    goto :goto_b2

    :cond_b0
    const-string v5, "\u5173\u95ed\u672c\u6a21\u5757\u9884\u89c8"

    :goto_b2
    new-instance v7, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda33;

    invoke-direct {v7, v0, v6, v5}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda33;-><init>(Lcom/local/p5home/VehicleBridgeActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v5, v2, v7}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v5

    iget-object v6, v0, Lcom/local/p5home/VehicleBridgeActivity;->hello:Landroid/os/Bundle;

    invoke-virtual {v6, v15, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_cc

    invoke-virtual {v4, v11, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_cc

    move/from16 v4, v16

    goto :goto_cd

    :cond_cc
    move v4, v2

    :goto_cd
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, v0, Lcom/local/p5home/VehicleBridgeActivity;->controls:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/local/p5home/VehicleBridgeActivity;->controls:Landroid/widget/LinearLayout;

    invoke-static {v0, v4, v12}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    goto/16 :goto_195

    .line 113
    :cond_e1
    const-string v5, "body.windows.position"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_122

    const-string v5, "float_array"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_122

    new-instance v5, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda34;

    invoke-direct {v5, v0}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda34;-><init>(Lcom/local/p5home/VehicleBridgeActivity;)V

    const-string v6, "\u6d4b\u8bd5\u56db\u7a97\u4f4d\u7f6e"

    invoke-static {v0, v6, v2, v5}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v5

    iget-object v6, v0, Lcom/local/p5home/VehicleBridgeActivity;->hello:Landroid/os/Bundle;

    invoke-virtual {v6, v15, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_10d

    invoke-virtual {v4, v11, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_10d

    move/from16 v4, v16

    goto :goto_10e

    :cond_10d
    move v4, v2

    :goto_10e
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, v0, Lcom/local/p5home/VehicleBridgeActivity;->controls:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/local/p5home/VehicleBridgeActivity;->controls:Landroid/widget/LinearLayout;

    invoke-static {v0, v4, v12}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    goto/16 :goto_195

    .line 114
    :cond_122
    const-string v5, "boolean"

    const-string v6, "bool"

    const-string v9, "int"

    const-string v10, "float"

    const-string v12, "double"

    filled-new-array {v9, v10, v12, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_182

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6d4b\u8bd5 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda35;

    invoke-direct {v7, v0, v5}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda35;-><init>(Lcom/local/p5home/VehicleBridgeActivity;Landroid/os/Bundle;)V

    invoke-static {v0, v6, v2, v7}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v5

    iget-object v6, v0, Lcom/local/p5home/VehicleBridgeActivity;->hello:Landroid/os/Bundle;

    invoke-virtual {v6, v15, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_16c

    invoke-virtual {v4, v11, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_16c

    move/from16 v4, v16

    goto :goto_16d

    :cond_16c
    move v4, v2

    :goto_16d
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, v0, Lcom/local/p5home/VehicleBridgeActivity;->controls:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/local/p5home/VehicleBridgeActivity;->controls:Landroid/widget/LinearLayout;

    const/16 v5, 0xe

    invoke-static {v0, v4, v5}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    goto :goto_195

    .line 115
    :cond_182
    iget-object v4, v0, Lcom/local/p5home/VehicleBridgeActivity;->controls:Landroid/widget/LinearLayout;

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v5

    iget v5, v5, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v6, "\u8be5\u80fd\u529b\u7684\u53c2\u6570\u7f16\u8f91\u5c1a\u672a\u63a5\u5165\u672c\u9875\u3002"

    const/16 v7, 0x19

    invoke-static {v0, v6, v7, v5}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_195
    iget-object v4, v0, Lcom/local/p5home/VehicleBridgeActivity;->controls:Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Lcom/local/p5home/Ui;->line(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 116
    goto/16 :goto_14

    :cond_19c
    if-nez v3, :cond_1af

    iget-object v1, v0, Lcom/local/p5home/VehicleBridgeActivity;->controls:Landroid/widget/LinearLayout;

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v2

    iget v2, v2, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v3, "\u7b49\u5f85\u6a21\u5757\u8fd4\u56de\u8f66\u8f86\u63a7\u5236\u4e0e\u5f71\u50cf\u80fd\u529b\u3002"

    invoke-static {v0, v3, v5, v2}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1af
    return-void
.end method

.method private renderLog()V
    .registers 5

    .line 150
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->logText:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity;->history:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_27

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_2b
    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity;->logText:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_36

    const-string v0, "\u5c1a\u672a\u63d0\u4ea4\u6d4b\u8bd5"

    goto :goto_3a

    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static resultLabel(Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;)Ljava/lang/String;
    .registers 4

    .line 148
    invoke-virtual {p0}, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->state()Lcom/local/g3bridge/sdk/G3Bridge$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$State;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->confirmed()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v0, "\u65b0HAL\u56de\u8bfb\u5339\u914d\uff08\u975e\u786c\u4ef6ACK\uff09"

    goto :goto_43

    :cond_11
    invoke-virtual {p0}, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->pending()Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "SUBMITTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "\u5df2\u63d0\u4ea4\uff0c\u7b49\u5f85\u53cd\u9988"

    goto :goto_43

    :cond_22
    const-string v0, "\u5df2\u6392\u961f\uff0c\u5c1a\u672a\u786e\u8ba4"

    goto :goto_43

    :cond_25
    const-string v1, "EXPIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v0, "\u6709\u6548\u671f\u5185\u672a\u83b7\u786e\u8ba4\uff08\u4e0d\u4ee3\u8868\u4e00\u5b9a\u672a\u6267\u884c\uff09"

    goto :goto_43

    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672a\u786e\u8ba4 / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->message()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private show(Lcom/local/p5home/Ui$PanelDialog;)V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0, p1}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda37;-><init>(Lcom/local/p5home/VehicleBridgeActivity;Lcom/local/p5home/Ui$PanelDialog;)V

    invoke-virtual {p1, v0}, Lcom/local/p5home/Ui$PanelDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelDialog;->show()V

    return-void
.end method

.method private submit(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 147
    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->dead:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0, p1, p2}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda38;-><init>(Lcom/local/p5home/VehicleBridgeActivity;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleBridgeActivity;->work(Ljava/lang/Runnable;)V

    return-void
.end method

.method private subscribe()V
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->subscription:Lcom/local/g3bridge/sdk/G3Bridge$Subscription;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->bridge:Lcom/local/g3bridge/sdk/G3Bridge;

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity;->main:Landroid/os/Handler;

    new-instance v2, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/VehicleBridgeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/local/g3bridge/sdk/G3Bridge;->observe(Landroid/os/Handler;Ljava/lang/Runnable;)Lcom/local/g3bridge/sdk/G3Bridge$Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->subscription:Lcom/local/g3bridge/sdk/G3Bridge$Subscription;
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_32

    :catch_15
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6570\u636e\u8ba2\u9605\u672a\u5efa\u7acb\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->connectionError:Ljava/lang/String;

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->render()V

    :goto_32
    return-void
.end method

.method private static text(Landroid/widget/EditText;I)Ljava/lang/String;
    .registers 3

    .line 145
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_1a

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_1a

    return-object p0

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u6587\u672c\u8fc7\u957f\u6216\u5305\u542b\u65e0\u6548\u5b57\u7b26"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private toggle(Landroid/widget/LinearLayout;Ljava/lang/String;ZLcom/local/p5home/VehicleBridgeActivity$Change;)V
    .registers 11

    .line 78
    invoke-static {p0}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x42e00000    # 112.0f

    invoke-static {p0, v1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    const/16 v1, 0x20

    invoke-static {p0, p2, v1}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/local/p5home/Ui$Toggle;

    invoke-direct {v1, p0}, Lcom/local/p5home/Ui$Toggle;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/local/p5home/Ui$Toggle;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/local/p5home/VehicleBridgeActivity;->binding:Z

    invoke-virtual {v1, p3}, Lcom/local/p5home/Ui$Toggle;->setChecked(Z)V

    iput-boolean v5, p0, Lcom/local/p5home/VehicleBridgeActivity;->binding:Z

    new-instance p2, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, p4}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda11;-><init>(Lcom/local/p5home/VehicleBridgeActivity;Lcom/local/p5home/VehicleBridgeActivity$Change;)V

    invoke-virtual {v1, p2}, Lcom/local/p5home/Ui$Toggle;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private unsubscribe()V
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->subscription:Lcom/local/g3bridge/sdk/G3Bridge$Subscription;

    if-eqz v0, :cond_c

    :try_start_4
    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Subscription;->close()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    :goto_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->subscription:Lcom/local/g3bridge/sdk/G3Bridge$Subscription;

    :cond_c
    return-void
.end method

.method private static value(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 4

    .line 161
    const-string v0, "valueInt"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-string v0, "valueFloat"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_2b

    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2b
    const-string v0, "valueDouble"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_47

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isFinite(D)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_47
    const-string v0, "valueLong"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_56

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_56
    const-string v0, "valueBoolean"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_6e

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6b

    const-string p0, "\u5f00\u542f"

    goto :goto_6d

    :cond_6b
    const-string p0, "\u5173\u95ed"

    :goto_6d
    return-object p0

    :cond_6e
    const-string v0, "valueString"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_81

    check-cast v0, Ljava/lang/String;

    const/16 p0, 0xb4

    invoke-static {v0, p0}, Lcom/local/p5home/Ui;->limited(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_81
    const-string v0, "valueIntArray"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [I

    if-eqz v1, :cond_92

    check-cast v0, [I

    invoke-static {v0}, Lcom/local/p5home/VehicleBridgeActivity;->array([I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_92
    const-string v0, "valueDoubleArray"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [D

    if-eqz v1, :cond_a3

    check-cast v0, [D

    invoke-static {v0}, Lcom/local/p5home/VehicleBridgeActivity;->array([D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a3
    const-string v0, "valueFloatArray"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [F

    if-eqz v1, :cond_b4

    check-cast v0, [F

    invoke-static {v0}, Lcom/local/p5home/VehicleBridgeActivity;->array([F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b4
    const-string v0, "valueLongArray"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [J

    if-eqz v1, :cond_c5

    check-cast v0, [J

    invoke-static {v0}, Lcom/local/p5home/VehicleBridgeActivity;->array([J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c5
    const-string v0, "valueByteArray"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, [B

    if-eqz v0, :cond_ec

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5b57\u8282\u6570\u636e\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, [B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\u5b57\u8282\uff09"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_ec
    const/4 p0, 0x0

    return-object p0
.end method

.method private windowsForm()V
    .registers 8

    .line 136
    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v2, "\u56db\u9879\u5168\u90e8\u586b\u5199\uff0c0\u4e3a\u5168\u5f00\u3001100\u4e3a\u5168\u95ed\u3002\u6b64\u63a5\u53e3\u4e0d\u4f7f\u7528255\u8868\u793a\u4fdd\u6301\uff1b\u63d0\u4ea4\u524d\u8bf7\u6838\u5bf9\u56db\u4e2a\u76ee\u6807\u4f4d\u7f6e\u3002"

    const/16 v3, 0x1a

    invoke-static {p0, v2, v3, v1}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "\u5de6\u524d\u8f66\u7a97\uff080\u2013100\uff09"

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/local/p5home/VehicleBridgeActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v1

    const-string v4, "\u53f3\u524d\u8f66\u7a97\uff080\u2013100\uff09"

    invoke-direct {p0, v0, v4, v2, v3}, Lcom/local/p5home/VehicleBridgeActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v4

    const-string v5, "\u5de6\u540e\u8f66\u7a97\uff080\u2013100\uff09"

    invoke-direct {p0, v0, v5, v2, v3}, Lcom/local/p5home/VehicleBridgeActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v5

    const-string v6, "\u53f3\u540e\u8f66\u7a97\uff080\u2013100\uff09"

    invoke-direct {p0, v0, v6, v2, v3}, Lcom/local/p5home/VehicleBridgeActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v2

    filled-new-array {v1, v4, v5, v2}, [Landroid/widget/EditText;

    move-result-object v1

    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v2

    const-string v3, "\u56db\u7a97\u4f4d\u7f6e\u6d4b\u8bd5"

    invoke-virtual {v2, v3}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setView(Landroid/view/View;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v2, "\u53d6\u6d88"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v2, "\u68c0\u67e5\u5e76\u63d0\u4ea4"

    invoke-virtual {v0, v2, v3}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/local/p5home/Ui$PanelDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v1, v0}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda8;-><init>(Lcom/local/p5home/VehicleBridgeActivity;[Landroid/widget/EditText;Lcom/local/p5home/Ui$PanelDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleBridgeActivity;->show(Lcom/local/p5home/Ui$PanelDialog;)V

    return-void
.end method

.method private work(Ljava/lang/Runnable;)V
    .registers 4

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, p1}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda32;-><init>(Lcom/local/p5home/VehicleBridgeActivity;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_12

    :catch_b
    move-exception p1

    iget-object p1, p0, Lcom/local/p5home/VehicleBridgeActivity;->reading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_12
    return-void
.end method


# virtual methods
.method synthetic lambda$build$2$com-local-g3home-VehicleBridgeActivity(Z)V
    .registers 2

    .line 60
    invoke-static {p0, p1}, Lcom/local/p5home/VehicleBridgeClient;->setNavEnabled(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->render()V

    return-void
.end method

.method synthetic lambda$build$3$com-local-g3home-VehicleBridgeActivity(Z)V
    .registers 2

    .line 61
    invoke-static {p0, p1}, Lcom/local/p5home/VehicleBridgeClient;->setMusicEnabled(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->render()V

    return-void
.end method

.method synthetic lambda$build$4$com-local-g3home-VehicleBridgeActivity()V
    .registers 3

    .line 62
    :try_start_0
    invoke-static {p0}, Lcom/local/p5home/VehicleBridgeClient;->openMusicAccess(Landroid/app/Activity;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_e

    :catch_4
    move-exception v0

    const-string v1, "\u97f3\u4e50\u8bfb\u53d6\u6388\u6743\u672a\u6253\u5f00"

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    return-void
.end method

.method synthetic lambda$build$5$com-local-g3home-VehicleBridgeActivity()V
    .registers 2

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleBridgeActivity;->catalogPage(I)V

    return-void
.end method

.method synthetic lambda$build$6$com-local-g3home-VehicleBridgeActivity()V
    .registers 2

    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleBridgeActivity;->musicForm(Z)V

    return-void
.end method

.method synthetic lambda$build$7$com-local-g3home-VehicleBridgeActivity()V
    .registers 2

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleBridgeActivity;->musicForm(Z)V

    return-void
.end method

.method synthetic lambda$build$8$com-local-g3home-VehicleBridgeActivity()V
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->history:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->renderLog()V

    return-void
.end method

.method synthetic lambda$catalogPage$16$com-local-g3home-VehicleBridgeActivity(Ljava/lang/String;)V
    .registers 2

    .line 119
    invoke-direct {p0, p1}, Lcom/local/p5home/VehicleBridgeActivity;->readProperty(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$catalogPage$17$com-local-g3home-VehicleBridgeActivity(ILandroid/content/DialogInterface;I)V
    .registers 4

    .line 120
    invoke-direct {p0, p1}, Lcom/local/p5home/VehicleBridgeActivity;->catalogPage(I)V

    return-void
.end method

.method synthetic lambda$catalogPage$18$com-local-g3home-VehicleBridgeActivity(Lcom/local/g3bridge/sdk/G3Bridge$Response;I)V
    .registers 14

    .line 118
    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->dead:Z

    if-nez v0, :cond_185

    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->resumed:Z

    if-nez v0, :cond_a

    goto/16 :goto_185

    :cond_a
    invoke-virtual {p1}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->ok()Z

    move-result v0

    if-nez v0, :cond_35

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->code()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " \u00b7 "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u63a5\u53e3\u76ee\u5f55\u672a\u8bfb\u53d6"

    invoke-static {p0, p2, p1}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_35
    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->properties()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->data()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v2

    iget v2, v2, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v3, "\u53ea\u8bfb\u53d6\u63a5\u53e3\u58f0\u660e\uff1b\u70b9\u9009\u5355\u9879\u624d\u8bfb\u53d6\u5b83\u7684\u5f53\u524d\u72b6\u6001\u3002\u539f\u5382\u76ee\u5f55\u53ef\u80fd\u6309\u8c03\u7528\u8eab\u4efd\u8fc7\u6ee4\u3002"

    const/16 v4, 0x1a

    invoke-static {p0, v3, v4, v2}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x1e

    const/4 v5, -0x1

    if-eqz v3, :cond_113

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v6, "key"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/local/p5home/VehicleBridgeActivity;->propertyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v4}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n\u7c7b\u578b\uff1a"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "type"

    const-string v8, "\u672a\u77e5"

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " \u00b7 \u5355\u4f4d\uff1a"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "unit"

    const-string v8, "oem_raw"

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n\u8bfb\u53d6\uff1a"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "readable"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v10, "\u672a\u516c\u5f00"

    if-eqz v9, :cond_b9

    const-string v9, "\u5df2\u58f0\u660e"

    goto :goto_ba

    :cond_b9
    move-object v9, v10

    :goto_ba
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " \u00b7 \u5199\u5165\u914d\u7f6e\uff1a"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "writable"

    invoke-virtual {v3, v9, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_ce

    const-string v10, "\u539f\u5382\u53ef\u5199\uff0c\u4ecd\u9700\u5177\u540d\u547d\u4ee4\u652f\u6301"

    :cond_ce
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v9

    iget v9, v9, Lcom/local/p5home/Ui$Palette;->muted:I

    const/16 v10, 0x19

    invoke-static {p0, v4, v10, v9}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v6}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda3;-><init>(Lcom/local/p5home/VehicleBridgeActivity;Ljava/lang/String;)V

    const-string v9, "\u8bfb\u53d6\u8fd9\u4e00\u9879"

    invoke-static {p0, v9, v8, v4}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_fd

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_fd

    const/4 v8, 0x1

    :cond_fd
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x14

    invoke-static {p0, v0, v3}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->line(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto/16 :goto_56

    .line 120
    :cond_113
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12a

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v2

    iget v2, v2, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v3, "\u5f53\u524d\u9875\u6ca1\u6709\u63a5\u53e3\u58f0\u660e"

    const/16 v6, 0x1b

    invoke-static {p0, v3, v6, v2}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_12a
    const-string v2, "nextOffset"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_137

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_143

    :cond_137
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v4, :cond_143

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int v5, p2, p1

    :cond_143
    :goto_143
    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63a5\u53e3\u76ee\u5f55 \u00b7 \u4ece\u7b2c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u9879\u5f00\u59cb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setView(Landroid/view/View;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    const-string v0, "\u5173\u95ed"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    if-le v5, p2, :cond_17d

    new-instance p2, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, v5}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda4;-><init>(Lcom/local/p5home/VehicleBridgeActivity;I)V

    const-string v0, "\u4e0b\u4e00\u9875"

    invoke-virtual {p1, v0, p2}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    :cond_17d
    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/local/p5home/VehicleBridgeActivity;->show(Lcom/local/p5home/Ui$PanelDialog;)V

    return-void

    .line 118
    :cond_185
    :goto_185
    return-void
.end method

.method synthetic lambda$catalogPage$19$com-local-g3home-VehicleBridgeActivity(I)V
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->bridge:Lcom/local/g3bridge/sdk/G3Bridge;

    const/16 v1, 0x1e

    invoke-virtual {v0, p1, v1}, Lcom/local/g3bridge/sdk/G3Bridge;->catalog(II)Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object v0

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity;->main:Landroid/os/Handler;

    new-instance v2, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0, v0, p1}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda30;-><init>(Lcom/local/p5home/VehicleBridgeActivity;Lcom/local/g3bridge/sdk/G3Bridge$Response;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void
.end method

.method synthetic lambda$confirm$28$com-local-g3home-VehicleBridgeActivity(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/local/p5home/VehicleBridgeActivity;->submit(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$controlForm$27$com-local-g3home-VehicleBridgeActivity(Landroid/widget/EditText;Landroid/os/Bundle;Ljava/lang/String;Lcom/local/p5home/Ui$PanelDialog;Ljava/lang/String;Landroid/view/View;)V
    .registers 11

    .line 140
    :try_start_0
    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isFinite(D)Z

    move-result p1

    if-eqz p1, :cond_ef

    invoke-static {p2}, Lcom/local/p5home/VehicleBridgeActivity;->hasRange(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_3e

    const-string p1, "min"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_36

    const-string p1, "max"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide p1

    cmpl-double p1, v0, p1

    if-gtz p1, :cond_36

    goto :goto_3e

    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u76ee\u6807\u503c\u8d85\u51fa\u539f\u5382\u914d\u7f6e\u8303\u56f4"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_3d
    throw p1

    :cond_3e
    :goto_3e
    const-string p1, "int"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p1

    cmpl-double p1, v0, p1

    if-nez p1, :cond_64

    const-wide/high16 p1, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double p1, v0, p1

    if-ltz p1, :cond_64

    const-wide p1, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double p1, v0, p1

    if-gtz p1, :cond_64

    const-string p1, "valueInt"

    double-to-int p2, v0

    invoke-virtual {p6, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_c1

    :cond_64
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u8bf7\u8f93\u5165\u6574\u6570"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3d

    :cond_6c
    const-string p1, "boolean"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a0

    const-string p1, "bool"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7d

    goto :goto_a0

    :cond_7d
    const-string p1, "float"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9a

    double-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result p2

    if-eqz p2, :cond_92

    const-string p2, "valueFloat"

    invoke-virtual {p6, p2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_c1

    :cond_92
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u6570\u5b57\u8fc7\u5927"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3d

    :cond_9a
    const-string p1, "valueDouble"

    invoke-virtual {p6, p1, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_c1

    :cond_a0
    :goto_a0
    const-wide/16 p1, 0x0

    cmpl-double p1, v0, p1

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    if-eqz p1, :cond_b5

    cmpl-double p1, v0, p2

    if-nez p1, :cond_ad

    goto :goto_b5

    :cond_ad
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u5f00\u5173\u53ea\u652f\u63010\u62161"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3d

    :cond_b5
    :goto_b5
    const-string p1, "valueBoolean"

    cmpl-double p2, v0, p2

    if-nez p2, :cond_bd

    const/4 p2, 0x1

    goto :goto_be

    :cond_bd
    const/4 p2, 0x0

    :goto_be
    invoke-virtual {p6, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_c1
    invoke-virtual {p4}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5c06\u6539\u53d8\u8f66\u8f86\u5f53\u524d\u72b6\u6001\uff1a\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p5}, Lcom/local/p5home/VehicleBridgeActivity;->propertyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n\u6a21\u5757\u4f1a\u6838\u5bf9\u672c\u8f66\u80fd\u529b\u3001\u6267\u884c\u6761\u4ef6\u4e0e\u771f\u5b9e\u56de\u8bfb\u3002"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p5, p6, p1}, Lcom/local/p5home/VehicleBridgeActivity;->confirm(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_109

    :cond_ef
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u8bf7\u8f93\u5165\u6709\u9650\u6570\u5b57"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    :try_end_f6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_f6} :catch_f8

    goto/16 :goto_3d

    :catch_f8
    move-exception p1

    instance-of p2, p1, Ljava/lang/NumberFormatException;

    if-eqz p2, :cond_100

    const-string p1, "\u8bf7\u8f93\u5165\u6709\u6548\u6570\u5b57"

    goto :goto_104

    :cond_100
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_104
    const-string p2, "\u8bf7\u68c0\u67e5\u63a7\u5236\u53c2\u6570"

    invoke-static {p0, p2, p1}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_109
    return-void
.end method

.method synthetic lambda$musicForm$25$com-local-g3home-VehicleBridgeActivity(Landroid/widget/EditText;Landroid/widget/EditText;ZLandroid/widget/EditText;Lcom/local/p5home/Ui$PanelDialog;Landroid/view/View;)V
    .registers 9

    .line 134
    :try_start_0
    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "title"

    const/16 v1, 0xa0

    invoke-static {p1, v1}, Lcom/local/p5home/VehicleBridgeActivity;->text(Landroid/widget/EditText;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "artist"

    invoke-static {p2, v1}, Lcom/local/p5home/VehicleBridgeActivity;->text(Landroid/widget/EditText;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "playing"

    invoke-virtual {p6, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "oemSource"

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-static {p4, v0, p2}, Lcom/local/p5home/VehicleBridgeActivity;->integer(Landroid/widget/EditText;II)I

    move-result p2

    invoke-virtual {p6, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "durationMs"

    invoke-virtual {p6, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "positionMs"

    invoke-virtual {p6, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p5}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    const-string p1, "cluster.music"

    invoke-static {p6}, Lcom/local/g3bridge/sdk/G3Bridge;->payload(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "\u5411\u4eea\u8868\u63d0\u4ea4\u4e0a\u8ff0\u624b\u52a8\u97f3\u4e50\u4fe1\u606f\u53ca"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    if-eqz p3, :cond_4c

    const-string p3, "\u64ad\u653e"

    goto :goto_4e

    :cond_4c
    const-string p3, "\u6682\u505c"

    :goto_4e
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "\u663e\u793a\u72b6\u6001\u3002"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/local/p5home/VehicleBridgeActivity;->confirm(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5f} :catch_60

    goto :goto_6a

    :catch_60
    move-exception p1

    const-string p2, "\u8bf7\u68c0\u67e5\u6d4b\u8bd5\u53c2\u6570"

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6a
    return-void
.end method

.method synthetic lambda$navigationForm$24$com-local-g3home-VehicleBridgeActivity(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/local/p5home/Ui$PanelDialog;Landroid/view/View;)V
    .registers 12

    .line 129
    :try_start_0
    new-instance p8, Landroid/os/Bundle;

    invoke-direct {p8}, Landroid/os/Bundle;-><init>()V

    const-string v0, "active"

    const/4 v1, 0x1

    invoke-virtual {p8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "currentRoad"

    const/16 v2, 0xa0

    invoke-static {p1, v2}, Lcom/local/p5home/VehicleBridgeActivity;->text(Landroid/widget/EditText;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p8, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "nextRoad"

    invoke-static {p2, v2}, Lcom/local/p5home/VehicleBridgeActivity;->text(Landroid/widget/EditText;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p8, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "remainingMeters"

    const p2, 0x2faf080

    const/4 v0, 0x0

    invoke-static {p3, v0, p2}, Lcom/local/p5home/VehicleBridgeActivity;->integer(Landroid/widget/EditText;II)I

    move-result p3

    invoke-virtual {p8, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "remainingSeconds"

    const p3, 0x93a80

    invoke-static {p4, v0, p3}, Lcom/local/p5home/VehicleBridgeActivity;->integer(Landroid/widget/EditText;II)I

    move-result p3

    invoke-virtual {p8, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "turnMeters"

    invoke-static {p5, v0, p2}, Lcom/local/p5home/VehicleBridgeActivity;->integer(Landroid/widget/EditText;II)I

    move-result p2

    invoke-virtual {p8, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "icmIcon"

    const/16 p2, 0xd

    invoke-static {p6, v1, p2}, Lcom/local/p5home/VehicleBridgeActivity;->integer(Landroid/widget/EditText;II)I

    move-result p2

    invoke-virtual {p8, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p7}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    const-string p1, "cluster.navigation"

    invoke-static {p8}, Lcom/local/g3bridge/sdk/G3Bridge;->payload(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "\u5411\u4eea\u8868\u63d0\u4ea4\u4e0a\u8ff0\u624b\u52a8\u5bfc\u822a\u5185\u5bb9\u3002\u8bf7\u89c2\u5bdf\u539f\u5382\u4eea\u8868\uff1b\u6b64\u6d4b\u8bd5\u4e0d\u4f1a\u542f\u52a8\u5730\u56fe\u8def\u7ebf\u3002 "

    invoke-direct {p0, p1, p2, p3}, Lcom/local/p5home/VehicleBridgeActivity;->confirm(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5a} :catch_5b

    goto :goto_65

    :catch_5b
    move-exception p1

    const-string p2, "\u8bf7\u68c0\u67e5\u6d4b\u8bd5\u53c2\u6570"

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_65
    return-void
.end method

.method synthetic lambda$queryProperty$21$com-local-g3home-VehicleBridgeActivity(Ljava/lang/String;JJ)V
    .registers 6

    .line 123
    invoke-direct/range {p0 .. p5}, Lcom/local/p5home/VehicleBridgeActivity;->queryProperty(Ljava/lang/String;JJ)V

    return-void
.end method

.method synthetic lambda$queryProperty$22$com-local-g3home-VehicleBridgeActivity(JLcom/local/g3bridge/sdk/G3Bridge$Response;JLjava/lang/String;Landroid/os/Bundle;)V
    .registers 15

    .line 123
    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->dead:Z

    if-nez v0, :cond_bf

    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->resumed:Z

    if-eqz v0, :cond_bf

    iget-wide v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->readGeneration:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_10

    goto/16 :goto_bf

    :cond_10
    invoke-virtual {p3}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->code()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PENDING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v2, p4

    if-gez v0, :cond_36

    iget-object p3, p0, Lcom/local/p5home/VehicleBridgeActivity;->main:Landroid/os/Handler;

    new-instance p7, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda29;

    move-object v0, p7

    move-object v1, p0

    move-object v2, p6

    move-wide v3, p1

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda29;-><init>(Lcom/local/p5home/VehicleBridgeActivity;Ljava/lang/String;JJ)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {p3, p7, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_36
    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->cancelRead()V

    invoke-virtual {p3}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->ok()Z

    move-result p1

    const/4 p2, 0x0

    const-string p4, "\u5173\u95ed"

    if-nez p1, :cond_88

    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    const-string p5, "\u5355\u9879\u8bfb\u53d6\u672a\u5b8c\u6210"

    invoke-virtual {p1, p5}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->code()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_59

    const-string p3, "\u6a21\u5757\u5c1a\u672a\u57285\u79d2\u5185\u8fd4\u56de\u8be5\u9879\u72b6\u6001\uff0c\u4e0d\u80fd\u63a8\u65ad\u4e3a0\u6216\u5173\u95ed\u3002"

    goto :goto_78

    :cond_59
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->code()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string p6, " \u00b7 "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p3}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->message()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_78
    invoke-virtual {p1, p3}, Lcom/local/p5home/Ui$PanelBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    invoke-virtual {p1, p4, p2}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/local/p5home/VehicleBridgeActivity;->show(Lcom/local/p5home/Ui$PanelDialog;)V

    return-void

    :cond_88
    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "\u5355\u9879\u8bfb\u53d6 \u00b7 "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p6}, Lcom/local/p5home/VehicleBridgeActivity;->propertyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    if-nez p7, :cond_ac

    const-string p3, "\u63a5\u53e3\u672a\u8fd4\u56de\u5c5e\u6027\u503c\uff0c\u4e0d\u80fd\u63a8\u65ad\u4e3a0\u6216\u5173\u95ed\u3002"

    goto :goto_b0

    :cond_ac
    invoke-static {p7}, Lcom/local/p5home/VehicleBridgeActivity;->formatProperty(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p3

    :goto_b0
    invoke-virtual {p1, p3}, Lcom/local/p5home/Ui$PanelBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    invoke-virtual {p1, p4, p2}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/local/p5home/VehicleBridgeActivity;->show(Lcom/local/p5home/Ui$PanelDialog;)V

    :cond_bf
    :goto_bf
    return-void
.end method

.method synthetic lambda$queryProperty$23$com-local-g3home-VehicleBridgeActivity(Ljava/lang/String;JJ)V
    .registers 18

    .line 123
    move-object v9, p0

    iget-object v0, v9, Lcom/local/p5home/VehicleBridgeActivity;->bridge:Lcom/local/g3bridge/sdk/G3Bridge;

    move-object v7, p1

    invoke-virtual {v0, p1}, Lcom/local/g3bridge/sdk/G3Bridge;->read(Ljava/lang/String;)Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object v4

    invoke-virtual {v4}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->data()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "property"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_29

    invoke-virtual {v4}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->properties()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v4}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->properties()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_29
    move-object v8, v0

    iget-object v10, v9, Lcom/local/p5home/VehicleBridgeActivity;->main:Landroid/os/Handler;

    new-instance v11, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda27;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, p2

    move-wide/from16 v5, p4

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda27;-><init>(Lcom/local/p5home/VehicleBridgeActivity;JLcom/local/g3bridge/sdk/G3Bridge$Response;JLjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$readProperty$20$com-local-g3home-VehicleBridgeActivity(Lcom/local/p5home/Ui$PanelDialog;JLandroid/content/DialogInterface;)V
    .registers 7

    .line 122
    iget-object p4, p0, Lcom/local/p5home/VehicleBridgeActivity;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->readGeneration:J

    cmp-long p2, v0, p2

    if-nez p2, :cond_10

    const-wide/16 p2, 0x1

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->readGeneration:J

    :cond_10
    iget-object p2, p0, Lcom/local/p5home/VehicleBridgeActivity;->readDialog:Lcom/local/p5home/Ui$PanelDialog;

    if-ne p2, p1, :cond_17

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeActivity;->readDialog:Lcom/local/p5home/Ui$PanelDialog;

    :cond_17
    return-void
.end method

.method synthetic lambda$refresh$10$com-local-g3home-VehicleBridgeActivity(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8

    .line 91
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->reading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->dead:Z

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeActivity;->hello:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/local/p5home/VehicleBridgeActivity;->snapshot:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/local/p5home/VehicleBridgeActivity;->capabilities:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/local/p5home/VehicleBridgeActivity;->connectionError:Ljava/lang/String;

    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/local/p5home/VehicleBridgeActivity;->appendLog(Ljava/lang/String;)V

    goto :goto_17

    :cond_27
    iget-boolean p1, p0, Lcom/local/p5home/VehicleBridgeActivity;->resumed:Z

    if-eqz p1, :cond_2e

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->render()V

    :cond_2e
    return-void
.end method

.method synthetic lambda$refresh$11$com-local-g3home-VehicleBridgeActivity()V
    .registers 12

    .line 85
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->bridge:Lcom/local/g3bridge/sdk/G3Bridge;

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge;->hello()Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->data()Landroid/os/Bundle;

    move-result-object v3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 86
    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->ok()Z

    move-result v4

    const-string v5, " \u00b7 "

    if-nez v4, :cond_3e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->code()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->message()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v4, v1

    move-object v0, v2

    goto/16 :goto_a9

    .line 87
    :cond_3e
    const-string v0, "authorized"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "\u6865\u63a5\u6a21\u5757\u5df2\u5b89\u88c5 \u00b7 \u5c1a\u672a\u6388\u4e88\u8f7b\u684c\u9762\u8bbf\u95ee\u6743\u9650"

    move-object v6, v0

    move-object v4, v1

    move-object v0, v2

    goto :goto_a9

    .line 88
    :cond_4d
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->bridge:Lcom/local/g3bridge/sdk/G3Bridge;

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge;->capabilities()Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object v0

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity;->bridge:Lcom/local/g3bridge/sdk/G3Bridge;

    invoke-virtual {v1}, Lcom/local/g3bridge/sdk/G3Bridge;->snapshot()Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object v1

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->data()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->data()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->ok()Z

    move-result v6

    if-nez v6, :cond_85

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->code()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->message()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a7

    :cond_85
    invoke-virtual {v1}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->ok()Z

    move-result v0

    if-nez v0, :cond_a5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->code()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_80

    :cond_a5
    const-string v0, ""

    :goto_a7
    move-object v6, v0

    move-object v0, v2

    .line 89
    :goto_a9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeActivity;->pending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_bd
    :goto_bd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_107

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v8, p0, Lcom/local/p5home/VehicleBridgeActivity;->bridge:Lcom/local/g3bridge/sdk/G3Bridge;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/local/g3bridge/sdk/G3Bridge;->command(Ljava/lang/String;)Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Lcom/local/p5home/VehicleBridgeActivity;->resultLabel(Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->pending()Z

    move-result v8

    if-nez v8, :cond_bd

    iget-object v8, p0, Lcom/local/p5home/VehicleBridgeActivity;->pending:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bd

    .line 90
    :cond_107
    nop

    .line 91
    iget-object v8, p0, Lcom/local/p5home/VehicleBridgeActivity;->main:Landroid/os/Handler;

    new-instance v9, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda26;

    move-object v1, v9

    move-object v2, p0

    move-object v5, v0

    invoke-direct/range {v1 .. v7}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda26;-><init>(Lcom/local/p5home/VehicleBridgeActivity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    return-void
.end method

.method synthetic lambda$renderControls$14$com-local-g3home-VehicleBridgeActivity(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0}, Lcom/local/g3bridge/sdk/G3Bridge;->payload(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5411\u539f\u8f66\u5f71\u50cf\u63a5\u53e3\u63d0\u4ea4\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\u3002\n\u7531\u6a21\u5757\u68c0\u67e5\u505c\u8f66\u3001\u753b\u9762\u5360\u7528\u548c\u672c\u6a21\u5757\u9884\u89c8\u5f52\u5c5e\u3002"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/local/p5home/VehicleBridgeActivity;->confirm(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$renderControls$15$com-local-g3home-VehicleBridgeActivity(Landroid/os/Bundle;)V
    .registers 2

    .line 114
    invoke-direct {p0, p1}, Lcom/local/p5home/VehicleBridgeActivity;->controlForm(Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$show$1$com-local-g3home-VehicleBridgeActivity(Lcom/local/p5home/Ui$PanelDialog;Landroid/content/DialogInterface;)V
    .registers 3

    .line 47
    iget-object p2, p0, Lcom/local/p5home/VehicleBridgeActivity;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$submit$29$com-local-g3home-VehicleBridgeActivity(Ljava/lang/String;Lcom/local/g3bridge/sdk/G3Bridge$Response;)V
    .registers 5

    .line 147
    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->dead:Z

    if-nez v0, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u00b7 \u672a\u63d0\u4ea4\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->ok()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p2, "\u5f53\u524d\u80fd\u529b\u4e0d\u53ef\u7528"

    goto :goto_3b

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_3b
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/local/p5home/VehicleBridgeActivity;->appendLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->renderLog()V

    :cond_49
    return-void
.end method

.method synthetic lambda$submit$30$com-local-g3home-VehicleBridgeActivity(Ljava/lang/String;Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;)V
    .registers 5

    .line 147
    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->dead:Z

    if-nez v0, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u00b7 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/local/p5home/VehicleBridgeActivity;->resultLabel(Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/local/p5home/VehicleBridgeActivity;->appendLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->renderLog()V

    iget-boolean p1, p0, Lcom/local/p5home/VehicleBridgeActivity;->resumed:Z

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/local/p5home/VehicleBridgeActivity;->main:Landroid/os/Handler;

    new-instance p2, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda5;-><init>(Lcom/local/p5home/VehicleBridgeActivity;)V

    const-wide/16 v0, 0xdac

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_35
    return-void
.end method

.method synthetic lambda$submit$31$com-local-g3home-VehicleBridgeActivity(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 147
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->bridge:Lcom/local/g3bridge/sdk/G3Bridge;

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge;->capabilities()Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->ok()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {v0, p1}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->supportsCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_49

    :cond_13
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->bridge:Lcom/local/g3bridge/sdk/G3Bridge;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/local/g3bridge/sdk/G3Bridge;->execute(Ljava/lang/String;Landroid/os/Bundle;J)Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->pending()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p2}, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->commandId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->pending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_3e

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->pending:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->commandId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->main:Landroid/os/Handler;

    new-instance v1, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda13;-><init>(Lcom/local/p5home/VehicleBridgeActivity;Ljava/lang/String;Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_49
    :goto_49
    iget-object p2, p0, Lcom/local/p5home/VehicleBridgeActivity;->main:Landroid/os/Handler;

    new-instance v1, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, v0}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda12;-><init>(Lcom/local/p5home/VehicleBridgeActivity;Ljava/lang/String;Lcom/local/g3bridge/sdk/G3Bridge$Response;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$subscribe$0$com-local-g3home-VehicleBridgeActivity()V
    .registers 2

    .line 44
    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->resumed:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->dead:Z

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->refresh()V

    :cond_b
    return-void
.end method

.method synthetic lambda$toggle$9$com-local-g3home-VehicleBridgeActivity(Lcom/local/p5home/VehicleBridgeActivity$Change;Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 78
    iget-boolean p2, p0, Lcom/local/p5home/VehicleBridgeActivity;->binding:Z

    if-nez p2, :cond_7

    invoke-interface {p1, p3}, Lcom/local/p5home/VehicleBridgeActivity$Change;->change(Z)V

    :cond_7
    return-void
.end method

.method synthetic lambda$windowsForm$26$com-local-g3home-VehicleBridgeActivity([Landroid/widget/EditText;Lcom/local/p5home/Ui$PanelDialog;Landroid/view/View;)V
    .registers 8

    .line 136
    const/4 p3, 0x4

    :try_start_1
    new-array v0, p3, [F

    const/4 v1, 0x0

    :goto_4
    if-ge v1, p3, :cond_38

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1

    invoke-static {v2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v2

    if-eqz v2, :cond_30

    aget v2, v0, v1

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_30

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_30

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u56db\u4e2a\u8f66\u7a97\u5747\u987b\u586b\u51990\u81f3100\u4e4b\u95f4\u7684\u6709\u9650\u6570\u5b57"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    invoke-virtual {p2}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    const-string p1, "body.windows.position"

    invoke-static {v0}, Lcom/local/g3bridge/sdk/G3Bridge;->floatArrayValue([F)Landroid/os/Bundle;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5c06\u8bbe\u7f6e\u56db\u7a97\u4f4d\u7f6e\uff08\u5de6\u524d\u3001\u53f3\u524d\u3001\u5de6\u540e\u3001\u53f3\u540e\uff09\uff1a\n"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "\n0\u5168\u5f00\uff0c100\u5168\u95ed\u3002\u8bf7\u786e\u8ba4\u8f66\u7a97\u9644\u8fd1\u6ca1\u6709\u5939\u78b0\u98ce\u9669\u3002"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/local/p5home/VehicleBridgeActivity;->confirm(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_61} :catch_62

    goto :goto_73

    :catch_62
    move-exception p1

    instance-of p2, p1, Ljava/lang/NumberFormatException;

    if-eqz p2, :cond_6a

    const-string p1, "\u8bf7\u586b\u5199\u56db\u4e2a\u6709\u6548\u6570\u5b57"

    goto :goto_6e

    :cond_6a
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_6e
    const-string p2, "\u8bf7\u68c0\u67e5\u56db\u7a97\u53c2\u6570"

    invoke-static {p0, p2, p1}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_73
    return-void
.end method

.method synthetic lambda$work$12$com-local-g3home-VehicleBridgeActivity(Ljava/lang/RuntimeException;)V
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->reading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->dead:Z

    if-nez v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6865\u63a5\u8bf7\u6c42\u672a\u5b8c\u6210\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeActivity;->connectionError:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/local/p5home/VehicleBridgeActivity;->appendLog(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/local/p5home/VehicleBridgeActivity;->resumed:Z

    if-eqz p1, :cond_2d

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->render()V

    :cond_2d
    return-void
.end method

.method synthetic lambda$work$13$com-local-g3home-VehicleBridgeActivity(Ljava/lang/Runnable;)V
    .registers 4

    .line 94
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_f

    :catch_4
    move-exception p1

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->main:Landroid/os/Handler;

    new-instance v1, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda2;-><init>(Lcom/local/p5home/VehicleBridgeActivity;Ljava/lang/RuntimeException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_f
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 43
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x10cd

    if-ne p1, p2, :cond_a

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->refresh()V

    :cond_a
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->closeDialogs()V

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->build()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/local/g3bridge/sdk/G3Bridge;

    invoke-virtual {p0}, Lcom/local/p5home/VehicleBridgeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/local/g3bridge/sdk/G3Bridge;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeActivity;->bridge:Lcom/local/g3bridge/sdk/G3Bridge;

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->build()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->dead:Z

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->main:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->unsubscribe()V

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->closeDialogs()V

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->resumed:Z

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->unsubscribe()V

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->cancelRead()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->resumed:Z

    iget v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->theme:I

    invoke-static {p0}, Lcom/local/p5home/Ui;->themeSignature(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_11

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->build()V

    :cond_11
    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeActivity;->subscribe()V

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
