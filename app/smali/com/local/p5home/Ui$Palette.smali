.class public final Lcom/local/p5home/Ui$Palette;
.super Ljava/lang/Object;
.source "Ui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/Ui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Palette"
.end annotation


# instance fields
.field public final accent:I

.field public final accentText:I

.field public final bg:I

.field public final card:I

.field public final dark:Z

.field public final line:I

.field public final muted:I

.field public final raised:I

.field public final text:I

.field public final warning:I


# direct methods
.method constructor <init>(ZIIIIIIIII)V
    .registers 11

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/local/p5home/Ui$Palette;->dark:Z

    iput p2, p0, Lcom/local/p5home/Ui$Palette;->bg:I

    iput p3, p0, Lcom/local/p5home/Ui$Palette;->card:I

    iput p4, p0, Lcom/local/p5home/Ui$Palette;->raised:I

    iput p5, p0, Lcom/local/p5home/Ui$Palette;->text:I

    iput p6, p0, Lcom/local/p5home/Ui$Palette;->muted:I

    iput p7, p0, Lcom/local/p5home/Ui$Palette;->line:I

    iput p8, p0, Lcom/local/p5home/Ui$Palette;->accent:I

    iput p9, p0, Lcom/local/p5home/Ui$Palette;->accentText:I

    iput p10, p0, Lcom/local/p5home/Ui$Palette;->warning:I

    return-void
.end method
