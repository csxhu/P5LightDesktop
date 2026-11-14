.class final Lcom/local/p5home/TurnCameraState;
.super Ljava/lang/Object;
.source "TurnCameraState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/TurnCameraState$Value;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static describe(Lcom/local/p5home/TurnCameraState$Value;)Ljava/lang/String;
    .registers 2

    .line 19
    sget-object v0, Lcom/local/p5home/TurnCameraState$1;->$SwitchMap$com$local$g3home$TurnCameraState$Value:[I

    invoke-virtual {p0}, Lcom/local/p5home/TurnCameraState$Value;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_1a

    .line 24
    const-string p0, "\u539f\u8f66\u5f00\u5173\uff1a\u8bfb\u53d6\u5931\u8d25\uff0c\u65e0\u6cd5\u786e\u8ba4\u72b6\u6001"

    return-object p0

    .line 23
    :pswitch_e
    const-string p0, "\u539f\u8f66\u5f00\u5173\uff1a\u503c\u5f02\u5e38\uff0c\u65e0\u6cd5\u786e\u8ba4\u5f00\u542f\u72b6\u6001"

    return-object p0

    .line 22
    :pswitch_11
    const-string p0, "\u539f\u8f66\u5f00\u5173\uff1a\u5c1a\u672a\u8bbe\u7f6e\uff08\u539f\u8f66\u6309\u5173\u95ed\u5904\u7406\uff09"

    return-object p0

    .line 21
    :pswitch_14
    const-string p0, "\u539f\u8f66\u5f00\u5173\uff1a\u5173\u95ed\uff080\uff09"

    return-object p0

    .line 20
    :pswitch_17
    const-string p0, "\u539f\u8f66\u5f00\u5173\uff1a\u5f00\u542f\uff081\uff09"

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method static matches(Lcom/local/p5home/TurnCameraState$Value;Z)Z
    .registers 4

    .line 15
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    sget-object p1, Lcom/local/p5home/TurnCameraState$Value;->ON:Lcom/local/p5home/TurnCameraState$Value;

    if-ne p0, p1, :cond_e

    goto :goto_d

    :cond_9
    sget-object p1, Lcom/local/p5home/TurnCameraState$Value;->OFF:Lcom/local/p5home/TurnCameraState$Value;

    if-ne p0, p1, :cond_e

    :goto_d
    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    return v0
.end method

.method static parse(Ljava/lang/String;)Lcom/local/p5home/TurnCameraState$Value;
    .registers 2

    .line 8
    if-nez p0, :cond_5

    sget-object p0, Lcom/local/p5home/TurnCameraState$Value;->MISSING:Lcom/local/p5home/TurnCameraState$Value;

    return-object p0

    .line 9
    :cond_5
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object p0, Lcom/local/p5home/TurnCameraState$Value;->ON:Lcom/local/p5home/TurnCameraState$Value;

    return-object p0

    .line 10
    :cond_10
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    sget-object p0, Lcom/local/p5home/TurnCameraState$Value;->OFF:Lcom/local/p5home/TurnCameraState$Value;

    return-object p0

    .line 11
    :cond_1b
    sget-object p0, Lcom/local/p5home/TurnCameraState$Value;->INVALID:Lcom/local/p5home/TurnCameraState$Value;

    return-object p0
.end method
