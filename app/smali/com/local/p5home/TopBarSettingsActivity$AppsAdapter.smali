.class final Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;
.super Landroid/widget/BaseAdapter;
.source "TopBarSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/TopBarSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/TopBarSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/local/p5home/TopBarSettingsActivity;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/local/p5home/TopBarSettingsActivity;Lcom/local/p5home/TopBarSettingsActivity$1;)V
    .registers 3

    .line 114
    invoke-direct {p0, p1}, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;-><init>(Lcom/local/p5home/TopBarSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    # getter for: Lcom/local/p5home/TopBarSettingsActivity;->filtered:Ljava/util/List;
    invoke-static {v0}, Lcom/local/p5home/TopBarSettingsActivity;->access$1000(Lcom/local/p5home/TopBarSettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/local/p5home/TopBarSettingsActivity$AppChoice;
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    # getter for: Lcom/local/p5home/TopBarSettingsActivity;->filtered:Ljava/util/List;
    invoke-static {v0}, Lcom/local/p5home/TopBarSettingsActivity;->access$1000(Lcom/local/p5home/TopBarSettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 114
    invoke-virtual {p0, p1}, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->getItem(I)Lcom/local/p5home/TopBarSettingsActivity$AppChoice;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 115
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .line 116
    if-nez p2, :cond_ba

    iget-object p2, p0, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    invoke-static {p2}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p2

    iget-object p3, p0, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p3, v0}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result p3

    iget-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v1, v2}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    invoke-static {v3, v0}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v0

    iget-object v3, p0, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    invoke-static {v3, v2}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p2, p3, v1, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object p3, p0, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    const/high16 v0, 0x43040000    # 132.0f

    invoke-static {p3, v0}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    new-instance p3, Lcom/local/p5home/TopBarSettingsActivity$AppRow;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/local/p5home/TopBarSettingsActivity$AppRow;-><init>(Lcom/local/p5home/TopBarSettingsActivity$1;)V

    iget-object v1, p0, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    # invokes: Lcom/local/p5home/TopBarSettingsActivity;->fixedIcon(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/local/p5home/TopBarSettingsActivity;->access$1200(Lcom/local/p5home/TopBarSettingsActivity;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p3, Lcom/local/p5home/TopBarSettingsActivity$AppRow;->icon:Landroid/widget/ImageView;

    iget-object v0, p3, Lcom/local/p5home/TopBarSettingsActivity$AppRow;->icon:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    const/high16 v3, 0x42900000    # 72.0f

    invoke-static {v2, v3}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v2

    iget-object v4, p0, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    invoke-static {v4, v3}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    const/16 v1, 0x18

    invoke-static {v0, p2, v1}, Lcom/local/p5home/Ui;->side(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    invoke-static {v0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    const/16 v3, 0x20

    const-string v4, ""

    invoke-static {v2, v4, v3}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p3, Lcom/local/p5home/TopBarSettingsActivity$AppRow;->label:Landroid/widget/TextView;

    iget-object v2, p3, Lcom/local/p5home/TopBarSettingsActivity$AppRow;->label:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, p3, Lcom/local/p5home/TopBarSettingsActivity$AppRow;->label:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, p3, Lcom/local/p5home/TopBarSettingsActivity$AppRow;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    const/16 v3, 0xc

    invoke-static {v2, v0, v3}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    iget-object v2, p0, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    invoke-static {v2}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v3

    iget v3, v3, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {v2, v4, v1, v3}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p3, Lcom/local/p5home/TopBarSettingsActivity$AppRow;->pkg:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/local/p5home/TopBarSettingsActivity$AppRow;->pkg:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p3, Lcom/local/p5home/TopBarSettingsActivity$AppRow;->pkg:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p3, Lcom/local/p5home/TopBarSettingsActivity$AppRow;->pkg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_c0

    :cond_ba
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/local/p5home/TopBarSettingsActivity$AppRow;

    :goto_c0
    invoke-virtual {p0, p1}, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->getItem(I)Lcom/local/p5home/TopBarSettingsActivity$AppChoice;

    move-result-object p1

    iget-object v0, p3, Lcom/local/p5home/TopBarSettingsActivity$AppRow;->label:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/local/p5home/TopBarSettingsActivity$AppRow;->pkg:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p3, Lcom/local/p5home/TopBarSettingsActivity$AppRow;->icon:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_e8

    new-instance p1, Lcom/local/p5home/Ui$Symbol;

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    invoke-static {v0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v0

    iget v0, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    const-string v1, "apps"

    invoke-direct {p1, v1, v0}, Lcom/local/p5home/Ui$Symbol;-><init>(Ljava/lang/String;I)V

    goto :goto_ea

    :cond_e8
    iget-object p1, p1, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->icon:Landroid/graphics/drawable/Drawable;

    :goto_ea
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity$AppsAdapter;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    invoke-static {p1}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object p1

    iget p1, p1, Lcom/local/p5home/Ui$Palette;->card:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p2
.end method
