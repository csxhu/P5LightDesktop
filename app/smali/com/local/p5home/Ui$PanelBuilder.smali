.class public final Lcom/local/p5home/Ui$PanelBuilder;
.super Ljava/lang/Object;
.source "Ui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/Ui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PanelBuilder"
.end annotation


# instance fields
.field content:Landroid/view/View;

.field final context:Landroid/content/Context;

.field icon:Ljava/lang/String;

.field message:Ljava/lang/CharSequence;

.field negative:Ljava/lang/CharSequence;

.field no:Landroid/content/DialogInterface$OnClickListener;

.field positive:Ljava/lang/CharSequence;

.field title:Ljava/lang/CharSequence;

.field yes:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/Ui$PanelBuilder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lcom/local/p5home/Ui$PanelDialog;
    .registers 2

    .line 31
    new-instance v0, Lcom/local/p5home/Ui$PanelDialog;

    invoke-direct {v0, p0}, Lcom/local/p5home/Ui$PanelDialog;-><init>(Lcom/local/p5home/Ui$PanelBuilder;)V

    return-object v0
.end method

.method public setIcon(Ljava/lang/String;)Lcom/local/p5home/Ui$PanelBuilder;
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/local/p5home/Ui$PanelBuilder;->icon:Ljava/lang/String;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/local/p5home/Ui$PanelBuilder;->message:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;
    .registers 3

    .line 31
    iput-object p1, p0, Lcom/local/p5home/Ui$PanelBuilder;->negative:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/local/p5home/Ui$PanelBuilder;->no:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;
    .registers 3

    .line 31
    iput-object p1, p0, Lcom/local/p5home/Ui$PanelBuilder;->positive:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/local/p5home/Ui$PanelBuilder;->yes:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/local/p5home/Ui$PanelBuilder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/local/p5home/Ui$PanelBuilder;
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/local/p5home/Ui$PanelBuilder;->content:Landroid/view/View;

    return-object p0
.end method

.method public show()Lcom/local/p5home/Ui$PanelDialog;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/local/p5home/Ui$PanelBuilder;->create()Lcom/local/p5home/Ui$PanelDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelDialog;->show()V

    return-object v0
.end method
