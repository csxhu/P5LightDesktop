.class final Lcom/local/p5home/TopBarSettingsActivity$AppChoice;
.super Ljava/lang/Object;
.source "TopBarSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/TopBarSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppChoice"
.end annotation


# instance fields
.field final activity:Ljava/lang/String;

.field final icon:Landroid/graphics/drawable/Drawable;

.field final label:Ljava/lang/String;

.field final pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->pkg:Ljava/lang/String;

    iput-object p2, p0, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->activity:Ljava/lang/String;

    iput-object p3, p0, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->label:Ljava/lang/String;

    iput-object p4, p0, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
