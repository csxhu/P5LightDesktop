.class public final Lcom/local/p5home/CustomNavOpen;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final activity:Lcom/local/p5home/SettingsActivity;

.field private final dialogs:[Lcom/local/p5home/Ui$PanelDialog;


# direct methods
.method public constructor <init>(Lcom/local/p5home/SettingsActivity;[Lcom/local/p5home/Ui$PanelDialog;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/CustomNavOpen;->activity:Lcom/local/p5home/SettingsActivity;

    iput-object p2, p0, Lcom/local/p5home/CustomNavOpen;->dialogs:[Lcom/local/p5home/Ui$PanelDialog;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/local/p5home/CustomNavOpen;->dialogs:[Lcom/local/p5home/Ui$PanelDialog;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/local/p5home/Ui$PanelDialog;->dismiss()V

    iget-object v0, p0, Lcom/local/p5home/CustomNavOpen;->activity:Lcom/local/p5home/SettingsActivity;

    invoke-virtual {v0}, Lcom/local/p5home/SettingsActivity;->chooseCustomNavigation()V

    return-void
.end method
