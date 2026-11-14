.class public final Lcom/local/p5home/NavTrace;
.super Ljava/lang/Object;
.source "NavTrace.java"


# static fields
.field private static final EVENT:Ljava/util/regex/Pattern;

.field private static final MAX_DEPTH:I = 0x20

.field private static final MAX_INPUT:I = 0x4000

.field private static final MAX_ITEMS:I = 0x8

.field private static final MAX_OUTPUT:I = 0x800

.field private static final PREFIX:Ljava/lang/String; = "{\"items\":["

.field private static final SUFFIX:Ljava/lang/String; = "]}"


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private final RING:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private itemChars:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-string v0, "(?:(?:native|command)://)?navi\\.[A-Za-z]+(?:\\.[A-Za-z]+)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/local/p5home/NavTrace;->EVENT:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/NavTrace;->LOCK:Ljava/lang/Object;

    .line 14
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/NavTrace;->RING:Ljava/util/ArrayDeque;

    .line 88
    return-void
.end method

.method private static integer(Ljava/lang/Object;III)I
    .registers 6

    .line 61
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_9

    return p3

    .line 62
    :cond_9
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    int-to-long p0, p1

    cmp-long p0, v0, p0

    if-ltz p0, :cond_1a

    int-to-long p0, p2

    cmp-long p0, v0, p0

    if-gtz p0, :cond_1a

    long-to-int p3, v0

    :cond_1a
    return p3
.end method

.method private length()I
    .registers 4

    .line 52
    const-string v0, "{\"items\":["

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "]}"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/local/p5home/NavTrace;->itemChars:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/local/p5home/NavTrace;->RING:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static numberType(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 55
    if-eqz p0, :cond_18

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v0, :cond_7

    goto :goto_18

    :cond_7
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_e

    const-string p0, "NUMBER"

    goto :goto_1a

    :cond_e
    instance-of p0, p0, Ljava/lang/String;

    if-eqz p0, :cond_15

    const-string p0, "STRING"

    goto :goto_1a

    :cond_15
    const-string p0, "OTHER"

    goto :goto_1a

    :cond_18
    :goto_18
    const-string p0, "NONE"

    :goto_1a
    return-object p0
.end method

.method private static object(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 11

    .line 75
    const/4 v0, 0x0

    if-eqz p0, :cond_73

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x4000

    if-le v1, v2, :cond_d

    goto/16 :goto_73

    .line 76
    :cond_d
    nop

    .line 77
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_54

    .line 78
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 79
    const/16 v7, 0x22

    const/4 v8, 0x1

    if-eqz v3, :cond_30

    if-eqz v5, :cond_26

    move v5, v1

    goto :goto_51

    :cond_26
    const/16 v9, 0x5c

    if-ne v6, v9, :cond_2c

    move v5, v8

    goto :goto_51

    :cond_2c
    if-ne v6, v7, :cond_51

    move v3, v1

    goto :goto_51

    .line 80
    :cond_30
    if-ne v6, v7, :cond_34

    move v3, v8

    goto :goto_51

    .line 81
    :cond_34
    const/16 v7, 0x7b

    if-eq v6, v7, :cond_4a

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_3d

    goto :goto_4a

    .line 82
    :cond_3d
    const/16 v7, 0x7d

    if-eq v6, v7, :cond_45

    const/16 v7, 0x5d

    if-ne v6, v7, :cond_51

    :cond_45
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_51

    return-object v0

    .line 81
    :cond_4a
    :goto_4a
    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0x20

    if-le v4, v6, :cond_51

    return-object v0

    .line 77
    :cond_51
    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 84
    :cond_54
    if-nez v3, :cond_72

    if-eqz v4, :cond_59

    goto :goto_72

    .line 85
    :cond_59
    :try_start_59
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v2, p0, Lorg/json/JSONObject;

    if-eqz v2, :cond_6f

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextClean()C

    move-result v1

    if-nez v1, :cond_6f

    check-cast p0, Lorg/json/JSONObject;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_6e} :catch_70

    move-object v0, p0

    :cond_6f
    return-object v0

    .line 86
    :catch_70
    move-exception p0

    return-object v0

    .line 84
    :cond_72
    :goto_72
    return-object v0

    .line 75
    :cond_73
    :goto_73
    return-object v0
.end method

.method private static ordinal(Ljava/lang/Object;)I
    .registers 7

    .line 57
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xc

    if-le v0, v2, :cond_14

    return v1

    :cond_14
    :try_start_14
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_18} :catch_26

    const-wide/16 v4, 0x1

    cmp-long p0, v2, v4

    if-ltz p0, :cond_25

    const-wide/16 v4, 0xa

    cmp-long p0, v2, v4

    if-gtz p0, :cond_25

    long-to-int v1, v2

    :cond_25
    return v1

    :catch_26
    move-exception p0

    return v1

    .line 58
    :cond_28
    const/4 v0, 0x1

    const/16 v2, 0xa

    invoke-static {p0, v0, v2, v1}, Lcom/local/p5home/NavTrace;->integer(Ljava/lang/Object;III)I

    move-result p0

    return p0
.end method

.method private static outcome(Ljava/lang/String;)Z
    .registers 2

    .line 54
    const-string v0, "PASS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "ACK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "REPLY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "TIMEOUT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "ERROR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    :goto_2c
    return p0
.end method

.method private static point(Ljava/lang/String;)Z
    .registers 2

    .line 53
    const-string v0, "BUS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "QUERY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "RESULT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method private static preference(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 65
    const-string v0, "EMPTY"

    if-eqz p0, :cond_2a

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v1, :cond_9

    goto :goto_2a

    .line 66
    :cond_9
    instance-of v1, p0, Ljava/lang/String;

    const-string v2, "OTHER"

    if-nez v1, :cond_10

    return-object v2

    .line 67
    :cond_10
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_29

    :cond_1d
    const-string v0, "\u9ed8\u8ba4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    const-string v0, "DEFAULT"

    goto :goto_29

    :cond_28
    move-object v0, v2

    :goto_29
    return-object v0

    .line 65
    :cond_2a
    :goto_2a
    return-object v0
.end method

.method private static type(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 70
    const-string v0, "EMPTY"

    if-eqz p0, :cond_2a

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v1, :cond_9

    goto :goto_2a

    .line 71
    :cond_9
    instance-of v1, p0, Ljava/lang/String;

    const-string v2, "OTHER"

    if-nez v1, :cond_10

    return-object v2

    .line 72
    :cond_10
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_29

    :cond_1d
    const-string v0, "waypoint"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    const-string v0, "WAYPOINT"

    goto :goto_29

    :cond_28
    move-object v0, v2

    :goto_29
    return-object v0

    .line 70
    :cond_2a
    :goto_2a
    return-object v0
.end method


# virtual methods
.method public observe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 19
    invoke-static {p1}, Lcom/local/p5home/NavTrace;->point(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_157

    invoke-static {p4}, Lcom/local/p5home/NavTrace;->outcome(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_157

    if-eqz p2, :cond_157

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_157

    sget-object v0, Lcom/local/p5home/NavTrace;->EVENT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_157

    .line 22
    :cond_24
    :try_start_24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "point"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "event"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "outcome"

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 23
    invoke-static {p3}, Lcom/local/p5home/NavTrace;->object(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 24
    if-nez p2, :cond_4a

    const-string p2, "shape"

    const-string p3, "BAD_JSON"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_fd

    .line 26
    :cond_4a
    const-string p3, "poi"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .line 27
    if-eqz p3, :cond_68

    sget-object p4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p3, p4, :cond_57

    goto :goto_68

    :cond_57
    instance-of p4, p3, Lorg/json/JSONObject;

    if-eqz p4, :cond_5e

    const-string p3, "OBJECT"

    goto :goto_6a

    :cond_5e
    instance-of p3, p3, Ljava/lang/String;

    if-eqz p3, :cond_65

    const-string p3, "STRING"

    goto :goto_6a

    :cond_65
    const-string p3, "OTHER"

    goto :goto_6a

    :cond_68
    :goto_68
    const-string p3, "NONE"

    .line 28
    :goto_6a
    const-string p4, "shape"

    const-string v0, "OK"

    invoke-virtual {p1, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p4

    const-string v0, "poi"

    invoke-virtual {p4, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "num"

    const-string v0, "num"

    .line 29
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/local/p5home/NavTrace;->ordinal(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p3, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "numType"

    const-string v0, "num"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/local/p5home/NavTrace;->numberType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "naviType"

    const-string v0, "naviType"

    .line 30
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/local/p5home/NavTrace;->integer(Ljava/lang/Object;III)I

    move-result v0

    invoke-virtual {p3, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "ntType"

    const-string v0, "naviType"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/local/p5home/NavTrace;->numberType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "routeSelectRef"

    const-string v0, "routeSelectRef"

    .line 31
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v3, v1, v2}, Lcom/local/p5home/NavTrace;->integer(Ljava/lang/Object;III)I

    move-result v0

    invoke-virtual {p3, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "refType"

    const-string v0, "routeSelectRef"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/local/p5home/NavTrace;->numberType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "pref"

    const-string v0, "pref"

    .line 32
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/local/p5home/NavTrace;->preference(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "type"

    const-string v0, "type"

    .line 33
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/local/p5home/NavTrace;->type(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    :goto_fd
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_101} :catch_155

    .line 36
    nop

    .line 37
    if-eqz p1, :cond_154

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "{\"items\":["

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    const-string p3, "]}"

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    const/16 p3, 0x800

    if-le p2, p3, :cond_11b

    goto :goto_154

    .line 38
    :cond_11b
    iget-object p2, p0, Lcom/local/p5home/NavTrace;->LOCK:Ljava/lang/Object;

    monitor-enter p2

    .line 39
    :try_start_11e
    iget-object p4, p0, Lcom/local/p5home/NavTrace;->RING:Ljava/util/ArrayDeque;

    invoke-virtual {p4, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget p4, p0, Lcom/local/p5home/NavTrace;->itemChars:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p0, Lcom/local/p5home/NavTrace;->itemChars:I

    .line 40
    :goto_12c
    iget-object p1, p0, Lcom/local/p5home/NavTrace;->RING:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    const/16 p4, 0x8

    if-gt p1, p4, :cond_13f

    invoke-direct {p0}, Lcom/local/p5home/NavTrace;->length()I

    move-result p1

    if-le p1, p3, :cond_13d

    goto :goto_13f

    .line 41
    :cond_13d
    monitor-exit p2

    .line 42
    return-void

    .line 40
    :cond_13f
    :goto_13f
    iget p1, p0, Lcom/local/p5home/NavTrace;->itemChars:I

    iget-object p4, p0, Lcom/local/p5home/NavTrace;->RING:Ljava/util/ArrayDeque;

    invoke-virtual {p4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    sub-int/2addr p1, p4

    iput p1, p0, Lcom/local/p5home/NavTrace;->itemChars:I

    goto :goto_12c

    .line 41
    :catchall_151
    move-exception p1

    monitor-exit p2
    :try_end_153
    .catchall {:try_start_11e .. :try_end_153} :catchall_151

    throw p1

    .line 37
    :cond_154
    :goto_154
    return-void

    .line 36
    :catch_155
    move-exception p1

    return-void

    .line 19
    :cond_157
    :goto_157
    return-void
.end method

.method public snapshot()Ljava/lang/String;
    .registers 6

    .line 46
    iget-object v0, p0, Lcom/local/p5home/NavTrace;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/local/p5home/NavTrace;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "{\"items\":["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/local/p5home/NavTrace;->RING:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v3, :cond_2c

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_19

    .line 49
    :cond_31
    const-string v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 50
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method
