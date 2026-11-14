.class final Lcom/local/p5home/HomeActivity$AppItem;
.super Ljava/lang/Object;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppItem"
.end annotation


# instance fields
.field final icon:Landroid/graphics/drawable/Drawable;

.field final label:Ljava/lang/String;

.field final launch:Landroid/content/Intent;

.field final pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HomeActivity$AppItem;->pkg:Ljava/lang/String;

    iput-object p2, p0, Lcom/local/p5home/HomeActivity$AppItem;->label:Ljava/lang/String;

    iput-object p3, p0, Lcom/local/p5home/HomeActivity$AppItem;->launch:Landroid/content/Intent;

    iput-object p4, p0, Lcom/local/p5home/HomeActivity$AppItem;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
