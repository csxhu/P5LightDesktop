.class public final Lcom/local/p5home/Ui$Toggle;
.super Landroid/widget/CompoundButton;
.source "Ui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/Ui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Toggle"
.end annotation


# instance fields
.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/local/p5home/Ui$Toggle;->paint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/local/p5home/Ui$Toggle;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/local/p5home/Ui$Toggle;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Lcom/local/p5home/Ui$Toggle;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/local/p5home/Ui$Toggle;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 1

    .line 39
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/local/p5home/Ui$Toggle;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 20

    .line 39
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/Ui$Toggle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/Ui$Toggle;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/Ui$Toggle;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/Ui$Toggle;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v5, v6}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/Ui$Toggle;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x42580000    # 54.0f

    invoke-static {v6, v7}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lcom/local/p5home/Ui$Toggle;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/Ui$Toggle;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_39

    iget v8, v1, Lcom/local/p5home/Ui$Palette;->accent:I

    goto :goto_3b

    :cond_39
    iget v8, v1, Lcom/local/p5home/Ui$Palette;->line:I

    :goto_3b
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, v0, Lcom/local/p5home/Ui$Toggle;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/Ui$Toggle;->isEnabled()Z

    move-result v8

    const/16 v9, 0xff

    if-eqz v8, :cond_4a

    move v8, v9

    goto :goto_4c

    :cond_4a
    const/16 v8, 0x6e

    :goto_4c
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    div-float v7, v5, v3

    sub-float v11, v2, v7

    div-float v16, v6, v3

    sub-float v12, v4, v16

    add-float v13, v2, v7

    add-float v14, v4, v16

    iget-object v7, v0, Lcom/local/p5home/Ui$Toggle;->paint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move/from16 v15, v16

    move-object/from16 v17, v7

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v7, v0, Lcom/local/p5home/Ui$Toggle;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/Ui$Toggle;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_71

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->accentText:I

    goto :goto_73

    :cond_71
    iget v1, v1, Lcom/local/p5home/Ui$Palette;->card:I

    :goto_73
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/local/p5home/Ui$Toggle;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/Ui$Toggle;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_7f

    goto :goto_81

    :cond_7f
    const/16 v9, 0x96

    :goto_81
    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/Ui$Toggle;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8c

    const/4 v1, 0x1

    goto :goto_8d

    :cond_8c
    const/4 v1, -0x1

    :goto_8d
    int-to-float v1, v1

    sub-float/2addr v5, v6

    mul-float/2addr v1, v5

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/Ui$Toggle;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-static {v1, v3}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v0, Lcom/local/p5home/Ui$Toggle;->paint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual {v5, v2, v4, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 39
    invoke-virtual {p0}, Lcom/local/p5home/Ui$Toggle;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42fc0000    # 126.0f

    invoke-static {p1, p2}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0}, Lcom/local/p5home/Ui$Toggle;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x42b80000    # 92.0f

    invoke-static {p2, v0}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/local/p5home/Ui$Toggle;->setMeasuredDimension(II)V

    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    .line 39
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/local/p5home/Ui$Toggle;->invalidate()V

    return-void
.end method
