.class public final Lcom/local/g3bridge/sdk/G3Bridge$Response;
.super Ljava/lang/Object;
.source "G3Bridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/g3bridge/sdk/G3Bridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Response"
.end annotation


# instance fields
.field private final data:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/local/g3bridge/sdk/G3Bridge$Response;->data:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/local/g3bridge/sdk/G3Bridge$1;)V
    .registers 3

    .line 128
    invoke-direct {p0, p1}, Lcom/local/g3bridge/sdk/G3Bridge$Response;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;)Lcom/local/g3bridge/sdk/G3Bridge$Response;
    .registers 2

    .line 128
    invoke-static {p0, p1}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->error(Ljava/lang/String;Ljava/lang/String;)Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/local/g3bridge/sdk/G3Bridge$Response;)Landroid/os/Bundle;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/local/g3bridge/sdk/G3Bridge$Response;->data:Landroid/os/Bundle;

    return-object p0
.end method

.method private bundles(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/local/g3bridge/sdk/G3Bridge$Response;->data:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 151
    if-eqz p1, :cond_28

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_11

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 152
    :cond_28
    return-object v0
.end method

.method private static error(Ljava/lang/String;Ljava/lang/String;)Lcom/local/g3bridge/sdk/G3Bridge$Response;
    .registers 5

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "apiVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "code"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string p0, "message"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/local/g3bridge/sdk/G3Bridge$Response;

    invoke-direct {p0, v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public code()Ljava/lang/String;
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/local/g3bridge/sdk/G3Bridge$Response;->data:Landroid/os/Bundle;

    const-string v1, "code"

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public commands()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 141
    const-string v0, "commands"

    invoke-direct {p0, v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->bundles(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public data()Landroid/os/Bundle;
    .registers 3

    .line 139
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/local/g3bridge/sdk/G3Bridge$Response;->data:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public message()Ljava/lang/String;
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/local/g3bridge/sdk/G3Bridge$Response;->data:Landroid/os/Bundle;

    const-string v1, "message"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ok()Z
    .registers 3

    .line 138
    const-string v0, "OK"

    invoke-virtual {p0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public properties()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 140
    const-string v0, "properties"

    invoke-direct {p0, v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->bundles(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public supportsCommand(Ljava/lang/String;)Z
    .registers 6

    .line 143
    invoke-virtual {p0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->ok()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 144
    :cond_8
    invoke-virtual {p0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->commands()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 145
    const-string v3, "key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "available"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 p1, 0x1

    return p1

    .line 146
    :cond_32
    return v1
.end method
