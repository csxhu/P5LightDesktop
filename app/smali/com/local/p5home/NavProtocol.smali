.class final Lcom/local/p5home/NavProtocol;
.super Ljava/lang/Object;
.source "NavProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/NavProtocol$Poi;,
        Lcom/local/p5home/NavProtocol$Routes;
    }
.end annotation


# static fields
.field static final ASR:Ljava/lang/String; = "g3.asr.navigate"

.field static final CANCEL:Ljava/lang/String; = "command://navi.search.close"

.field static final CONFIRM:Ljava/lang/String; = "command://navi.confirm.ok"

.field static final CONFIRM_CANCEL:Ljava/lang/String; = "command://navi.confirm.cancel"

.field static final CONTROL:Ljava/lang/String; = "g3.asr.nav.control"

.field private static final EVENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final POI_OPERATE_PREVIEW:I = 0x1

.field static final ROUTE_COUNT:Ljava/lang/String; = "native://navi.select.route.count"

.field static final ROUTE_SELECT:Ljava/lang/String; = "command://navi.route.select"

.field static final SEARCH:Ljava/lang/String; = "native://navi.poi.search"

.field static final START:Ljava/lang/String; = "command://navi.control.start"

.field static final STATE:Ljava/lang/String; = "native://navi.navigating.get"

.field static final STOP:Ljava/lang/String; = "command://navi.control.close"


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 26
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "native://navi.poi.search"

    const-string v2, "command://navi.control.start"

    const-string v3, "command://navi.control.close"

    const-string v4, "native://navi.navigating.get"

    const-string v5, "command://navi.search.close"

    const-string v6, "command://navi.confirm.cancel"

    const-string v7, "command://navi.confirm.ok"

    const-string v8, "command://navi.route.select"

    const-string v9, "native://navi.select.route.count"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/local/p5home/NavProtocol;->EVENTS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(DDDD)Z
    .registers 8

    .line 11
    invoke-static/range {p0 .. p7}, Lcom/local/p5home/NavProtocol;->near(DDDD)Z

    move-result p0

    return p0
.end method

.method static asrText(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 7

    .line 64
    const-string v0, "query"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x78

    invoke-static {v0, v1}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    return-object v0

    .line 66
    :cond_13
    const-string v0, "text"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const/16 v0, 0xb4

    invoke-static {p0, v0}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p0

    .line 67
    const-string v0, "\u5bfc\u822a\u5230"

    const-string v2, "\u5bfc\u822a\u53bb"

    const-string v3, "\u8bf7\u5bfc\u822a\u5230"

    const-string v4, "\u8bf7\u5bfc\u822a\u53bb"

    filled-new-array {v3, v4, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 68
    const/4 v2, 0x0

    :goto_2c
    const-string v3, ""

    const/4 v4, 0x4

    if-ge v2, v4, :cond_7d

    aget-object v4, v0, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 69
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[\u3002\uff01!\uff1f?]+$"

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 70
    const-string v0, "\u7136\u540e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_79

    const-string v0, "\u5e76\u4e14"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_79

    const-string v0, "\u987a\u4fbf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 71
    const-string v0, "\u6253\u5f00\u8f66"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_79

    const-string v0, "\u5173\u95ed\u8f66"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_74

    goto :goto_79

    .line 72
    :cond_74
    invoke-static {p0, v1}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 71
    :cond_79
    :goto_79
    return-object v3

    .line 68
    :cond_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 74
    :cond_7d
    return-object v3
.end method

.method static event(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 31
    const-string v0, "g3.asr.navigate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    const-string v0, "g3.asr.nav.control"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_52

    .line 32
    :cond_11
    const-string v0, ""

    if-eqz p0, :cond_51

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x78

    if-le v1, v2, :cond_1e

    goto :goto_51

    .line 33
    :cond_1e
    sget-object v1, Lcom/local/p5home/NavProtocol;->EVENTS:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    return-object p0

    .line 35
    :cond_27
    const-string v2, "://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_50

    .line 36
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    return-object v3

    .line 38
    :cond_50
    return-object v0

    .line 32
    :cond_51
    :goto_51
    return-object v0

    .line 31
    :cond_52
    :goto_52
    return-object p0
.end method

.method static list(Ljava/lang/String;)Ljava/lang/String;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 188
    move-object/from16 v0, p0

    if-eqz v0, :cond_177

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/high16 v2, 0x10000

    if-gt v1, v2, :cond_177

    .line 189
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 190
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v3, 0x32

    if-gt v2, v3, :cond_16f

    .line 191
    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const-string v4, "title"

    const-string v5, "navi"

    const-string v6, "extra"

    const-string v7, "duiWidget"

    const-string v8, "type"

    const-string v9, "content"

    if-ge v2, v3, :cond_135

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v10, 0x5

    if-ge v3, v10, :cond_135

    .line 192
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 193
    const-string v10, "name"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    const/16 v12, 0x78

    invoke-static {v11, v12}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v11

    .line 194
    const-string v12, "latitude"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/local/p5home/NavProtocol;->number(Ljava/lang/Object;)D

    move-result-wide v13

    const-string v15, "longitude"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v1

    move/from16 p0, v2

    invoke-static/range {v16 .. v16}, Lcom/local/p5home/NavProtocol;->number(Ljava/lang/Object;)D

    move-result-wide v1

    .line 195
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_12d

    invoke-static {v13, v14, v1, v2}, Lcom/local/p5home/NavProtocol;->pair(DD)Z

    move-result v16

    if-eqz v16, :cond_12d

    .line 196
    move-object/from16 v16, v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v10, "dst_name"

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 197
    const-string v10, "poiid"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v18, v6

    const/16 v6, 0x100

    invoke-static {v10, v6}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v10

    const-string v6, "poiId"

    invoke-virtual {v0, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 198
    const-string v6, "address"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v19, v5

    const/16 v5, 0x100

    invoke-static {v10, v5}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 199
    invoke-virtual {v0, v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v15, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "naviLat"

    invoke-virtual {v0, v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "naviLon"

    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    .line 200
    const-string v1, "source"

    const-string v2, "G3_AMAP_SEARCH"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 201
    const-string v1, "entry_latitude"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/local/p5home/NavProtocol;->number(Ljava/lang/Object;)D

    move-result-wide v1

    const-string v5, "entry_longitude"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/local/p5home/NavProtocol;->number(Ljava/lang/Object;)D

    move-result-wide v13

    .line 202
    invoke-static {v1, v2, v13, v14}, Lcom/local/p5home/NavProtocol;->pair(DD)Z

    move-result v5

    if-eqz v5, :cond_eb

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v12, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v15, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "entrLocation"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    :cond_eb
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 204
    invoke-virtual {v1, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x100

    invoke-static {v2, v3}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "subTitle"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 205
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v19

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 203
    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 191
    add-int/lit8 v2, p0, 0x1

    move-object v0, v1

    move-object/from16 v1, v17

    goto/16 :goto_1f

    .line 195
    :cond_12d
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "invalid_poi"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_135
    move-object v1, v0

    move-object v3, v5

    move-object v2, v6

    .line 207
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "list"

    invoke-virtual {v0, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 208
    const-string v6, "extraType"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "\u8bf7\u9009\u62e9\u5730\u70b9"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 209
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const-string v3, "count"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    return-object v0

    .line 190
    :cond_16f
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "result_count_invalid"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_177
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "result_too_large"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static near(DDDD)Z
    .registers 9

    .line 162
    invoke-static {p0, p1, p2, p3}, Lcom/local/p5home/NavProtocol;->pair(DD)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {p4, p5, p6, p7}, Lcom/local/p5home/NavProtocol;->pair(DD)Z

    move-result v0

    if-eqz v0, :cond_25

    sub-double/2addr p0, p4

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p0, p0, p4

    if-gtz p0, :cond_25

    sub-double/2addr p2, p6

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, p4

    if-gtz p0, :cond_25

    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0
.end method

.method static number(Ljava/lang/Object;)D
    .registers 3

    .line 132
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_d

    :cond_b
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_d
    return-wide v0
.end method

.method static object(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 42
    if-eqz p0, :cond_23

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_23

    .line 43
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x4000

    if-gt v0, v1, :cond_1b

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 43
    :cond_1b
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "payload_too_large"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_23
    :goto_23
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method static ordinal(Lorg/json/JSONObject;Ljava/lang/String;)I
    .registers 6

    .line 114
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 117
    instance-of p1, p0, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    .line 118
    check-cast p0, Ljava/lang/String;

    .line 119
    const-string p1, "[1-9]|10"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_14

    return v0

    .line 120
    :cond_14
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 122
    :cond_19
    instance-of p1, p0, Ljava/lang/Number;

    if-nez p1, :cond_1e

    return v0

    .line 123
    :cond_1e
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    .line 124
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p0, v1

    if-ltz v1, :cond_37

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    cmpg-double v1, p0, v1

    if-gtz v1, :cond_37

    double-to-int v1, p0

    int-to-double v2, v1

    cmpl-double p0, p0, v2

    if-nez p0, :cond_37

    move v0, v1

    :cond_37
    return v0
.end method

.method static pair(DD)Z
    .registers 6

    .line 134
    invoke-static {p0, p1}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {p2, p3}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_3c

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_3c

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_3c

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_3c

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-nez p0, :cond_3a

    cmpl-double p0, p2, v0

    if-eqz p0, :cond_3c

    :cond_3a
    const/4 p0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 p0, 0x0

    :goto_3d
    return p0
.end method

.method private static routeNumber(Ljava/lang/Object;)D
    .registers 5

    .line 181
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/local/p5home/NavProtocol;->number(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0

    .line 182
    :cond_9
    instance-of v0, p0, Ljava/lang/String;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-eqz v0, :cond_24

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x20

    if-le v0, v3, :cond_1b

    goto :goto_24

    .line 183
    :cond_1b
    :try_start_1b
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_21} :catch_22

    return-wide v0

    :catch_22
    move-exception p0

    return-wide v1

    .line 182
    :cond_24
    :goto_24
    return-wide v1
.end method

.method static routes(Ljava/lang/String;)Lcom/local/p5home/NavProtocol$Routes;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 165
    if-eqz p0, :cond_aa

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x10000

    if-gt v0, v1, :cond_aa

    .line 166
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 167
    const-string p0, "pathNum"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 168
    const-string v1, "path_info"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 169
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_a2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v4

    int-to-double v4, v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_a2

    .line 170
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_a2

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/16 v3, 0x14

    if-gt v2, v3, :cond_a2

    if-eqz v1, :cond_a2

    .line 171
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_a2

    .line 174
    const-string v1, "ToPoiLatitude"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/local/p5home/NavProtocol;->routeNumber(Ljava/lang/Object;)D

    move-result-wide v4

    const-string v1, "ToPoiLongitude"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/local/p5home/NavProtocol;->routeNumber(Ljava/lang/Object;)D

    move-result-wide v6

    .line 175
    const-string v1, "ArrivePoiLatitude"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/local/p5home/NavProtocol;->routeNumber(Ljava/lang/Object;)D

    move-result-wide v8

    const-string v1, "ArrivePoiLongitude"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/local/p5home/NavProtocol;->routeNumber(Ljava/lang/Object;)D

    move-result-wide v10

    .line 176
    invoke-static {v4, v5, v6, v7}, Lcom/local/p5home/NavProtocol;->pair(DD)Z

    move-result v1

    if-nez v1, :cond_86

    invoke-static {v8, v9, v10, v11}, Lcom/local/p5home/NavProtocol;->pair(DD)Z

    move-result v1

    if-eqz v1, :cond_7e

    goto :goto_86

    :cond_7e
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "route_destination_missing"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 177
    :cond_86
    :goto_86
    new-instance v1, Lcom/local/p5home/NavProtocol$Routes;

    const/4 v2, 0x3

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 178
    const-string p0, "endPoiid"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const/16 v0, 0x100

    invoke-static {p0, v0}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v12

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Lcom/local/p5home/NavProtocol$Routes;-><init>(IDDDDLjava/lang/String;)V

    .line 177
    return-object v1

    .line 172
    :cond_a2
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "route_count_not_observed"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 165
    :cond_aa
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "invalid_route_info"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static searchText(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    .line 56
    const-string v0, "destinationTarget"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x78

    invoke-static {v0, v1}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v0, "destinationName"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    const-string p0, ""

    return-object p0

    .line 59
    :cond_25
    const-string v2, "destinationPrefix"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p0

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static selected(Lorg/json/JSONObject;)Lcom/local/p5home/NavProtocol$Poi;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 88
    move-object/from16 v0, p0

    const-string v1, "poi"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 89
    instance-of v2, v1, Lorg/json/JSONObject;

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    check-cast v1, Lorg/json/JSONObject;

    goto :goto_1c

    .line 90
    :cond_10
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1b

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/local/p5home/NavProtocol;->object(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1c

    :cond_1b
    move-object v1, v3

    .line 91
    :goto_1c
    if-nez v1, :cond_1f

    return-object v3

    .line 92
    :cond_1f
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/16 v4, 0x78

    invoke-static {v2, v4}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3b

    const-string v2, "dst_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    :cond_3b
    move-object v5, v2

    .line 94
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_43

    return-object v3

    .line 95
    :cond_43
    const-string v2, "naviLat"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/local/p5home/NavProtocol;->number(Ljava/lang/Object;)D

    move-result-wide v2

    const-string v4, "naviLon"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/local/p5home/NavProtocol;->number(Ljava/lang/Object;)D

    move-result-wide v6

    .line 96
    const-string v4, "source"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const/16 v8, 0x50

    invoke-static {v4, v8}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v4

    .line 97
    const-string v9, "G3_AMAP_SEARCH"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 98
    const-string v10, "longitude"

    const-string v11, "latitude"

    if-eqz v9, :cond_7f

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/local/p5home/NavProtocol;->number(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/local/p5home/NavProtocol;->number(Ljava/lang/Object;)D

    move-result-wide v6

    :cond_7f
    move-wide v12, v6

    .line 99
    const-string v6, "type"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const/16 v14, 0x1e

    invoke-static {v7, v14}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v7

    const-string v14, "pref"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15, v8}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v8

    .line 100
    const-string v15, "waypoint"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-nez v7, :cond_f1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_af

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_f1

    .line 101
    :cond_af
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bd

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_f1

    .line 102
    :cond_bd
    const-string v6, "naviType"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_cf

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/local/p5home/NavProtocol;->zero(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 103
    :cond_cf
    const-string v6, "routeSelectRef"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/local/p5home/NavProtocol;->zero(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 104
    :cond_e1
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ef

    const-string v0, "\u9ed8\u8ba4"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    :cond_ef
    move v0, v15

    goto :goto_f3

    :cond_f1
    move/from16 v0, v16

    .line 105
    :goto_f3
    if-eqz v0, :cond_106

    invoke-static {v2, v3, v12, v13}, Lcom/local/p5home/NavProtocol;->pair(DD)Z

    move-result v0

    if-eqz v0, :cond_106

    if-nez v9, :cond_105

    const-string v0, "AICloud_AMAP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    :cond_105
    goto :goto_108

    :cond_106
    move/from16 v15, v16

    .line 106
    :goto_108
    const-string v0, "entrLocation"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 107
    new-instance v16, Lcom/local/p5home/NavProtocol$Poi;

    const-string v4, "poiId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x100

    invoke-static {v1, v4}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v6

    .line 108
    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    if-nez v0, :cond_123

    move-wide/from16 v17, v7

    goto :goto_12b

    :cond_123
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/local/p5home/NavProtocol;->number(Ljava/lang/Object;)D

    move-result-wide v17

    .line 109
    :goto_12b
    if-nez v0, :cond_12f

    move-wide v0, v7

    goto :goto_137

    :cond_12f
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/local/p5home/NavProtocol;->number(Ljava/lang/Object;)D

    move-result-wide v0

    :goto_137
    move-object/from16 v4, v16

    move-wide v7, v2

    move-wide v9, v12

    move-wide/from16 v11, v17

    move-wide v13, v0

    invoke-direct/range {v4 .. v15}, Lcom/local/p5home/NavProtocol$Poi;-><init>(Ljava/lang/String;Ljava/lang/String;DDDDZ)V

    .line 107
    return-object v16
.end method

.method static support(Z)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 139
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "custom"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "duiWidget"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 140
    if-eqz p0, :cond_18

    const-string p0, "1"

    goto :goto_1a

    :cond_18
    const-string p0, "0"

    :goto_1a
    const-string v1, "status"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "tts"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 139
    return-object p0
.end method

.method static text(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 4

    .line 48
    instance-of v0, p0, Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_7

    return-object v1

    .line 49
    :cond_7
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_1a

    goto :goto_30

    .line 51
    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2f

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    if-eqz v0, :cond_2c

    return-object v1

    :cond_2c
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    .line 52
    :cond_2f
    return-object p0

    .line 50
    :cond_30
    :goto_30
    return-object v1
.end method

.method static visiblePoiChoice(I)I
    .registers 3

    .line 129
    const/4 v0, 0x1

    if-lt p0, v0, :cond_9

    const/16 v1, 0xa

    if-gt p0, v1, :cond_9

    .line 130
    sub-int/2addr p0, v0

    return p0

    .line 129
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid_visible_poi_ordinal"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zero(Ljava/lang/Object;)Z
    .registers 5

    .line 112
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_12

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method
