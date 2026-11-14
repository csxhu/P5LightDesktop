.class public final synthetic Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/local/p5home/SettingsActivity$Success;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/Ui$PanelDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/Ui$PanelDialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda3;->f$0:Lcom/local/p5home/Ui$PanelDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda3;->f$0:Lcom/local/p5home/Ui$PanelDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
