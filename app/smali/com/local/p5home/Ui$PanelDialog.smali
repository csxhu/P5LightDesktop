.class public final Lcom/local/p5home/Ui$PanelDialog;
.super Landroid/app/Dialog;
.source "Ui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/Ui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PanelDialog"
.end annotation


# instance fields
.field private negative:Landroid/widget/Button;

.field private positive:Landroid/widget/Button;

.field private final surface:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/local/p5home/Ui$PanelBuilder;)V
    .registers 14

    .line 33
    iget-object v0, p1, Lcom/local/p5home/Ui$PanelBuilder;->context:Landroid/content/Context;

    const v1, 0x7f030001

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/local/p5home/Ui$PanelDialog;->requestWindowFeature(I)Z

    iget-object v1, p1, Lcom/local/p5home/Ui$PanelBuilder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v2

    invoke-static {v1}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/local/p5home/Ui$PanelDialog;->surface:Landroid/widget/LinearLayout;

    const/high16 v4, 0x42280000    # 42.0f

    invoke-static {v1, v4}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v1, v6}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v1, v4}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v4

    const/high16 v7, 0x42100000    # 36.0f

    invoke-static {v1, v7}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v3, v5, v6, v4, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget v4, v2, Lcom/local/p5home/Ui$Palette;->card:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v5, p1, Lcom/local/p5home/Ui$PanelBuilder;->icon:Ljava/lang/String;

    const/16 v6, 0x11

    if-eqz v5, :cond_7d

    invoke-static {v1}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v7, p1, Lcom/local/p5home/Ui$PanelBuilder;->icon:Ljava/lang/String;

    iget v8, v2, Lcom/local/p5home/Ui$Palette;->accent:I

    const/16 v9, 0x5c

    invoke-static {v1, v7, v8, v9}, Lcom/local/p5home/Ui;->icon(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/ImageView;

    move-result-object v7

    const/high16 v8, 0x41900000    # 18.0f

    invoke-static {v1, v8}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v1, v8}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v1, v8}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v1, v8}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget v8, v2, Lcom/local/p5home/Ui$Palette;->raised:I

    const/16 v9, 0x30

    invoke-static {v1, v8, v9}, Lcom/local/p5home/Ui;->bg(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v5, 0x1c

    invoke-static {v1, v3, v5}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    :cond_7d
    iget-object v5, p1, Lcom/local/p5home/Ui$PanelBuilder;->title:Ljava/lang/CharSequence;

    const/4 v7, -0x1

    const/4 v8, -0x2

    if-eqz v5, :cond_9f

    iget-object v5, p1, Lcom/local/p5home/Ui$PanelBuilder;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x28

    invoke-static {v1, v5, v9}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x18

    invoke-static {v1, v3, v5}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    :cond_9f
    invoke-static {v1}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    iget v6, v2, Lcom/local/p5home/Ui$Palette;->card:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v6, p1, Lcom/local/p5home/Ui$PanelBuilder;->message:Ljava/lang/CharSequence;

    if-eqz v6, :cond_ce

    iget-object v6, p1, Lcom/local/p5home/Ui$PanelBuilder;->message:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x1e

    iget v10, v2, Lcom/local/p5home/Ui$Palette;->text:I

    invoke-static {v1, v6, v9, v10}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p1, Lcom/local/p5home/Ui$PanelBuilder;->content:Landroid/view/View;

    if-eqz v6, :cond_ce

    const/16 v6, 0x16

    invoke-static {v1, v5, v6}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    :cond_ce
    iget-object v6, p1, Lcom/local/p5home/Ui$PanelBuilder;->content:Landroid/view/View;

    if-eqz v6, :cond_dc

    iget-object v6, p1, Lcom/local/p5home/Ui$PanelBuilder;->content:Landroid/view/View;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_dc
    new-instance v6, Lcom/local/p5home/Ui$BoundedScroll;

    invoke-direct {v6, v1}, Lcom/local/p5home/Ui$BoundedScroll;-><init>(Landroid/content/Context;)V

    iget v2, v2, Lcom/local/p5home/Ui$Palette;->card:I

    invoke-virtual {v6, v2}, Lcom/local/p5home/Ui$BoundedScroll;->setBackgroundColor(I)V

    invoke-virtual {v6, v5}, Lcom/local/p5home/Ui$BoundedScroll;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p1, Lcom/local/p5home/Ui$PanelBuilder;->positive:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    if-nez v2, :cond_fa

    iget-object v2, p1, Lcom/local/p5home/Ui$PanelBuilder;->negative:Ljava/lang/CharSequence;

    if-eqz v2, :cond_153

    :cond_fa
    const/16 v2, 0x20

    invoke-static {v1, v3, v2}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static {v1}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v6, p1, Lcom/local/p5home/Ui$PanelBuilder;->negative:Ljava/lang/CharSequence;

    if-eqz v6, :cond_120

    iget-object v6, p1, Lcom/local/p5home/Ui$PanelBuilder;->negative:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/local/p5home/Ui$PanelDialog$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0, p1}, Lcom/local/p5home/Ui$PanelDialog$$ExternalSyntheticLambda1;-><init>(Lcom/local/p5home/Ui$PanelDialog;Lcom/local/p5home/Ui$PanelBuilder;)V

    invoke-static {v1, v6, v5, v9}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v6

    iput-object v6, p0, Lcom/local/p5home/Ui$PanelDialog;->negative:Landroid/widget/Button;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v5, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_120
    iget-object v6, p1, Lcom/local/p5home/Ui$PanelBuilder;->positive:Ljava/lang/CharSequence;

    if-eqz v6, :cond_14b

    iget-object v6, p1, Lcom/local/p5home/Ui$PanelBuilder;->positive:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/local/p5home/Ui$PanelDialog$$ExternalSyntheticLambda2;

    invoke-direct {v9, p0, p1}, Lcom/local/p5home/Ui$PanelDialog$$ExternalSyntheticLambda2;-><init>(Lcom/local/p5home/Ui$PanelDialog;Lcom/local/p5home/Ui$PanelBuilder;)V

    invoke-static {v1, v6, v0, v9}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/Ui$PanelDialog;->positive:Landroid/widget/Button;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v0, p0, Lcom/local/p5home/Ui$PanelDialog;->negative:Landroid/widget/Button;

    if-eqz v0, :cond_146

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v1, v0}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_146
    iget-object v0, p0, Lcom/local/p5home/Ui$PanelDialog;->positive:Landroid/widget/Button;

    invoke-virtual {v2, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14b
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_153
    invoke-virtual {p0, v3}, Lcom/local/p5home/Ui$PanelDialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, v5}, Lcom/local/p5home/Ui$PanelDialog;->setCanceledOnTouchOutside(Z)V

    invoke-direct {p0}, Lcom/local/p5home/Ui$PanelDialog;->opaque()V

    return-void
.end method

.method private opaque()V
    .registers 6

    .line 35
    invoke-virtual {p0}, Lcom/local/p5home/Ui$PanelDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/local/p5home/Ui$PanelDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v3, v1, Lcom/local/p5home/Ui$Palette;->card:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->setFormat(I)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    const v2, 0x3f3851ec    # 0.72f

    invoke-virtual {v0, v2}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/16 v4, 0x11

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget v4, v1, Lcom/local/p5home/Ui$Palette;->card:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/local/p5home/Ui$PanelDialog;->surface:Landroid/widget/LinearLayout;

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->card:I

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/local/p5home/Ui$PanelDialog;->surface:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/local/p5home/Ui$PanelDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/local/p5home/Ui$PanelDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x44660000    # 920.0f

    invoke-static {v2, v3}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/local/p5home/Ui$PanelDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-static {v3, v4}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .registers 3

    .line 34
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/local/p5home/Ui$PanelDialog;->positive:Landroid/widget/Button;

    goto :goto_8

    :cond_6
    iget-object p1, p0, Lcom/local/p5home/Ui$PanelDialog;->negative:Landroid/widget/Button;

    :goto_8
    return-object p1
.end method

.method synthetic lambda$new$0$com-local-g3home-Ui$PanelDialog(Lcom/local/p5home/Ui$PanelBuilder;)V
    .registers 3

    .line 33
    iget-object v0, p1, Lcom/local/p5home/Ui$PanelBuilder;->no:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_a

    iget-object p1, p1, Lcom/local/p5home/Ui$PanelBuilder;->no:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, -0x2

    invoke-interface {p1, p0, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_a
    invoke-virtual {p0}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$new$1$com-local-g3home-Ui$PanelDialog(Lcom/local/p5home/Ui$PanelBuilder;)V
    .registers 3

    .line 33
    iget-object v0, p1, Lcom/local/p5home/Ui$PanelBuilder;->yes:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_a

    iget-object p1, p1, Lcom/local/p5home/Ui$PanelBuilder;->yes:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, -0x1

    invoke-interface {p1, p0, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_a
    invoke-virtual {p0}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$show$2$com-local-g3home-Ui$PanelDialog()V
    .registers 2

    .line 36
    invoke-virtual {p0}, Lcom/local/p5home/Ui$PanelDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/local/p5home/Ui$PanelDialog;->opaque()V

    :cond_9
    return-void
.end method

.method protected onStart()V
    .registers 1

    .line 36
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-direct {p0}, Lcom/local/p5home/Ui$PanelDialog;->opaque()V

    return-void
.end method

.method public show()V
    .registers 3

    .line 36
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-direct {p0}, Lcom/local/p5home/Ui$PanelDialog;->opaque()V

    iget-object v0, p0, Lcom/local/p5home/Ui$PanelDialog;->surface:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/local/p5home/Ui$PanelDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/local/p5home/Ui$PanelDialog$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/Ui$PanelDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
