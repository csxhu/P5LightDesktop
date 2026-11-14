.class public final synthetic Lcom/local/p5home/Ui$PanelDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/Ui$PanelDialog;

.field public final synthetic f$1:Lcom/local/p5home/Ui$PanelBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/Ui$PanelDialog;Lcom/local/p5home/Ui$PanelBuilder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/Ui$PanelDialog$$ExternalSyntheticLambda2;->f$0:Lcom/local/p5home/Ui$PanelDialog;

    iput-object p2, p0, Lcom/local/p5home/Ui$PanelDialog$$ExternalSyntheticLambda2;->f$1:Lcom/local/p5home/Ui$PanelBuilder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/local/p5home/Ui$PanelDialog$$ExternalSyntheticLambda2;->f$0:Lcom/local/p5home/Ui$PanelDialog;

    iget-object v1, p0, Lcom/local/p5home/Ui$PanelDialog$$ExternalSyntheticLambda2;->f$1:Lcom/local/p5home/Ui$PanelBuilder;

    invoke-virtual {v0, v1}, Lcom/local/p5home/Ui$PanelDialog;->lambda$new$1$com-local-g3home-Ui$PanelDialog(Lcom/local/p5home/Ui$PanelBuilder;)V

    return-void
.end method
