.class Lcom/local/p5home/TopBarSettingsActivity$2;
.super Ljava/lang/Object;
.source "TopBarSettingsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/TopBarSettingsActivity;->buildPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/TopBarSettingsActivity;


# direct methods
.method constructor <init>(Lcom/local/p5home/TopBarSettingsActivity;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity$2;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 87
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 87
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 87
    iget-object p2, p0, Lcom/local/p5home/TopBarSettingsActivity$2;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    if-nez p1, :cond_7

    const-string p1, ""

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_b
    # setter for: Lcom/local/p5home/TopBarSettingsActivity;->searchText:Ljava/lang/String;
    invoke-static {p2, p1}, Lcom/local/p5home/TopBarSettingsActivity;->access$802(Lcom/local/p5home/TopBarSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity$2;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    # invokes: Lcom/local/p5home/TopBarSettingsActivity;->filter()V
    invoke-static {p1}, Lcom/local/p5home/TopBarSettingsActivity;->access$900(Lcom/local/p5home/TopBarSettingsActivity;)V

    return-void
.end method
