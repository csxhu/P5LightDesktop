.class public final synthetic Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HomeActivity;

.field public final synthetic f$1:[Lcom/local/p5home/Ui$PanelDialog;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HomeActivity;[Lcom/local/p5home/Ui$PanelDialog;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda3;->f$0:Lcom/local/p5home/HomeActivity;

    iput-object p2, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda3;->f$1:[Lcom/local/p5home/Ui$PanelDialog;

    iput p3, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda3;->f$0:Lcom/local/p5home/HomeActivity;

    iget-object v1, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda3;->f$1:[Lcom/local/p5home/Ui$PanelDialog;

    iget v2, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda3;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/HomeActivity;->lambda$shortcutSettings$14$com-local-g3home-HomeActivity([Lcom/local/p5home/Ui$PanelDialog;I)V

    return-void
.end method
