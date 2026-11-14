.class public final Lcom/local/p5home/Ui;
.super Ljava/lang/Object;
.source "Ui.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/Ui$Palette;,
        Lcom/local/p5home/Ui$Symbol;,
        Lcom/local/p5home/Ui$PanelBuilder;,
        Lcom/local/p5home/Ui$PanelDialog;,
        Lcom/local/p5home/Ui$MapArt;,
        Lcom/local/p5home/Ui$Toggle;,
        Lcom/local/p5home/Ui$BoundedScroll;
    }
.end annotation


# static fields
.field public static AMBER:I = 0x0

.field public static BG:I = 0x0

.field public static BLUE:I = 0x0

.field public static CARD:I = 0x0

.field public static final DARK:I = 0x2

.field private static final DAY:Lcom/local/p5home/Ui$Palette;

.field public static GREEN:I = 0x0

.field public static final LIGHT:I = 0x1

.field public static MUTED:I = 0x0

.field private static final NIGHT:Lcom/local/p5home/Ui$Palette;

.field public static final SYSTEM:I = 0x0

.field public static TEXT:I = 0x0

.field public static final THEME_ACTION:Ljava/lang/String; = "com.local.p5home.APPEARANCE_CHANGED"


# direct methods
.method static constructor <clinit>()V
    .registers 23

    .line 7
    new-instance v11, Lcom/local/p5home/Ui$Palette;

    const/4 v1, 0x1

    const v2, -0xe2dbd3

    const v3, -0xd0c9bd

    const v4, -0xcac1b5

    const v5, -0xd0c0b

    const v6, -0x463d2f

    const v7, -0xafa290

    const v8, -0xaf6501

    const v9, -0xf0eae0

    const/16 v10, -0x3477

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/local/p5home/Ui$Palette;-><init>(ZIIIIIIIII)V

    sput-object v11, Lcom/local/p5home/Ui;->NIGHT:Lcom/local/p5home/Ui$Palette;

    new-instance v0, Lcom/local/p5home/Ui$Palette;

    const/4 v13, 0x0

    const v14, -0x120d09

    const/4 v15, -0x1

    const v16, -0x19140c

    const v17, -0xf0eae0

    const v18, -0xa7a292

    const v19, -0x2f2a21

    const v20, -0xff9412

    const/16 v21, -0x1

    const v22, -0x6a9fee

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/local/p5home/Ui$Palette;-><init>(ZIIIIIIIII)V

    sput-object v0, Lcom/local/p5home/Ui;->DAY:Lcom/local/p5home/Ui$Palette;

    .line 8
    iget v0, v11, Lcom/local/p5home/Ui$Palette;->bg:I

    sput v0, Lcom/local/p5home/Ui;->BG:I

    iget v0, v11, Lcom/local/p5home/Ui$Palette;->card:I

    sput v0, Lcom/local/p5home/Ui;->CARD:I

    iget v0, v11, Lcom/local/p5home/Ui$Palette;->text:I

    sput v0, Lcom/local/p5home/Ui;->TEXT:I

    iget v0, v11, Lcom/local/p5home/Ui$Palette;->muted:I

    sput v0, Lcom/local/p5home/Ui;->MUTED:I

    iget v0, v11, Lcom/local/p5home/Ui$Palette;->accent:I

    sput v0, Lcom/local/p5home/Ui;->BLUE:I

    iget v0, v11, Lcom/local/p5home/Ui$Palette;->accent:I

    sput v0, Lcom/local/p5home/Ui;->GREEN:I

    iget v0, v11, Lcom/local/p5home/Ui$Palette;->warning:I

    sput v0, Lcom/local/p5home/Ui;->AMBER:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bg(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;
    .registers 4

    .line 19
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float p1, p2

    invoke-static {p0, p1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public static bridge(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 4

    .line 47
    :try_start_0
    invoke-static {p0}, Lcom/local/p5home/BridgeStore;->status(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_b

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_b} :catch_c

    :cond_b
    return-object p0

    :catch_c
    move-exception p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u72b6\u6001\u8bfb\u53d6\u672a\u5b8c\u6210\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "lastError"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;
    .registers 9

    .line 24
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v0

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_11

    iget p1, v0, Lcom/local/p5home/Ui$Palette;->accentText:I

    goto :goto_13

    :cond_11
    iget p1, v0, Lcom/local/p5home/Ui$Palette;->text:I

    :goto_13
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 p1, 0x42000000    # 32.0f

    invoke-static {p0}, Lcom/local/p5home/Ui;->scale(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    const-string p1, "sans-serif-medium"

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    const/high16 p1, 0x42c00000    # 96.0f

    invoke-static {p0, p1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-static {p0, p1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setMinimumHeight(I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinWidth(I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinimumWidth(I)V

    const/high16 p1, 0x41c00000    # 24.0f

    invoke-static {p0, p1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {p0, v3}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, p1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p0, v3}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v2, v4, p1, v3}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    iget-boolean v2, v0, Lcom/local/p5home/Ui$Palette;->dark:Z

    if-eqz v2, :cond_64

    const v2, 0x33509aff

    goto :goto_67

    :cond_64
    const v2, 0x223b99ff

    :goto_67
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz p2, :cond_70

    iget p2, v0, Lcom/local/p5home/Ui$Palette;->accent:I

    goto :goto_72

    :cond_70
    iget p2, v0, Lcom/local/p5home/Ui$Palette;->raised:I

    :goto_72
    const/16 v0, 0x16

    invoke-static {p0, p2, v0}, Lcom/local/p5home/Ui;->outline(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {p1, v2, p0, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p0, Lcom/local/p5home/Ui$$ExternalSyntheticLambda1;

    invoke-direct {p0, p3}, Lcom/local/p5home/Ui$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public static varargs buttons(Landroid/content/Context;Landroid/widget/LinearLayout;[Landroid/widget/Button;)V
    .registers 11

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v1, 0x258

    const/4 v2, 0x0

    if-ge v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    if-eqz v0, :cond_19

    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    goto :goto_1d

    :cond_19
    invoke-static {p0}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    :goto_1d
    move v3, v2

    :goto_1e
    array-length v4, p2

    const/4 v5, -0x2

    const/4 v6, -0x1

    if-ge v3, v4, :cond_4f

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_28

    goto :goto_29

    :cond_28
    move v6, v2

    :goto_29
    if-eqz v0, :cond_2d

    const/4 v7, 0x0

    goto :goto_2f

    :cond_2d
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_2f
    invoke-direct {v4, v6, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-lez v3, :cond_47

    if-eqz v0, :cond_3f

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {p0, v5}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_47

    :cond_3f
    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {p0, v5}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_47
    :goto_47
    aget-object v5, p2, v3

    invoke-virtual {v1, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_4f
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p2, 0x10

    invoke-static {p0, p1, p2}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    return-void
.end method

.method public static card(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 6

    .line 23
    invoke-static {p0}, Lcom/local/p5home/Ui;->panel(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    const/16 v1, 0x22

    invoke-static {p0, p2, v1}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 p2, 0x10

    invoke-static {p0, v0, p2}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    :cond_1a
    if-eqz p3, :cond_36

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_36

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object p2

    iget p2, p2, Lcom/local/p5home/Ui$Palette;->muted:I

    const/16 v1, 0x1b

    invoke-static {p0, p3, v1, p2}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 p2, 0x14

    invoke-static {p0, v0, p2}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    :cond_36
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p2, 0x18

    invoke-static {p0, p1, p2}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    return-object v0
.end method

.method public static col(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 2

    .line 18
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-object v0
.end method

.method public static colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;
    .registers 2

    .line 12
    invoke-static {p0}, Lcom/local/p5home/Ui;->themeMode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-static {v0, p0}, Lcom/local/p5home/Ui;->useDark(II)Z

    move-result p0

    if-eqz p0, :cond_17

    sget-object p0, Lcom/local/p5home/Ui;->NIGHT:Lcom/local/p5home/Ui$Palette;

    goto :goto_19

    :cond_17
    sget-object p0, Lcom/local/p5home/Ui;->DAY:Lcom/local/p5home/Ui$Palette;

    :goto_19
    return-object p0
.end method

.method static decorativeSize(II)I
    .registers 3

    .line 40
    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_5

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    return p1
.end method

.method public static dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;
    .registers 2

    .line 30
    new-instance v0, Lcom/local/p5home/Ui$PanelBuilder;

    invoke-direct {v0, p0}, Lcom/local/p5home/Ui$PanelBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static dp(Landroid/content/Context;F)I
    .registers 2

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static error(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 45
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eq v0, p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_1

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    :cond_1e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :cond_26
    return-object v0
.end method

.method public static error(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3

    .line 29
    if-nez p1, :cond_5

    const-string v0, ""

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_14

    :cond_12
    const/4 p1, 0x0

    goto :goto_16

    :cond_14
    :goto_14
    const/16 p1, 0x8

    :goto_16
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public static field(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/EditText;)V
    .registers 6

    .line 29
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v0

    iget v0, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    const/16 v1, 0x1b

    invoke-static {p0, p2, v1, v0}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 p2, 0xc

    invoke-static {p0, p1, p2}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p2, 0x18

    invoke-static {p0, p1, p2}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    return-void
.end method

.method public static gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V
    .registers 5

    .line 21
    new-instance v0, Landroid/widget/Space;

    invoke-direct {v0, p0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p2, p2

    invoke-static {p0, p2}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result p0

    const/4 p2, 0x1

    invoke-direct {v1, p2, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static icon(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/ImageView;
    .registers 6

    .line 26
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/local/p5home/Ui$Symbol;

    invoke-direct {v1, p1, p2}, Lcom/local/p5home/Ui$Symbol;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p2, p3

    invoke-static {p0, p2}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result p3

    invoke-static {p0, p2}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result p0

    invoke-direct {p1, p3, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static iconButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/ImageView;
    .registers 8

    .line 27
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v0

    iget v0, v0, Lcom/local/p5home/Ui$Palette;->text:I

    const/16 v1, 0x58

    invoke-static {p0, p1, v0, v1}, Lcom/local/p5home/Ui;->icon(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x41b80000    # 23.0f

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v0

    iget v0, v0, Lcom/local/p5home/Ui$Palette;->raised:I

    const/16 v1, 0x2c

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->bg(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance p0, Lcom/local/p5home/Ui$$ExternalSyntheticLambda0;

    invoke-direct {p0, p3}, Lcom/local/p5home/Ui$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public static input(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/EditText;
    .registers 8

    .line 28
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v0

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget v2, v0, Lcom/local/p5home/Ui$Palette;->text:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {p0}, Lcom/local/p5home/Ui;->scale(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextSize(F)V

    iget v2, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_24

    const-string p2, ""

    :cond_24
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    xor-int/lit8 p1, p3, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/high16 p1, 0x41b00000    # 22.0f

    invoke-static {p0, p1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result p2

    invoke-static {p0, p1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result p3

    invoke-static {p0, p1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, p1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v1, p2, p3, v2, p1}, Landroid/widget/EditText;->setPadding(IIII)V

    const/high16 p1, 0x42c00000    # 96.0f

    invoke-static {p0, p1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setMinHeight(I)V

    iget p1, v0, Lcom/local/p5home/Ui$Palette;->raised:I

    const/16 p2, 0x12

    invoke-static {p0, p1, p2}, Lcom/local/p5home/Ui;->outline(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public static install(Landroid/app/Activity;)V
    .registers 5

    .line 16
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v0

    iget v1, v0, Lcom/local/p5home/Ui$Palette;->bg:I

    sput v1, Lcom/local/p5home/Ui;->BG:I

    iget v1, v0, Lcom/local/p5home/Ui$Palette;->card:I

    sput v1, Lcom/local/p5home/Ui;->CARD:I

    iget v1, v0, Lcom/local/p5home/Ui$Palette;->text:I

    sput v1, Lcom/local/p5home/Ui;->TEXT:I

    iget v1, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    sput v1, Lcom/local/p5home/Ui;->MUTED:I

    iget v1, v0, Lcom/local/p5home/Ui$Palette;->accent:I

    sput v1, Lcom/local/p5home/Ui;->GREEN:I

    sput v1, Lcom/local/p5home/Ui;->BLUE:I

    iget v1, v0, Lcom/local/p5home/Ui$Palette;->warning:I

    sput v1, Lcom/local/p5home/Ui;->AMBER:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v3, v0, Lcom/local/p5home/Ui$Palette;->bg:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    iget v0, v0, Lcom/local/p5home/Ui$Palette;->bg:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic lambda$button$0(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 24
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$iconButton$1(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 27
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static launch(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 4

    .line 45
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static limited(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 45
    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_c

    goto :goto_24

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\u2026"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_24
    return-object p0
.end method

.method public static line(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 5

    .line 21
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v2}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result p0

    const/4 v2, 0x1

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v2, -0x1

    invoke-direct {v1, v2, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static outline(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;
    .registers 4

    .line 19
    invoke-static {p0, p1, p2}, Lcom/local/p5home/Ui;->bg(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p0, p2}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result p2

    const/4 v0, 0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object p0

    iget p0, p0, Lcom/local/p5home/Ui$Palette;->line:I

    invoke-virtual {p1, p2, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object p1
.end method

.method public static panel(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 6

    .line 22
    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {p0, v1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {p0, v3}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v3}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->card:I

    const/16 v2, 0x1c

    invoke-static {p0, v1, v2}, Lcom/local/p5home/Ui;->outline(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "g3_ui_appearance"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static requestLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 46
    if-eqz p0, :cond_c3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_c3

    :cond_a
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_c6

    :cond_17
    goto/16 :goto_a3

    :sswitch_19
    const-string v1, "FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0xb

    goto/16 :goto_a4

    :sswitch_25
    const-string v1, "ASKING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x4

    goto/16 :goto_a4

    :sswitch_30
    const-string v1, "REQUESTING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x2

    goto/16 :goto_a4

    :sswitch_3b
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0xc

    goto :goto_a4

    :sswitch_46
    const-string v1, "IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    goto :goto_a4

    :sswitch_50
    const-string v1, "TTS_DISPATCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x9

    goto :goto_a4

    :sswitch_5b
    const-string v1, "TESTING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x5

    goto :goto_a4

    :sswitch_65
    const-string v1, "DISPATCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0xa

    goto :goto_a4

    :sswitch_70
    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x6

    goto :goto_a4

    :sswitch_7a
    const-string v1, "GENERATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x8

    goto :goto_a4

    :sswitch_85
    const-string v1, "QUEUED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_a4

    :sswitch_8f
    const-string v1, "RUNNING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x3

    goto :goto_a4

    :sswitch_99
    const-string v1, "ANSWER_READY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x7

    goto :goto_a4

    :goto_a3
    const/4 v0, -0x1

    :goto_a4
    packed-switch v0, :pswitch_data_fc

    const/16 v0, 0x64

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->limited(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_ae
    const-string p0, "\u8bf7\u6c42\u672a\u5b8c\u6210"

    return-object p0

    :pswitch_b1
    const-string p0, "\u5df2\u4ea4\u7ed9\u539f\u8f66\u8bed\u97f3\u5f15\u64ce"

    return-object p0

    :pswitch_b4
    const-string p0, "\u63a5\u53e3\u5df2\u8fd4\u56de\uff1b\u64ad\u653e\u72b6\u6001\u4ee5\u5b9e\u9645\u56de\u6267\u4e3a\u51c6"

    return-object p0

    :pswitch_b7
    const-string p0, "\u6b63\u5728\u6d4b\u8bd5\u8fde\u63a5"

    return-object p0

    :pswitch_ba
    const-string p0, "\u6b63\u5728\u7b49\u5f85\u63a5\u53e3\u8fd4\u56de"

    return-object p0

    :pswitch_bd
    const-string p0, "\u8bf7\u6c42\u5df2\u6392\u961f"

    return-object p0

    :pswitch_c0
    const-string p0, "\u7b49\u5f85\u8bf7\u6c42"

    return-object p0

    :cond_c3
    :goto_c3
    const-string p0, "\u6682\u65e0\u8bf7\u6c42"

    return-object p0

    :sswitch_data_c6
    .sparse-switch
        -0x7ef4ce3e -> :sswitch_99
        -0x78c55e61 -> :sswitch_8f
        -0x70f9028d -> :sswitch_85
        -0x48cd5691 -> :sswitch_7a
        -0x447f341d -> :sswitch_70
        -0x2b5bf967 -> :sswitch_65
        -0x29fd4210 -> :sswitch_5b
        -0xc20bb7b -> :sswitch_50
        0x2237d4 -> :sswitch_46
        0x3f2d9e8 -> :sswitch_3b
        0x1f2052f3 -> :sswitch_30
        0x739fd2c9 -> :sswitch_25
        0x7b29883d -> :sswitch_19
    .end sparse-switch

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_ba
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b1
        :pswitch_b1
        :pswitch_ae
        :pswitch_ae
    .end packed-switch
.end method

.method public static row(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 2

    .line 18
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-object v0
.end method

.method public static s(Landroid/content/Context;F)I
    .registers 3

    .line 17
    invoke-static {p0}, Lcom/local/p5home/Ui;->scale(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr p1, v0

    invoke-static {p0, p1}, Lcom/local/p5home/Ui;->dp(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public static scale(Landroid/content/Context;)F
    .registers 2

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float p0, p0

    const/high16 v0, 0x44870000    # 1080.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const v0, 0x3f3851ec    # 0.72f

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static setThemeMode(Landroid/content/Context;I)V
    .registers 4

    .line 15
    if-ltz p1, :cond_29

    const/4 v0, 0x2

    if-gt p1, v0, :cond_29

    invoke-static {p0}, Lcom/local/p5home/Ui;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appearance_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.local.p5home.APPEARANCE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u672a\u77e5\u5916\u89c2\u6a21\u5f0f"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_27

    :cond_d
    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p0

    if-nez p2, :cond_19

    const-string p2, "\u672a\u8fd4\u56de\u8be6\u7ec6\u539f\u56e0"

    :cond_19
    invoke-virtual {p0, p2}, Lcom/local/p5home/Ui$PanelBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p0

    const-string p1, "\u77e5\u9053\u4e86"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/local/p5home/Ui$PanelBuilder;->show()Lcom/local/p5home/Ui$PanelDialog;

    :cond_27
    :goto_27
    return-void
.end method

.method public static side(Landroid/content/Context;Landroid/widget/LinearLayout;I)V
    .registers 5

    .line 21
    new-instance v0, Landroid/widget/Space;

    invoke-direct {v0, p0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p2, p2

    invoke-static {p0, p2}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result p0

    const/4 p2, 0x1

    invoke-direct {v1, p0, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;
    .registers 5

    .line 20
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-static {p0}, Lcom/local/p5home/Ui;->scale(Landroid/content/Context;)F

    move-result p2

    mul-float/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p1, "tnum"

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    const/high16 p1, 0x40a00000    # 5.0f

    invoke-static {p0, p1}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    return-object v0
.end method

.method public static themeLabel(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 14
    invoke-static {p0}, Lcom/local/p5home/Ui;->themeMode(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    const-string p0, "\u6d45\u8272"

    goto :goto_12

    :cond_a
    const/4 v0, 0x2

    if-ne p0, v0, :cond_10

    const-string p0, "\u6df1\u8272"

    goto :goto_12

    :cond_10
    const-string p0, "\u8ddf\u968f\u7cfb\u7edf"

    :goto_12
    return-object p0
.end method

.method public static themeMode(Landroid/content/Context;)I
    .registers 3

    .line 10
    invoke-static {p0}, Lcom/local/p5home/Ui;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "appearance_mode"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_11

    const/4 v0, 0x2

    if-gt p0, v0, :cond_11

    move v1, p0

    :cond_11
    return v1
.end method

.method public static themeSignature(Landroid/content/Context;)I
    .registers 2

    .line 13
    invoke-static {p0}, Lcom/local/p5home/Ui;->themeMode(Landroid/content/Context;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    or-int/2addr p0, v0

    return p0
.end method

.method public static title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 4

    .line 20
    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v0

    iget v0, v0, Lcom/local/p5home/Ui$Palette;->text:I

    invoke-static {p0, p1, p2, v0}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object p0

    const-string p1, "sans-serif"

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object p0
.end method

.method public static useDark(II)Z
    .registers 3

    .line 11
    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    if-nez p0, :cond_c

    and-int/lit8 p0, p1, 0x30

    const/16 p1, 0x20

    if-ne p0, p1, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x1

    :goto_f
    return p0
.end method
