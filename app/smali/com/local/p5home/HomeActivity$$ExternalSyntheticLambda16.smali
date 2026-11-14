.class public final synthetic Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HomeActivity;

.field public final synthetic f$1:[Lcom/local/p5home/Ui$PanelDialog;

.field public final synthetic f$2:Lcom/local/p5home/HomeActivity$AppItem;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HomeActivity;[Lcom/local/p5home/Ui$PanelDialog;Lcom/local/p5home/HomeActivity$AppItem;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda16;->f$0:Lcom/local/p5home/HomeActivity;

    iput-object p2, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda16;->f$1:[Lcom/local/p5home/Ui$PanelDialog;

    iput-object p3, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda16;->f$2:Lcom/local/p5home/HomeActivity$AppItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda16;->f$0:Lcom/local/p5home/HomeActivity;

    iget-object v1, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda16;->f$1:[Lcom/local/p5home/Ui$PanelDialog;

    iget-object v2, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda16;->f$2:Lcom/local/p5home/HomeActivity$AppItem;

    invoke-virtual {v0, v1, v2, p1}, Lcom/local/p5home/HomeActivity;->lambda$allApps$27$com-local-g3home-HomeActivity([Lcom/local/p5home/Ui$PanelDialog;Lcom/local/p5home/HomeActivity$AppItem;Landroid/view/View;)V

    return-void
.end method
