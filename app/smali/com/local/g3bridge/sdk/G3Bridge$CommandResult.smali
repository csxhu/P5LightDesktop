.class public final Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;
.super Ljava/lang/Object;
.source "G3Bridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/g3bridge/sdk/G3Bridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommandResult"
.end annotation


# instance fields
.field private final response:Lcom/local/g3bridge/sdk/G3Bridge$Response;


# direct methods
.method private constructor <init>(Lcom/local/g3bridge/sdk/G3Bridge$Response;)V
    .registers 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->response:Lcom/local/g3bridge/sdk/G3Bridge$Response;

    return-void
.end method

.method synthetic constructor <init>(Lcom/local/g3bridge/sdk/G3Bridge$Response;Lcom/local/g3bridge/sdk/G3Bridge$1;)V
    .registers 3

    .line 158
    invoke-direct {p0, p1}, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;-><init>(Lcom/local/g3bridge/sdk/G3Bridge$Response;)V

    return-void
.end method


# virtual methods
.method public code()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->response:Lcom/local/g3bridge/sdk/G3Bridge$Response;

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->code()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public commandId()Ljava/lang/String;
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->response:Lcom/local/g3bridge/sdk/G3Bridge$Response;

    # getter for: Lcom/local/g3bridge/sdk/G3Bridge$Response;->data:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->access$500(Lcom/local/g3bridge/sdk/G3Bridge$Response;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "commandId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public confirmed()Z
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->response:Lcom/local/g3bridge/sdk/G3Bridge$Response;

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->ok()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->state()Lcom/local/g3bridge/sdk/G3Bridge$State;

    move-result-object v0

    sget-object v1, Lcom/local/g3bridge/sdk/G3Bridge$State;->CONFIRMED:Lcom/local/g3bridge/sdk/G3Bridge$State;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public data()Landroid/os/Bundle;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->response:Lcom/local/g3bridge/sdk/G3Bridge$Response;

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->data()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public message()Ljava/lang/String;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->response:Lcom/local/g3bridge/sdk/G3Bridge$Response;

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pending()Z
    .registers 3

    .line 170
    invoke-virtual {p0}, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->state()Lcom/local/g3bridge/sdk/G3Bridge$State;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->response:Lcom/local/g3bridge/sdk/G3Bridge$Response;

    invoke-virtual {v1}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->ok()Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/local/g3bridge/sdk/G3Bridge$State;->QUEUED:Lcom/local/g3bridge/sdk/G3Bridge$State;

    if-eq v0, v1, :cond_18

    sget-object v1, Lcom/local/g3bridge/sdk/G3Bridge$State;->SUBMITTED:Lcom/local/g3bridge/sdk/G3Bridge$State;

    if-eq v0, v1, :cond_18

    sget-object v1, Lcom/local/g3bridge/sdk/G3Bridge$State;->PENDING:Lcom/local/g3bridge/sdk/G3Bridge$State;

    if-ne v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public readback()Landroid/os/Bundle;
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->response:Lcom/local/g3bridge/sdk/G3Bridge$Response;

    # getter for: Lcom/local/g3bridge/sdk/G3Bridge$Response;->data:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->access$500(Lcom/local/g3bridge/sdk/G3Bridge$Response;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "readback"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_14

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_1a

    :cond_14
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v1

    :goto_1a
    return-object v0
.end method

.method public state()Lcom/local/g3bridge/sdk/G3Bridge$State;
    .registers 4

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->response:Lcom/local/g3bridge/sdk/G3Bridge$Response;

    # getter for: Lcom/local/g3bridge/sdk/G3Bridge$Response;->data:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->access$500(Lcom/local/g3bridge/sdk/G3Bridge$Response;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "state"

    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/local/g3bridge/sdk/G3Bridge$State;->valueOf(Ljava/lang/String;)Lcom/local/g3bridge/sdk/G3Bridge$State;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_12} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 166
    :catch_13
    move-exception v0

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    sget-object v0, Lcom/local/g3bridge/sdk/G3Bridge$State;->UNKNOWN:Lcom/local/g3bridge/sdk/G3Bridge$State;

    return-object v0
.end method
