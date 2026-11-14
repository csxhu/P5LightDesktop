.class final Lcom/local/p5home/TopBarSettingsActivity$State;
.super Ljava/lang/Object;
.source "TopBarSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/TopBarSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# instance fields
.field final icons:[Landroid/graphics/drawable/Drawable;

.field final snapshot:Lcom/local/p5home/TopBarStore$Snapshot;

.field final status:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/local/p5home/TopBarStore$Snapshot;Landroid/os/Bundle;[Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity$State;->snapshot:Lcom/local/p5home/TopBarStore$Snapshot;

    iput-object p2, p0, Lcom/local/p5home/TopBarSettingsActivity$State;->status:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/local/p5home/TopBarSettingsActivity$State;->icons:[Landroid/graphics/drawable/Drawable;

    return-void
.end method
