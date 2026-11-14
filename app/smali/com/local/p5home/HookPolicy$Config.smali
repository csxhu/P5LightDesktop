.class final Lcom/local/p5home/HookPolicy$Config;
.super Ljava/lang/Object;
.source "HookPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/HookPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Config"
.end annotation


# instance fields
.field final at:J

.field final hasApi:Z

.field final nav:Ljava/lang/String;

.field final navAvailable:Z

.field final navEpoch:J

.field final navPoiCount:I

.field final navRouteCount:I

.field final navStage:Ljava/lang/String;

.field final oemMapAvailable:Z

.field final prefix:Ljava/lang/String;

.field final qa:Z

.field final speechOutputReady:Z

.field final voice:Z


# direct methods
.method constructor <init>(ZZZLjava/lang/String;Ljava/lang/String;J)V
    .registers 17

    .line 16
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/local/p5home/HookPolicy$Config;-><init>(ZZZLjava/lang/String;Ljava/lang/String;JZ)V

    .line 17
    return-void
.end method

.method constructor <init>(ZZZLjava/lang/String;Ljava/lang/String;JZ)V
    .registers 25

    .line 19
    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "idle"

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v15}, Lcom/local/p5home/HookPolicy$Config;-><init>(ZZZLjava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;JII)V

    .line 20
    return-void
.end method

.method constructor <init>(ZZZLjava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;JII)V
    .registers 16

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Lcom/local/p5home/HookPolicy$Config;->voice:Z

    iput-boolean p2, p0, Lcom/local/p5home/HookPolicy$Config;->qa:Z

    iput-boolean p3, p0, Lcom/local/p5home/HookPolicy$Config;->hasApi:Z

    const-string p1, ""

    if-nez p4, :cond_f

    move-object p2, p1

    goto :goto_13

    :cond_f
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :goto_13
    iput-object p2, p0, Lcom/local/p5home/HookPolicy$Config;->prefix:Ljava/lang/String;

    if-nez p5, :cond_18

    move-object p5, p1

    :cond_18
    iput-object p5, p0, Lcom/local/p5home/HookPolicy$Config;->nav:Ljava/lang/String;

    iput-wide p6, p0, Lcom/local/p5home/HookPolicy$Config;->at:J

    .line 23
    iput-boolean p8, p0, Lcom/local/p5home/HookPolicy$Config;->speechOutputReady:Z

    .line 24
    iput-boolean p9, p0, Lcom/local/p5home/HookPolicy$Config;->navAvailable:Z

    iput-boolean p10, p0, Lcom/local/p5home/HookPolicy$Config;->oemMapAvailable:Z

    if-nez p11, :cond_26

    const-string p11, "idle"

    :cond_26
    iput-object p11, p0, Lcom/local/p5home/HookPolicy$Config;->navStage:Ljava/lang/String;

    iput-wide p12, p0, Lcom/local/p5home/HookPolicy$Config;->navEpoch:J

    iput p14, p0, Lcom/local/p5home/HookPolicy$Config;->navPoiCount:I

    iput p15, p0, Lcom/local/p5home/HookPolicy$Config;->navRouteCount:I

    .line 25
    return-void
.end method

.method static disabled(J)Lcom/local/p5home/HookPolicy$Config;
    .registers 11

    .line 26
    new-instance v8, Lcom/local/p5home/HookPolicy$Config;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    move-object v0, v8

    move-wide v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/local/p5home/HookPolicy$Config;-><init>(ZZZLjava/lang/String;Ljava/lang/String;J)V

    return-object v8
.end method


# virtual methods
.method active(J)Z
    .registers 6

    .line 27
    iget-boolean v0, p0, Lcom/local/p5home/HookPolicy$Config;->voice:Z

    if-eqz v0, :cond_13

    iget-wide v0, p0, Lcom/local/p5home/HookPolicy$Config;->at:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_13

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3a98

    cmp-long p1, p1, v0

    if-gtz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method nativeNav()Z
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/local/p5home/HookPolicy$Config;->nav:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "com.xiaopeng.montecarlo"

    iget-object v1, p0, Lcom/local/p5home/HookPolicy$Config;->nav:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "native"

    iget-object v1, p0, Lcom/local/p5home/HookPolicy$Config;->nav:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "oem"

    iget-object v1, p0, Lcom/local/p5home/HookPolicy$Config;->nav:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    :goto_2a
    return v0
.end method
