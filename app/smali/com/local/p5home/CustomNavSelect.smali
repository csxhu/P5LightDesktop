.class public final Lcom/local/p5home/CustomNavSelect;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final activity:Lcom/local/p5home/SettingsActivity;

.field private final dialogs:[Lcom/local/p5home/Ui$PanelDialog;

.field private final provider:Lcom/local/p5home/Navigator$Provider;


# direct methods
.method public constructor <init>(Lcom/local/p5home/SettingsActivity;[Lcom/local/p5home/Ui$PanelDialog;Lcom/local/p5home/Navigator$Provider;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/CustomNavSelect;->activity:Lcom/local/p5home/SettingsActivity;

    iput-object p2, p0, Lcom/local/p5home/CustomNavSelect;->dialogs:[Lcom/local/p5home/Ui$PanelDialog;

    iput-object p3, p0, Lcom/local/p5home/CustomNavSelect;->provider:Lcom/local/p5home/Navigator$Provider;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/local/p5home/CustomNavSelect;->activity:Lcom/local/p5home/SettingsActivity;

    iget-object v1, p0, Lcom/local/p5home/CustomNavSelect;->dialogs:[Lcom/local/p5home/Ui$PanelDialog;

    iget-object v2, p0, Lcom/local/p5home/CustomNavSelect;->provider:Lcom/local/p5home/Navigator$Provider;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/local/p5home/SettingsActivity;->lambda$chooseNavigation$8$com-local-g3home-SettingsActivity([Lcom/local/p5home/Ui$PanelDialog;Lcom/local/p5home/Navigator$Provider;Landroid/view/View;)V

    return-void
.end method
