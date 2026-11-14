.class final Lcom/local/p5home/HookPolicy;
.super Ljava/lang/Object;
.source "HookPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/HookPolicy$Config;,
        Lcom/local/p5home/HookPolicy$Candidate;,
        Lcom/local/p5home/HookPolicy$Replies;,
        Lcom/local/p5home/HookPolicy$Accepted;,
        Lcom/local/p5home/HookPolicy$Submit;
    }
.end annotation


# static fields
.field private static final DESTINATION:Ljava/util/regex/Pattern;

.field static final OEM:Ljava/lang/String; = "com.xiaopeng.montecarlo"

.field private static final ORDINAL:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 72
    const-string v0, "^(?:(?:\u8bf7|\u9ebb\u70e6)(?:\u4f60)?\\s*)?(?:(?:\u5e2e\u6211|\u6211\u8981|\u6211\u60f3)\\s*)?\u5bfc\u822a\\s*(?:\u5230|\u53bb|\u81f3)\\s*(.+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/local/p5home/HookPolicy;->DESTINATION:Ljava/util/regex/Pattern;

    .line 73
    const-string v0, "(?:\u9009\u62e9|\u9009)?(?:\u7b2c([1-9]|10|[\u4e00\u4e8c\u4e24\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341])(?:\u4e2a(?:\u5730\u70b9|\u76ee\u7684\u5730|\u65b9\u6848|\u8def\u7ebf|\u7ebf\u8def)?|\u6761(?:\u8def\u7ebf|\u7ebf\u8def)?)|\u65b9\u6848([1-9]|10|[\u4e00\u4e8c\u4e24\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341]))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/local/p5home/HookPolicy;->ORDINAL:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static canonicalNavigation(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 84
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 85
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "native://navi.poi.search"

    const-string v3, "command://navi.confirm.cancel"

    const-string v4, "command://navi.confirm.ok"

    const-string v5, "command://navi.route.select"

    const-string v6, "native://navi.navigating.get"

    const-string v7, "native://navi.select.route.count"

    const-string v8, "command://navi.control.start"

    const-string v9, "command://navi.control.close"

    sparse-switch v1, :sswitch_data_c8

    :cond_1b
    goto/16 :goto_ba

    :sswitch_1d
    const-string v1, "navi.select.route.count"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/16 p0, 0xa

    goto/16 :goto_bb

    :sswitch_29
    const-string v1, "navi.control.start"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x2

    goto/16 :goto_bb

    :sswitch_34
    const-string v1, "navi.control.close"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x4

    goto/16 :goto_bb

    :sswitch_3f
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto/16 :goto_bb

    :sswitch_48
    const-string v1, "navi.confirm.ok"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/16 p0, 0xc

    goto/16 :goto_bb

    :sswitch_54
    const-string v1, "navi.route.select"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/16 p0, 0x8

    goto :goto_bb

    :sswitch_5f
    const-string v1, "navi.poi.search"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x0

    goto :goto_bb

    :sswitch_69
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/16 p0, 0xf

    goto :goto_bb

    :sswitch_72
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/16 p0, 0xd

    goto :goto_bb

    :sswitch_7b
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/16 p0, 0x9

    goto :goto_bb

    :sswitch_84
    const-string v1, "navi.confirm.cancel"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/16 p0, 0xe

    goto :goto_bb

    :sswitch_8f
    const-string v1, "navi.navigating.get"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x6

    goto :goto_bb

    :sswitch_99
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x7

    goto :goto_bb

    :sswitch_a1
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/16 p0, 0xb

    goto :goto_bb

    :sswitch_aa
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x3

    goto :goto_bb

    :sswitch_b2
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x5

    goto :goto_bb

    :goto_ba
    const/4 p0, -0x1

    :goto_bb
    packed-switch p0, :pswitch_data_10a

    .line 94
    return-object v0

    .line 93
    :pswitch_bf
    return-object v3

    .line 92
    :pswitch_c0
    return-object v4

    .line 91
    :pswitch_c1
    return-object v7

    .line 90
    :pswitch_c2
    return-object v5

    .line 89
    :pswitch_c3
    return-object v6

    .line 88
    :pswitch_c4
    return-object v9

    .line 87
    :pswitch_c5
    return-object v8

    .line 86
    :pswitch_c6
    return-object v2

    nop

    :sswitch_data_c8
    .sparse-switch
        -0x7f5f9372 -> :sswitch_b2
        -0x7e7aad08 -> :sswitch_aa
        -0x51281d03 -> :sswitch_a1
        -0x45b93e65 -> :sswitch_99
        -0x44ec0962 -> :sswitch_8f
        -0x449b0f50 -> :sswitch_84
        -0x257fab06 -> :sswitch_7b
        -0x1ba4293d -> :sswitch_72
        -0x396d41f -> :sswitch_69
        0x1b2d1114 -> :sswitch_5f
        0x23f50189 -> :sswitch_54
        0x3ce05b12 -> :sswitch_48
        0x4acee291 -> :sswitch_3f
        0x65c151df -> :sswitch_34
        0x66a63849 -> :sswitch_29
        0x6c2cde80 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_c6
        :pswitch_c6
        :pswitch_c5
        :pswitch_c5
        :pswitch_c4
        :pswitch_c4
        :pswitch_c3
        :pswitch_c3
        :pswitch_c2
        :pswitch_c2
        :pswitch_c1
        :pswitch_c1
        :pswitch_c0
        :pswitch_c0
        :pswitch_bf
        :pswitch_bf
    .end packed-switch
.end method

.method static digest(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 127
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_18
    if-ge v3, v1, :cond_35

    aget-byte v4, p0, v3

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    return-object p0

    .line 128
    :catch_3a
    move-exception p0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "digest_unavailable"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static finalText(Lcom/local/p5home/HookPolicy$Config;Ljava/lang/String;ZZJ)Lcom/local/p5home/HookPolicy$Candidate;
    .registers 13

    .line 37
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lcom/local/p5home/HookPolicy;->finalText(Lcom/local/p5home/HookPolicy$Config;Ljava/lang/String;ZZJZ)Lcom/local/p5home/HookPolicy$Candidate;

    move-result-object p0

    return-object p0
.end method

.method static finalText(Lcom/local/p5home/HookPolicy$Config;Ljava/lang/String;ZZJZ)Lcom/local/p5home/HookPolicy$Candidate;
    .registers 9

    .line 40
    const/4 v0, 0x0

    if-eqz p0, :cond_8d

    invoke-virtual {p0, p4, p5}, Lcom/local/p5home/HookPolicy$Config;->active(J)Z

    move-result p4

    if-eqz p4, :cond_8d

    if-eqz p2, :cond_8d

    if-nez p3, :cond_8d

    const/16 p2, 0x3e8

    invoke-static {p1, p2}, Lcom/local/p5home/HookPolicy;->plain(Ljava/lang/String;I)Z

    move-result p3

    if-nez p3, :cond_17

    goto/16 :goto_8d

    .line 41
    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p3, "[\uff0c\u3002\uff01\uff1f!?,]+$"

    const-string p4, ""

    invoke-virtual {p1, p3, p4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 42
    iget-object p3, p0, Lcom/local/p5home/HookPolicy$Config;->prefix:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    const-string p5, "qa"

    if-nez p3, :cond_6d

    iget-object p3, p0, Lcom/local/p5home/HookPolicy$Config;->prefix:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v1, 0x20

    if-gt p3, v1, :cond_6d

    iget-object p3, p0, Lcom/local/p5home/HookPolicy$Config;->prefix:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6d

    .line 43
    iget-boolean p3, p0, Lcom/local/p5home/HookPolicy$Config;->qa:Z

    if-eqz p3, :cond_6c

    iget-boolean p3, p0, Lcom/local/p5home/HookPolicy$Config;->hasApi:Z

    if-nez p3, :cond_4c

    goto :goto_6c

    .line 44
    :cond_4c
    iget-object p0, p0, Lcom/local/p5home/HookPolicy$Config;->prefix:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "^[\\s\uff0c,:\uff1a\u3002]+"

    invoke-virtual {p0, p1, p4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 45
    invoke-static {p0, p2}, Lcom/local/p5home/HookPolicy;->plain(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6b

    new-instance v0, Lcom/local/p5home/HookPolicy$Candidate;

    invoke-direct {v0, p5, p0, p4}, Lcom/local/p5home/HookPolicy$Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    return-object v0

    .line 43
    :cond_6c
    :goto_6c
    return-object v0

    .line 47
    :cond_6d
    const-string p2, "\u9000\u51fa|\u9000\u51fa\u8bed\u97f3|\u518d\u89c1|\u4e0d\u7528\u4e86|\u9000\u4e0b"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_76

    return-object v0

    .line 48
    :cond_76
    invoke-static {p0, p1}, Lcom/local/p5home/HookPolicy;->navigationText(Lcom/local/p5home/HookPolicy$Config;Ljava/lang/String;)Lcom/local/p5home/HookPolicy$Candidate;

    move-result-object p2

    if-eqz p2, :cond_7d

    return-object p2

    .line 49
    :cond_7d
    if-eqz p6, :cond_8c

    iget-boolean p2, p0, Lcom/local/p5home/HookPolicy$Config;->qa:Z

    if-eqz p2, :cond_8c

    iget-boolean p0, p0, Lcom/local/p5home/HookPolicy$Config;->hasApi:Z

    if-eqz p0, :cond_8c

    new-instance v0, Lcom/local/p5home/HookPolicy$Candidate;

    invoke-direct {v0, p5, p1, p4}, Lcom/local/p5home/HookPolicy$Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8c
    return-object v0

    .line 40
    :cond_8d
    :goto_8d
    return-object v0
.end method

.method static mightControl(Ljava/lang/String;)Z
    .registers 4

    .line 74
    const/4 v0, 0x0

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x18

    if-le v1, v2, :cond_c

    goto :goto_25

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/local/p5home/HookPolicy;->ORDINAL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "\u5f00\u59cb(?:\u5bfc\u822a)?|\u53d6\u6d88(?:\u5bfc\u822a|\u8def\u7ebf)?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    :cond_24
    const/4 v0, 0x1

    :cond_25
    :goto_25
    return v0
.end method

.method static navigationEvent(Lcom/local/p5home/HookPolicy$Config;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .registers 6

    .line 77
    const/4 v0, 0x0

    if-eqz p0, :cond_4f

    invoke-virtual {p0, p3, p4}, Lcom/local/p5home/HookPolicy$Config;->active(J)Z

    move-result p3

    if-eqz p3, :cond_4f

    invoke-virtual {p0}, Lcom/local/p5home/HookPolicy$Config;->nativeNav()Z

    move-result p3

    if-nez p3, :cond_4f

    iget-boolean p0, p0, Lcom/local/p5home/HookPolicy$Config;->navAvailable:Z

    if-eqz p0, :cond_4f

    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p3, 0x78

    if-gt p0, p3, :cond_4f

    if-eqz p2, :cond_4f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p2, 0x4000

    if-le p0, p2, :cond_28

    goto :goto_4f

    .line 78
    :cond_28
    invoke-static {p1}, Lcom/local/p5home/HookPolicy;->canonicalNavigation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 79
    const-string p1, "command://navi.route.select"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    const-string p1, "native://navi.select.route.count"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    .line 80
    const-string p1, "command://navi.confirm.ok"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    const-string p1, "command://navi.confirm.cancel"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    goto :goto_4e

    .line 81
    :cond_4d
    return-object p0

    .line 80
    :cond_4e
    :goto_4e
    return-object v0

    .line 77
    :cond_4f
    :goto_4f
    return-object v0
.end method

.method private static navigationText(Lcom/local/p5home/HookPolicy$Config;Ljava/lang/String;)Lcom/local/p5home/HookPolicy$Candidate;
    .registers 15

    .line 52
    invoke-virtual {p0}, Lcom/local/p5home/HookPolicy$Config;->nativeNav()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_124

    iget-boolean v0, p0, Lcom/local/p5home/HookPolicy$Config;->navAvailable:Z

    if-nez v0, :cond_d

    goto/16 :goto_124

    .line 53
    :cond_d
    const-string v0, "(?:\u7ed3\u675f|\u505c\u6b62|\u9000\u51fa|\u53d6\u6d88|\u5173\u95ed)(?:\u5f53\u524d)?\u5bfc\u822a[\u5427\u4e86]?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance p1, Lcom/local/p5home/HookPolicy$Candidate;

    const-string v3, "nav"

    const-string v4, "stop"

    const-string v5, "command://navi.control.close"

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/local/p5home/HookPolicy$Config;->navEpoch:J

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/local/p5home/HookPolicy$Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object p1

    .line 54
    :cond_25
    sget-object v0, Lcom/local/p5home/HookPolicy;->DESTINATION:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5c

    .line 56
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "^[\\s\uff0c,:\uff1a\u3002]+"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 57
    const/16 v2, 0x78

    invoke-static {v0, v2}, Lcom/local/p5home/HookPolicy;->plain(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, ".*(?:\u7136\u540e|\u5e76\u4e14|\u987a\u4fbf|\u540c\u65f6).*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    new-instance p0, Lcom/local/p5home/HookPolicy$Candidate;

    const-string p1, "nav"

    const-string v1, "g3.asr.navigate"

    invoke-direct {p0, p1, v0, v1}, Lcom/local/p5home/HookPolicy$Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 59
    :cond_5c
    const-string v0, "com.autonavi.amapauto"

    iget-object v2, p0, Lcom/local/p5home/HookPolicy$Config;->nav:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_123

    iget-wide v4, p0, Lcom/local/p5home/HookPolicy$Config;->navEpoch:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_70

    goto/16 :goto_123

    .line 60
    :cond_70
    const-string v0, "poi_list"

    iget-object v2, p0, Lcom/local/p5home/HookPolicy$Config;->navStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_81

    iget v0, p0, Lcom/local/p5home/HookPolicy$Config;->navPoiCount:I

    if-lez v0, :cond_81

    move v0, v3

    goto :goto_82

    :cond_81
    move v0, v2

    .line 61
    :goto_82
    const-string v4, "route_list"

    iget-object v5, p0, Lcom/local/p5home/HookPolicy$Config;->navStage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    iget v4, p0, Lcom/local/p5home/HookPolicy$Config;->navRouteCount:I

    if-lez v4, :cond_92

    move v4, v3

    goto :goto_93

    :cond_92
    move v4, v2

    .line 62
    :goto_93
    sget-object v5, Lcom/local/p5home/HookPolicy;->ORDINAL:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 63
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_108

    if-nez v0, :cond_a3

    if-eqz v4, :cond_108

    .line 64
    :cond_a3
    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_af

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_b3

    :cond_af
    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    :goto_b3
    invoke-static {v5}, Lcom/local/p5home/HookPolicy;->number(Ljava/lang/String;)I

    move-result v10

    .line 65
    const-string v5, "\u8def\u7ebf"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d9

    const-string v5, "\u7ebf\u8def"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d9

    const-string v5, "\u65b9\u6848"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d9

    const-string v5, "\u6761"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d8

    goto :goto_d9

    :cond_d8
    move v3, v2

    .line 66
    :cond_d9
    :goto_d9
    if-eqz v0, :cond_f0

    if-nez v3, :cond_f0

    iget v0, p0, Lcom/local/p5home/HookPolicy$Config;->navPoiCount:I

    if-gt v10, v0, :cond_f0

    new-instance p1, Lcom/local/p5home/HookPolicy$Candidate;

    const-string v7, "nav"

    const-string v8, "select_poi"

    const-string v9, "g3.asr.nav.control"

    iget-wide v11, p0, Lcom/local/p5home/HookPolicy$Config;->navEpoch:J

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Lcom/local/p5home/HookPolicy$Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object p1

    .line 67
    :cond_f0
    if-eqz v4, :cond_108

    iget v0, p0, Lcom/local/p5home/HookPolicy$Config;->navRouteCount:I

    if-gt v10, v0, :cond_108

    const/4 v0, 0x3

    if-gt v10, v0, :cond_108

    new-instance p1, Lcom/local/p5home/HookPolicy$Candidate;

    const-string v7, "nav"

    const-string v8, "select_route"

    const-string v9, "g3.asr.nav.control"

    iget-wide v11, p0, Lcom/local/p5home/HookPolicy$Config;->navEpoch:J

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Lcom/local/p5home/HookPolicy$Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object p1

    .line 69
    :cond_108
    if-eqz v4, :cond_122

    const-string v0, "(?:\u5f00\u59cb|\u5f00\u59cb\u5bfc\u822a|\u5f00\u59cb\u51fa\u53d1|\u51fa\u53d1)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_122

    new-instance p1, Lcom/local/p5home/HookPolicy$Candidate;

    const-string v3, "nav"

    const-string v4, "start"

    const-string v5, "g3.asr.nav.control"

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/local/p5home/HookPolicy$Config;->navEpoch:J

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/local/p5home/HookPolicy$Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object p1

    .line 70
    :cond_122
    return-object v1

    .line 59
    :cond_123
    :goto_123
    return-object v1

    .line 52
    :cond_124
    :goto_124
    return-object v1
.end method

.method private static number(Ljava/lang/String;)I
    .registers 2

    .line 75
    const-string v0, "10"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "\u5341"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2b

    :cond_11
    const-string v0, "\u4e24"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 p0, 0x2

    return p0

    :cond_1b
    const-string v0, "\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_26

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_26
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2a
    return v0

    :cond_2b
    :goto_2b
    const/16 p0, 0xa

    return p0
.end method

.method static plain(Ljava/lang/String;I)Z
    .registers 5

    .line 98
    const/4 v0, 0x0

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_14

    goto :goto_35

    .line 99
    :cond_14
    move p1, v0

    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_33

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ge v1, v2, :cond_2b

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2b

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2f

    :cond_2b
    const/16 v2, 0x7f

    if-ne v1, v2, :cond_30

    :cond_2f
    return v0

    :cond_30
    add-int/lit8 p1, p1, 0x1

    goto :goto_15

    .line 100
    :cond_33
    const/4 p0, 0x1

    return p0

    .line 98
    :cond_35
    :goto_35
    return v0
.end method

.method static replyEnabled(Lcom/local/p5home/HookPolicy$Config;Ljava/lang/String;J)Z
    .registers 6

    .line 113
    const-string v0, "notice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_61

    const-string v0, "session_end"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    const-string v0, "turn_complete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    const-string v0, "turn_started"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    const-string v0, "transcript"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_61

    .line 114
    :cond_2a
    const/4 v0, 0x0

    if-eqz p0, :cond_60

    invoke-virtual {p0, p2, p3}, Lcom/local/p5home/HookPolicy$Config;->active(J)Z

    move-result p2

    if-nez p2, :cond_34

    goto :goto_60

    .line 115
    :cond_34
    const-string p2, "speech"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_47

    iget-boolean p1, p0, Lcom/local/p5home/HookPolicy$Config;->qa:Z

    if-eqz p1, :cond_45

    iget-boolean p0, p0, Lcom/local/p5home/HookPolicy$Config;->hasApi:Z

    if-eqz p0, :cond_45

    goto :goto_46

    :cond_45
    move v1, v0

    :goto_46
    return v1

    .line 116
    :cond_47
    const-string p2, "result"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_57

    const-string p2, "support"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    :cond_57
    invoke-virtual {p0}, Lcom/local/p5home/HookPolicy$Config;->nativeNav()Z

    move-result p0

    if-nez p0, :cond_5e

    goto :goto_5f

    :cond_5e
    move v1, v0

    :goto_5f
    return v1

    .line 114
    :cond_60
    :goto_60
    return v0

    .line 113
    :cond_61
    :goto_61
    return v1
.end method

.method static replyEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 104
    invoke-static {p0}, Lcom/local/p5home/HookPolicy;->safeId(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 105
    :cond_8
    const-string p0, "session_end"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_9b

    const-string p0, "turn_complete"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9b

    const-string p0, "turn_started"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    goto/16 :goto_9b

    .line 106
    :cond_23
    const-string p0, "transcript"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/16 v2, 0x4b0

    if-eqz p0, :cond_45

    invoke-static {p2, v2}, Lcom/local/p5home/HookPolicy;->plain(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_44

    if-eqz p3, :cond_3b

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_44

    :cond_3b
    if-eqz p4, :cond_43

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_44

    :cond_43
    move v0, v1

    :cond_44
    return v0

    .line 107
    :cond_45
    const-string p0, "speech"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_96

    const-string p0, "notice"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_56

    goto :goto_96

    .line 108
    :cond_56
    if-eqz p4, :cond_95

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p2, 0x4000

    if-le p0, p2, :cond_61

    goto :goto_95

    .line 109
    :cond_61
    const-string p0, "result"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7b

    const-string p0, "native://navi.poi.search"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_79

    const-string p0, "native://navi.nearby.search"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7a

    :cond_79
    move v0, v1

    :cond_7a
    return v0

    .line 110
    :cond_7b
    const-string p0, "support"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_94

    const-string p0, "native://navi.navigating.get"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_93

    const-string p0, "native://navi.select.route.count"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_94

    :cond_93
    move v0, v1

    :cond_94
    return v0

    .line 108
    :cond_95
    :goto_95
    return v0

    .line 107
    :cond_96
    :goto_96
    invoke-static {p2, v2}, Lcom/local/p5home/HookPolicy;->plain(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 105
    :cond_9b
    :goto_9b
    if-eqz p2, :cond_a3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_b4

    :cond_a3
    if-eqz p3, :cond_ab

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_b4

    :cond_ab
    if-eqz p4, :cond_b3

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_b4

    :cond_b3
    move v0, v1

    :cond_b4
    return v0
.end method

.method static routeReplyOwned(Lcom/local/p5home/HookPolicy$Config;JJ)Z
    .registers 5

    .line 123
    if-eqz p0, :cond_2e

    invoke-virtual {p0, p3, p4}, Lcom/local/p5home/HookPolicy$Config;->active(J)Z

    move-result p3

    if-eqz p3, :cond_2e

    invoke-virtual {p0}, Lcom/local/p5home/HookPolicy$Config;->nativeNav()Z

    move-result p3

    if-nez p3, :cond_2e

    iget-boolean p3, p0, Lcom/local/p5home/HookPolicy$Config;->navAvailable:Z

    if-eqz p3, :cond_2e

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-ltz p3, :cond_2e

    iget-wide p3, p0, Lcom/local/p5home/HookPolicy$Config;->navEpoch:J

    cmp-long p1, p3, p1

    if-nez p1, :cond_2e

    iget-object p1, p0, Lcom/local/p5home/HookPolicy$Config;->navStage:Ljava/lang/String;

    .line 124
    const-string p2, "route_list"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    iget p0, p0, Lcom/local/p5home/HookPolicy$Config;->navRouteCount:I

    if-lez p0, :cond_2e

    const/4 p0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    .line 123
    :goto_2f
    return p0
.end method

.method static safeId(Ljava/lang/String;)Z
    .registers 2

    .line 102
    if-eqz p0, :cond_c

    const-string v0, "[A-Za-z0-9._-]{1,100}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method static searchReplyOwned(Lcom/local/p5home/HookPolicy$Config;JJ)Z
    .registers 5

    .line 119
    if-eqz p0, :cond_34

    invoke-virtual {p0, p3, p4}, Lcom/local/p5home/HookPolicy$Config;->active(J)Z

    move-result p3

    if-eqz p3, :cond_34

    invoke-virtual {p0}, Lcom/local/p5home/HookPolicy$Config;->nativeNav()Z

    move-result p3

    if-nez p3, :cond_34

    iget-boolean p3, p0, Lcom/local/p5home/HookPolicy$Config;->navAvailable:Z

    if-eqz p3, :cond_34

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-ltz p3, :cond_34

    iget-wide p3, p0, Lcom/local/p5home/HookPolicy$Config;->navEpoch:J

    cmp-long p1, p3, p1

    if-nez p1, :cond_34

    iget-object p1, p0, Lcom/local/p5home/HookPolicy$Config;->navStage:Ljava/lang/String;

    .line 120
    const-string p2, "searching"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    const-string p1, "poi_list"

    iget-object p0, p0, Lcom/local/p5home/HookPolicy$Config;->navStage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    :cond_32
    const/4 p0, 0x1

    goto :goto_35

    :cond_34
    const/4 p0, 0x0

    .line 119
    :goto_35
    return p0
.end method
