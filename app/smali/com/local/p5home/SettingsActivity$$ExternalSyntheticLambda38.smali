.class public final synthetic Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/SettingsActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/SettingsActivity;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda38;->f$0:Lcom/local/p5home/SettingsActivity;

    iput-boolean p2, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda38;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda38;->f$0:Lcom/local/p5home/SettingsActivity;

    iget-boolean v1, p0, Lcom/local/p5home/SettingsActivity$$ExternalSyntheticLambda38;->f$1:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/local/p5home/SettingsActivity;->lambda$confirmHome$29$com-local-g3home-SettingsActivity(ZLandroid/content/DialogInterface;I)V

    return-void
.end method
