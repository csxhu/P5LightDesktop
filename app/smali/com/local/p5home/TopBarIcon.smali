.class final Lcom/local/p5home/TopBarIcon;
.super Landroid/graphics/drawable/Drawable;
.source "TopBarIcon.java"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 14
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/local/p5home/TopBarIcon;->paint:Landroid/graphics/Paint;

    .line 14
    iput-object p1, p0, Lcom/local/p5home/TopBarIcon;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static render(Landroid/graphics/drawable/Drawable;I)Lcom/local/p5home/TopBarIcon;
    .registers 8

    .line 16
    if-eqz p0, :cond_4b

    if-lez p1, :cond_4b

    const/16 v0, 0xc0

    if-gt p1, v0, :cond_4b

    .line 17
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/local/p5home/TopBarBounds;->fit(III)[I

    move-result-object v1

    .line 19
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    aget v3, v1, v3

    sub-int v4, p1, v3

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    aget v1, v1, v5

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    .line 20
    add-int/2addr v3, v4

    add-int/2addr v1, p1

    :try_start_32
    invoke-virtual {p0, v4, p1, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_46

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 21
    new-instance p0, Lcom/local/p5home/TopBarIcon;

    invoke-direct {p0, v0}, Lcom/local/p5home/TopBarIcon;-><init>(Landroid/graphics/Bitmap;)V

    return-object p0

    .line 20
    :catchall_46
    move-exception p1

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    throw p1

    .line 16
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid icon bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 25
    iget-object v0, p0, Lcom/local/p5home/TopBarIcon;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/local/p5home/TopBarIcon;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/local/p5home/TopBarIcon;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/local/p5home/TopBarIcon;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/local/p5home/TopBarIcon;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .line 28
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .line 26
    iget-object v0, p0, Lcom/local/p5home/TopBarIcon;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/local/p5home/TopBarIcon;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/local/p5home/TopBarIcon;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/local/p5home/TopBarIcon;->invalidateSelf()V

    return-void
.end method
