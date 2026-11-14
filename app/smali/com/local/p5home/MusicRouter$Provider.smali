.class final Lcom/local/p5home/MusicRouter$Provider;
.super Ljava/lang/Object;
.source "MusicRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/MusicRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Provider"
.end annotation


# instance fields
.field final id:Ljava/lang/String;

.field final installed:Z

.field final label:Ljava/lang/String;

.field final pkg:Ljava/lang/String;

.field final supported:Z


# direct methods
.method varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/local/p5home/MusicRouter$Provider;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/local/p5home/MusicRouter$Provider;->label:Ljava/lang/String;

    array-length p3, p4

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, p3, :cond_1f

    aget-object v2, p4, v1

    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_1b

    if-eqz v3, :cond_1c

    goto :goto_21

    :catch_1b
    move-exception v2

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1f
    const-string v2, ""

    :goto_21
    iput-object v2, p0, Lcom/local/p5home/MusicRouter$Provider;->pkg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    const/4 p4, 0x1

    xor-int/2addr p3, p4

    iput-boolean p3, p0, Lcom/local/p5home/MusicRouter$Provider;->installed:Z

    const-string v1, "system"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    if-eqz p3, :cond_3c

    # invokes: Lcom/local/p5home/MusicRouter;->resolve(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    invoke-static {p1, p2, v2}, Lcom/local/p5home/MusicRouter;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_3c

    :cond_3b
    move v0, p4

    :cond_3c
    iput-boolean v0, p0, Lcom/local/p5home/MusicRouter$Provider;->supported:Z

    return-void
.end method
