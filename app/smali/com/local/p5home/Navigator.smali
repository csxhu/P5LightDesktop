.class public final Lcom/local/p5home/Navigator;
.super Ljava/lang/Object;
.source "Navigator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/Navigator$ReplySink;,
        Lcom/local/p5home/Navigator$Provider;,
        Lcom/local/p5home/Navigator$Result;
    }
.end annotation


# static fields
.field public static final AMAP_AUTO:Ljava/lang/String; = "com.autonavi.amapauto"

.field public static final AMAP_PHONE:Ljava/lang/String; = "com.autonavi.minimap"

.field private static final AUTO_ACTIVITY:Ljava/lang/String; = "com.autonavi.amapauto.MainMapActivity"

.field static final AUTO_RECEIVER:Ljava/lang/String; = "com.autonavi.amapauto.adapter.internal.AmapAutoBroadcastReceiver"

.field static final AUTO_SEND:Ljava/lang/String; = "AUTONAVI_STANDARD_BROADCAST_SEND"

.field private static final AUTO_SIGNER_SHA256:Ljava/lang/String; = "a24c8ef5834537997bbc4d5d6ffb2c27b0ad2c6fab3145a93f0874d43f094e6e"

.field public static final BAIDU_AUTO:Ljava/lang/String; = "com.baidu.naviauto"

.field public static final BAIDU_PHONE:Ljava/lang/String; = "com.baidu.BaiduMap"

.field public static final NATIVE:Ljava/lang/String; = "com.xiaopeng.montecarlo"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accessibleAuto(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Z
    .registers 4

    .line 263
    if-eqz p1, :cond_34

    const-string v0, "com.autonavi.amapauto"

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, p1, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v0, :cond_34

    iget-boolean v0, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_34

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_34

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_34

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_32

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 265
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_34

    :cond_32
    const/4 p0, 0x1

    goto :goto_35

    :cond_34
    const/4 p0, 0x0

    .line 263
    :goto_35
    return p0
.end method

.method private static addCustomProviders(Landroid/content/Context;Ljava/util/List;)V
    .registers 16

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1a

    iget-boolean v4, v3, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v4, :cond_1a

    iget-boolean v4, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v4, :cond_1a

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/local/p5home/Navigator;->validCustomPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const-string v5, "com.local.p5home"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    const/4 v5, 0x0

    :goto_43
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5a

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/local/p5home/Navigator$Provider;

    iget-object v6, v6, Lcom/local/p5home/Navigator$Provider;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    :cond_5a
    invoke-static {p0, v4}, Lcom/local/p5home/Navigator;->launchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_1a

    invoke-virtual {v2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_6b

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6c

    :cond_6b
    move-object v5, v4

    :goto_6c
    new-instance v8, Lcom/local/p5home/Navigator$Provider;

    move-object v9, v4

    move-object v10, v5

    const-string v11, "\u5df2\u5b89\u88c5 \u00b7 \u53ef\u624b\u52a8\u6253\u5f00\uff1b\u8bed\u97f3\u5bfc\u822a\u53d6\u51b3\u4e8e\u5e94\u7528\u81ea\u8eab\u63a5\u53e3"

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/local/p5home/Navigator$Provider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_7b
    return-void
.end method

.method static available(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 96
    invoke-static {p0, p1}, Lcom/local/p5home/Navigator;->launchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method static broadcast(I)Landroid/content/Intent;
    .registers 5

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_RECV"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.autonavi.amapauto.adapter.internal.AmapAutoBroadcastReceiver"

    const-string v3, "com.autonavi.amapauto"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 239
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_TYPE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    .line 237
    return-object p0
.end method

.method public static clearSession()V
    .registers 0

    .line 63
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->cancelConversation()V

    return-void
.end method

.method public static customProviders(Landroid/content/Context;)Ljava/util/List;
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/local/p5home/Navigator;->addCustomProviders(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public static handle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;
    .registers 11

    .line 188
    const-string v0, "g3.asr.navigate"

    :try_start_2
    invoke-static {p3}, Lcom/local/p5home/NavProtocol;->object(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    .line 191
    const-string v1, "navEpoch"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 192
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_17

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_1b

    :cond_17
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->epoch()J

    move-result-wide v1

    .line 193
    :goto_1b
    invoke-static {p0, p1, p2, p3}, Lcom/local/p5home/Navigator;->prepare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/local/p5home/Navigator$Result;

    move-result-object v3

    .line 194
    iget-boolean v4, v3, Lcom/local/p5home/Navigator$Result;->accepted:Z

    if-nez v4, :cond_24

    return-object v3

    .line 195
    :cond_24
    invoke-static {p2}, Lcom/local/p5home/NavProtocol;->event(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 196
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d0

    const-string v3, "native://navi.poi.search"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto/16 :goto_d0

    .line 201
    :cond_38
    const-string v0, "g3.asr.nav.control"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3e} :catch_e4

    const-string v3, "num"

    const-string v4, "start"

    const-string v5, "command://navi.confirm.ok"

    const-string v6, "command://navi.route.select"

    if-nez v0, :cond_a2

    :try_start_48
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a2

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_a2

    .line 206
    :cond_55
    const-string v0, "native://navi.select.route.count"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-static {p3, v3}, Lcom/local/p5home/NavProtocol;->ordinal(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p0

    invoke-static {p2, p0, v1, v2}, Lcom/local/p5home/NavAutoSession;->routeCount(Ljava/lang/String;IJ)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0

    .line 207
    :cond_66
    const-string v0, "command://navi.control.start"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_81

    .line 208
    invoke-static {p3}, Lcom/local/p5home/NavProtocol;->selected(Lorg/json/JSONObject;)Lcom/local/p5home/NavProtocol$Poi;

    move-result-object p2

    .line 209
    if-nez p2, :cond_7a

    invoke-static {p0, v4, v3, v1, v2}, Lcom/local/p5home/NavAutoSession;->control(Landroid/content/Context;Ljava/lang/String;IJ)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0

    .line 210
    :cond_7a
    iget-object p2, p2, Lcom/local/p5home/NavProtocol$Poi;->name:Ljava/lang/String;

    invoke-static {p0, p1, p2, v1, v2}, Lcom/local/p5home/Navigator;->search(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0

    .line 212
    :cond_81
    const-string p3, "command://navi.control.close"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8e

    invoke-static {p0, p1, v1, v2}, Lcom/local/p5home/Navigator;->stop(Landroid/content/Context;Ljava/lang/String;J)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0

    .line 213
    :cond_8e
    const-string p1, "native://navi.navigating.get"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9b

    invoke-static {p0, p2}, Lcom/local/p5home/NavAutoSession;->query(Landroid/content/Context;Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0

    .line 214
    :cond_9b
    const-string p1, "cancel"

    invoke-static {p0, p1, v3, v1, v2}, Lcom/local/p5home/NavAutoSession;->control(Landroid/content/Context;Ljava/lang/String;IJ)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0

    .line 202
    :cond_a2
    :goto_a2
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a9

    goto :goto_be

    .line 203
    :cond_a9
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b2

    const-string v4, "select_route_start"

    goto :goto_be

    :cond_b2
    const-string p1, "action"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v4

    .line 204
    :goto_be
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c5

    goto :goto_c7

    :cond_c5
    const-string v3, "index"

    :goto_c7
    invoke-static {p3, v3}, Lcom/local/p5home/NavProtocol;->ordinal(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, v4, p1, v1, v2}, Lcom/local/p5home/NavAutoSession;->control(Landroid/content/Context;Ljava/lang/String;IJ)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0

    .line 197
    :cond_d0
    :goto_d0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_db

    invoke-static {p3}, Lcom/local/p5home/NavProtocol;->asrText(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    goto :goto_df

    :cond_db
    invoke-static {p3}, Lcom/local/p5home/NavProtocol;->searchText(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    .line 198
    :goto_df
    invoke-static {p0, p1, p2, v1, v2}, Lcom/local/p5home/Navigator;->search(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Lcom/local/p5home/Navigator$Result;

    move-result-object p0
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_e3} :catch_e4

    .line 199
    return-object p0

    .line 215
    :catch_e4
    move-exception p0

    const-string p0, "\u5bfc\u822a\u8f6c\u63a5\u5931\u8d25\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u64cd\u4f5c\uff1b\u672a\u786e\u8ba4\u5bfc\u822a\u6210\u529f"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0
.end method

.method static isConversationControl(Ljava/lang/String;)Z
    .registers 2

    .line 126
    invoke-static {p0}, Lcom/local/p5home/NavProtocol;->event(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 127
    const-string v0, "g3.asr.nav.control"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "command://navi.route.select"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 128
    const-string v0, "command://navi.confirm.ok"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "native://navi.select.route.count"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 129
    const-string v0, "command://navi.search.close"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "command://navi.confirm.cancel"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "command://navi.control.close"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 p0, 0x0

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 p0, 0x1

    .line 127
    :goto_40
    return p0
.end method

.method static isConversationControl(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    invoke-static {p0}, Lcom/local/p5home/Navigator;->isConversationControl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 134
    invoke-static {p0}, Lcom/local/p5home/NavProtocol;->event(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "command://navi.control.start"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    invoke-static {p1}, Lcom/local/p5home/NavProtocol;->selected(Lorg/json/JSONObject;)Lcom/local/p5home/NavProtocol$Poi;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    .line 133
    :goto_1c
    return p0
.end method

.method static isNative(Ljava/lang/String;)Z
    .registers 2

    .line 234
    const-string v0, "com.xiaopeng.montecarlo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "native"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method static isNewNavigation(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    invoke-static {p0}, Lcom/local/p5home/NavProtocol;->event(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 139
    const-string v0, "g3.asr.navigate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "native://navi.poi.search"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 140
    const-string v0, "command://navi.control.start"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    invoke-static {p1}, Lcom/local/p5home/NavProtocol;->selected(Lorg/json/JSONObject;)Lcom/local/p5home/NavProtocol$Poi;

    move-result-object p0

    if-eqz p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p0, 0x1

    .line 139
    :goto_26
    return p0
.end method

.method public static label(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "com.autonavi.amapauto"
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_7
    const-string v0, "\u9ad8\u5fb7\u5730\u56fe\u8f66\u673a\u7248"
    return-object v0

    :cond_7
    const-string v0, "com.autonavi.minimap"
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_e
    const-string v0, "\u9ad8\u5fb7\u5730\u56fe\u624b\u673a\u7248"
    return-object v0

    :cond_e
    const-string v0, "com.baidu.BaiduMap"
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_15
    const-string v0, "\u767e\u5ea6\u5730\u56fe\u624b\u673a\u7248"
    return-object v0

    :cond_15
    const-string v0, "com.baidu.naviauto"
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_1c
    const-string v0, "\u767e\u5ea6\u5730\u56fe\u8f66\u673a\u7248"
    return-object v0

    :cond_1c
    invoke-static {p1}, Lcom/local/p5home/Navigator;->isNative(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :cond_23
    const-string v0, "\u539f\u8f66\u5bfc\u822a"
    return-object v0

    :cond_23
    const-string v0, "\u672a\u9002\u914d\u7684\u5730\u56fe"
    return-object v0
.end method

.method static synthetic lambda$search$0(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;
    .registers 3

    .line 114
    invoke-static {p0, p1, p2}, Lcom/local/p5home/Navigator;->launch(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0
.end method

.method private static launch(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;
    .registers 5

    .line 307
    const/high16 v0, 0x30000000

    :try_start_2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 310
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_25

    const-string v0, "com.xiaopeng.montecarlo"

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 311
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_34

    .line 314
    :cond_25
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 315
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 317
    :goto_34
    new-instance p0, Lcom/local/p5home/Navigator$Result;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_3a} :catch_3b

    return-object p0

    .line 318
    :catch_3b
    move-exception p0

    const-string p0, "\u6240\u9009\u5730\u56fe\u672a\u80fd\u6253\u5f00\uff0c\u8bf7\u68c0\u67e5\u5e94\u7528\u662f\u5426\u53ef\u6b63\u5e38\u8fd0\u884c"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0
.end method

.method private static launchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    .line 269
    const/4 v0, 0x0

    if-eqz p1, :cond_72

    const-string v1, "com.autonavi.amapauto"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "com.xiaopeng.montecarlo"

    if-nez v2, :cond_32

    const-string v2, "com.autonavi.minimap"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "com.baidu.BaiduMap"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 270
    const-string v2, "com.baidu.naviauto"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-static {p1}, Lcom/local/p5home/Navigator;->validCustomPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    goto :goto_60

    .line 271
    :cond_32
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 272
    :cond_3e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    .line 273
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    const-string v1, "com.autonavi.amapauto.MainMapActivity"

    goto :goto_52

    :cond_50
    const-string v1, "com.xiaopeng.montecarlo.MainActivity"

    :goto_52
    invoke-direct {v3, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 274
    invoke-static {p0, v1}, Lcom/local/p5home/Navigator;->resolves(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_60

    return-object v1

    .line 276
    :cond_60
    :goto_60
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 277
    if-eqz p1, :cond_71

    invoke-static {p0, p1}, Lcom/local/p5home/Navigator;->resolves(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_71

    move-object v0, p1

    :cond_71
    return-object v0

    .line 270
    :cond_72
    return-object v0
.end method

.method public static navigationState(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    .line 229
    const-string v0, "com.autonavi.amapauto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-static {p0}, Lcom/local/p5home/Navigator;->verifiedAuto(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_14

    .line 230
    :cond_f
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->snapshot()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 229
    :cond_14
    :goto_14
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method static no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;
    .registers 3

    .line 233
    new-instance v0, Lcom/local/p5home/Navigator$Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public static open(Landroid/content/Context;Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;
    .registers 5

    .line 91
    const-string v0, "native"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "com.xiaopeng.montecarlo"

    .line 92
    :cond_a
    invoke-static {p0, p1}, Lcom/local/p5home/Navigator;->launchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    if-nez v0, :cond_17

    const-string p0, "\u6240\u9009\u5730\u56fe\u672a\u5b89\u88c5\u3001\u88ab\u505c\u7528\u6216\u6ca1\u6709\u53ef\u6253\u5f00\u7684\u754c\u9762"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0

    .line 94
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u6253\u5f00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/local/p5home/Navigator;->label(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/local/p5home/Navigator;->launch(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0
.end method

.method private static prepare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/local/p5home/Navigator$Result;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    invoke-static {p1}, Lcom/local/p5home/Navigator;->isNative(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "\u5f53\u524d\u9009\u62e9\u539f\u8f66\u5bfc\u822a\uff0c\u4fdd\u7559\u539f\u5c0fP\u5904\u7406"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0

    .line 145
    :cond_d
    invoke-static {p2}, Lcom/local/p5home/NavProtocol;->event(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 146
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p0, "\u8be5\u8bed\u97f3\u5bfc\u822a\u4e8b\u4ef6\u5c1a\u672a\u9002\u914d\uff0c\u4fdd\u7559\u539f\u5904\u7406"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0

    .line 147
    :cond_1e
    invoke-static {p0, p1}, Lcom/local/p5home/Navigator;->launchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2b

    const-string p0, "\u6240\u9009\u5730\u56fe\u4e0d\u53ef\u7528\uff0c\u4fdd\u7559\u539f\u5904\u7406"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0

    .line 148
    :cond_2b
    invoke-static {p2, p3}, Lcom/local/p5home/Navigator;->isConversationControl(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    const-string v1, "g3.asr.nav.control"

    if-nez v0, :cond_39

    invoke-static {p2, p3}, Lcom/local/p5home/Navigator;->isNewNavigation(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_60

    :cond_39
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "navEpoch"

    if-nez v0, :cond_47

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 149
    :cond_47
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_1b7

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {}, Lcom/local/p5home/NavAutoSession;->epoch()J

    move-result-wide v4

    long-to-double v4, v4

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_60

    goto/16 :goto_1b7

    .line 153
    :cond_60
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "com.autonavi.amapauto"

    if-eqz v0, :cond_93

    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8c

    invoke-static {p0}, Lcom/local/p5home/Navigator;->verifiedAuto(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_75

    goto :goto_8c

    .line 155
    :cond_75
    const-string p0, "action"

    invoke-virtual {p3, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x1e

    invoke-static {p0, p1}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "index"

    invoke-static {p3, p1}, Lcom/local/p5home/NavProtocol;->ordinal(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/local/p5home/NavAutoSession;->validateControl(Ljava/lang/String;I)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0

    .line 154
    :cond_8c
    :goto_8c
    const-string p0, "\u5f53\u524d\u5730\u56fe\u7248\u672c\u672a\u9002\u914d\u8bed\u97f3\u9009\u9879\u63a7\u5236"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0

    .line 157
    :cond_93
    const-string v0, "command://navi.route.select"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b0

    .line 158
    const-string v0, "command://navi.confirm.ok"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b0

    const-string v0, "native://navi.select.route.count"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    goto/16 :goto_1b0

    .line 161
    :cond_ad
    const-string v0, "g3.asr.navigate"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_175

    const-string v2, "native://navi.poi.search"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    goto/16 :goto_175

    .line 167
    :cond_bf
    const-string v0, "command://navi.control.start"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 168
    invoke-static {p3}, Lcom/local/p5home/NavProtocol;->selected(Lorg/json/JSONObject;)Lcom/local/p5home/NavProtocol$Poi;

    move-result-object p2

    .line 169
    if-nez p2, :cond_d4

    .line 170
    const-string p0, "\u7f3a\u5c11\u6709\u6548\u76ee\u7684\u5730\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u9009\u62e9\u8def\u7ebf"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0

    .line 172
    :cond_d4
    iget-object p2, p2, Lcom/local/p5home/NavProtocol$Poi;->name:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/local/p5home/Navigator;->searchIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_ee

    .line 173
    new-instance p0, Lcom/local/p5home/Navigator$Result;

    const/4 v1, 0x1

    const-string v2, "\u5c06\u6309\u5730\u70b9\u540d\u641c\u7d22\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u786e\u8ba4\u5730\u70b9\u4e0e\u8def\u7ebf"

    const-string v3, "ready"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f4

    .line 174
    :cond_ee
    const-string p0, "\u8be5\u7248\u672c\u6216\u76ee\u6807\u5206\u652f\u6682\u4e0d\u652f\u6301\u8f6c\u63a5"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    .line 172
    :goto_f4
    return-object p0

    .line 176
    :cond_f5
    const-string p3, "command://navi.control.close"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_122

    invoke-static {p0}, Lcom/local/p5home/Navigator;->verifiedAuto(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_11b

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11b

    .line 177
    new-instance p0, Lcom/local/p5home/Navigator$Result;

    const/4 v1, 0x1

    const-string v2, "\u53ef\u53d1\u9001\u7ed3\u675f\u5bfc\u822a\u8bf7\u6c42\uff0c\u7ed3\u679c\u9700\u8bfb\u53d6\u72b6\u6001"

    const-string v3, "ready"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_121

    .line 178
    :cond_11b
    const-string p0, "\u5f53\u524d\u7248\u672c\u4e0d\u63d0\u4f9b\u5df2\u6838\u9a8c\u7684\u505c\u6b62\u5bfc\u822a\u534f\u8bae\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u7ed3\u675f"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    .line 176
    :goto_121
    return-object p0

    .line 179
    :cond_122
    const-string p3, "native://navi.navigating.get"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_156

    .line 180
    nop

    .line 179
    invoke-static {p0}, Lcom/local/p5home/Navigator;->verifiedAuto(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_14f

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14f

    .line 180
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->hasSink()Z

    move-result p0

    if-eqz p0, :cond_14f

    new-instance p0, Lcom/local/p5home/Navigator$Result;

    const/4 v1, 0x1

    const-string v2, "\u53ef\u8bfb\u53d6\u9ad8\u5fb7\u5e7f\u64ad\u72b6\u6001\uff0c\u4e0d\u80fd\u786e\u8ba4\u5177\u4f53\u76ee\u7684\u5730"

    const-string v3, "ready"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_155

    .line 181
    :cond_14f
    const-string p0, "\u5f53\u524d\u7248\u672c\u6ca1\u6709\u53ef\u56de\u586b\u7684\u5bfc\u822a\u72b6\u6001"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    .line 179
    :goto_155
    return-object p0

    .line 182
    :cond_156
    const-string p0, "command://navi.search.close"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16e

    const-string p0, "command://navi.confirm.cancel"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_167

    goto :goto_16e

    .line 183
    :cond_167
    const-string p0, "\u8be5\u4e8b\u4ef6\u6682\u672a\u9002\u914d"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0

    .line 182
    :cond_16e
    :goto_16e
    const-string p0, "\u8bf7\u5728\u5730\u56fe\u5185\u64cd\u4f5c\u8def\u7ebf"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0

    .line 162
    :cond_175
    :goto_175
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_180

    invoke-static {p3}, Lcom/local/p5home/NavProtocol;->asrText(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    goto :goto_184

    :cond_180
    invoke-static {p3}, Lcom/local/p5home/NavProtocol;->searchText(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    .line 163
    :goto_184
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_191

    const-string p0, "\u672a\u53d6\u5f97\u660e\u786e\u7684\u5730\u70b9\u5173\u952e\u8bcd\uff0c\u4fdd\u7559\u539f\u5904\u7406"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0

    .line 164
    :cond_191
    invoke-static {p0, p1, p2}, Lcom/local/p5home/Navigator;->searchIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_19e

    const-string p0, "\u5f53\u524d\u5730\u56fe\u7248\u672c\u4e0d\u652f\u6301\u8bed\u97f3\u5173\u952e\u8bcd\u641c\u7d22"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    goto :goto_1af

    .line 165
    :cond_19e
    new-instance p0, Lcom/local/p5home/Navigator$Result;

    const/4 v1, 0x1

    const-string v2, "\u53ef\u5728\u6240\u9009\u5730\u56fe\u5185\u641c\u7d22\uff0c\u8def\u7ebf\u4ecd\u9700\u786e\u8ba4"

    const-string v3, "ready"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_1af
    return-object p0

    .line 159
    :cond_1b0
    :goto_1b0
    const-string p0, "\u8bf7\u5728\u5730\u56fe\u5185\u9009\u62e9\u5730\u70b9\u548c\u8def\u7ebf"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0

    .line 151
    :cond_1b7
    :goto_1b7
    const-string p0, "\u5730\u56fe\u4f1a\u8bdd\u5df2\u66f4\u65b0\uff0c\u8bf7\u6839\u636e\u5f53\u524d\u5019\u9009\u91cd\u65b0\u9009\u62e9"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0
.end method

.method public static providers(Landroid/content/Context;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/local/p5home/Navigator$Provider;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    const-string v1, "com.autonavi.amapauto"

    const-string v2, "com.autonavi.minimap"

    const-string v3, "com.baidu.BaiduMap"

    const-string v4, "com.baidu.naviauto"

    const-string v5, "com.xiaopeng.montecarlo"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    const/4 v6, 0x5

    if-ge v4, v6, :cond_68

    aget-object v8, v2, v4

    .line 68
    invoke-static {p0, v8}, Lcom/local/p5home/Navigator;->launchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_23

    move v11, v7

    goto :goto_24

    :cond_23
    move v11, v3

    .line 69
    :goto_24
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    const-string v6, "\u5730\u70b9"

    invoke-static {p0, v8, v6}, Lcom/local/p5home/Navigator;->searchIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_34

    move v12, v7

    goto :goto_35

    :cond_34
    move v12, v3

    .line 71
    :goto_35
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const-string v6, "\u539f\u8f66\u5bfc\u822a\uff1b\u8bed\u97f3\u4fdd\u7559\u539f\u5c0fP\u5904\u7406\uff0c\u9009\u62e9\u6253\u5f00\u65f6\u624d\u542f\u52a8\u539f\u5730\u56fe"

    move-object v10, v6

    goto :goto_58

    .line 72
    :cond_3f
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-static {p0}, Lcom/local/p5home/Navigator;->verifiedAuto(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 73
    const-string v6, "\u8bed\u97f3\u53d1\u9001\u76ee\u7684\u5730\uff0c\u5730\u70b9\u548c\u8def\u7ebf\u5728\u9ad8\u5fb7\u5185\u9009\u62e9"

    move-object v10, v6

    goto :goto_58

    .line 74
    :cond_4f
    if-eqz v12, :cond_55

    const-string v6, "\u53ef\u5728\u5730\u56fe\u5185\u641c\u7d22\u5e76\u786e\u8ba4\u5730\u70b9\uff1b\u8bed\u97f3\u9009\u70b9\u548c\u7ed3\u675f\u5bfc\u822a\u6682\u672a\u9002\u914d"

    move-object v10, v6

    goto :goto_58

    .line 75
    :cond_55
    const-string v6, "\u5f53\u524d\u7248\u672c\u53ef\u624b\u52a8\u6253\u5f00\uff1b\u8bed\u97f3\u5bfc\u822a\u5c1a\u672a\u9002\u914d"

    move-object v10, v6

    .line 76
    :goto_58
    new-instance v6, Lcom/local/p5home/Navigator$Provider;

    invoke-static {p0, v8}, Lcom/local/p5home/Navigator;->label(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/local/p5home/Navigator$Provider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 78
    :cond_68
    return-object v0
.end method

.method private static resolves(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 5

    .line 298
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 299
    if-nez p1, :cond_f

    const/4 p1, 0x0

    goto :goto_11

    :cond_f
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 300
    :goto_11
    if-eqz p1, :cond_2f

    iget-boolean v1, p1, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v1, :cond_2f

    iget-boolean v1, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v1, :cond_2f

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_2f

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v1, :cond_2d

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 301
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_2b} :catch_31

    if-nez p0, :cond_2f

    :cond_2d
    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    nop

    .line 300
    :goto_30
    return v0

    .line 302
    :catch_31
    move-exception p0

    return v0
.end method

.method public static search(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;
    .registers 5

    .line 99
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->epoch()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/local/p5home/Navigator;->search(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0
.end method

.method private static search(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Lcom/local/p5home/Navigator$Result;
    .registers 21

    .line 102
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/16 v0, 0x78

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lcom/local/p5home/NavProtocol;->text(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v0, "\u76ee\u7684\u5730\u4e3a\u7a7a\u6216\u8fc7\u957f"

    invoke-static {v0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object v0

    return-object v0

    .line 104
    :cond_19
    invoke-static {v1, v2, v0}, Lcom/local/p5home/Navigator;->searchIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 105
    if-nez v3, :cond_26

    const-string v0, "\u5f53\u524d\u5730\u56fe\u7248\u672c\u4e0d\u652f\u6301\u5173\u952e\u8bcd\u8f6c\u63a5\uff1b\u53ef\u5148\u6253\u5f00\u5730\u56fe\u540e\u624b\u52a8\u641c\u7d22"

    invoke-static {v0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object v0

    return-object v0

    .line 106
    :cond_26
    nop

    .line 107
    const-string v0, "com.autonavi.amapauto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/Navigator;->verifiedAuto(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    move v4, v0

    .line 108
    const-wide/16 v5, -0x1

    if-eqz v4, :cond_4d

    .line 109
    move-wide/from16 v7, p3

    :try_start_3f
    invoke-static {v1, v7, v8}, Lcom/local/p5home/NavAutoSession;->beginUiSearch(Landroid/content/Context;J)J

    move-result-wide v5
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_43} :catch_45

    .line 110
    move-wide v14, v5

    goto :goto_55

    :catch_45
    move-exception v0

    invoke-static/range {p3 .. p4}, Lcom/local/p5home/NavAutoSession;->resetIfCurrent(J)J

    move-result-wide v7

    move-wide v14, v5

    move-wide v5, v7

    goto :goto_55

    .line 111
    :cond_4d
    move-wide/from16 v7, p3

    invoke-static/range {p3 .. p4}, Lcom/local/p5home/NavAutoSession;->resetIfCurrent(J)J

    move-result-wide v7

    move-wide v14, v5

    move-wide v5, v7

    .line 112
    :goto_55
    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gez v0, :cond_62

    const-string v0, "\u5bfc\u822a\u8bf7\u6c42\u5df2\u88ab\u540e\u7eed\u641c\u7d22\u53d6\u4ee3"

    invoke-static {v0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object v0

    return-object v0

    .line 113
    :cond_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5df2\u5411"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p0 .. p1}, Lcom/local/p5home/Navigator;->label(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u53d1\u9001\u641c\u7d22\u8bf7\u6c42"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v4, :cond_80

    const-string v2, "\uff0c\u53ef\u8bf4\u7b2c\u51e0\u4e2a\u5730\u70b9\u3001\u7b2c\u4e8c\u6761\u8def\u7ebf\u6216\u5f00\u59cb\u5bfc\u822a"

    goto :goto_82

    :cond_80
    const-string v2, "\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u9009\u62e9\u5730\u70b9\u4e0e\u8def\u7ebf"

    :goto_82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v2, Lcom/local/p5home/Navigator$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v3, v0}, Lcom/local/p5home/Navigator$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v5, v6, v2}, Lcom/local/p5home/NavAutoSession;->launchIfCurrent(JLcom/local/p5home/NavAutoSession$MapLaunch;)Lcom/local/p5home/Navigator$Result;

    move-result-object v0

    .line 115
    iget-boolean v1, v0, Lcom/local/p5home/Navigator$Result;->accepted:Z

    if-nez v1, :cond_9e

    cmp-long v1, v14, v7

    if-ltz v1, :cond_9e

    invoke-static {v14, v15}, Lcom/local/p5home/NavAutoSession;->retire(J)Z

    .line 116
    :cond_9e
    new-instance v1, Lcom/local/p5home/Navigator$Result;

    iget-boolean v8, v0, Lcom/local/p5home/Navigator$Result;->accepted:Z

    iget-object v9, v0, Lcom/local/p5home/Navigator$Result;->message:Ljava/lang/String;

    iget-object v10, v0, Lcom/local/p5home/Navigator$Result;->state:Ljava/lang/String;

    iget-object v11, v0, Lcom/local/p5home/Navigator$Result;->replyKind:Ljava/lang/String;

    iget-object v12, v0, Lcom/local/p5home/Navigator$Result;->replyEvent:Ljava/lang/String;

    iget-object v13, v0, Lcom/local/p5home/Navigator$Result;->replyData:Ljava/lang/String;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v1
.end method

.method private static searchIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 12

    .line 282
    const-string v0, "com.autonavi.amapauto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "0"

    const-string v3, "dev"

    const-string v4, "keywords"

    const-string v5, "G3Home"

    const-string v6, "sourceApplication"

    const-string v7, "poi"

    if-eqz v0, :cond_35

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v8, "androidauto"

    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 283
    invoke-virtual {v0, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 284
    invoke-virtual {p2, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    goto :goto_8e

    .line 285
    :cond_35
    const-string v0, "com.autonavi.minimap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v8, "androidamap"

    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 286
    invoke-virtual {v0, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 287
    invoke-virtual {p2, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    goto :goto_8e

    .line 288
    :cond_5d
    const-string v0, "com.baidu.BaiduMap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "baidumap"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "map"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 289
    const-string v2, "/place/search"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "query"

    invoke-virtual {v0, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 290
    const-string v0, "src"

    const-string v2, "andr.local.G3Home"

    invoke-virtual {p2, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 292
    :goto_8e
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.intent.category.DEFAULT"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 293
    invoke-static {p0, p1}, Lcom/local/p5home/Navigator;->resolves(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_a6

    move-object v1, p1

    :cond_a6
    return-object v1

    .line 291
    :cond_a7
    return-object v1

    :cond_a8
    const-string v0, "com.baidu.naviauto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "baidumap"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "map"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "/navi"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "query"

    invoke-virtual {v0, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "src"

    const-string v2, "andr.local.P5Home"

    invoke-virtual {p2, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    goto/16 :goto_8e
.end method

.method public static setReplySink(Landroid/content/Context;Lcom/local/p5home/Navigator$ReplySink;)V
    .registers 2

    .line 61
    invoke-static {p0, p1}, Lcom/local/p5home/NavAutoSession;->setSink(Landroid/content/Context;Lcom/local/p5home/Navigator$ReplySink;)V

    return-void
.end method

.method public static stop(Landroid/content/Context;Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;
    .registers 4

    .line 219
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->epoch()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/local/p5home/Navigator;->stop(Landroid/content/Context;Ljava/lang/String;J)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0
.end method

.method private static stop(Landroid/content/Context;Ljava/lang/String;J)Lcom/local/p5home/Navigator$Result;
    .registers 5

    .line 222
    const-string v0, "com.autonavi.amapauto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-static {p0}, Lcom/local/p5home/Navigator;->verifiedAuto(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_14

    .line 224
    :cond_f
    invoke-static {p0, p2, p3}, Lcom/local/p5home/NavAutoSession;->stopIfCurrent(Landroid/content/Context;J)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0

    .line 223
    :cond_14
    :goto_14
    const-string p0, "\u5f53\u524d\u5730\u56fe\u7248\u672c\u6ca1\u6709\u5df2\u6838\u9a8c\u7684\u8bed\u97f3\u505c\u6b62\u534f\u8bae\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u7ed3\u675f\u5bfc\u822a"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0
.end method

.method private static validCustomPackage(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_9

    const-string v0, "[A-Za-z_][A-Za-z0-9_]*(\\.[A-Za-z_][A-Za-z0-9_]*)+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static validate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;
    .registers 4

    .line 121
    :try_start_0
    invoke-static {p3}, Lcom/local/p5home/NavProtocol;->object(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/local/p5home/Navigator;->prepare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 122
    :catch_9
    move-exception p0

    const-string p0, "\u5bfc\u822a\u4e8b\u4ef6\u6570\u636e\u65e0\u6548\uff0c\u4fdd\u7559\u539f\u5904\u7406"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0
.end method

.method static verifiedAuto(Landroid/content/Context;)Z
    .registers 11

    .line 246
    const-string v0, "com.autonavi.amapauto"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 247
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v3, :cond_99

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v3}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto/16 :goto_99

    .line 248
    :cond_1b
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v2

    .line 249
    if-eqz v2, :cond_98

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_98

    aget-object v3, v2, v1

    if-nez v3, :cond_2c

    goto :goto_98

    .line 250
    :cond_2c
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 251
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v5, v2

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [C

    .line 252
    move v6, v1

    :goto_48
    array-length v7, v2

    if-ge v6, v7, :cond_62

    mul-int/lit8 v7, v6, 0x2

    aget-byte v8, v2, v6

    and-int/lit16 v9, v8, 0xff

    ushr-int/lit8 v9, v9, 0x4

    aget-char v9, v3, v9

    aput-char v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v3, v8

    aput-char v8, v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    .line 253
    :cond_62
    const-string v2, "a24c8ef5834537997bbc4d5d6ffb2c27b0ad2c6fab3145a93f0874d43f094e6e"

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    return v1

    .line 254
    :cond_70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 255
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.autonavi.amapauto.adapter.internal.AmapAutoBroadcastReceiver"

    invoke-direct {v3, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 256
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.autonavi.amapauto.MainMapActivity"

    invoke-direct {v5, v0, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 257
    invoke-static {p0, v3}, Lcom/local/p5home/Navigator;->accessibleAuto(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-static {p0, v0}, Lcom/local/p5home/Navigator;->accessibleAuto(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Z

    move-result p0
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_94} :catch_9a

    if-eqz p0, :cond_97

    move v1, v4

    :cond_97
    return v1

    .line 249
    :cond_98
    :goto_98
    return v1

    .line 247
    :cond_99
    :goto_99
    return v1

    .line 259
    :catch_9a
    move-exception p0

    return v1
.end method
