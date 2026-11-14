.class public final Lcom/local/p5home/ArkClient;
.super Ljava/lang/Object;
.source "ArkClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/ArkClient$ApiException;
    }
.end annotation


# instance fields
.field private volatile active:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanAnswer(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/local/p5home/ArkClient$ApiException;
        }
    .end annotation

    .line 95
    const-string v0, "```[\\s\\S]*?```"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(?m)^\\s*#{1,6}\\s*"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "**"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xbb8

    if-le v0, v1, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\u3002"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_40
    return-object p0

    .line 96
    :cond_41
    new-instance p0, Lcom/local/p5home/ArkClient$ApiException;

    const-string v0, "\u6a21\u578b\u672a\u8fd4\u56de\u53ef\u64ad\u62a5\u7684\u6587\u5b57\uff0c\u8bf7\u66f4\u6362\u6a21\u578b\u6216\u91cd\u8bd5"

    invoke-direct {p0, v0}, Lcom/local/p5home/ArkClient$ApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static httpError(I)Ljava/lang/String;
    .registers 3

    .line 63
    const/16 v0, 0x191

    if-eq p0, v0, :cond_41

    const/16 v0, 0x193

    if-ne p0, v0, :cond_9

    goto :goto_41

    .line 64
    :cond_9
    const/16 v0, 0x194

    if-ne p0, v0, :cond_10

    const-string p0, "\u63a5\u53e3\u6216\u6a21\u578b\u4e0d\u53ef\u7528\uff08404\uff09\uff0c\u8bf7\u68c0\u67e5\u6a21\u578b\u5f00\u901a\u3001Key\u6743\u9650\u4e0e\u63a5\u53e3\u7c7b\u578b"

    return-object p0

    .line 65
    :cond_10
    const/16 v0, 0x1ad

    if-ne p0, v0, :cond_17

    const-string p0, "\u8bf7\u6c42\u53d7\u9650\u6216\u989d\u5ea6\u4e0d\u8db3\uff08429\uff09\uff0c\u8bf7\u5728\u706b\u5c71\u65b9\u821f\u63a7\u5236\u53f0\u68c0\u67e5"

    return-object p0

    .line 66
    :cond_17
    const/16 v0, 0x12c

    const/16 v1, 0x190

    if-lt p0, v0, :cond_22

    if-ge p0, v1, :cond_22

    const-string p0, "\u63a5\u53e3\u8fd4\u56de\u91cd\u5b9a\u5411\uff0c\u672a\u8f6c\u53d1\u5bc6\u94a5\uff1b\u8bf7\u586b\u5199\u6700\u7ec8 HTTPS \u63a5\u53e3\u5730\u5740"

    return-object p0

    .line 67
    :cond_22
    if-ne p0, v1, :cond_27

    const-string p0, "\u63a5\u53e3\u53c2\u6570\u88ab\u62d2\u7edd\uff08400\uff09\uff0c\u8bf7\u6838\u5bf9\u6a21\u578b ID \u4e0e\u63a5\u53e3\u53c2\u6570"

    return-object p0

    .line 68
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c46\u5305\u670d\u52a1\u6682\u4e0d\u53ef\u7528\uff08HTTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\uff09"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 63
    :cond_41
    :goto_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9274\u6743\u5931\u8d25\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\uff09\uff0c\u8bf7\u68c0\u67e5 API Key \u548c\u6a21\u578b\u6743\u9650"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static httpError(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 73
    const/16 v0, 0x1ad

    if-ne p0, v0, :cond_63

    .line 74
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "error"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_61

    const-string v0, ""

    if-nez p1, :cond_14

    :goto_13
    goto :goto_1b

    :cond_14
    :try_start_14
    const-string v1, "code"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 75
    :goto_1b
    const-string p1, "SetLimitExceeded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const-string p0, "\u6a21\u578b\u6216\u63a5\u5165\u70b9\u8fbe\u5230\u7528\u91cf\u4e0a\u9650\uff08429\uff09\uff0c\u8bf7\u5728\u706b\u5c71\u65b9\u821f\u8c03\u6574\u7528\u91cf\u4e0a\u9650\u6216\u5b89\u5fc3\u4f53\u9a8c\u6a21\u5f0f"

    return-object p0

    .line 76
    :cond_26
    const-string p1, "QuotaExceeded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5e

    const-string p1, "AccountQuotaExceeded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    goto :goto_5e

    .line 77
    :cond_37
    const-string p1, "RateLimitExceeded"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5b

    const-string p1, "RequestBurstTooFast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    goto :goto_5b

    .line 78
    :cond_48
    const-string p1, "ServerOverloaded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    const-string p1, "ModelLoadingError"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_62

    :cond_58
    const-string p0, "\u8c46\u5305\u6a21\u578b\u670d\u52a1\u6682\u65f6\u7e41\u5fd9\uff08429\uff09\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    return-object p0

    .line 77
    :cond_5b
    :goto_5b
    const-string p0, "\u8c46\u5305\u8bf7\u6c42\u9891\u7387\u5df2\u53d7\u9650\uff08429\uff09\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\u6216\u8c03\u6574\u65b9\u821f\u9650\u6d41\u914d\u989d"

    return-object p0

    .line 76
    :cond_5e
    :goto_5e
    const-string p0, "\u6a21\u578b\u6216\u8d26\u53f7\u914d\u989d\u4e0d\u8db3\uff08429\uff09\uff0c\u8bf7\u5728\u706b\u5c71\u65b9\u821f\u68c0\u67e5\u6a21\u578b\u5f00\u901a\u4e0e\u53ef\u7528\u989d\u5ea6"
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_60} :catch_61

    return-object p0

    .line 79
    :catch_61
    move-exception p1

    :cond_62
    nop

    .line 80
    :cond_63
    invoke-static {p0}, Lcom/local/p5home/ArkClient;->httpError(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static parseAnswer(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "choices"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "message"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 89
    const-string v1, "content"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 90
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_23

    check-cast p0, Ljava/lang/String;

    goto :goto_59

    .line 91
    :cond_23
    instance-of v1, p0, Lorg/json/JSONArray;

    if-eqz v1, :cond_57

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Lorg/json/JSONArray;

    :goto_2e
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_52

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4f

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_59

    :cond_57
    const-string p0, ""

    .line 92
    :goto_59
    invoke-static {p0}, Lcom/local/p5home/ArkClient;->cleanAnswer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static parseResponses(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "output"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 57
    const-string v2, "output_text"

    if-eqz v1, :cond_60

    const/4 v3, 0x0

    move v4, v3

    :goto_16
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_60

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_5d

    const-string v6, "message"

    const-string v7, "type"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    goto :goto_5d

    .line 58
    :cond_31
    const-string v6, "content"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v5, :cond_3a

    :cond_39
    goto :goto_5d

    :cond_3a
    move v6, v3

    :goto_3b
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_39

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_5a

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5a

    const-string v9, "text"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 57
    :cond_5d
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 59
    :cond_60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_75

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_75

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/local/p5home/ArkClient;->cleanAnswer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static readBounded(Ljava/io/InputStream;I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_4d

    .line 84
    const/16 v1, 0x1000

    :try_start_7
    new-array v1, v1, [B

    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_34

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v2

    if-gt v3, p1, :cond_26

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    :cond_26
    new-instance p1, Ljava/io/IOException;

    const-string v1, "\u54cd\u5e94\u8fc7\u957f"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_2d
    throw p1

    :cond_2e
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    goto :goto_2d

    :cond_34
    const-string p1, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_43

    .line 85
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_4d

    if-eqz p0, :cond_42

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 84
    :cond_42
    return-object p1

    .line 83
    :catchall_43
    move-exception p1

    :try_start_44
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v0

    :try_start_49
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4c
    throw p1
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p1

    if-eqz p0, :cond_58

    :try_start_50
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_58
    :goto_58
    throw p1
.end method

.method static usesResponses(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 51
    const-string v0, "/responses"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 52
    :cond_a
    const-string v0, "/chat/completions"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    return v2

    .line 53
    :cond_14
    :try_start_14
    const-string v0, "ark.cn-beijing.volces.com"

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const-string p0, "doubao-seed-character-"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2b} :catch_30

    if-eqz p0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    return v1

    :catch_30
    move-exception p0

    return v2
.end method


# virtual methods
.method public ask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    const-string v1, "ark"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/local/p5home/ArkClient;->ask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    if-eqz p3, :cond_228

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_228

    .line 20
    if-eqz p4, :cond_220

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_220

    .line 21
    if-eqz p5, :cond_218

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_218

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_218

    .line 22
    invoke-static {p2}, Lcom/local/p5home/ConfigStore;->validateEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-static {p1}, Lcom/local/p5home/ConfigPolicy;->protocol(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    const-string v0, "responses"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ark"

    const/4 v3, 0x0

    if-nez v0, :cond_4e

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-static {p2, p3}, Lcom/local/p5home/ArkClient;->usesResponses(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_4e

    :cond_4c
    move v0, v3

    goto :goto_4f

    :cond_4e
    :goto_4e
    move v0, v1

    .line 25
    :goto_4f
    const-string v4, "/responses"

    if-nez v0, :cond_59

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_64

    :cond_59
    const-string v5, "/chat/completions"

    if-eqz v0, :cond_6c

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_64

    goto :goto_6c

    :cond_64
    new-instance p1, Lcom/local/p5home/ArkClient$ApiException;

    const-string p2, "\u63a5\u53e3\u683c\u5f0f\u4e0e\u5b8c\u6574\u5730\u5740\u4e0d\u4e00\u81f4\uff0c\u8bf7\u6838\u5bf9\u63a5\u53e3\u683c\u5f0f\u548c\u5730\u5740"

    invoke-direct {p1, p2}, Lcom/local/p5home/ArkClient$ApiException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_6c
    :goto_6c
    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8f

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_79

    goto :goto_8f

    :cond_79
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_85

    goto :goto_86

    :cond_85
    move-object v4, v5

    :goto_86
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_90

    :cond_8f
    :goto_8f
    move-object v4, p2

    .line 27
    :goto_90
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "system"

    const-string v8, "role"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "\u4f60\u662f\u8f66\u8f7d\u8bed\u97f3\u95ee\u7b54\u52a9\u624b\u3002\u7528\u7b80\u4f53\u4e2d\u6587\u7b80\u6d01\u56de\u7b54\uff0c\u4f18\u5148\u7ed9\u76f4\u63a5\u7b54\u6848\uff0c\u901a\u5e38\u4e0d\u8d85\u8fc7200\u5b57\u3002\u4e0d\u8981\u58f0\u79f0\u5df2\u64cd\u4f5c\u8f66\u8f86\u6216\u5e94\u7528\u3002"

    const-string v9, "content"

    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 28
    const-string v7, "user"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v6, v9, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    invoke-virtual {v5, p5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p5

    .line 29
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "model"

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "stream"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 30
    const/16 v6, 0x258

    if-eqz v0, :cond_110

    const-string p2, "input"

    invoke-virtual {v5, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p5, "max_output_tokens"

    invoke-virtual {p2, p5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    const-string p5, "store"

    invoke-virtual {p2, p5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12f

    const-string p2, "doubao-seed-character-"

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12f

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "type"

    const-string p5, "disabled"

    invoke-virtual {p2, p3, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "thinking"

    invoke-virtual {v5, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_12f

    .line 32
    :cond_110
    const-string p3, "messages"

    invoke-virtual {v5, p3, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    new-instance p5, Ljava/net/URL;

    invoke-direct {p5, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p2

    const-string p5, "api.openai.com"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12a

    const-string p2, "max_completion_tokens"

    goto :goto_12c

    :cond_12a
    const-string p2, "max_tokens"

    :goto_12c
    invoke-virtual {p3, p2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    :cond_12f
    :goto_12f
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    iput-object p2, p0, Lcom/local/p5home/ArkClient;->active:Ljavax/net/ssl/HttpsURLConnection;

    .line 35
    const/4 p3, 0x0

    :try_start_13d
    invoke-virtual {p2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 p5, 0x2ee0

    invoke-virtual {p2, p5}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const p5, 0xafc8

    invoke-virtual {p2, p5}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 36
    const-string p5, "POST"

    invoke-virtual {p2, p5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p5, "Content-Type"

    const-string v3, "application/json; charset=utf-8"

    invoke-virtual {p2, p5, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string p5, "Accept"

    const-string v3, "application/json"

    invoke-virtual {p2, p5, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p5, p4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    sget-object p5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, p5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    array-length p5, p4

    invoke-virtual {p2, p5}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    .line 39
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p5
    :try_end_18f
    .catch Ljava/net/SocketTimeoutException; {:try_start_13d .. :try_end_18f} :catch_209
    .catch Ljavax/net/ssl/SSLException; {:try_start_13d .. :try_end_18f} :catch_200
    .catchall {:try_start_13d .. :try_end_18f} :catchall_1fe

    :try_start_18f
    invoke-virtual {p5, p4}, Ljava/io/OutputStream;->write([B)V
    :try_end_192
    .catchall {:try_start_18f .. :try_end_192} :catchall_1f2

    if-eqz p5, :cond_197

    :try_start_194
    invoke-virtual {p5}, Ljava/io/OutputStream;->close()V

    .line 40
    :cond_197
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p4

    .line 41
    const/16 p5, 0xc8

    if-eq p4, p5, :cond_1d7

    const-string p5, ""
    :try_end_1a1
    .catch Ljava/net/SocketTimeoutException; {:try_start_194 .. :try_end_1a1} :catch_209
    .catch Ljavax/net/ssl/SSLException; {:try_start_194 .. :try_end_1a1} :catch_200
    .catchall {:try_start_194 .. :try_end_1a1} :catchall_1fe

    :try_start_1a1
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1af

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lcom/local/p5home/ArkClient;->readBounded(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object p5
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1ad} :catch_1ae
    .catch Ljava/net/SocketTimeoutException; {:try_start_1a1 .. :try_end_1ad} :catch_209
    .catch Ljavax/net/ssl/SSLException; {:try_start_1a1 .. :try_end_1ad} :catch_200
    .catchall {:try_start_1a1 .. :try_end_1ad} :catchall_1fe

    goto :goto_1af

    :catch_1ae
    move-exception v0

    .line 42
    :cond_1af
    :goto_1af
    :try_start_1af
    invoke-static {p4, p5}, Lcom/local/p5home/ArkClient;->httpError(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d1

    const-string p1, "\u8c46\u5305"

    const-string p5, "\u6a21\u578b"

    invoke-virtual {p4, p1, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "\u706b\u5c71\u65b9\u821f"

    const-string p5, "\u670d\u52a1\u5546\u63a7\u5236\u53f0"

    invoke-virtual {p1, p4, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "\u65b9\u821f\u9650\u6d41\u914d\u989d"

    const-string p5, "\u670d\u52a1\u5546\u9650\u6d41\u914d\u989d"

    invoke-virtual {p1, p4, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    .line 44
    :cond_1d1
    new-instance p1, Lcom/local/p5home/ArkClient$ApiException;

    invoke-direct {p1, p4}, Lcom/local/p5home/ArkClient$ApiException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_1d7
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const/high16 p4, 0x10000

    invoke-static {p1, p4}, Lcom/local/p5home/ArkClient;->readBounded(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1e8

    invoke-static {p1}, Lcom/local/p5home/ArkClient;->parseResponses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1ec

    :cond_1e8
    invoke-static {p1}, Lcom/local/p5home/ArkClient;->parseAnswer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1ec
    .catch Ljava/net/SocketTimeoutException; {:try_start_1af .. :try_end_1ec} :catch_209
    .catch Ljavax/net/ssl/SSLException; {:try_start_1af .. :try_end_1ec} :catch_200
    .catchall {:try_start_1af .. :try_end_1ec} :catchall_1fe

    .line 48
    :goto_1ec
    iput-object p3, p0, Lcom/local/p5home/ArkClient;->active:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 45
    return-object p1

    .line 39
    :catchall_1f2
    move-exception p1

    if-eqz p5, :cond_1fd

    :try_start_1f5
    invoke-virtual {p5}, Ljava/io/OutputStream;->close()V
    :try_end_1f8
    .catchall {:try_start_1f5 .. :try_end_1f8} :catchall_1f9

    goto :goto_1fd

    :catchall_1f9
    move-exception p4

    :try_start_1fa
    invoke-virtual {p1, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1fd
    :goto_1fd
    throw p1
    :try_end_1fe
    .catch Ljava/net/SocketTimeoutException; {:try_start_1fa .. :try_end_1fe} :catch_209
    .catch Ljavax/net/ssl/SSLException; {:try_start_1fa .. :try_end_1fe} :catch_200
    .catchall {:try_start_1fa .. :try_end_1fe} :catchall_1fe

    .line 48
    :catchall_1fe
    move-exception p1

    goto :goto_212

    .line 47
    :catch_200
    move-exception p1

    :try_start_201
    new-instance p1, Lcom/local/p5home/ArkClient$ApiException;

    const-string p4, "\u5b89\u5168\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u8f66\u673a\u65f6\u95f4\u4e0e\u8bc1\u4e66"

    invoke-direct {p1, p4}, Lcom/local/p5home/ArkClient$ApiException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :catch_209
    move-exception p1

    new-instance p1, Lcom/local/p5home/ArkClient$ApiException;

    const-string p4, "\u8c46\u5305\u8bf7\u6c42\u8d85\u65f6\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u91cd\u8bd5"

    invoke-direct {p1, p4}, Lcom/local/p5home/ArkClient$ApiException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_212
    .catchall {:try_start_201 .. :try_end_212} :catchall_1fe

    .line 48
    :goto_212
    iput-object p3, p0, Lcom/local/p5home/ArkClient;->active:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    throw p1

    .line 21
    :cond_218
    new-instance p1, Lcom/local/p5home/ArkClient$ApiException;

    const-string p2, "\u95ee\u9898\u9700\u8981 1\u20141000 \u4e2a\u5b57\u7b26"

    invoke-direct {p1, p2}, Lcom/local/p5home/ArkClient$ApiException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_220
    new-instance p1, Lcom/local/p5home/ArkClient$ApiException;

    const-string p2, "\u8bf7\u5148\u4fdd\u5b58 API Key"

    invoke-direct {p1, p2}, Lcom/local/p5home/ArkClient$ApiException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_228
    new-instance p1, Lcom/local/p5home/ArkClient$ApiException;

    const-string p2, "\u8bf7\u5148\u586b\u5199\u6a21\u578b ID \u6216\u63a8\u7406\u63a5\u5165\u70b9 ID"

    invoke-direct {p1, p2}, Lcom/local/p5home/ArkClient$ApiException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancel()V
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/local/p5home/ArkClient;->active:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_7
    return-void
.end method
