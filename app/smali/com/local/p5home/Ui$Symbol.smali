.class public final Lcom/local/p5home/Ui$Symbol;
.super Landroid/graphics/drawable/Drawable;
.source "Ui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/Ui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Symbol"
.end annotation


# instance fields
.field private final color:I

.field private final kind:Ljava/lang/String;

.field private final p:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    .line 43
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/local/p5home/Ui$Symbol;->kind:Ljava/lang/String;

    iput p2, p0, Lcom/local/p5home/Ui$Symbol;->color:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 18

    .line 43
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/Ui$Symbol;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v10, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42800000    # 64.0f

    div-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v10, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    iget v2, v0, Lcom/local/p5home/Ui$Symbol;->color:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    const/high16 v2, 0x40900000    # 4.5f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v1, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    iget-object v1, v0, Lcom/local/p5home/Ui$Symbol;->kind:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_342

    :cond_56
    goto/16 :goto_d6

    :sswitch_58
    const-string v2, "chevron"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/4 v1, 0x1

    goto/16 :goto_d7

    :sswitch_63
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/4 v1, 0x5

    goto/16 :goto_d7

    :sswitch_6e
    const-string v2, "music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/4 v1, 0x4

    goto :goto_d7

    :sswitch_78
    const-string v2, "cloud"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/16 v1, 0xb

    goto :goto_d7

    :sswitch_83
    const-string v2, "play"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/16 v1, 0x9

    goto :goto_d7

    :sswitch_8e
    const-string v2, "moon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/16 v1, 0xa

    goto :goto_d7

    :sswitch_99
    const-string v2, "chat"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/16 v1, 0x8

    goto :goto_d7

    :sswitch_a4
    const-string v2, "back"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/4 v1, 0x0

    goto :goto_d7

    :sswitch_ae
    const-string v2, "apps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/4 v1, 0x3

    goto :goto_d7

    :sswitch_b8
    const-string v2, "nav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/4 v1, 0x2

    goto :goto_d7

    :sswitch_c2
    const-string v2, "mic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/4 v1, 0x7

    goto :goto_d7

    :sswitch_cc
    const-string v2, "car"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/4 v1, 0x6

    goto :goto_d7

    :goto_d6
    const/4 v1, -0x1

    :goto_d7
    const/high16 v12, 0x41b00000    # 22.0f

    const/high16 v13, 0x42040000    # 33.0f

    const/high16 v14, 0x41880000    # 17.0f

    const/high16 v4, 0x42400000    # 48.0f

    const/high16 v5, 0x42240000    # 41.0f

    const/high16 v6, 0x42500000    # 52.0f

    const/high16 v15, 0x41d00000    # 26.0f

    const/high16 v8, 0x42640000    # 57.0f

    const/high16 v9, 0x41a00000    # 20.0f

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v2, 0x42200000    # 40.0f

    const/high16 v7, 0x42000000    # 32.0f

    packed-switch v1, :pswitch_data_374

    const/high16 v1, 0x41500000    # 13.0f

    iget-object v2, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    invoke-virtual {v10, v7, v7, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v8, 0x0

    goto/16 :goto_317

    :pswitch_fc
    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x41c00000    # 24.0f

    const/high16 v4, 0x425c0000    # 55.0f

    const/high16 v5, 0x423c0000    # 47.0f

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v7, 0x41400000    # 12.0f

    iget-object v8, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x42400000    # 48.0f

    const/high16 v5, 0x42240000    # 41.0f

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v7, 0x43340000    # 180.0f

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto/16 :goto_33e

    :pswitch_123
    iget-object v1, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    invoke-virtual {v10, v7, v7, v12, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v11, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v5, 0x41b00000    # 22.0f

    const/high16 v6, 0x41b00000    # 22.0f

    const/high16 v7, 0x42340000    # 45.0f

    const/high16 v8, 0x42340000    # 45.0f

    const/high16 v9, 0x42440000    # 49.0f

    move-object v3, v11

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_311

    :pswitch_13d
    iget-object v1, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x41a80000    # 21.0f

    invoke-virtual {v11, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x424c0000    # 51.0f

    invoke-virtual {v11, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x41a80000    # 21.0f

    invoke-virtual {v11, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_2f5

    :pswitch_155
    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x42600000    # 56.0f

    const/high16 v5, 0x423c0000    # 47.0f

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v7, 0x41400000    # 12.0f

    iget-object v12, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v15, v8

    move-object v8, v12

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x423c0000    # 47.0f

    invoke-virtual {v11, v9, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v11, v13, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    invoke-virtual {v10, v11, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v2, 0x41980000    # 19.0f

    const/high16 v3, 0x41c00000    # 24.0f

    const/high16 v4, 0x422c0000    # 43.0f

    const/high16 v5, 0x41c00000    # 24.0f

    iget-object v6, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v3, 0x42080000    # 34.0f

    const/high16 v4, 0x420c0000    # 35.0f

    const/high16 v5, 0x42080000    # 34.0f

    goto/16 :goto_220

    :pswitch_191
    const/high16 v2, 0x41c80000    # 25.0f

    const/high16 v3, 0x40e00000    # 7.0f

    const/high16 v4, 0x421c0000    # 39.0f

    const/high16 v5, 0x42140000    # 37.0f

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v7, 0x41000000    # 8.0f

    iget-object v8, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x41880000    # 17.0f

    const/high16 v3, 0x41980000    # 19.0f

    const/high16 v4, 0x423c0000    # 47.0f

    const/high16 v5, 0x423c0000    # 47.0f

    const/4 v6, 0x0

    const/high16 v7, 0x43340000    # 180.0f

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v2, 0x42000000    # 32.0f

    const/high16 v3, 0x423c0000    # 47.0f

    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v5, 0x42680000    # 58.0f

    iget-object v6, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x41b80000    # 23.0f

    const/high16 v3, 0x42680000    # 58.0f

    const/high16 v4, 0x42240000    # 41.0f

    goto :goto_220

    :pswitch_1c9
    const/high16 v2, 0x41100000    # 9.0f

    const/high16 v3, 0x41d00000    # 26.0f

    const/high16 v4, 0x425c0000    # 55.0f

    const/high16 v5, 0x423c0000    # 47.0f

    const/high16 v6, 0x40e00000    # 7.0f

    const/high16 v7, 0x40e00000    # 7.0f

    iget-object v8, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    const/high16 v14, 0x41800000    # 16.0f

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v11, v12, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x42300000    # 44.0f

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x424c0000    # 51.0f

    invoke-virtual {v11, v1, v15}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    invoke-virtual {v10, v11, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v2, 0x41880000    # 17.0f

    const/high16 v3, 0x423c0000    # 47.0f

    const/high16 v4, 0x41880000    # 17.0f

    const/high16 v5, 0x42580000    # 54.0f

    iget-object v6, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x423c0000    # 47.0f

    const/high16 v4, 0x423c0000    # 47.0f

    iget-object v6, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x42100000    # 36.0f

    const/high16 v4, 0x41b00000    # 22.0f

    const/high16 v5, 0x42100000    # 36.0f

    iget-object v6, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x42280000    # 42.0f

    const/high16 v4, 0x42400000    # 48.0f

    :goto_220
    iget-object v6, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_33e

    :pswitch_227
    const/high16 v14, 0x41800000    # 16.0f

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v11, v14, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v6, 0x41f00000    # 30.0f

    const/high16 v7, 0x42780000    # 62.0f

    const/high16 v8, 0x42400000    # 48.0f

    const/high16 v1, 0x42500000    # 52.0f

    move-object v3, v11

    move v12, v9

    move v9, v1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v1, 0x42580000    # 54.0f

    const/high16 v3, 0x422c0000    # 43.0f

    invoke-virtual {v11, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x42080000    # 34.0f

    invoke-virtual {v11, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v11, v13, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v4, 0x41c80000    # 25.0f

    const/high16 v5, 0x42100000    # 36.0f

    const/high16 v6, 0x41b00000    # 22.0f

    const/high16 v7, 0x41f00000    # 30.0f

    const/high16 v8, 0x41b00000    # 22.0f

    const/high16 v9, 0x41c80000    # 25.0f

    move-object v3, v11

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v1, 0x41d80000    # 27.0f

    invoke-virtual {v11, v1, v12}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_2f5

    :pswitch_266
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v11, v1, v4}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v11, v1, v14}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x42440000    # 49.0f

    invoke-virtual {v11, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x422c0000    # 43.0f

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    invoke-virtual {v10, v11, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x42280000    # 42.0f

    const/high16 v4, 0x41d00000    # 26.0f

    const/high16 v5, 0x42580000    # 54.0f

    iget-object v6, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x420c0000    # 35.0f

    const/high16 v3, 0x42140000    # 37.0f

    const/high16 v4, 0x424c0000    # 51.0f

    const/high16 v5, 0x42440000    # 49.0f

    iget-object v6, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_33e

    :pswitch_2a2
    iget-object v1, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v9, 0x0

    :goto_2aa
    const/4 v1, 0x4

    if-ge v9, v1, :cond_33e

    rem-int/lit8 v1, v9, 0x2

    mul-int/lit8 v1, v1, 0x1b

    const/16 v2, 0x8

    add-int/2addr v1, v2

    div-int/lit8 v3, v9, 0x2

    mul-int/lit8 v3, v3, 0x1b

    add-int/2addr v3, v2

    int-to-float v2, v1

    int-to-float v4, v3

    add-int/lit8 v1, v1, 0x14

    int-to-float v5, v1

    add-int/lit8 v3, v3, 0x14

    int-to-float v6, v3

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v8, 0x40800000    # 4.0f

    iget-object v11, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v11

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2aa

    :pswitch_2d5
    move v15, v8

    iget-object v1, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x40e00000    # 7.0f

    const/high16 v2, 0x41e80000    # 29.0f

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v11, v15, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x421c0000    # 39.0f

    invoke-virtual {v11, v1, v15}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x41e00000    # 28.0f

    const/high16 v2, 0x42140000    # 37.0f

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2f5
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    goto :goto_311

    :pswitch_2f9
    const/high16 v14, 0x41800000    # 16.0f

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {v11, v1, v14}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v11, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v11, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_311

    :pswitch_307
    move v12, v9

    invoke-virtual {v11, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v11, v12, v7}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v11, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_311
    iget-object v1, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    invoke-virtual {v10, v11, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_33e

    :goto_317
    const/16 v9, 0x8

    if-ge v8, v9, :cond_339

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    mul-int/lit8 v1, v8, 0x2d

    int-to-float v1, v1

    invoke-virtual {v10, v1, v7, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/high16 v2, 0x42000000    # 32.0f

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v5, 0x41500000    # 13.0f

    iget-object v6, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_317

    :cond_339
    iget-object v1, v0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    invoke-virtual {v10, v7, v7, v15, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_33e
    :goto_33e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :sswitch_data_342
    .sparse-switch
        0x17fd4 -> :sswitch_cc
        0x1a647 -> :sswitch_c2
        0x1a923 -> :sswitch_b8
        0x2dca72 -> :sswitch_ae
        0x2e04e7 -> :sswitch_a4
        0x2e9358 -> :sswitch_99
        0x333b01 -> :sswitch_8e
        0x348b34 -> :sswitch_83
        0x5a5de35 -> :sswitch_78
        0x636ee25 -> :sswitch_6e
        0x65b3d6e -> :sswitch_63
        0x2c478e3b -> :sswitch_58
    .end sparse-switch

    :pswitch_data_374
    .packed-switch 0x0
        :pswitch_307
        :pswitch_2f9
        :pswitch_2d5
        :pswitch_2a2
        :pswitch_266
        :pswitch_227
        :pswitch_1c9
        :pswitch_191
        :pswitch_155
        :pswitch_13d
        :pswitch_123
        :pswitch_fc
    .end packed-switch
.end method

.method public getOpacity()I
    .registers 2

    .line 43
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/local/p5home/Ui$Symbol;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
