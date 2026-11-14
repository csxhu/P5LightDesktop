.class final Lcom/local/p5home/TopBarBinding;
.super Ljava/lang/Object;
.source "TopBarBinding.java"


# instance fields
.field applied:Landroid/graphics/drawable/Drawable;

.field final bottom:I

.field final click:Landroid/view/View$OnClickListener;

.field final clickable:Z

.field final container:Landroid/view/View;

.field final description:Ljava/lang/CharSequence;

.field drawable:Landroid/graphics/drawable/Drawable;

.field final icon:Landroid/widget/ImageView;

.field final index:I

.field installed:Z

.field final left:I

.field final longClick:Landroid/view/View$OnLongClickListener;

.field final longClickable:Z

.field final right:I

.field final scale:Landroid/widget/ImageView$ScaleType;

.field final top:I


# direct methods
.method constructor <init>(ILandroid/view/View;Landroid/widget/ImageView;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .registers 6

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/local/p5home/TopBarBinding;->index:I

    iput-object p2, p0, Lcom/local/p5home/TopBarBinding;->container:Landroid/view/View;

    iput-object p3, p0, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/local/p5home/TopBarBinding;->click:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lcom/local/p5home/TopBarBinding;->longClick:Landroid/view/View$OnLongClickListener;

    .line 17
    invoke-virtual {p2}, Landroid/view/View;->isClickable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/local/p5home/TopBarBinding;->clickable:Z

    invoke-virtual {p2}, Landroid/view/View;->isLongClickable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/local/p5home/TopBarBinding;->longClickable:Z

    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TopBarBinding;->description:Ljava/lang/CharSequence;

    .line 18
    invoke-virtual {p3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TopBarBinding;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TopBarBinding;->scale:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/local/p5home/TopBarBinding;->left:I

    invoke-virtual {p3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/local/p5home/TopBarBinding;->top:I

    invoke-virtual {p3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p1

    iput p1, p0, Lcom/local/p5home/TopBarBinding;->right:I

    invoke-virtual {p3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcom/local/p5home/TopBarBinding;->bottom:I

    .line 19
    return-void
.end method

.method private rememberOem()V
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/local/p5home/TopBarBinding;->applied:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    if-eq v0, v1, :cond_12

    :cond_c
    instance-of v1, v0, Lcom/local/p5home/TopBarIcon;

    if-nez v1, :cond_12

    iput-object v0, p0, Lcom/local/p5home/TopBarBinding;->drawable:Landroid/graphics/drawable/Drawable;

    .line 44
    :cond_12
    return-void
.end method


# virtual methods
.method installIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 22
    if-eqz p1, :cond_14

    .line 25
    invoke-direct {p0}, Lcom/local/p5home/TopBarBinding;->rememberOem()V

    iput-object p1, p0, Lcom/local/p5home/TopBarBinding;->applied:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 26
    return-void

    .line 22
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing custom icon"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method repair()Z
    .registers 7

    .line 30
    iget-boolean v0, p0, Lcom/local/p5home/TopBarBinding;->installed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/local/p5home/TopBarBinding;->applied:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_b

    goto/16 :goto_7b

    .line 31
    :cond_b
    iget-object v0, p0, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/local/p5home/TopBarBinding;->applied:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_18

    move v0, v3

    goto :goto_19

    :cond_18
    move v0, v1

    .line 32
    :goto_19
    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/local/p5home/TopBarBinding;->rememberOem()V

    iget-object v2, p0, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/local/p5home/TopBarBinding;->applied:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    :cond_25
    iget-object v2, p0, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 34
    iget-object v4, p0, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 37
    iget-object v4, p0, Lcom/local/p5home/TopBarBinding;->applied:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-lt v2, v4, :cond_69

    iget-object v2, p0, Lcom/local/p5home/TopBarBinding;->applied:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ge v1, v2, :cond_66

    goto :goto_69

    :cond_66
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_6b

    :cond_69
    :goto_69
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 38
    :goto_6b
    iget-object v2, p0, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    if-eq v2, v1, :cond_79

    iget-object v0, p0, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_7a

    :cond_79
    move v3, v0

    .line 39
    :goto_7a
    return v3

    .line 30
    :cond_7b
    :goto_7b
    return v1
.end method

.method restore()V
    .registers 6

    .line 46
    iget-boolean v0, p0, Lcom/local/p5home/TopBarBinding;->installed:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/local/p5home/TopBarBinding;->applied:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_9

    return-void

    .line 50
    :cond_9
    iget-object v0, p0, Lcom/local/p5home/TopBarBinding;->applied:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/local/p5home/TopBarBinding;->rememberOem()V

    iget-object v0, p0, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/local/p5home/TopBarBinding;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/local/p5home/TopBarBinding;->scale:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/local/p5home/TopBarBinding;->left:I

    iget v2, p0, Lcom/local/p5home/TopBarBinding;->top:I

    iget v3, p0, Lcom/local/p5home/TopBarBinding;->right:I

    iget v4, p0, Lcom/local/p5home/TopBarBinding;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 51
    :cond_2b
    iget-object v0, p0, Lcom/local/p5home/TopBarBinding;->container:Landroid/view/View;

    iget-object v1, p0, Lcom/local/p5home/TopBarBinding;->click:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/local/p5home/TopBarBinding;->container:Landroid/view/View;

    iget-object v1, p0, Lcom/local/p5home/TopBarBinding;->longClick:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/local/p5home/TopBarBinding;->container:Landroid/view/View;

    iget-boolean v1, p0, Lcom/local/p5home/TopBarBinding;->clickable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/local/p5home/TopBarBinding;->container:Landroid/view/View;

    iget-boolean v1, p0, Lcom/local/p5home/TopBarBinding;->longClickable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/local/p5home/TopBarBinding;->container:Landroid/view/View;

    iget-object v1, p0, Lcom/local/p5home/TopBarBinding;->description:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/TopBarBinding;->installed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/local/p5home/TopBarBinding;->applied:Landroid/graphics/drawable/Drawable;

    .line 54
    return-void
.end method

.method side(F)I
    .registers 13

    .line 20
    iget-object v0, p0, Lcom/local/p5home/TopBarBinding;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_b
    iget-object v2, p0, Lcom/local/p5home/TopBarBinding;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_14
    iget-object v2, p0, Lcom/local/p5home/TopBarBinding;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2e

    if-gtz v0, :cond_22

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :cond_22
    if-gtz v1, :cond_2e

    iget-object v1, p0, Lcom/local/p5home/TopBarBinding;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    :cond_2e
    move v8, v0

    move v9, v1

    iget-object v0, p0, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/local/p5home/TopBarBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/local/p5home/TopBarBinding;->left:I

    iget v5, p0, Lcom/local/p5home/TopBarBinding;->top:I

    iget v6, p0, Lcom/local/p5home/TopBarBinding;->right:I

    iget v7, p0, Lcom/local/p5home/TopBarBinding;->bottom:I

    move v10, p1

    invoke-static/range {v2 .. v10}, Lcom/local/p5home/TopBarBounds;->side(IIIIIIIIF)I

    move-result p1

    return p1
.end method
