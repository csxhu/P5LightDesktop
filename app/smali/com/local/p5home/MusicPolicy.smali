.class final Lcom/local/p5home/MusicPolicy;
.super Ljava/lang/Object;
.source "MusicPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/MusicPolicy$Song;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromAsr(Ljava/lang/String;)Lcom/local/p5home/MusicPolicy$Song;
    .registers 5

    .line 21
    const/4 v0, 0x0

    if-eqz p0, :cond_71

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf0

    if-le v1, v2, :cond_c

    goto :goto_71

    .line 22
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "[\u3002\uff01!\uff1f?]+$"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 23
    const-string v1, "^(?:\u8bf7)?(?:\u5e2e\u6211\u64ad\u653e|\u7ed9\u6211\u64ad\u653e|\u6211\u60f3\u542c|\u6211\u8981\u542c|\u64ad\u653e|\u653e\u4e00\u9996|\u653e\u9996|\u6765\u4e00\u9996)(.+)$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_29

    return-object v0

    :cond_29
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "^(?:\u4e00\u9996|\u6b4c\u66f2|\u97f3\u4e50)[\uff1a: ]*"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "(?:\u8fd9\u9996\u6b4c|\u8fd9\u9996\u6b4c\u66f2)$"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_70

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xa0

    if-gt v1, v3, :cond_70

    const-string v1, "(?s).*(?:\u7136\u540e|\u5e76\u4e14|\u987a\u4fbf|\u5bfc\u822a|\u8f66\u7a97|\u7a7a\u8c03|\u89c6\u9891|\u84dd\u7259|\u6536\u97f3\u673a|\u7535\u53f0|\u672c\u5730|U\u76d8).*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    goto :goto_70

    .line 26
    :cond_59
    const-string v1, "(?:\u97f3\u4e50|\u6b4c\u66f2|\u4e00\u9996\u6b4c|\u6b4c|\u4e00\u4e0b|\u7ee7\u7eed|\u6682\u505c|\u505c\u6b62|\u4e0b\u4e00\u9996|\u4e0a\u4e00\u9996|\u6536\u85cf|\u6211\u7684\u6536\u85cf|\u968f\u673a|\u5168\u90e8|\u5217\u8868)"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    return-object v0

    .line 27
    :cond_62
    new-instance v0, Lcom/local/p5home/MusicPolicy$Song;

    invoke-direct {v0, p0, v2, v2}, Lcom/local/p5home/MusicPolicy$Song;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/local/p5home/MusicPolicy$Song;->json()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/local/p5home/MusicPolicy;->song(Ljava/lang/String;)Lcom/local/p5home/MusicPolicy$Song;

    move-result-object p0

    return-object p0

    .line 25
    :cond_70
    :goto_70
    return-object v0

    .line 21
    :cond_71
    :goto_71
    return-object v0
.end method

.method static provider(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "qishui_phone"
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :phone_provider_next
    return v0
    :phone_provider_next

    .line 7
    const-string v0, "system"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "netease"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "qq"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "kugou"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "qishui"

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

.method static song(Ljava/lang/String;)Lcom/local/p5home/MusicPolicy$Song;
    .registers 5

    .line 15
    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1000

    if-le v1, v2, :cond_c

    goto :goto_3f

    .line 16
    :cond_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "title"

    invoke-static {v1, p0}, Lcom/local/p5home/MusicPolicy;->value(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "artist"

    invoke-static {v1, v2}, Lcom/local/p5home/MusicPolicy;->value(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "album"

    invoke-static {v1, v3}, Lcom/local/p5home/MusicPolicy;->value(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    if-eqz p0, :cond_3c

    if-eqz v2, :cond_3c

    if-eqz v1, :cond_3c

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_3c

    .line 18
    :cond_36
    new-instance v3, Lcom/local/p5home/MusicPolicy$Song;

    invoke-direct {v3, p0, v2, v1}, Lcom/local/p5home/MusicPolicy$Song;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3b} :catch_3d

    return-object v3

    .line 17
    :cond_3c
    :goto_3c
    return-object v0

    .line 19
    :catch_3d
    move-exception p0

    return-object v0

    .line 15
    :cond_3f
    :goto_3f
    return-object v0
.end method

.method private static value(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 29
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2a

    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, p1, :cond_b

    goto :goto_2a

    :cond_b
    instance-of p1, p0, Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_11

    return-object v0

    :cond_11
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0xa0

    if-gt p1, v1, :cond_29

    const-string p1, "(?s).*[\\p{Cntrl}].*"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    goto :goto_29

    :cond_28
    move-object v0, p0

    :cond_29
    :goto_29
    return-object v0

    :cond_2a
    :goto_2a
    const-string p0, ""

    return-object p0
.end method
