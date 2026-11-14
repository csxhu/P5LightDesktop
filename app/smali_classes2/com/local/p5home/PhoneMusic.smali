.class public final Lcom/local/p5home/PhoneMusic;
.super Ljava/lang/Object;
.source "PhoneMusic.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# static fields
.field private static final EXTRA:Ljava/lang/String; = "com.local.p5home.phoneMusicQuery"

.field private static final PKG:Ljava/lang/String; = "com.luna.music"

.field private static activity:Landroid/app/Activity;

.field private static generation:I

.field private static main:Landroid/os/Handler;

.field private static query:Ljava/lang/String;

.field private static searched:Z

.field private static until:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accept(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 6

    .line 76
    sget-object v0, Lcom/local/p5home/PhoneMusic;->main:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/local/p5home/PhoneMusic;->main:Landroid/os/Handler;

    .line 77
    :cond_0
    if-eqz p1, :cond_5

    const-string v0, "com.local.p5home.phoneMusicQuery"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 78
    :cond_1
    const-string v0, "com.local.p5home.phoneMusicQuery"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v3, "p5QueuedAt"

    const-wide/16 v4, -0x7531

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 80
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa0

    if-gt v3, v4, :cond_4

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_4

    const-wide/16 v3, 0x3a98

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    goto :goto_0

    .line 82
    :cond_2
    :try_start_0
    const-string v1, "20.2.0"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.luna.music"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 83
    const-string p1, "\u6b64\u7248\u672c\u6c7d\u6c34\u624b\u673a\u7248\u5c1a\u672a\u9002\u914d\u81ea\u52a8\u70b9\u6b4c"

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-void

    .line 86
    :cond_3
    nop

    .line 87
    const-string p0, "com.local.p5home.phoneMusicQuery"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/local/p5home/PhoneMusic;->query:Ljava/lang/String;

    .line 89
    sput-boolean v4, Lcom/local/p5home/PhoneMusic;->searched:Z

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    const-wide/16 v0, 0x4e20

    add-long/2addr p0, v0

    sput-wide p0, Lcom/local/p5home/PhoneMusic;->until:J

    .line 91
    sget p0, Lcom/local/p5home/PhoneMusic;->generation:I

    add-int/2addr p0, v2

    sput p0, Lcom/local/p5home/PhoneMusic;->generation:I

    .line 92
    const-string p1, "P5PhoneMusic"

    const-string v0, "REQUEST_ACCEPTED"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object p1, Lcom/local/p5home/PhoneMusic;->main:Landroid/os/Handler;

    new-instance v0, Lcom/local/p5home/-$$Lambda$PhoneMusic$mDZP4pFLOW7zemsmXFsi9NezoHg;

    invoke-direct {v0, p0}, Lcom/local/p5home/-$$Lambda$PhoneMusic$mDZP4pFLOW7zemsmXFsi9NezoHg;-><init>(I)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    return-void

    .line 86
    :catch_0
    move-exception p0

    return-void

    .line 80
    :cond_4
    :goto_0
    return-void

    .line 77
    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/local/p5home/PhoneMusic;->accept(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$102(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .line 25
    sput-object p0, Lcom/local/p5home/PhoneMusic;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private static findEdit(Landroid/view/View;)Landroid/widget/EditText;
    .locals 4

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 139
    :cond_0
    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/widget/EditText;

    return-object p0

    .line 140
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 141
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/local/p5home/PhoneMusic;->findEdit(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    .line 140
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_3
    return-object v1
.end method

.method private static findTitle(Landroid/view/View;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 4

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 147
    :cond_0
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/widget/EditText;

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 149
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 150
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/local/p5home/PhoneMusic;->findTitle(Landroid/view/View;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    .line 149
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_3
    return-object v1
.end method

.method static synthetic lambda$accept$0(I)V
    .locals 0

    .line 93
    invoke-static {p0}, Lcom/local/p5home/PhoneMusic;->tick(I)V

    return-void
.end method

.method static synthetic lambda$tick$1(I)V
    .locals 0

    .line 114
    invoke-static {p0}, Lcom/local/p5home/PhoneMusic;->tick(I)V

    return-void
.end method

.method static synthetic lambda$tick$2(I)V
    .locals 0

    .line 134
    invoke-static {p0}, Lcom/local/p5home/PhoneMusic;->tick(I)V

    return-void
.end method

.method private static tick(I)V
    .locals 5

    .line 97
    sget v0, Lcom/local/p5home/PhoneMusic;->generation:I

    if-ne p0, v0, :cond_7

    sget-object v0, Lcom/local/p5home/PhoneMusic;->query:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 98
    :cond_0
    sget-object v0, Lcom/local/p5home/PhoneMusic;->activity:Landroid/app/Activity;

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/local/p5home/PhoneMusic;->until:J

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_2

    .line 100
    sput-object v3, Lcom/local/p5home/PhoneMusic;->query:Ljava/lang/String;

    .line 101
    const-string p0, "P5PhoneMusic"

    const-string v1, "NO_EXACT_RESULT_OR_SEARCH_TIMEOUT"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    if-eqz v0, :cond_1

    const-string p0, "\u672a\u627e\u5230\u53ef\u81ea\u52a8\u64ad\u653e\u7684\u540c\u540d\u6b4c\u66f2\uff0c\u8bf7\u5728\u641c\u7d22\u7ed3\u679c\u4e2d\u9009\u62e9"

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 103
    :cond_1
    return-void

    .line 105
    :cond_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 106
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/local/p5home/PhoneMusic;->findEdit(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    .line 108
    sget-boolean v4, Lcom/local/p5home/PhoneMusic;->searched:Z

    if-nez v4, :cond_3

    if-eqz v1, :cond_3

    .line 109
    sget-object v0, Lcom/local/p5home/PhoneMusic;->query:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 111
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 112
    sput-boolean v2, Lcom/local/p5home/PhoneMusic;->searched:Z

    .line 113
    const-string v0, "P5PhoneMusic"

    const-string v1, "SEARCH_SUBMITTED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v0, Lcom/local/p5home/PhoneMusic;->main:Landroid/os/Handler;

    new-instance v1, Lcom/local/p5home/-$$Lambda$PhoneMusic$TyeO_fwkGQrgQxA8oh8Oe5aa6N4;

    invoke-direct {v1, p0}, Lcom/local/p5home/-$$Lambda$PhoneMusic$TyeO_fwkGQrgQxA8oh8Oe5aa6N4;-><init>(I)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    return-void

    .line 117
    :cond_3
    sget-boolean v2, Lcom/local/p5home/PhoneMusic;->searched:Z

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    sget-object v2, Lcom/local/p5home/PhoneMusic;->query:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 118
    sget-object v1, Lcom/local/p5home/PhoneMusic;->query:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/local/p5home/PhoneMusic;->findTitle(Landroid/view/View;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_6

    .line 120
    nop

    .line 121
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_6

    if-eqz v0, :cond_6

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 123
    sput-object v3, Lcom/local/p5home/PhoneMusic;->query:Ljava/lang/String;

    .line 124
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 125
    const-string p0, "P5PhoneMusic"

    const-string v0, "EXACT_RESULT_CLICKED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void

    .line 128
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 129
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_5

    check-cast v0, Landroid/view/View;

    goto :goto_1

    .line 121
    :cond_5
    move-object v0, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_6
    sget-object v0, Lcom/local/p5home/PhoneMusic;->main:Landroid/os/Handler;

    new-instance v1, Lcom/local/p5home/-$$Lambda$PhoneMusic$WDAGnXVwyWGmUEqrbMUv_jeTgrs;

    invoke-direct {v1, p0}, Lcom/local/p5home/-$$Lambda$PhoneMusic$WDAGnXVwyWGmUEqrbMUv_jeTgrs;-><init>(I)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    return-void

    .line 97
    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    const-string v0, "com.luna.music"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.luna.music"

    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    const-class p1, Landroid/hardware/camera2/CameraManager;

    const-string v0, "registerAvailabilityCallback"

    new-instance v1, Lcom/local/p5home/PhoneMusic$1;

    invoke-direct {v1, p0}, Lcom/local/p5home/PhoneMusic$1;-><init>(Lcom/local/p5home/PhoneMusic;)V

    invoke-static {p1, v0, v1}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 55
    const-class p1, Landroid/app/Activity;

    const-string v0, "onCreate"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-class v3, Landroid/os/Bundle;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/local/p5home/PhoneMusic$2;

    invoke-direct {v3, p0}, Lcom/local/p5home/PhoneMusic$2;-><init>(Lcom/local/p5home/PhoneMusic;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {p1, v0, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 61
    const-class p1, Landroid/app/Activity;

    const-string v0, "onNewIntent"

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Landroid/content/Intent;

    aput-object v2, v1, v4

    new-instance v2, Lcom/local/p5home/PhoneMusic$3;

    invoke-direct {v2, p0}, Lcom/local/p5home/PhoneMusic$3;-><init>(Lcom/local/p5home/PhoneMusic;)V

    aput-object v2, v1, v5

    invoke-static {p1, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 67
    const-class p1, Landroid/app/Activity;

    const-string v0, "onResume"

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Lcom/local/p5home/PhoneMusic$4;

    invoke-direct {v2, p0}, Lcom/local/p5home/PhoneMusic$4;-><init>(Lcom/local/p5home/PhoneMusic;)V

    aput-object v2, v1, v4

    invoke-static {p1, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 72
    const-string p1, "P5PhoneMusic"

    const-string v0, "HOOK_INSTALLED"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 36
    :cond_1
    :goto_0
    return-void
.end method
