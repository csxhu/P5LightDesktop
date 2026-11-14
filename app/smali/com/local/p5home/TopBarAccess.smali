.class final Lcom/local/p5home/TopBarAccess;
.super Ljava/lang/Object;
.source "TopBarAccess.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allowed(IIILjava/lang/String;)Z
    .registers 8

    .line 7
    const-string v0, "status"

    if-nez p0, :cond_9

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 8
    :cond_9
    const-string v1, "get_config"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_48

    if-lez p1, :cond_48

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    const-string p0, "set_enabled"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    const-string p0, "set_slot"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    const-string p0, "reset_slot"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    const-string p0, "reset_all"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    const-string p0, "migrate_legacy"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    goto :goto_47

    :cond_46
    move v2, v3

    :cond_47
    :goto_47
    return v2

    .line 9
    :cond_48
    if-lez p0, :cond_63

    if-ne p0, p2, :cond_63

    if-eq p2, p1, :cond_63

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_62

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_62

    const-string p0, "heartbeat"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_63

    :cond_62
    goto :goto_64

    :cond_63
    move v2, v3

    :goto_64
    return v2
.end method
