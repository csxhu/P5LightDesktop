.class public final Lcom/local/p5home/TopBarSettingsActivity;
.super Landroid/app/Activity;
.source "TopBarSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/TopBarSettingsActivity$SlotRow;,
        Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;,
        Lcom/local/p5home/TopBarSettingsActivity$AppChoice;,
        Lcom/local/p5home/TopBarSettingsActivity$Write;,
        Lcom/local/p5home/TopBarSettingsActivity$State;,
        Lcom/local/p5home/TopBarSettingsActivity$AppRow;
    }
.end annotation


# static fields
.field public static final EXTRA_SLOT:Ljava/lang/String; = "slot_index"


# instance fields
.field private adapter:Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;

.field private appSequence:I

.field private final apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/local/p5home/TopBarSettingsActivity$AppChoice;",
            ">;"
        }
    .end annotation
.end field

.field private appsLoaded:Z

.field private appsLoading:Z

.field private binding:Z

.field private busy:Z

.field private configState:Landroid/widget/TextView;

.field private confirmation:Lcom/local/p5home/Ui$PanelDialog;

.field private final controls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private volatile dead:Z

.field private enabled:Lcom/local/p5home/Ui$Toggle;

.field private final filtered:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/local/p5home/TopBarSettingsActivity$AppChoice;",
            ">;"
        }
    .end annotation
.end field

.field private final generation:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final icons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private importButton:Landroid/widget/Button;

.field private list:Landroid/widget/ListView;

.field private listState:Landroid/widget/TextView;

.field private final main:Landroid/os/Handler;

.field private message:Ljava/lang/String;

.field private mode:I

.field private operation:Landroid/widget/TextView;

.field private final poll:Ljava/lang/Runnable;

.field private resumed:Z

.field private final rows:[Lcom/local/p5home/TopBarSettingsActivity$SlotRow;

.field private runtimeState:Landroid/widget/TextView;

.field private search:Landroid/widget/EditText;

.field private searchText:Ljava/lang/String;

.field private selectionState:Landroid/widget/TextView;

.field private snapshot:Lcom/local/p5home/TopBarStore$Snapshot;

.field private stateSequence:I

.field private theme:I

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$FYsZ60PjXlzlolUuLFnut32TEIg(Lcom/local/p5home/TopBarSettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->help()V

    return-void
.end method

.method public static synthetic $r8$lambda$VSTO9Z6zQGZgOlohSaaO94_1EkM(Lcom/local/p5home/TopBarSettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->refreshState()V

    return-void
.end method

.method public static synthetic $r8$lambda$Vvb_sGp6L5WDQIAcjWa_Oa7EAEQ(Lcom/local/p5home/TopBarSettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->confirmImport()V

    return-void
.end method

.method public static synthetic $r8$lambda$mkKLDsxHpiStITtfujD5bmr9yes(Lcom/local/p5home/TopBarSettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->confirmResetAll()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->main:Landroid/os/Handler;

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->worker:Ljava/util/concurrent/ExecutorService;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->controls:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->apps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->filtered:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->icons:Ljava/util/Map;

    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/local/p5home/TopBarSettingsActivity$SlotRow;

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->rows:[Lcom/local/p5home/TopBarSettingsActivity$SlotRow;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->mode:I

    iput v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->theme:I

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->searchText:Ljava/lang/String;

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->message:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/local/p5home/TopBarSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/local/p5home/TopBarSettingsActivity$1;-><init>(Lcom/local/p5home/TopBarSettingsActivity;)V

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->poll:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/local/p5home/TopBarSettingsActivity;)Z
    .registers 1

    .line 18
    iget-boolean p0, p0, Lcom/local/p5home/TopBarSettingsActivity;->resumed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/local/p5home/TopBarSettingsActivity;)Z
    .registers 1

    .line 18
    iget-boolean p0, p0, Lcom/local/p5home/TopBarSettingsActivity;->dead:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/local/p5home/TopBarSettingsActivity;)Ljava/util/List;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/local/p5home/TopBarSettingsActivity;->filtered:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/local/p5home/TopBarSettingsActivity;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcom/local/p5home/TopBarSettingsActivity;->fixedIcon(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/local/p5home/TopBarSettingsActivity;)I
    .registers 1

    .line 18
    iget p0, p0, Lcom/local/p5home/TopBarSettingsActivity;->mode:I

    return p0
.end method

.method static synthetic access$300(Lcom/local/p5home/TopBarSettingsActivity;)Z
    .registers 1

    .line 18
    iget-boolean p0, p0, Lcom/local/p5home/TopBarSettingsActivity;->busy:Z

    return p0
.end method

.method static synthetic access$400(Lcom/local/p5home/TopBarSettingsActivity;)V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->refreshState()V

    return-void
.end method

.method static synthetic access$500(Lcom/local/p5home/TopBarSettingsActivity;)Landroid/os/Handler;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/local/p5home/TopBarSettingsActivity;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$802(Lcom/local/p5home/TopBarSettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->searchText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/local/p5home/TopBarSettingsActivity;)V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->filter()V

    return-void
.end method

.method private applySnapshot(Lcom/local/p5home/TopBarStore$Snapshot;Landroid/os/Bundle;[Landroid/graphics/drawable/Drawable;)V
    .registers 12

    .line 101
    if-nez p1, :cond_8

    const-string p1, "\u9876\u90e8\u680f\u914d\u7f6e\u4e3a\u7a7a\uff0c\u8bf7\u5237\u65b0\u91cd\u8bd5\u3002"

    invoke-direct {p0, p1}, Lcom/local/p5home/TopBarSettingsActivity;->note(Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->enabled:Lcom/local/p5home/Ui$Toggle;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/local/p5home/TopBarSettingsActivity;->binding:Z

    iget-boolean v2, p1, Lcom/local/p5home/TopBarStore$Snapshot;->enabled:Z

    invoke-virtual {v0, v2}, Lcom/local/p5home/Ui$Toggle;->setChecked(Z)V

    iput-boolean v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->binding:Z

    :cond_17
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->configState:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    iget-boolean v2, p1, Lcom/local/p5home/TopBarStore$Snapshot;->enabled:Z

    if-eqz v2, :cond_22

    const-string v2, "\u914d\u7f6e\u5df2\u5f00\u542f \u00b7 \u751f\u6548\u60c5\u51b5\u89c1\u7cfb\u7edf\u754c\u9762\u56de\u62a5"

    goto :goto_24

    :cond_22
    const-string v2, "\u5df2\u5173\u95ed \u00b7 \u5e94\u7528\u9009\u62e9\u4ecd\u53ef\u4fdd\u5b58"

    :goto_24
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_27
    iget v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->mode:I

    const-string v2, "\u539f\u8f66\u9ed8\u8ba4 \u00b7 "

    const-string v3, ""

    if-gez v0, :cond_9b

    move v0, v1

    :goto_30
    const/4 v4, 0x7

    if-ge v0, v4, :cond_7b

    invoke-static {p1, v0}, Lcom/local/p5home/TopBarSettingsActivity;->slot(Lcom/local/p5home/TopBarStore$Snapshot;I)Lcom/local/p5home/TopBarSlot;

    move-result-object v4

    iget-object v5, p0, Lcom/local/p5home/TopBarSettingsActivity;->rows:[Lcom/local/p5home/TopBarSettingsActivity$SlotRow;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/local/p5home/TopBarSettingsActivity$SlotRow;->value:Landroid/widget/TextView;

    if-nez v4, :cond_55

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/local/p5home/TopBarSettingsActivity;->slotName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_59

    :cond_55
    invoke-virtual {v4}, Lcom/local/p5home/TopBarSlot;->displayLabel()Ljava/lang/String;

    move-result-object v4

    :goto_59
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_78

    iget-object v4, p0, Lcom/local/p5home/TopBarSettingsActivity;->rows:[Lcom/local/p5home/TopBarSettingsActivity$SlotRow;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/local/p5home/TopBarSettingsActivity$SlotRow;->icon:Landroid/widget/ImageView;

    aget-object v5, p3, v0

    if-nez v5, :cond_75

    new-instance v5, Lcom/local/p5home/Ui$Symbol;

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v6

    iget v6, v6, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v7, "apps"

    invoke-direct {v5, v7, v6}, Lcom/local/p5home/Ui$Symbol;-><init>(Ljava/lang/String;I)V

    :cond_75
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_7b
    iget-object p3, p0, Lcom/local/p5home/TopBarSettingsActivity;->importButton:Landroid/widget/Button;

    if-eqz p3, :cond_e5

    iget-boolean p1, p1, Lcom/local/p5home/TopBarStore$Snapshot;->migrationAttempted:Z

    if-eqz p1, :cond_86

    const/16 p1, 0x8

    goto :goto_87

    :cond_86
    move p1, v1

    :goto_87
    invoke-virtual {p3, p1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->importButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->canImport()Z

    move-result p3

    if-eqz p3, :cond_95

    const-string p3, "\u5bfc\u5165\u65e7\u7248\u5e94\u7528\u9009\u62e9"

    goto :goto_97

    :cond_95
    const-string p3, "\u5bfc\u5165\u65e7\u7248\u9700\u5148\u5173\u95ed\u5e76\u6062\u590d\u5168\u90e8\u9ed8\u8ba4"

    :goto_97
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e5

    .line 103
    :cond_9b
    iget-object p3, p0, Lcom/local/p5home/TopBarSettingsActivity;->selectionState:Landroid/widget/TextView;

    if-eqz p3, :cond_e5

    invoke-static {p1, v0}, Lcom/local/p5home/TopBarSettingsActivity;->slot(Lcom/local/p5home/TopBarStore$Snapshot;I)Lcom/local/p5home/TopBarSlot;

    move-result-object p3

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->selectionState:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5f53\u524d\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p3, :cond_ca

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v2, p0, Lcom/local/p5home/TopBarSettingsActivity;->mode:I

    invoke-direct {p0, v2}, Lcom/local/p5home/TopBarSettingsActivity;->slotName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_ce

    :cond_ca
    invoke-virtual {p3}, Lcom/local/p5home/TopBarSlot;->displayLabel()Ljava/lang/String;

    move-result-object p3

    :goto_ce
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-boolean p1, p1, Lcom/local/p5home/TopBarStore$Snapshot;->enabled:Z

    if-eqz p1, :cond_d8

    move-object p1, v3

    goto :goto_da

    :cond_d8
    const-string p1, "  \u00b7 \u603b\u5f00\u5173\u5173\u95ed"

    :goto_da
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_e5
    :goto_e5
    iget-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->runtimeState:Landroid/widget/TextView;

    if-eqz p1, :cond_18d

    if-eqz p2, :cond_18d

    const-string p1, "hookReady"

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string p3, "boundCount"

    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    invoke-static {p3}, Lcom/local/p5home/TopBarSettingsActivity;->bounded(I)I

    move-result p3

    const-string v0, "appliedCount"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/local/p5home/TopBarSettingsActivity;->bounded(I)I

    move-result v0

    const-string v1, "code"

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/local/p5home/TopBarSettingsActivity;->runtimeState:Landroid/widget/TextView;

    const-string v4, "STATUS_UNAVAILABLE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "CONFIG_INVALID"

    if-eqz v5, :cond_11a

    const-string p3, "\u6682\u65f6\u65e0\u6cd5\u8bfb\u53d6\u7cfb\u7edf\u754c\u9762\u72b6\u6001\uff0c\u8bf7\u5237\u65b0\u6216\u68c0\u67e5\u7ec4\u4ef6\u3002"

    goto :goto_14b

    :cond_11a
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_123

    const-string p3, "\u914d\u7f6e\u65e0\u6548\uff0c\u5df2\u505c\u6b62\u81ea\u5b9a\u4e49\u63a5\u7ba1\uff1b\u53ef\u6062\u590d\u9ed8\u8ba4\u540e\u91cd\u8bd5\u3002"

    goto :goto_14b

    :cond_123
    if-eqz p1, :cond_149

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u7cfb\u7edf\u754c\u9762\u5df2\u56de\u62a5 \u00b7 \u8bc6\u522b "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v5, "/7 \u4e2a\u4f4d\u7f6e\n\u5b9e\u9645\u81ea\u5b9a\u4e49 "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " \u5904"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_14b

    :cond_149
    const-string p3, "\u7b49\u5f85\u7cfb\u7edf\u754c\u9762\u63a5\u5165\n\u8bf7\u68c0\u67e5 LSPosed \u7cfb\u7edf\u754c\u9762\u4f5c\u7528\u57df\uff0c\u5f00\u5173\u672c\u8eab\u4e0d\u4ee3\u8868\u5df2\u751f\u6548\u3002"

    :goto_14b
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_165

    const-string p3, "loadedBuild"

    invoke-virtual {p2, p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "topbar-p5-20261112-2"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_165

    iget-object p2, p0, Lcom/local/p5home/TopBarSettingsActivity;->runtimeState:Landroid/widget/TextView;

    const-string p3, "\n\u5b89\u88c5\u5305\u5df2\u66f4\u65b0\uff0c\u7cfb\u7edf\u754c\u9762\u5c1a\u672a\u52a0\u8f7d\u672c\u6b21\u7248\u672c\uff1b\u505c\u8f66\u540e\u9700\u91cd\u65b0\u52a0\u8f7d\u7cfb\u7edf\u754c\u9762\u3002"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_165
    iget-object p2, p0, Lcom/local/p5home/TopBarSettingsActivity;->runtimeState:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_184

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_174

    goto :goto_184

    :cond_174
    if-eqz p1, :cond_17d

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object p1

    iget p1, p1, Lcom/local/p5home/Ui$Palette;->accent:I

    goto :goto_18a

    :cond_17d
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object p1

    iget p1, p1, Lcom/local/p5home/Ui$Palette;->muted:I

    goto :goto_18a

    :cond_184
    :goto_184
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object p1

    iget p1, p1, Lcom/local/p5home/Ui$Palette;->warning:I

    :goto_18a
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    :cond_18d
    return-void
.end method

.method private static bounded(I)I
    .registers 2

    .line 106
    const/4 v0, 0x7

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private build()V
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->stateSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->stateSequence:I

    iget v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->appSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->appSequence:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->appsLoading:Z

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->dismissConfirmation()V

    invoke-static {p0}, Lcom/local/p5home/Ui;->install(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->themeSignature(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->theme:I

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->controls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->enabled:Lcom/local/p5home/Ui$Toggle;

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->importButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->search:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->list:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->adapter:Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->listState:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->selectionState:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->runtimeState:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->configState:Landroid/widget/TextView;

    .line 73
    iget v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->mode:I

    if-ltz v0, :cond_40

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->buildPicker()V

    goto :goto_43

    :cond_40
    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->buildOverview()V

    :goto_43
    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->updateBusy()V

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->message:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/local/p5home/TopBarSettingsActivity;->note(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private buildOverview()V
    .registers 18

    .line 77
    move-object/from16 v0, p0

    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v3

    iget v3, v3, Lcom/local/p5home/Ui$Palette;->bg:I

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {v0, v4}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42100000    # 36.0f

    invoke-static {v0, v6}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v0, v4}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v6}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v5, v7, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/local/p5home/TopBarSettingsActivity;->setContentView(Landroid/view/View;)V

    .line 78
    new-instance v1, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda6;-><init>(Lcom/local/p5home/TopBarSettingsActivity;)V

    const-string v4, "\u9876\u90e8\u680f\u5e94\u7528"

    invoke-direct {v0, v4, v1}, Lcom/local/p5home/TopBarSettingsActivity;->heading(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x20

    invoke-static {v0, v3, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 79
    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->panel(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    const-string v7, "\u542f\u7528\u9876\u90e8\u680f\u81ea\u5b9a\u4e49"

    const/16 v8, 0x24

    invoke-static {v0, v7, v8}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v9, 0xe

    invoke-static {v0, v6, v9}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v9

    iget v9, v9, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v10, "\u6b63\u5728\u8bfb\u53d6\u72ec\u7acb\u5f00\u5173\u2026"

    const/16 v11, 0x1c

    invoke-static {v0, v10, v11, v9}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v9

    iput-object v9, v0, Lcom/local/p5home/TopBarSettingsActivity;->configState:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    const/4 v12, -0x2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcom/local/p5home/Ui$Toggle;

    invoke-direct {v6, v0}, Lcom/local/p5home/Ui$Toggle;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/local/p5home/TopBarSettingsActivity;->enabled:Lcom/local/p5home/Ui$Toggle;

    invoke-virtual {v6, v7}, Lcom/local/p5home/Ui$Toggle;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lcom/local/p5home/TopBarSettingsActivity;->enabled:Lcom/local/p5home/Ui$Toggle;

    invoke-virtual {v6, v10}, Lcom/local/p5home/Ui$Toggle;->setEnabled(Z)V

    iget-object v6, v0, Lcom/local/p5home/TopBarSettingsActivity;->enabled:Lcom/local/p5home/Ui$Toggle;

    new-instance v7, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v7, v0}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda7;-><init>(Lcom/local/p5home/TopBarSettingsActivity;)V

    invoke-virtual {v6, v7}, Lcom/local/p5home/Ui$Toggle;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v6, v0, Lcom/local/p5home/TopBarSettingsActivity;->enabled:Lcom/local/p5home/Ui$Toggle;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v5, 0x18

    invoke-static {v0, v4, v5}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v6

    iget v6, v6, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v7, "\u6b63\u5728\u8bfb\u53d6\u7cfb\u7edf\u754c\u9762\u72b6\u6001\u2026"

    invoke-static {v0, v7, v11, v6}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, v0, Lcom/local/p5home/TopBarSettingsActivity;->runtimeState:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {v0, v4, v5}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance v6, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v6, v0}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda8;-><init>(Lcom/local/p5home/TopBarSettingsActivity;)V

    const-string v7, "\u5237\u65b0\u72b6\u6001"

    invoke-direct {v0, v7, v10, v6}, Lcom/local/p5home/TopBarSettingsActivity;->control(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v6

    new-instance v7, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v7, v0}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda9;-><init>(Lcom/local/p5home/TopBarSettingsActivity;)V

    const-string v9, "\u63a5\u5165\u8bf4\u660e"

    invoke-direct {v0, v9, v10, v7}, Lcom/local/p5home/TopBarSettingsActivity;->control(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v7

    filled-new-array {v6, v7}, [Landroid/widget/Button;

    move-result-object v6

    invoke-static {v0, v4, v6}, Lcom/local/p5home/Ui;->buttons(Landroid/content/Context;Landroid/widget/LinearLayout;[Landroid/widget/Button;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x1a

    invoke-static {v0, v3, v4}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 80
    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->panel(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    const-string v9, "\u4e03\u4e2a\u5feb\u6377\u5165\u53e3"

    const/16 v14, 0x22

    invoke-static {v0, v9, v14}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v9, 0xc

    invoke-static {v0, v6, v9}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v14

    iget v14, v14, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v15, "\u53ef\u5148\u4fdd\u5b58\u5e94\u7528\u9009\u62e9\uff0c\u5f00\u542f\u603b\u5f00\u5173\u540e\u518d\u5e94\u7528\u3002"

    const/16 v4, 0x1b

    invoke-static {v0, v15, v4, v14}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v4, 0x10

    invoke-static {v0, v6, v4}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 81
    move v4, v10

    :goto_113
    const/4 v14, 0x7

    const/4 v15, 0x0

    if-ge v4, v14, :cond_214

    move/from16 v16, v4

    invoke-static {v4}, Lcom/local/p5home/TopBarSettingsActivity;->displaySlot(I)I

    move-result v4

    new-instance v14, Lcom/local/p5home/TopBarSettingsActivity$SlotRow;

    invoke-direct {v14, v15}, Lcom/local/p5home/TopBarSettingsActivity$SlotRow;-><init>(Lcom/local/p5home/TopBarSettingsActivity$1;)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v0, v2}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v8

    invoke-static {v0, v2}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v7, v10, v8, v10, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/high16 v2, 0x43040000    # 132.0f

    invoke-static {v0, v2}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    invoke-direct {v0, v15}, Lcom/local/p5home/TopBarSettingsActivity;->fixedIcon(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, v14, Lcom/local/p5home/TopBarSettingsActivity$SlotRow;->icon:Landroid/widget/ImageView;

    iget-object v2, v14, Lcom/local/p5home/TopBarSettingsActivity$SlotRow;->icon:Landroid/widget/ImageView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x42900000    # 72.0f

    invoke-static {v0, v15}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v0, v15}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v15

    invoke-direct {v8, v10, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0, v7, v5}, Lcom/local/p5home/Ui;->side(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v10, v16, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, " \u00b7 "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {v0, v4}, Lcom/local/p5home/TopBarSettingsActivity;->slotName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v1}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, v14, Lcom/local/p5home/TopBarSettingsActivity$SlotRow;->name:Landroid/widget/TextView;

    iget-object v8, v14, Lcom/local/p5home/TopBarSettingsActivity$SlotRow;->name:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {v0, v2, v9}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v8

    iget v8, v8, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v15, "\u8bfb\u53d6\u4e2d\u2026"

    invoke-static {v0, v15, v11, v8}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, v14, Lcom/local/p5home/TopBarSettingsActivity$SlotRow;->value:Landroid/widget/TextView;

    iget-object v8, v14, Lcom/local/p5home/TopBarSettingsActivity$SlotRow;->value:Landroid/widget/TextView;

    const/4 v15, 0x2

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v8, v14, Lcom/local/p5home/TopBarSettingsActivity$SlotRow;->value:Landroid/widget/TextView;

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v8, v14, Lcom/local/p5home/TopBarSettingsActivity$SlotRow;->value:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, 0x0

    invoke-direct {v8, v15, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v2

    iget v2, v2, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v8, "chevron"

    const/16 v15, 0x24

    invoke-static {v0, v8, v2, v15}, Lcom/local/p5home/Ui;->icon(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9009\u62e9\u9876\u90e8\u680f\u69fd\u4f4d"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {v0, v4}, Lcom/local/p5home/TopBarSettingsActivity;->slotName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0, v4}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda10;-><init>(Lcom/local/p5home/TopBarSettingsActivity;I)V

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/local/p5home/TopBarSettingsActivity;->controls:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/local/p5home/TopBarSettingsActivity;->rows:[Lcom/local/p5home/TopBarSettingsActivity$SlotRow;

    aput-object v14, v1, v4

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v1, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x6

    move/from16 v8, v16

    if-ge v8, v1, :cond_209

    invoke-static {v0, v6}, Lcom/local/p5home/Ui;->line(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    :cond_209
    add-int/lit8 v16, v16, 0x1

    move/from16 v4, v16

    move v8, v15

    const/16 v1, 0x20

    const/4 v7, -0x1

    const/4 v10, 0x0

    goto/16 :goto_113

    .line 82
    :cond_214
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x1a

    invoke-static {v0, v3, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance v1, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda11;-><init>(Lcom/local/p5home/TopBarSettingsActivity;)V

    const-string v4, "\u5bfc\u5165\u65e7\u7248\u5e94\u7528\u9009\u62e9"

    const/4 v6, 0x0

    invoke-direct {v0, v4, v6, v1}, Lcom/local/p5home/TopBarSettingsActivity;->control(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/TopBarSettingsActivity;->importButton:Landroid/widget/Button;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x12

    invoke-static {v0, v3, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance v1, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda12;-><init>(Lcom/local/p5home/TopBarSettingsActivity;)V

    const-string v4, "\u6062\u590d\u5168\u90e8\u539f\u8f66\u9ed8\u8ba4"

    invoke-direct {v0, v4, v6, v1}, Lcom/local/p5home/TopBarSettingsActivity;->control(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0, v3, v5}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v2, ""

    invoke-static {v0, v2, v11, v1}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/TopBarSettingsActivity;->operation:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/local/p5home/TopBarSettingsActivity;->snapshot:Lcom/local/p5home/TopBarStore$Snapshot;

    if-eqz v1, :cond_26b

    invoke-direct {v0, v1, v15, v15}, Lcom/local/p5home/TopBarSettingsActivity;->applySnapshot(Lcom/local/p5home/TopBarStore$Snapshot;Landroid/os/Bundle;[Landroid/graphics/drawable/Drawable;)V

    .line 83
    :cond_26b
    return-void
.end method

.method private buildPicker()V
    .registers 9

    .line 85
    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x42300000    # 44.0f

    invoke-static {p0, v1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {p0, v3}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v1

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {p0, v4}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->bg:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Lcom/local/p5home/TopBarSettingsActivity;->setContentView(Landroid/view/View;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9009\u62e9\u5e94\u7528 \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/local/p5home/TopBarSettingsActivity;->mode:I

    invoke-direct {p0, v2}, Lcom/local/p5home/TopBarSettingsActivity;->slotName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda26;-><init>(Lcom/local/p5home/TopBarSettingsActivity;)V

    invoke-direct {p0, v1, v2}, Lcom/local/p5home/TopBarSettingsActivity;->heading(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x18

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v2, "\u6b63\u5728\u8bfb\u53d6\u5f53\u524d\u9009\u62e9\u2026"

    const/16 v3, 0x1c

    invoke-static {p0, v2, v3, v1}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->selectionState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x14

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    iget-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->searchText:Ljava/lang/String;

    const-string v2, "\u641c\u7d22\u5e94\u7528\u540d\u79f0\u6216\u5305\u540d"

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3}, Lcom/local/p5home/Ui;->input(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->search:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v4, v2, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->search:Landroid/widget/EditText;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x12

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 86
    new-instance v1, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda27;-><init>(Lcom/local/p5home/TopBarSettingsActivity;)V

    const-string v4, "\u6062\u590d\u6b64\u69fd\u539f\u8f66\u9ed8\u8ba4"

    invoke-direct {p0, v4, v3, v1}, Lcom/local/p5home/TopBarSettingsActivity;->control(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    new-instance v4, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda28;

    invoke-direct {v4, p0}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda28;-><init>(Lcom/local/p5home/TopBarSettingsActivity;)V

    const-string v5, "\u5237\u65b0\u5e94\u7528\u5217\u8868"

    invoke-direct {p0, v5, v3, v4}, Lcom/local/p5home/TopBarSettingsActivity;->control(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v4

    filled-new-array {v1, v4}, [Landroid/widget/Button;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->buttons(Landroid/content/Context;Landroid/widget/LinearLayout;[Landroid/widget/Button;)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v4, "\u6b63\u5728\u8bfb\u53d6\u53ef\u542f\u52a8\u5e94\u7528\u2026"

    const/16 v5, 0x1b

    invoke-static {p0, v4, v5, v1}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->listState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0xe

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->list:Landroid/widget/ListView;

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v4

    iget v4, v4, Lcom/local/p5home/Ui$Palette;->card:I

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->list:Landroid/widget/ListView;

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v4

    iget v4, v4, Lcom/local/p5home/Ui$Palette;->card:I

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->list:Landroid/widget/ListView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v7

    iget v7, v7, Lcom/local/p5home/Ui$Palette;->line:I

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->list:Landroid/widget/ListView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->list:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v7

    iget v7, v7, Lcom/local/p5home/Ui$Palette;->raised:I

    invoke-direct {v2, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;-><init>(Lcom/local/p5home/TopBarSettingsActivity;Lcom/local/p5home/TopBarSettingsActivity$1;)V

    iput-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->adapter:Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;

    iget-object v7, p0, Lcom/local/p5home/TopBarSettingsActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->list:Landroid/widget/ListView;

    new-instance v7, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda29;

    invoke-direct {v7, p0}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda29;-><init>(Lcom/local/p5home/TopBarSettingsActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->list:Landroid/widget/ListView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v6, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v3, ""

    invoke-static {p0, v3, v5, v1}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->operation:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->search:Landroid/widget/EditText;

    new-instance v1, Lcom/local/p5home/TopBarSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/local/p5home/TopBarSettingsActivity$2;-><init>(Lcom/local/p5home/TopBarSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->filter()V

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->snapshot:Lcom/local/p5home/TopBarStore$Snapshot;

    if-eqz v0, :cond_160

    invoke-direct {p0, v0, v2, v2}, Lcom/local/p5home/TopBarSettingsActivity;->applySnapshot(Lcom/local/p5home/TopBarStore$Snapshot;Landroid/os/Bundle;[Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_160
    return-void
.end method

.method private canImport()Z
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->snapshot:Lcom/local/p5home/TopBarStore$Snapshot;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    iget-boolean v0, v0, Lcom/local/p5home/TopBarStore$Snapshot;->valid:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->snapshot:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-boolean v0, v0, Lcom/local/p5home/TopBarStore$Snapshot;->enabled:Z

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->snapshot:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-boolean v0, v0, Lcom/local/p5home/TopBarStore$Snapshot;->migrationAttempted:Z

    if-eqz v0, :cond_16

    goto :goto_2e

    :cond_16
    move v0, v1

    :goto_17
    const/4 v2, 0x7

    if-ge v0, v2, :cond_2c

    iget-object v2, p0, Lcom/local/p5home/TopBarSettingsActivity;->snapshot:Lcom/local/p5home/TopBarStore$Snapshot;

    invoke-static {v2, v0}, Lcom/local/p5home/TopBarSettingsActivity;->slot(Lcom/local/p5home/TopBarStore$Snapshot;I)Lcom/local/p5home/TopBarSlot;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Lcom/local/p5home/TopBarSlot;->isCustom()Z

    move-result v2

    if-eqz v2, :cond_29

    return v1

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2c
    const/4 v0, 0x1

    return v0

    :cond_2e
    :goto_2e
    return v1
.end method

.method private static cleanLabel(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 112
    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_15

    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[\\p{Cntrl}]"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    move-object p1, p0

    :goto_1d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x50

    if-le p0, v0, :cond_2a

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2a
    return-object p1
.end method

.method private confirmChoice(ILcom/local/p5home/TopBarSettingsActivity$AppChoice;)V
    .registers 6

    .line 122
    iget-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->busy:Z

    if-nez v0, :cond_5c

    if-ltz p1, :cond_5c

    const/4 v0, 0x7

    if-lt p1, v0, :cond_a

    goto :goto_5c

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u7f6e\u69fd\u4f4d "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/local/p5home/TopBarSettingsActivity;->slotName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u66ff\u6362\u4e3a\u201c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u201d\uff1f\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\u53ea\u4fdd\u5b58\u6b64\u69fd\u9009\u62e9\uff0c\u4e0d\u4f1a\u81ea\u52a8\u5f00\u542f\u603b\u5f00\u5173\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/TopBarSettingsActivity;ILcom/local/p5home/TopBarSettingsActivity$AppChoice;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/local/p5home/TopBarSettingsActivity;->showConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method private confirmEnabled(Z)V
    .registers 5

    .line 121
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->snapshot:Lcom/local/p5home/TopBarStore$Snapshot;

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->busy:Z

    if-eqz v0, :cond_9

    goto :goto_1f

    :cond_9
    if-eqz p1, :cond_e

    const-string v0, "\u5f00\u542f\u9876\u90e8\u680f\u81ea\u5b9a\u4e49"

    goto :goto_10

    :cond_e
    const-string v0, "\u5173\u95ed\u9876\u90e8\u680f\u81ea\u5b9a\u4e49"

    :goto_10
    if-eqz p1, :cond_15

    const-string v1, "\u5c06\u6309\u5df2\u4fdd\u5b58\u7684\u9009\u62e9\u63a5\u7ba1\u9876\u90e8\u5feb\u6377\u5165\u53e3\u3002\u9700\u5148\u5728 LSPosed \u542f\u7528\u7cfb\u7edf\u754c\u9762\u4f5c\u7528\u57df\uff1b\u5b9e\u9645\u63a5\u5165\u72b6\u6001\u4ee5\u672c\u9875\u56de\u62a5\u4e3a\u51c6\u3002"

    goto :goto_17

    :cond_15
    const-string v1, "\u5c06\u6062\u590d\u539f\u8f66\u56fe\u6807\u548c\u70b9\u51fb\u884c\u4e3a\uff0c\u5df2\u4fdd\u5b58\u7684\u4e03\u69fd\u9009\u62e9\u4f1a\u4fdd\u7559\u3002"

    :goto_17
    new-instance v2, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda5;-><init>(Lcom/local/p5home/TopBarSettingsActivity;Z)V

    invoke-direct {p0, v0, v1, v2}, Lcom/local/p5home/TopBarSettingsActivity;->showConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method private confirmImport()V
    .registers 4

    .line 126
    iget-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->canImport()Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "\u6682\u4e0d\u80fd\u5bfc\u5165"

    const-string v1, "\u5bfc\u5165\u53ea\u5728\u603b\u5f00\u5173\u5173\u95ed\u3001\u4e03\u69fd\u90fd\u4e3a\u539f\u8f66\u9ed8\u8ba4\u4e14\u5c1a\u672a\u5c1d\u8bd5\u65f6\u53ef\u7528\uff0c\u907f\u514d\u8986\u76d6\u73b0\u6709\u9009\u62e9\u3002"

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    new-instance v0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda24;-><init>(Lcom/local/p5home/TopBarSettingsActivity;)V

    const-string v1, "\u5bfc\u5165\u65e7\u7248\u5e94\u7528\u9009\u62e9"

    const-string v2, "\u4ec5\u5c1d\u8bd5\u8bfb\u53d6\u4e00\u6b21\u65e7\u7248\u9876\u90e8\u680f\u7684\u5df2\u9009\u5e94\u7528\u3002\u5bfc\u5165\u4e0d\u4f1a\u81ea\u52a8\u5f00\u542f\u603b\u5f00\u5173\uff1b\u9700\u8981\u4f60\u4e4b\u540e\u660e\u786e\u5f00\u542f\u3002"

    invoke-direct {p0, v1, v2, v0}, Lcom/local/p5home/TopBarSettingsActivity;->showConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private confirmReset(I)V
    .registers 4

    .line 123
    iget-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->busy:Z

    if-nez v0, :cond_16

    if-ltz p1, :cond_16

    const/4 v0, 0x7

    if-lt p1, v0, :cond_a

    goto :goto_16

    :cond_a
    new-instance v0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda13;-><init>(Lcom/local/p5home/TopBarSettingsActivity;I)V

    const-string p1, "\u6062\u590d\u6b64\u69fd\u539f\u8f66\u9ed8\u8ba4"

    const-string v1, "\u5c06\u6e05\u9664\u6b64\u69fd\u7684\u81ea\u5b9a\u4e49\u5e94\u7528\uff0c\u4fdd\u7559\u5176\u4ed6\u516d\u4e2a\u69fd\u4f4d\u548c\u603b\u5f00\u5173\u3002"

    invoke-direct {p0, p1, v1, v0}, Lcom/local/p5home/TopBarSettingsActivity;->showConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_16
    :goto_16
    return-void
.end method

.method private confirmResetAll()V
    .registers 4

    .line 124
    iget-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda21;-><init>(Lcom/local/p5home/TopBarSettingsActivity;)V

    const-string v1, "\u6062\u590d\u5168\u90e8\u539f\u8f66\u9ed8\u8ba4"

    const-string v2, "\u5c06\u6e05\u7a7a\u4e03\u4e2a\u81ea\u5b9a\u4e49\u69fd\u4f4d\u5e76\u5173\u95ed\u603b\u5f00\u5173\u3002\u6b64\u64cd\u4f5c\u4e0d\u4f1a\u5220\u9664\u5e94\u7528\u3002"

    invoke-direct {p0, v1, v2, v0}, Lcom/local/p5home/TopBarSettingsActivity;->showConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private control(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;
    .registers 4

    .line 89
    invoke-static {p0, p1, p2, p3}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/local/p5home/TopBarSettingsActivity;->controls:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private dismissConfirmation()V
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->confirmation:Lcom/local/p5home/Ui$PanelDialog;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->confirmation:Lcom/local/p5home/Ui$PanelDialog;

    :cond_a
    return-void
.end method

.method private static displaySlot(I)I
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    const/4 v0, 0x6

    return v0

    :cond_5
    if-le p0, v0, :cond_9

    add-int/lit8 p0, p0, -0x1

    :cond_9
    return p0
.end method

.method static entryMode(IZLjava/lang/Object;)I
    .registers 6

    .line 64
    const/4 v0, 0x7

    if-ltz p0, :cond_6

    if-ge p0, v0, :cond_6

    return p0

    :cond_6
    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eq p0, v2, :cond_b

    return v1

    :cond_b
    if-nez p1, :cond_e

    return v2

    :cond_e
    instance-of p0, p2, Ljava/lang/Integer;

    if-eqz p0, :cond_24

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lt p0, v2, :cond_24

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ge p0, v0, :cond_24

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_24
    return v1
.end method

.method private filter()V
    .registers 6

    .line 113
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->filtered:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;

    iget-object v2, v1, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->label:Ljava/lang/String;

    iget-object v3, v1, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->pkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/local/p5home/TopBarSettingsActivity;->searchText:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/local/p5home/TopBarSettingsActivity;->matches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/local/p5home/TopBarSettingsActivity;->filtered:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_29
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->adapter:Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->notifyDataSetChanged()V

    :cond_30
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->listState:Landroid/widget/TextView;

    if-eqz v0, :cond_68

    iget-boolean v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->appsLoaded:Z

    if-nez v1, :cond_3b

    const-string v1, "\u6b63\u5728\u8bfb\u53d6\u53ef\u542f\u52a8\u5e94\u7528\u2026"

    goto :goto_65

    :cond_3b
    iget-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->filtered:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v1, "\u672a\u627e\u5230\u5339\u914d\u5e94\u7528\uff0c\u53ef\u4fee\u6539\u641c\u7d22\u6216\u5237\u65b0\u5217\u8868\u3002"

    goto :goto_65

    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u627e\u5230 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/local/p5home/TopBarSettingsActivity;->filtered:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u4e2a\u53ef\u542f\u52a8\u5165\u53e3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_65
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_68
    return-void
.end method

.method private fixedIcon(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;
    .registers 6

    .line 90
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_14

    new-instance p1, Lcom/local/p5home/Ui$Symbol;

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v2, "apps"

    invoke-direct {p1, v2, v1}, Lcom/local/p5home/Ui$Symbol;-><init>(Ljava/lang/String;I)V

    :cond_14
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {p0, p1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, p1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, p1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, p1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-object v0
.end method

.method private heading(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;
    .registers 7

    .line 75
    invoke-static {p0}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->mode:I

    if-ltz v1, :cond_b

    const-string v1, "\u8fd4\u56de\u9876\u90e8\u680f\u8bbe\u7f6e"

    goto :goto_d

    :cond_b
    const-string v1, "\u8fd4\u56de\u8bbe\u7f6e"

    :goto_d
    const-string v2, "back"

    invoke-static {p0, v2, v1, p2}, Lcom/local/p5home/Ui;->iconButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 p2, 0x1a

    invoke-static {p0, v0, p2}, Lcom/local/p5home/Ui;->side(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    const/16 p2, 0x2e

    invoke-static {p0, p1, p2}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {p2, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private help()V
    .registers 6

    .line 131
    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->text:I

    const-string v2, "\u5728 LSPosed \u4e3a G3\u8f7b\u684c\u9762\u542f\u7528\u201c\u7cfb\u7edf\u754c\u9762 (com.android.systemui)\u201d\u4f5c\u7528\u57df\uff0c\u7cfb\u7edf\u754c\u9762\u91cd\u65b0\u52a0\u8f7d\u540e\u68c0\u67e5\u672c\u9875\u72b6\u6001\u3002\n\n\u603b\u5f00\u5173\u53ea\u4fdd\u5b58\u914d\u7f6e\uff0c\u4e0d\u4f1a\u81ea\u52a8\u5b8c\u6210\u6302\u8f7d\u6216\u91cd\u542f\u7cfb\u7edf\u754c\u9762\u3002\u5173\u95ed\u65f6\u4fdd\u7559\u5e94\u7528\u9009\u62e9\u3002"

    const/16 v3, 0x1d

    invoke-static {p0, v2, v3, v1}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x18

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance v1, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda14;-><init>(Lcom/local/p5home/TopBarSettingsActivity;)V

    const-string v2, "\u6253\u5f00 LSPosed \u7ba1\u7406\u5668"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v1}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v1

    const-string v2, "\u9876\u90e8\u680f\u63a5\u5165\u8bf4\u660e"

    invoke-virtual {v1, v2}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setView(Landroid/view/View;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    const-string v1, "\u77e5\u9053\u4e86"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelBuilder;->show()Lcom/local/p5home/Ui$PanelDialog;

    return-void
.end method

.method static synthetic lambda$loadApps$8(Ljava/text/Collator;Lcom/local/p5home/TopBarSettingsActivity$AppChoice;Lcom/local/p5home/TopBarSettingsActivity$AppChoice;)I
    .registers 5

    .line 110
    iget-object v0, p1, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->label:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_43

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->activity:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p2, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->activity:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    :goto_43
    return p0
.end method

.method private live(I)Z
    .registers 3

    .line 68
    iget-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->dead:Z

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/local/p5home/TopBarSettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/local/p5home/TopBarSettingsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->resumed:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method private loadApps()V
    .registers 6

    .line 109
    iget-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->dead:Z

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->appsLoading:Z

    if-eqz v0, :cond_9

    goto :goto_2f

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->appsLoading:Z

    iget-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/local/p5home/TopBarSettingsActivity;->appSequence:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/local/p5home/TopBarSettingsActivity;->appSequence:I

    invoke-virtual {p0}, Lcom/local/p5home/TopBarSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/local/p5home/TopBarSettingsActivity;->listState:Landroid/widget/TextView;

    if-eqz v3, :cond_24

    const-string v4, "\u6b63\u5728\u8bfb\u53d6\u5df2\u5b89\u88c5\u7684\u53ef\u542f\u52a8\u5e94\u7528\u2026"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_24
    iget-object v3, p0, Lcom/local/p5home/TopBarSettingsActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda25;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda25;-><init>(Lcom/local/p5home/TopBarSettingsActivity;Landroid/content/Context;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 111
    return-void

    .line 109
    :cond_2f
    :goto_2f
    return-void
.end method

.method private loadIcon(Landroid/content/Context;Lcom/local/p5home/TopBarSlot;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/local/p5home/TopBarSlot;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/local/p5home/TopBarSlot;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->icons:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->icons:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_2c
    :try_start_2c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v1, p2, Lcom/local/p5home/TopBarSlot;->activityName:Ljava/lang/String;

    if-eqz v1, :cond_4a

    iget-object v1, p2, Lcom/local/p5home/TopBarSlot;->activityName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4a

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p2, Lcom/local/p5home/TopBarSlot;->packageName:Ljava/lang/String;

    iget-object p2, p2, Lcom/local/p5home/TopBarSlot;->activityName:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_53

    :cond_4a
    iget-object p2, p2, Lcom/local/p5home/TopBarSlot;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_50} :catch_51

    goto :goto_53

    :catch_51
    move-exception p1

    const/4 p1, 0x0

    :goto_53
    if-eqz p1, :cond_5a

    iget-object p2, p0, Lcom/local/p5home/TopBarSettingsActivity;->icons:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    return-object p1
.end method

.method static matches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 66
    if-nez p2, :cond_5

    const-string p2, ""

    goto :goto_f

    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    :goto_f
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    if-eqz p0, :cond_23

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_34

    :cond_23
    if-eqz p1, :cond_32

    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_32

    goto :goto_34

    :cond_32
    const/4 p0, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    const/4 p0, 0x1

    :goto_35
    return p0
.end method

.method private navigate(I)V
    .registers 2

    .line 67
    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->dismissConfirmation()V

    iput p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->mode:I

    const-string p1, ""

    iput-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->searchText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->build()V

    iget-boolean p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->resumed:Z

    if-eqz p1, :cond_1e

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->refreshState()V

    iget p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->mode:I

    if-ltz p1, :cond_1e

    iget-boolean p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->appsLoaded:Z

    if-nez p1, :cond_1e

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->loadApps()V

    :cond_1e
    return-void
.end method

.method private note(Ljava/lang/String;)V
    .registers 3

    .line 91
    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->message:Ljava/lang/String;

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->operation:Landroid/widget/TextView;

    if-eqz v0, :cond_1e

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->operation:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x8

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1e
    return-void
.end method

.method private static readSlot(Landroid/content/Intent;)I
    .registers 3

    .line 65
    if-nez p0, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_8} :catch_22

    const-string v0, "slot_index"

    if-eqz p0, :cond_14

    :try_start_c
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-nez p0, :cond_19

    const/4 p0, 0x0

    goto :goto_1d

    :cond_19
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :goto_1d
    invoke-static {v1, p0}, Lcom/local/p5home/TopBarSettingsActivity;->slotExtra(ZLjava/lang/Object;)I

    move-result p0
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_21} :catch_22

    return p0

    :catch_22
    move-exception p0

    const/4 p0, -0x2

    return p0
.end method

.method private refreshState()V
    .registers 6

    .line 95
    iget-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->dead:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->stateSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->stateSequence:I

    invoke-virtual {p0}, Lcom/local/p5home/TopBarSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 96
    iget-object v3, p0, Lcom/local/p5home/TopBarSettingsActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/local/p5home/TopBarSettingsActivity;Landroid/content/Context;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method private showConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .line 120
    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->dismissConfirmation()V

    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/local/p5home/Ui$PanelBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    const-string p2, "\u53d6\u6d88"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    new-instance p2, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p3}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda4;-><init>(Lcom/local/p5home/TopBarSettingsActivity;Ljava/lang/Runnable;)V

    const-string p3, "\u786e\u8ba4"

    invoke-virtual {p1, p3, p2}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->confirmation:Lcom/local/p5home/Ui$PanelDialog;

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelDialog;->show()V

    return-void
.end method

.method private static slot(Lcom/local/p5home/TopBarStore$Snapshot;I)Lcom/local/p5home/TopBarSlot;
    .registers 3

    .line 99
    if-eqz p0, :cond_12

    iget-object v0, p0, Lcom/local/p5home/TopBarStore$Snapshot;->slots:[Lcom/local/p5home/TopBarSlot;

    if-eqz v0, :cond_12

    if-ltz p1, :cond_12

    iget-object v0, p0, Lcom/local/p5home/TopBarStore$Snapshot;->slots:[Lcom/local/p5home/TopBarSlot;

    array-length v0, v0

    if-ge p1, v0, :cond_12

    iget-object p0, p0, Lcom/local/p5home/TopBarStore$Snapshot;->slots:[Lcom/local/p5home/TopBarSlot;

    aget-object p0, p0, p1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return-object p0
.end method

.method static slotExtra(ZLjava/lang/Object;)I
    .registers 3

    .line 62
    if-nez p0, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_1c

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x7

    if-ge p0, v0, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1d

    :cond_1c
    const/4 p0, -0x2

    :goto_1d
    return p0
.end method

.method private slotName(I)Ljava/lang/String;
    .registers 3

    .line 70
    if-ltz p1, :cond_c

    sget-object v0, Lcom/local/p5home/TopBarSlot;->NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    sget-object v0, Lcom/local/p5home/TopBarSlot;->NAMES:[Ljava/lang/String;

    aget-object p1, v0, p1

    goto :goto_e

    :cond_c
    const-string p1, "\u672a\u77e5\u69fd\u4f4d"

    :goto_e
    return-object p1
.end method

.method private updateBusy()V
    .registers 5

    .line 92
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->controls:Ljava/util/List;

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

    iget-boolean v3, p0, Lcom/local/p5home/TopBarSettingsActivity;->busy:Z

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_6

    :cond_1a
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->search:Landroid/widget/EditText;

    if-eqz v0, :cond_24

    iget-boolean v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->busy:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_24
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->list:Landroid/widget/ListView;

    if-eqz v0, :cond_2e

    iget-boolean v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->busy:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_2e
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->enabled:Lcom/local/p5home/Ui$Toggle;

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    iget-boolean v3, p0, Lcom/local/p5home/TopBarSettingsActivity;->busy:Z

    if-nez v3, :cond_41

    iget-object v3, p0, Lcom/local/p5home/TopBarSettingsActivity;->snapshot:Lcom/local/p5home/TopBarStore$Snapshot;

    if-eqz v3, :cond_41

    iget-boolean v3, v3, Lcom/local/p5home/TopBarStore$Snapshot;->valid:Z

    if-eqz v3, :cond_41

    move v3, v2

    goto :goto_42

    :cond_41
    move v3, v1

    :goto_42
    invoke-virtual {v0, v3}, Lcom/local/p5home/Ui$Toggle;->setEnabled(Z)V

    :cond_45
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->importButton:Landroid/widget/Button;

    if-eqz v0, :cond_58

    iget-boolean v3, p0, Lcom/local/p5home/TopBarSettingsActivity;->busy:Z

    if-nez v3, :cond_54

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->canImport()Z

    move-result v3

    if-eqz v3, :cond_54

    goto :goto_55

    :cond_54
    move v2, v1

    :goto_55
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_58
    return-void
.end method

.method private write(Lcom/local/p5home/TopBarSettingsActivity$Write;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .line 127
    const-string v0, "\u4fdd\u5b58\u672a\u5b8c\u6210\u3002\u5e94\u7528\u53ef\u80fd\u5df2\u5378\u8f7d\u6216\u5165\u53e3\u5df2\u53d8\u66f4\uff0c\u6216\u5b58\u50a8\u672a\u5b8c\u6210\u5199\u5165\uff1b\u8bf7\u5237\u65b0\u72b6\u6001\u540e\u91cd\u8bd5\u3002"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/local/p5home/TopBarSettingsActivity;->write(Lcom/local/p5home/TopBarSettingsActivity$Write;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private write(Lcom/local/p5home/TopBarSettingsActivity$Write;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 14

    .line 129
    iget-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->busy:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->dead:Z

    if-eqz v0, :cond_9

    goto :goto_2b

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->busy:Z

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->updateBusy()V

    const-string v0, "\u6b63\u5728\u4fdd\u5b58\u9876\u90e8\u680f\u914d\u7f6e\u2026"

    invoke-direct {p0, v0}, Lcom/local/p5home/TopBarSettingsActivity;->note(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda22;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda22;-><init>(Lcom/local/p5home/TopBarSettingsActivity;Lcom/local/p5home/TopBarSettingsActivity$Write;ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 130
    return-void

    .line 129
    :cond_2b
    :goto_2b
    return-void
.end method


# virtual methods
.method synthetic lambda$buildOverview$0$com-local-g3home-TopBarSettingsActivity(Landroid/widget/CompoundButton;Z)V
    .registers 6

    .line 79
    iget-boolean p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->binding:Z

    if-nez p1, :cond_21

    iget-boolean p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->busy:Z

    if-eqz p1, :cond_9

    goto :goto_21

    :cond_9
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->binding:Z

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->enabled:Lcom/local/p5home/Ui$Toggle;

    iget-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->snapshot:Lcom/local/p5home/TopBarStore$Snapshot;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    iget-boolean v1, v1, Lcom/local/p5home/TopBarStore$Snapshot;->enabled:Z

    if-eqz v1, :cond_18

    goto :goto_19

    :cond_18
    move p1, v2

    :goto_19
    invoke-virtual {v0, p1}, Lcom/local/p5home/Ui$Toggle;->setChecked(Z)V

    iput-boolean v2, p0, Lcom/local/p5home/TopBarSettingsActivity;->binding:Z

    invoke-direct {p0, p2}, Lcom/local/p5home/TopBarSettingsActivity;->confirmEnabled(Z)V

    :cond_21
    :goto_21
    return-void
.end method

.method synthetic lambda$buildOverview$1$com-local-g3home-TopBarSettingsActivity(ILandroid/view/View;)V
    .registers 3

    .line 81
    invoke-direct {p0, p1}, Lcom/local/p5home/TopBarSettingsActivity;->navigate(I)V

    return-void
.end method

.method synthetic lambda$buildPicker$2$com-local-g3home-TopBarSettingsActivity()V
    .registers 2

    .line 85
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/local/p5home/TopBarSettingsActivity;->navigate(I)V

    return-void
.end method

.method synthetic lambda$buildPicker$3$com-local-g3home-TopBarSettingsActivity()V
    .registers 2

    .line 86
    iget v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->mode:I

    invoke-direct {p0, v0}, Lcom/local/p5home/TopBarSettingsActivity;->confirmReset(I)V

    return-void
.end method

.method synthetic lambda$buildPicker$4$com-local-g3home-TopBarSettingsActivity()V
    .registers 2

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->appsLoaded:Z

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->loadApps()V

    return-void
.end method

.method synthetic lambda$buildPicker$5$com-local-g3home-TopBarSettingsActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 86
    iget-boolean p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->busy:Z

    if-nez p1, :cond_1b

    if-ltz p3, :cond_1b

    iget-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->filtered:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_1b

    iget p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->mode:I

    iget-object p2, p0, Lcom/local/p5home/TopBarSettingsActivity;->filtered:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;

    invoke-direct {p0, p1, p2}, Lcom/local/p5home/TopBarSettingsActivity;->confirmChoice(ILcom/local/p5home/TopBarSettingsActivity$AppChoice;)V

    :cond_1b
    return-void
.end method

.method synthetic lambda$confirmChoice$14$com-local-g3home-TopBarSettingsActivity(ILcom/local/p5home/TopBarSettingsActivity$AppChoice;)Z
    .registers 6

    .line 122
    invoke-virtual {p0}, Lcom/local/p5home/TopBarSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p2, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->activity:Ljava/lang/String;

    iget-object p2, p2, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->label:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2, p2}, Lcom/local/p5home/TopBarStore;->setSlot(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$confirmChoice$15$com-local-g3home-TopBarSettingsActivity()V
    .registers 2

    .line 122
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/local/p5home/TopBarSettingsActivity;->navigate(I)V

    return-void
.end method

.method synthetic lambda$confirmChoice$16$com-local-g3home-TopBarSettingsActivity(ILcom/local/p5home/TopBarSettingsActivity$AppChoice;)V
    .registers 4

    .line 122
    new-instance v0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda15;-><init>(Lcom/local/p5home/TopBarSettingsActivity;ILcom/local/p5home/TopBarSettingsActivity$AppChoice;)V

    new-instance p1, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda16;-><init>(Lcom/local/p5home/TopBarSettingsActivity;)V

    const-string p2, "\u5e94\u7528\u9009\u62e9\u5df2\u4fdd\u5b58\u3002"

    invoke-direct {p0, v0, p2, p1}, Lcom/local/p5home/TopBarSettingsActivity;->write(Lcom/local/p5home/TopBarSettingsActivity$Write;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$confirmEnabled$12$com-local-g3home-TopBarSettingsActivity(Z)Z
    .registers 3

    .line 121
    invoke-virtual {p0}, Lcom/local/p5home/TopBarSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/local/p5home/TopBarStore;->setEnabled(Landroid/content/Context;Z)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$confirmEnabled$13$com-local-g3home-TopBarSettingsActivity(Z)V
    .registers 4

    .line 121
    new-instance v0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda30;-><init>(Lcom/local/p5home/TopBarSettingsActivity;Z)V

    if-eqz p1, :cond_a

    const-string p1, "\u5df2\u4fdd\u5b58\u5f00\u542f\u5f00\u5173\uff0c\u8bf7\u67e5\u770b\u5b9e\u9645\u63a5\u5165\u72b6\u6001\u3002"

    goto :goto_c

    :cond_a
    const-string p1, "\u5df2\u4fdd\u5b58\u5173\u95ed\u5f00\u5173\uff0c\u6062\u590d\u60c5\u51b5\u4ee5\u7cfb\u7edf\u754c\u9762\u56de\u62a5\u4e3a\u51c6\u3002"

    :goto_c
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/local/p5home/TopBarSettingsActivity;->write(Lcom/local/p5home/TopBarSettingsActivity$Write;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$confirmImport$22$com-local-g3home-TopBarSettingsActivity()Z
    .registers 2

    .line 126
    invoke-virtual {p0}, Lcom/local/p5home/TopBarSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/local/p5home/TopBarStore;->migrateLegacyOnce(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$confirmImport$23$com-local-g3home-TopBarSettingsActivity()V
    .registers 5

    .line 126
    new-instance v0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda17;-><init>(Lcom/local/p5home/TopBarSettingsActivity;)V

    const-string v1, "\u672a\u80fd\u5bfc\u5165\u65e7\u7248\u9009\u62e9\u3002\u65e7\u7248\u53ef\u80fd\u672a\u5b89\u88c5\u3001\u6ca1\u6709\u53ef\u5bfc\u5165\u9879\u6216\u5df2\u5c1d\u8bd5\u5bfc\u5165\u3002\u603b\u5f00\u5173\u4e0d\u4f1a\u81ea\u52a8\u5f00\u542f\u3002"

    const/4 v2, 0x0

    const-string v3, "\u65e7\u7248\u5bfc\u5165\u5df2\u5b8c\u6210\u3002\u8bf7\u6838\u5bf9\u4e03\u69fd\u9009\u62e9\uff0c\u6309\u9700\u5f00\u542f\u603b\u5f00\u5173\u3002"

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/local/p5home/TopBarSettingsActivity;->write(Lcom/local/p5home/TopBarSettingsActivity$Write;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$confirmReset$17$com-local-g3home-TopBarSettingsActivity(I)Z
    .registers 3

    .line 123
    invoke-virtual {p0}, Lcom/local/p5home/TopBarSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/local/p5home/TopBarStore;->resetSlot(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$confirmReset$18$com-local-g3home-TopBarSettingsActivity()V
    .registers 2

    .line 123
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/local/p5home/TopBarSettingsActivity;->navigate(I)V

    return-void
.end method

.method synthetic lambda$confirmReset$19$com-local-g3home-TopBarSettingsActivity(I)V
    .registers 5

    .line 123
    new-instance v0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda19;-><init>(Lcom/local/p5home/TopBarSettingsActivity;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u4fdd\u5b58\u69fd\u4f4d "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " \u7684\u539f\u8f66\u9ed8\u8ba4\u914d\u7f6e\u3002"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda20;-><init>(Lcom/local/p5home/TopBarSettingsActivity;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/local/p5home/TopBarSettingsActivity;->write(Lcom/local/p5home/TopBarSettingsActivity$Write;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$confirmResetAll$20$com-local-g3home-TopBarSettingsActivity()Z
    .registers 2

    .line 124
    invoke-virtual {p0}, Lcom/local/p5home/TopBarSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/local/p5home/TopBarStore;->resetAll(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$confirmResetAll$21$com-local-g3home-TopBarSettingsActivity()V
    .registers 4

    .line 124
    new-instance v0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda23;-><init>(Lcom/local/p5home/TopBarSettingsActivity;)V

    const-string v1, "\u5df2\u4fdd\u5b58\u5168\u90e8\u539f\u8f66\u9ed8\u8ba4\u914d\u7f6e\uff0c\u5e76\u5173\u95ed\u603b\u5f00\u5173\u3002\u5b9e\u9645\u5e94\u7528\u60c5\u51b5\u8bf7\u67e5\u770b\u72b6\u6001\u3002"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/local/p5home/TopBarSettingsActivity;->write(Lcom/local/p5home/TopBarSettingsActivity$Write;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$help$26$com-local-g3home-TopBarSettingsActivity()V
    .registers 3

    .line 131
    :try_start_0
    invoke-static {p0}, Lcom/local/p5home/DeviceActions;->openLsposed(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

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

.method synthetic lambda$loadApps$10$com-local-g3home-TopBarSettingsActivity(Landroid/content/Context;II)V
    .registers 12

    .line 110
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-boolean v4, p0, Lcom/local/p5home/TopBarSettingsActivity;->dead:Z

    if-nez v4, :cond_9e

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_9e

    iget-object v4, p0, Lcom/local/p5home/TopBarSettingsActivity;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq p2, v4, :cond_48

    goto :goto_9e

    :cond_48
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_24

    iget-boolean v6, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v6, :cond_24

    iget-boolean v6, v4, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v6, :cond_24

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_24

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v6, :cond_5f

    goto :goto_24

    :cond_5f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_81

    goto :goto_24

    :cond_81
    invoke-virtual {v2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/local/p5home/TopBarSettingsActivity;->cleanLabel(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8b} :catch_af

    :try_start_8b
    invoke-virtual {v2, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8f} :catch_90

    goto :goto_91

    :catch_90
    move-exception v2

    :goto_91
    :try_start_91
    new-instance v2, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v7, v4, v6, v3}, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_9e
    :goto_9e
    return-void

    :cond_9f
    sget-object p1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    new-instance v0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda1;-><init>(Ljava/text/Collator;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_ad} :catch_af

    move-object v4, v3

    goto :goto_b5

    :catch_af
    move-exception p1

    invoke-static {p1}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    :goto_b5
    iget-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->main:Landroid/os/Handler;

    new-instance v6, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda2;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/local/p5home/TopBarSettingsActivity;IILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$loadApps$9$com-local-g3home-TopBarSettingsActivity(IILjava/lang/String;Ljava/util/List;)V
    .registers 6

    .line 110
    iget-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->dead:Z

    if-nez v0, :cond_4b

    iget v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->appSequence:I

    if-ne p1, v0, :cond_4b

    iget-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-eq p2, p1, :cond_11

    goto :goto_4b

    :cond_11
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->appsLoading:Z

    iget-boolean p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->resumed:Z

    if-nez p1, :cond_19

    return-void

    :cond_19
    if-eqz p3, :cond_3b

    iget-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->listState:Landroid/widget/TextView;

    if-eqz p1, :cond_24

    const-string p2, "\u8bfb\u53d6\u5931\u8d25\uff0c\u8bf7\u5237\u65b0\u5e94\u7528\u5217\u8868\u3002"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5e94\u7528\u5217\u8868\u8bfb\u53d6\u672a\u5b8c\u6210\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/local/p5home/TopBarSettingsActivity;->note(Ljava/lang/String;)V

    return-void

    :cond_3b
    iget-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->apps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->apps:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->appsLoaded:Z

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->filter()V

    :cond_4b
    :goto_4b
    return-void
.end method

.method synthetic lambda$refreshState$6$com-local-g3home-TopBarSettingsActivity(IILjava/lang/String;Lcom/local/p5home/TopBarSettingsActivity$State;)V
    .registers 5

    .line 96
    invoke-direct {p0, p1}, Lcom/local/p5home/TopBarSettingsActivity;->live(I)Z

    move-result p1

    if-eqz p1, :cond_4a

    iget p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->stateSequence:I

    if-eq p2, p1, :cond_b

    goto :goto_4a

    :cond_b
    if-eqz p3, :cond_3c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u9876\u90e8\u680f\u914d\u7f6e\u8bfb\u53d6\u672a\u5b8c\u6210\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/local/p5home/TopBarSettingsActivity;->note(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->snapshot:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->runtimeState:Landroid/widget/TextView;

    if-eqz p1, :cond_2f

    const-string p2, "\u72b6\u6001\u8bfb\u53d6\u5931\u8d25\uff0c\u8bf7\u5237\u65b0\u6216\u6062\u590d\u5168\u90e8\u9ed8\u8ba4\u3002"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2f
    iget-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->configState:Landroid/widget/TextView;

    if-eqz p1, :cond_38

    const-string p2, "\u914d\u7f6e\u672a\u80fd\u8bfb\u53d6\uff0c\u672a\u5f00\u542f\u63a5\u7ba1\u3002"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_38
    :goto_38
    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->updateBusy()V

    return-void

    :cond_3c
    iget-object p1, p4, Lcom/local/p5home/TopBarSettingsActivity$State;->snapshot:Lcom/local/p5home/TopBarStore$Snapshot;

    iput-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->snapshot:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-object p1, p4, Lcom/local/p5home/TopBarSettingsActivity$State;->snapshot:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-object p2, p4, Lcom/local/p5home/TopBarSettingsActivity$State;->status:Landroid/os/Bundle;

    iget-object p3, p4, Lcom/local/p5home/TopBarSettingsActivity$State;->icons:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, p2, p3}, Lcom/local/p5home/TopBarSettingsActivity;->applySnapshot(Lcom/local/p5home/TopBarStore$Snapshot;Landroid/os/Bundle;[Landroid/graphics/drawable/Drawable;)V

    goto :goto_38

    :cond_4a
    :goto_4a
    return-void
.end method

.method synthetic lambda$refreshState$7$com-local-g3home-TopBarSettingsActivity(Landroid/content/Context;II)V
    .registers 12

    .line 96
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/local/p5home/TopBarStore;->load(Landroid/content/Context;)Lcom/local/p5home/TopBarStore$Snapshot;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-boolean v2, v1, Lcom/local/p5home/TopBarStore$Snapshot;->valid:Z

    if-eqz v2, :cond_32

    invoke-static {p1}, Lcom/local/p5home/TopBarStore;->status(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x7

    new-array v4, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v3, :cond_2a

    invoke-static {v1, v5}, Lcom/local/p5home/TopBarSettingsActivity;->slot(Lcom/local/p5home/TopBarStore$Snapshot;I)Lcom/local/p5home/TopBarSlot;

    move-result-object v6

    if-eqz v6, :cond_27

    invoke-virtual {v6}, Lcom/local/p5home/TopBarSlot;->isCustom()Z

    move-result v7

    if-eqz v7, :cond_27

    invoke-direct {p0, p1, v6}, Lcom/local/p5home/TopBarSettingsActivity;->loadIcon(Landroid/content/Context;Lcom/local/p5home/TopBarSlot;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_2a
    new-instance p1, Lcom/local/p5home/TopBarSettingsActivity$State;

    invoke-direct {p1, v1, v2, v4}, Lcom/local/p5home/TopBarSettingsActivity$State;-><init>(Lcom/local/p5home/TopBarStore$Snapshot;Landroid/os/Bundle;[Landroid/graphics/drawable/Drawable;)V

    move-object v6, p1

    move-object v5, v0

    goto :goto_41

    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "\u79c1\u6709\u914d\u7f6e\u65e0\u6548\u6216\u65e0\u6cd5\u8bfb\u53d6\uff0c\u53ef\u6062\u590d\u5168\u90e8\u539f\u8f66\u9ed8\u8ba4\u540e\u91cd\u8bd5\u3002"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_3a

    :catch_3a
    move-exception p1

    invoke-static {p1}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    move-object v6, v0

    :goto_41
    iget-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->main:Landroid/os/Handler;

    new-instance v0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda31;

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda31;-><init>(Lcom/local/p5home/TopBarSettingsActivity;IILjava/lang/String;Lcom/local/p5home/TopBarSettingsActivity$State;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$showConfirm$11$com-local-g3home-TopBarSettingsActivity(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 120
    iget-boolean p2, p0, Lcom/local/p5home/TopBarSettingsActivity;->dead:Z

    if-nez p2, :cond_b

    iget-boolean p2, p0, Lcom/local/p5home/TopBarSettingsActivity;->busy:Z

    if-nez p2, :cond_b

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_b
    return-void
.end method

.method synthetic lambda$write$24$com-local-g3home-TopBarSettingsActivity(IZLjava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 129
    iget-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->dead:Z

    if-nez v0, :cond_41

    invoke-virtual {p0}, Lcom/local/p5home/TopBarSettingsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_41

    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->busy:Z

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->updateBusy()V

    invoke-direct {p0, p1}, Lcom/local/p5home/TopBarSettingsActivity;->live(I)Z

    move-result p1

    if-nez p1, :cond_26

    const-string p1, ""

    iput-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->message:Ljava/lang/String;

    iget-boolean p2, p0, Lcom/local/p5home/TopBarSettingsActivity;->resumed:Z

    if-eqz p2, :cond_25

    invoke-direct {p0, p1}, Lcom/local/p5home/TopBarSettingsActivity;->note(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->refreshState()V

    :cond_25
    return-void

    :cond_26
    if-eqz p2, :cond_35

    invoke-direct {p0, p3}, Lcom/local/p5home/TopBarSettingsActivity;->note(Ljava/lang/String;)V

    if-eqz p4, :cond_31

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_41

    :cond_31
    :goto_31
    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->refreshState()V

    goto :goto_41

    :cond_35
    if-nez p5, :cond_38

    move-object p5, p6

    :cond_38
    invoke-direct {p0, p5}, Lcom/local/p5home/TopBarSettingsActivity;->note(Ljava/lang/String;)V

    const-string p1, "\u9876\u90e8\u680f\u64cd\u4f5c\u672a\u5b8c\u6210"

    invoke-static {p0, p1, p5}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_41
    :goto_41
    return-void
.end method

.method synthetic lambda$write$25$com-local-g3home-TopBarSettingsActivity(Lcom/local/p5home/TopBarSettingsActivity$Write;ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 15

    .line 129
    :try_start_0
    invoke-interface {p1}, Lcom/local/p5home/TopBarSettingsActivity$Write;->run()Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_8

    const/4 v0, 0x0

    :goto_5
    move v4, p1

    move-object v7, v0

    goto :goto_f

    :catch_8
    move-exception p1

    invoke-static {p1}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 p1, 0x0

    goto :goto_5

    :goto_f
    iget-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->main:Landroid/os/Handler;

    new-instance v0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda18;

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda18;-><init>(Lcom/local/p5home/TopBarSettingsActivity;IZLjava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 59
    iget v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->mode:I

    if-ltz v0, :cond_9

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/local/p5home/TopBarSettingsActivity;->navigate(I)V

    goto :goto_c

    :cond_9
    invoke-virtual {p0}, Lcom/local/p5home/TopBarSettingsActivity;->finish()V

    :goto_c
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->build()V

    iget-boolean p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->resumed:Z

    if-eqz p1, :cond_18

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->refreshState()V

    iget p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->mode:I

    if-ltz p1, :cond_18

    iget-boolean p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->appsLoaded:Z

    if-nez p1, :cond_18

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->loadApps()V

    :cond_18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/local/p5home/TopBarSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/local/p5home/TopBarSettingsActivity;->readSlot(Landroid/content/Intent;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "mode"

    const/4 v3, 0x0

    if-eqz p1, :cond_19

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    move v4, v1

    goto :goto_1a

    :cond_19
    move v4, v3

    :goto_1a
    if-nez p1, :cond_1e

    const/4 v2, 0x0

    goto :goto_22

    :cond_1e
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :goto_22
    invoke-static {v0, v4, v2}, Lcom/local/p5home/TopBarSettingsActivity;->entryMode(IZLjava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/local/p5home/TopBarSettingsActivity;->mode:I

    const-string v2, ""

    if-gez v0, :cond_35

    if-nez p1, :cond_2f

    goto :goto_35

    :cond_2f
    const-string v4, "search"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_35
    :goto_35
    iput-object v2, p0, Lcom/local/p5home/TopBarSettingsActivity;->searchText:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ENTRY_SLOT_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_MODE_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/local/p5home/TopBarSettingsActivity;->mode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_RESTORED_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_5b

    goto :goto_5c

    :cond_5b
    move v1, v3

    :goto_5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "G3TopBarUI"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->mode:I

    const/4 v0, -0x2

    if-ne p1, v0, :cond_75

    const/4 p1, -0x1

    iput p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->mode:I

    const-string p1, "\u69fd\u4f4d\u53c2\u6570\u65e0\u6548\uff0c\u672a\u4fee\u6539\u4efb\u4f55\u914d\u7f6e\u3002"

    iput-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity;->message:Ljava/lang/String;

    :cond_75
    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->build()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->dead:Z

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->main:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->dismissConfirmation()V

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/local/p5home/TopBarSettingsActivity;->setIntent(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/local/p5home/TopBarSettingsActivity;->readSlot(Landroid/content/Intent;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NEW_INTENT_SLOT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "G3TopBarUI"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    if-ne p1, v0, :cond_28

    const-string v1, "\u69fd\u4f4d\u53c2\u6570\u65e0\u6548\uff0c\u672a\u4fee\u6539\u4efb\u4f55\u914d\u7f6e\u3002"

    goto :goto_2a

    :cond_28
    const-string v1, ""

    :goto_2a
    iput-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->message:Ljava/lang/String;

    if-ne p1, v0, :cond_2f

    const/4 p1, -0x1

    :cond_2f
    invoke-direct {p0, p1}, Lcom/local/p5home/TopBarSettingsActivity;->navigate(I)V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->resumed:Z

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->poll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->dismissConfirmation()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 5

    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->resumed:Z

    iget v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->theme:I

    invoke-static {p0}, Lcom/local/p5home/Ui;->themeSignature(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_11

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->build()V

    :cond_11
    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->refreshState()V

    iget v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->mode:I

    if-ltz v0, :cond_1f

    iget-boolean v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->appsLoaded:Z

    if-nez v0, :cond_1f

    invoke-direct {p0}, Lcom/local/p5home/TopBarSettingsActivity;->loadApps()V

    :cond_1f
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->poll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->poll:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "mode"

    iget v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->mode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "search"

    iget-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity;->searchText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
