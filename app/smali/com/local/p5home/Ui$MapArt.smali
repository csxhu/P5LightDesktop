.class public final Lcom/local/p5home/Ui$MapArt;
.super Landroid/view/View;
.source "Ui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/Ui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapArt"
.end annotation


# instance fields
.field final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/local/p5home/Ui$MapArt;->paint:Landroid/graphics/Paint;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/local/p5home/Ui$MapArt;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18

    .line 42
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/Ui$MapArt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/Ui$MapArt;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/Ui$MapArt;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x440c0000    # 560.0f

    div-float/2addr v3, v4

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v2, v0, Lcom/local/p5home/Ui$MapArt;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lcom/local/p5home/Ui$MapArt;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Lcom/local/p5home/Ui$MapArt;->paint:Landroid/graphics/Paint;

    iget-boolean v3, v1, Lcom/local/p5home/Ui$Palette;->dark:Z

    if-eqz v3, :cond_3a

    const v3, -0xc4b7a5

    goto :goto_3d

    :cond_3a
    const v3, -0x2f2418

    :goto_3d
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_42
    const/16 v4, 0x8

    if-ge v3, v4, :cond_77

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    mul-int/lit8 v5, v3, 0x6e

    add-int/lit16 v5, v5, 0x12c

    int-to-float v5, v5

    const/high16 v6, -0x3db80000    # -50.0f

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    mul-int/lit8 v5, v3, 0x69

    add-int/lit16 v5, v5, 0xdc

    int-to-float v9, v5

    const/high16 v10, 0x43340000    # 180.0f

    mul-int/lit8 v5, v3, 0x41

    add-int/lit16 v5, v5, 0x1f4

    int-to-float v11, v5

    const/high16 v12, 0x43960000    # 300.0f

    mul-int/lit8 v5, v3, 0x5f

    add-int/lit16 v5, v5, 0x15e

    int-to-float v13, v5

    const v14, 0x44228000    # 650.0f

    move-object v8, v4

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lcom/local/p5home/Ui$MapArt;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_77
    :goto_77
    const/4 v3, 0x7

    if-ge v2, v3, :cond_a5

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    mul-int/lit8 v4, v2, 0x69

    add-int/lit8 v5, v4, -0x3c

    int-to-float v5, v5

    const/high16 v6, 0x43820000    # 260.0f

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v9, 0x44110000    # 580.0f

    mul-int/lit8 v5, v2, 0x41

    int-to-float v10, v5

    const/high16 v11, 0x442a0000    # 680.0f

    add-int/lit8 v4, v4, 0x64

    int-to-float v12, v4

    const v13, 0x44898000    # 1100.0f

    add-int/lit16 v5, v5, 0x8c

    int-to-float v14, v5

    move-object v8, v3

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v4, v0, Lcom/local/p5home/Ui$MapArt;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    :cond_a5
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    const/high16 v3, 0x44480000    # 800.0f

    const/high16 v4, -0x3e100000    # -30.0f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const v9, 0x44228000    # 650.0f

    const/high16 v10, 0x42f00000    # 120.0f

    const v11, 0x44778000    # 990.0f

    const/high16 v12, 0x43480000    # 200.0f

    const/high16 v13, 0x44250000    # 660.0f

    const v14, 0x44138000    # 590.0f

    move-object v8, v2

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v3, v0, Lcom/local/p5home/Ui$MapArt;->paint:Landroid/graphics/Paint;

    iget-boolean v4, v1, Lcom/local/p5home/Ui$Palette;->dark:Z

    if-eqz v4, :cond_ce

    const v4, -0xcab18d

    goto :goto_d1

    :cond_ce
    const v4, -0x3f2911

    :goto_d1
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/local/p5home/Ui$MapArt;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, v0, Lcom/local/p5home/Ui$MapArt;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v3, v0, Lcom/local/p5home/Ui$MapArt;->paint:Landroid/graphics/Paint;

    iget-boolean v4, v1, Lcom/local/p5home/Ui$Palette;->dark:Z

    if-eqz v4, :cond_ea

    const v4, -0xaf6501

    goto :goto_ed

    :cond_ea
    const v4, -0x94642d

    :goto_ed
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/local/p5home/Ui$MapArt;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x41100000    # 9.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, v0, Lcom/local/p5home/Ui$MapArt;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/local/p5home/Ui$MapArt;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lcom/local/p5home/Ui$MapArt;->paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/LinearGradient;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x447a0000    # 1000.0f

    const/4 v12, 0x0

    iget v4, v1, Lcom/local/p5home/Ui$Palette;->card:I

    iget v1, v1, Lcom/local/p5home/Ui$Palette;->card:I

    const v5, 0xffffff

    and-int/2addr v1, v5

    filled-new-array {v4, v1}, [I

    move-result-object v13

    const/4 v1, 0x2

    new-array v14, v1, [F

    fill-array-data v14, :array_13e

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x447a0000    # 1000.0f

    const/high16 v5, 0x440c0000    # 560.0f

    iget-object v6, v0, Lcom/local/p5home/Ui$MapArt;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/local/p5home/Ui$MapArt;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :array_13e
    .array-data 4
        0x3e8f5c29    # 0.28f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 42
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/local/p5home/Ui;->decorativeSize(II)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Lcom/local/p5home/Ui;->decorativeSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/local/p5home/Ui$MapArt;->setMeasuredDimension(II)V

    return-void
.end method
