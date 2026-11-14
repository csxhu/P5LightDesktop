.class public final synthetic Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/SettingsActivity;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/SettingsActivity;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda42;->f$0:Lcom/local/p5home/SettingsActivity;

    iput-object p2, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda42;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda42;->f$0:Lcom/local/p5home/SettingsActivity;

    iget-object v1, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda42;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/local/p5home/SettingsActivity;->lambda$wakeSettings$16$com-local-g3home-SettingsActivity(Ljava/util/List;Landroid/content/DialogInterface;)V

    return-void
.end method
