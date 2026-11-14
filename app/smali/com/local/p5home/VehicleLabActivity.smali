.class public final Lcom/local/p5home/VehicleLabActivity;
.super Landroid/app/Activity;
.source "VehicleLabActivity.java"


# static fields
.field private static final CATALOG:Ljava/lang/String; = "com.local.xpcatalog"

.field private static final DIRECT_ENTRY_VERSION:J = 0x7L

.field private static final RESEARCH:Ljava/lang/String; = "\u8f66\u673a\u7814\u7a76\u8bb0\u5f55 \u00b7 G3 / D20 Android 9\n\u539f\u8f66\u8f6c\u5411\u5f71\u50cf\u5f00\u5173\uff1aSettings.System turn_assistant_sw\uff1b\u5f00\u5173\u4e0d\u8bc1\u660e\u753b\u9762\u53ef\u7528\u3002\n\u8f6c\u5411\u5019\u9009\uff1aBCM_LRTURNLAMP_ACTIVE_ST 0x21411cc0\uff1b\u539f\u5382\u5f71\u50cf\u8fdb\u7a0b\u662f\u5426\u53ef\u6ce8\u518c\u5c1a\u672a\u9a8c\u8bc1\u3002\n\u539f\u8f66\u63a7\u8bfb\u53d6\u540c\u4e00\u5c5e\u6027\uff1b\u5df2\u5206\u6790\u7684 Q5 \u914d\u7f6e\u9ed8\u8ba4\u4e0d\u542f\u7528\u8be5\u8f6c\u5411\u76d1\u542c\uff0c\u65e0\u6cd5\u8bc1\u660e\u5b58\u5728\u7b2c\u4e8c\u6570\u636e\u6e90\u3002\nD20 HAL \u914d\u7f6e\u4e2d\u7684 BCM_1 \u542b\u5de6\u53f3\u8f6c\u5411\u5f00\u5173\u548c\u706f\u8f93\u51fa\u4fe1\u53f7\u540d\uff0c\u4f46\u5c1a\u672a\u5efa\u7acb\u5e94\u7528\u53ef\u8bfb\u53d6\u7684\u63a5\u53e3\u6216\u6570\u636e\u65f6\u6548\u3002\n2026-10-27 \u53ea\u8bfb\u5feb\u7167\uff1aD20 \u4fe1\u53f7\u6709\u539f\u5382\u5904\u7406\u6807\u5fd7\uff0c\u4f46\u56db\u4e2a\u5019\u9009\u7684\u5c5e\u6027\u5173\u8054\u6570\u5747\u4e3a 0\uff1b\u5931\u8054\u6807\u5fd7\u4e0d\u80fd\u72ec\u7acb\u8bc1\u660e\u6570\u636e\u65b0\u9c9c\u3002\n\u6863\u4f4d\uff1aVCU_CURRENT_GEARLEV 0x21401205\uff1b\u8f66\u901f\uff1aVCU_RAW_CAR_SPEED 0x21601225\u3002getter \u65f6\u95f4\u6233\u53ef\u80fd\u5728\u8bfb\u53d6\u65f6\u91cd\u5199\uff0c\u4e0d\u80fd\u8bc1\u660e\u6e90\u6570\u636e\u5b9e\u65f6\u3002\nCarService \u7684 CAN \u6545\u969c\u901a\u77e5\u4e0e Vehicle HAL \u53cd\u590d\u5d29\u6e83\u6709\u5173\uff1b\u6ca1\u6709\u901a\u77e5\u4e0d\u80fd\u8bc1\u660e\u5e95\u5c42 CAN \u6570\u636e\u6216\u8f66\u901f\u5b9e\u65f6\u3002\nLCC\uff1aSCU_LCC_SW 0x2140260e \u4e3a\u5f00\u5173\uff0c\u975e 60/80 km/h \u901f\u5ea6\u4e0a\u9650\uff1b\u771f\u5b9e\u4e0a\u9650\u5199\u5165\u63a5\u53e3\u672a\u786e\u8ba4\u3002\n\u76f2\u533a\u548c\u540e\u65b9\u6a2a\u5411\u6765\u8f66\uff1a\u539f\u5382\u8f66\u63a7 getBsdState / getRctaState \u8bfb\u53d6\u8bbe\u7f6e\u72b6\u6001\uff0c\u5e76\u975e\u5b9e\u65f6\u544a\u8b66\uff1b\u53e6\u6709\u5de6\u53f3\u8b66\u544a\u5c5e\u6027\uff0c\u662f\u5426\u652f\u6301\u548c\u542b\u4e49\u5f85\u9a8c\u8bc1\u3002\n\u540e\u65b9\u78b0\u649e\u8b66\u544a\uff1a\u539f\u5382 CarService getScuRearCollisionWarning \u8bfb\u53d6 SCU_RCW_WARNING 0x2140267b\uff1b\u672c\u8f66\u662f\u5426\u53ef\u7528\u53ca\u542b\u4e49\u5f85\u9a8c\u8bc1\u3002\n\u4eea\u8868\uff1agetMileageTotal \u53ef\u8bfb\u53d6\u603b\u91cc\u7a0b\uff0c\u4f46\u5f02\u5e38\u65f6\u539f\u5382\u8fd4\u56de 0\uff1b\u7ed3\u679c\u672a\u7ecf\u72b6\u6001\u6821\u9a8c\u4e0d\u80fd\u5f53\u4f5c\u5b9e\u65f6\u6709\u6548\u503c\u3002\n\u7a84\u8def\u5f71\u50cf\uff1a\u539f\u8f66\u9a7e\u9a76\u5f71\u50cf\u5b58\u5728 NRA \u573a\u666f\u53ca AVM \u5de5\u4f5c\u6761\u4ef6\uff1b\u5e7f\u64ad\u5165\u53e3\u4e0d\u7b49\u540c\u8f6c\u5411\u4fa7\u6444\uff0c\u56fe\u50cf\u63a5\u5165\u672a\u9a8c\u8bc1\u3002\n2026-10-27 system UID \u914d\u7f6e\u67e5\u8be2\uff1a\u8fd4\u56de BSD \u5f00\u5173\u3001\u4eea\u8868\u603b\u91cc\u7a0b\u3001AVM \u5de5\u4f5c\u548c\u6444\u50cf\u5934\u6545\u969c\u5c5e\u6027\u914d\u7f6e\uff1b\u672a\u8fd4\u56de RCW / RCTA \u548c\u5de6\u53f3\u544a\u8b66\u3002\u67e5\u8be2\u4e0d\u5305\u542b\u5c5e\u6027\u503c\uff0c\u672a\u8fd4\u56de\u4e0d\u8bc1\u660e\u4e0d\u652f\u6301\u3002\n\u539f\u5382\u547d\u4ee4\u9875\uff1acom.xiaopeng.devtools/.view.aftersales.CommonCmdActivity\uff1b\u6253\u5f00\u548c\u6267\u884c\u7531\u5e94\u7528\u5e93\u5de5\u5177\u7bb1\u5904\u7406\u3002\n\u7ef4\u4fee\u6a21\u5f0f\uff1a\u539f\u5382\u9875\u9762\u548c\u670d\u52a1\u5b58\u5728\uff1b\u542f\u7528\u53ef\u80fd\u9000\u51fa\u8f66\u673a\u8d26\u6237\uff0c\u672a\u9a8c\u8bc1\u8f66\u8f86\u5f71\u54cd\u3002\n\u7ed3\u8bba\u6765\u81ea\u6307\u5b9a\u56fa\u4ef6\u7684\u9759\u6001\u6216\u53ea\u8bfb\u89c2\u5bdf\uff0c\u4e0d\u80fd\u63a8\u65ad\u5176\u4ed6\u8f66\u578b\u652f\u6301\uff0c\u4e5f\u4e0d\u4ee3\u8868\u5b9e\u9645\u529f\u80fd\u5df2\u542f\u7528\u3002"

.field private static final TARGET:Ljava/lang/String; = "com.local.xpcatalog.LAUNCH_TARGET"


# instance fields
.field private theme:I


# direct methods
.method public static synthetic $r8$lambda$79g-4OL4kEU0s1YSXrx9hmsJX38(Lcom/local/p5home/VehicleLabActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/VehicleLabActivity;->build()V

    return-void
.end method

.method public static synthetic $r8$lambda$8IIq5F1HP5gS1rnGt9G44ijHB8M(Lcom/local/p5home/VehicleLabActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/VehicleLabActivity;->clearObservation()V

    return-void
.end method

.method public static synthetic $r8$lambda$QyniC4fPARXEA1NVDjZGvokuKHY(Lcom/local/p5home/VehicleLabActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/VehicleLabActivity;->openCamera()V

    return-void
.end method

.method public static synthetic $r8$lambda$rZXp1E71L-bH3ovStm6bTSq_fQw(Lcom/local/p5home/VehicleLabActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/VehicleLabActivity;->copyResearch()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private adbStatus()Ljava/lang/String;
    .registers 3

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/local/p5home/VehicleLabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v0, "\u5df2\u5f00\u542f"

    goto :goto_22

    :cond_15
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "\u672a\u5f00\u542f"

    goto :goto_22

    :cond_20
    const-string v0, "\u672a\u77e5"
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_22} :catch_23

    :goto_22
    return-object v0

    :catch_23
    move-exception v0

    const-string v0, "\u8bfb\u53d6\u4e0d\u53ef\u7528"

    return-object v0
.end method

.method private static appendObservation(Ljava/lang/StringBuilder;Landroid/os/Bundle;JILjava/lang/String;)V
    .registers 10

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v2, "\uff1a"

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x0

    cmp-long p5, v0, v2

    if-lez p5, :cond_5d

    cmp-long p5, p2, v0

    if-gez p5, :cond_31

    goto :goto_5d

    :cond_31
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value"

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide p4

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " \u00b7 "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sub-long/2addr p2, v0

    const-wide/16 p4, 0x3e8

    div-long/2addr p2, p4

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " \u79d2\u524d\u6536\u5230"

    goto :goto_5f

    :cond_5d
    :goto_5d
    const-string p1, "\u5c1a\u65e0\u8bb0\u5f55"

    :goto_5f
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private build()V
    .registers 14

    .line 49
    invoke-static {p0}, Lcom/local/p5home/Ui;->install(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->themeSignature(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/local/p5home/VehicleLabActivity;->theme:I

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v0

    .line 50
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget v3, v0, Lcom/local/p5home/Ui$Palette;->bg:I

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 51
    invoke-static {p0}, Lcom/local/p5home/Ui;->col(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {p0, v4}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42100000    # 36.0f

    invoke-static {p0, v6}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v4}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v6}, Lcom/local/p5home/Ui;->s(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v5, v7, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/local/p5home/VehicleLabActivity;->setContentView(Landroid/view/View;)V

    .line 52
    invoke-static {p0}, Lcom/local/p5home/Ui;->row(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v4, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/VehicleLabActivity;)V

    const-string v5, "back"

    const-string v6, "\u8fd4\u56de\u8bbe\u7f6e"

    invoke-static {p0, v5, v6, v4}, Lcom/local/p5home/Ui;->iconButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v4, 0x1a

    invoke-static {p0, v1, v4}, Lcom/local/p5home/Ui;->side(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    const-string v5, "\u8f66\u673a\u529f\u80fd\u4e0e\u7814\u7a76"

    const/16 v6, 0x2e

    invoke-static {p0, v5, v6}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x1c

    invoke-static {p0, v3, v1}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 54
    const-string v1, "\u5f53\u524d\u8bbe\u5907"

    invoke-direct {p0, v3, v1}, Lcom/local/p5home/VehicleLabActivity;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8bbe\u5907\u4ee3\u53f7\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v6}, Lcom/local/p5home/VehicleLabActivity;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u00b7 Android "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v6}, Lcom/local/p5home/VehicleLabActivity;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nUSB \u8c03\u8bd5\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/local/p5home/VehicleLabActivity;->adbStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\u8f66\u673a\u5de5\u5177\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/local/p5home/VehicleLabActivity;->catalogStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    const/16 v7, 0x1b

    invoke-static {p0, v5, v7, v6}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 55
    const-string v5, "\u72b6\u6001\u662f\u672c\u673a\u8bfb\u53d6\u7ed3\u679c\uff1b\u539f\u5382\u63a5\u53e3\u8bf4\u660e\u57fa\u4e8e\u6307\u5b9a G3 \u56fa\u4ef6\u7684\u9759\u6001\u548c\u53ea\u8bfb\u7814\u7a76\u3002"

    iget v6, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v5, v4, v6}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    const-string v1, "\u5e38\u7528\u529f\u80fd"

    invoke-direct {p0, v3, v1}, Lcom/local/p5home/VehicleLabActivity;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 58
    const-string v5, "\u5e94\u7528\u7ba1\u7406\u3001Root / Shizuku\u3001\u539f\u5382\u9875\u9762\u4e0e ADB \u5de5\u5177\u7531\u8f66\u578b\u5e94\u7528\u5e93\u6267\u884c\uff1b\u6253\u5f00\u9875\u9762\u4e0d\u4f1a\u81ea\u52a8\u6267\u884c\u547d\u4ee4\u3002"

    iget v6, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v5, v7, v6}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v5, 0x12

    invoke-static {p0, v1, v5}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 59
    new-instance v6, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda2;-><init>(Lcom/local/p5home/VehicleLabActivity;)V

    const-string v10, "\u5e94\u7528\u7ba1\u7406"

    invoke-direct {p0, v10, v6}, Lcom/local/p5home/VehicleLabActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v6

    new-instance v10, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda3;

    invoke-direct {v10, p0}, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda3;-><init>(Lcom/local/p5home/VehicleLabActivity;)V

    const-string v11, "ADB \u4e0e\u547d\u4ee4"

    invoke-direct {p0, v11, v10}, Lcom/local/p5home/VehicleLabActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v10

    filled-new-array {v6, v10}, [Landroid/widget/Button;

    move-result-object v6

    invoke-static {p0, v1, v6}, Lcom/local/p5home/Ui;->buttons(Landroid/content/Context;Landroid/widget/LinearLayout;[Landroid/widget/Button;)V

    .line 60
    new-instance v6, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda4;-><init>(Lcom/local/p5home/VehicleLabActivity;)V

    const-string v10, "\u539f\u5382\u9875\u9762\u4e0e\u5de5\u5177"

    invoke-direct {p0, v10, v6}, Lcom/local/p5home/VehicleLabActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v6

    new-instance v10, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda5;

    invoke-direct {v10, p0}, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda5;-><init>(Lcom/local/p5home/VehicleLabActivity;)V

    const-string v11, "\u8f6c\u5411\u4fa7\u6444\u8bbe\u7f6e"

    invoke-direct {p0, v11, v10}, Lcom/local/p5home/VehicleLabActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v10

    filled-new-array {v6, v10}, [Landroid/widget/Button;

    move-result-object v6

    invoke-static {p0, v1, v6}, Lcom/local/p5home/Ui;->buttons(Landroid/content/Context;Landroid/widget/LinearLayout;[Landroid/widget/Button;)V

    .line 62
    const-string v1, "\u4eea\u8868\u4e0e\u8f66\u8f86\u63a5\u53e3"

    invoke-direct {p0, v3, v1}, Lcom/local/p5home/VehicleLabActivity;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 63
    const-string v6, "\u8f7b\u684c\u9762\u901a\u8fc7\u72ec\u7acb G3\u8f66\u8f86\u63a5\u53e3 SDK \u8bfb\u53d6\u8f66\u51b5\uff0c\u914d\u7f6e\u5bfc\u822a\u4e0e\u97f3\u4e50\u4eea\u8868\u63a8\u9001\uff0c\u5e76\u8bb0\u5f55\u624b\u52a8\u6d4b\u8bd5\u56de\u6267\u3002\u8bf7\u5148\u5728\u8be5\u9875\u68c0\u67e5\u6388\u6743\u3001\u539f\u5382\u670d\u52a1\u548c\u5177\u4f53\u80fd\u529b\u3002"

    iget v10, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v6, v7, v10}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p0, v1, v5}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 64
    new-instance v6, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0}, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda6;-><init>(Lcom/local/p5home/VehicleLabActivity;)V

    const-string v10, "\u6253\u5f00\u4eea\u8868\u4e0e\u8f66\u8f86\u63a5\u53e3"

    invoke-direct {p0, v10, v6}, Lcom/local/p5home/VehicleLabActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v6

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    const-string v1, "\u8f6c\u5411\u5f71\u50cf \u00b7 \u7814\u7a76\u4e2d"

    invoke-direct {p0, v3, v1}, Lcom/local/p5home/VehicleLabActivity;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 67
    const-string v6, "\u539f\u5382\u5b58\u5728\u5de6\u53f3\u5f71\u50cf\u573a\u666f\u548c turn_assistant_sw \u5f00\u5173\u3002\u8be5\u8f66\u7684\u8f6c\u5411\u706f\u5019\u9009\u5c5e\u6027\u5c1a\u672a\u786e\u8ba4\u53ef\u6ce8\u518c\uff1b\u901f\u5ea6 getter \u65f6\u95f4\u6233\u53ef\u80fd\u662f\u8bfb\u53d6\u65f6\u751f\u6210\uff0c\u4e0d\u80fd\u8bc1\u660e\u8f66\u901f\u6570\u636e\u5b9e\u65f6\u3002"

    iget v10, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v6, v7, v10}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    const-string v6, "\u8f6c\u5411\u5411\u91cf 0x21411cc0 \u00b7 \u8f66\u901f 0x21601225 \u00b7 \u6863\u4f4d 0x21401205"

    invoke-direct {p0, v1, v6}, Lcom/local/p5home/VehicleLabActivity;->detail(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 69
    const-string v6, "\u539f\u8f66\u63a7\u4e5f\u8bfb\u53d6\u8be5\u5411\u91cf\uff1b\u5df2\u5206\u6790\u7684 Q5 \u914d\u7f6e\u9ed8\u8ba4\u4e0d\u542f\u7528\u6b64\u76d1\u542c\uff0c\u4e0d\u80fd\u89c6\u4e3a\u5df2\u627e\u5230\u5907\u7528\u4fe1\u53f7\u3002"

    invoke-direct {p0, v1, v6}, Lcom/local/p5home/VehicleLabActivity;->detail(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 70
    const-string v6, "D20 HAL \u7684 BCM_1 \u914d\u7f6e\u5f15\u7528\u4e86\u5de6\u53f3\u8f6c\u5411\u706f\u5f00\u5173\u548c\u8f93\u51fa\u4fe1\u53f7\u540d\uff1b\u516c\u5f00\u8bfb\u53d6\u63a5\u53e3\u53ca\u4fe1\u53f7\u65f6\u6548\u5c1a\u672a\u786e\u8ba4\u3002"

    invoke-direct {p0, v1, v6}, Lcom/local/p5home/VehicleLabActivity;->detail(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 71
    const-string v6, "2026-10-27 \u53ea\u8bfb\u5feb\u7167\uff1a\u56db\u4e2a\u8f6c\u5411\u5019\u9009\u6709\u539f\u5382\u5904\u7406\u6807\u5fd7\uff0c\u5c5e\u6027\u5173\u8054\u6570\u5747\u4e3a 0\uff1b\u5931\u8054\u6807\u5fd7\u4e0d\u80fd\u8bc1\u660e\u6570\u636e\u5b9e\u65f6\u3002"

    invoke-direct {p0, v1, v6}, Lcom/local/p5home/VehicleLabActivity;->detail(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 72
    const-string v6, "CarService \u7684 CAN \u6545\u969c\u901a\u77e5\u7528\u4e8e\u62a5\u544a HAL \u53cd\u590d\u5d29\u6e83\uff1b\u6ca1\u6709\u6545\u969c\u901a\u77e5\u4e0d\u4ee3\u8868\u8f66\u901f\u6216\u8f6c\u5411\u6570\u636e\u5b9e\u65f6\u3002"

    invoke-direct {p0, v1, v6}, Lcom/local/p5home/VehicleLabActivity;->detail(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 74
    const-string v1, "\u5de1\u822a\u4e0e\u8f66\u9053\u4fdd\u6301 \u00b7 \u5f85\u786e\u8ba4"

    invoke-direct {p0, v3, v1}, Lcom/local/p5home/VehicleLabActivity;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 75
    const-string v6, "\u5df2\u627e\u5230 LCC \u5f00\u5173\u3001\u9053\u8def\u9650\u901f\u53ca\u8d85\u901f\u63d0\u9192\u63a5\u53e3\u3002\u5c1a\u672a\u627e\u5230\u7ecf\u9a8c\u8bc1\u7684 60 / 80 km/h \u5de1\u822a\u8bbe\u901f\u4e0a\u9650\uff0c\u6682\u4e0d\u63d0\u4f9b\u5199\u5165\u3002"

    iget v10, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v6, v7, v10}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    const-string v6, "SCU_LCC_SW 0x2140260e \u662f\u5f00\u5173\uff1b\u9053\u8def\u9650\u901f\u4e0d\u7b49\u4e8e\u5de1\u822a\u4e0a\u9650\u3002"

    invoke-direct {p0, v1, v6}, Lcom/local/p5home/VehicleLabActivity;->detail(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 78
    const-string v1, "\u76f2\u533a\u4e0e\u540e\u65b9\u6765\u8f66 \u00b7 \u63a5\u53e3\u5f85\u9a8c\u8bc1"

    invoke-direct {p0, v3, v1}, Lcom/local/p5home/VehicleLabActivity;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 79
    const-string v6, "\u539f\u5382\u8f66\u63a7\u63d0\u4f9b\u76f2\u533a\u76d1\u6d4b\uff08BSD\uff09\u548c\u540e\u65b9\u6a2a\u5411\u6765\u8f66\u63d0\u9192\uff08RCTA\uff09\u7684\u8bbe\u7f6e\u72b6\u6001\uff1b\u540e\u65b9\u78b0\u649e\uff08RCW\uff09\u53e6\u6709\u5019\u9009\u8bfb\u53d6\u63a5\u53e3\u3002\u63a5\u53e3\u5b58\u5728\u4e0d\u4ee3\u8868\u672c\u8f66\u80fd\u8bfb\u53d6\uff0c\u4e5f\u4e0d\u4ee3\u8868\u6b64\u5904\u5df2\u7ecf\u80fd\u63d0\u793a\u540e\u8f66\u3002"

    iget v10, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v6, v7, v10}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    const-string v6, "\u8bbe\u7f6e\uff1agetBsdState / getRctaState \u00b7 \u5019\u9009\u544a\u8b66\uff1aSCU_BSD / RCTA \u5de6\u53f3\u5c5e\u6027 \u00b7 SCU_RCW_WARNING 0x2140267b"

    invoke-direct {p0, v1, v6}, Lcom/local/p5home/VehicleLabActivity;->detail(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 81
    const-string v6, "2026-10-27 \u53ea\u8bfb\u914d\u7f6e\u68c0\u67e5\uff1a\u7cfb\u7edf UID \u6536\u5230 BSD \u5f00\u5173\u914d\u7f6e\uff1b\u672a\u6536\u5230 RCTA / RCW \u548c\u5de6\u53f3\u544a\u8b66\u914d\u7f6e\u3002\u6743\u9650\u8fc7\u6ee4\u4e0e\u8fd0\u884c\u73af\u5883\u53ef\u80fd\u5f71\u54cd\u7ed3\u679c\uff0c\u4e0d\u80fd\u636e\u6b64\u5224\u65ad\u786c\u4ef6\u652f\u6301\u3002"

    invoke-direct {p0, v1, v6}, Lcom/local/p5home/VehicleLabActivity;->detail(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 83
    const-string v1, "\u7a84\u8def\u4e0e\u5168\u666f\u5f71\u50cf \u00b7 \u7814\u7a76\u4e2d"

    invoke-direct {p0, v3, v1}, Lcom/local/p5home/VehicleLabActivity;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 84
    const-string v6, "\u5df2\u5b9a\u4f4d\u539f\u5382\u9a7e\u9a76\u5f71\u50cf\u7684 NRA \u573a\u666f\u53ca\u5168\u666f\u7cfb\u7edf\u7684\u5de5\u4f5c\u6761\u4ef6\u3002NRA \u5feb\u6377\u5165\u53e3\u4e0e\u5de6\u53f3\u8f6c\u5411\u573a\u666f\u5e76\u975e\u540c\u4e00\u4e8b\u4ef6\uff1b\u6444\u50cf\u5934\u753b\u9762\u63a5\u5165\u53ca\u8f66\u578b\u652f\u6301\u4ecd\u9700\u6838\u5b9e\u3002"

    iget v10, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v6, v7, v10}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    const-string v6, "2026-10-27 \u53ea\u8bfb\u914d\u7f6e\u68c0\u67e5\uff1a\u7cfb\u7edf UID \u6536\u5230 AVM \u5de5\u4f5c\u72b6\u6001\u548c\u6444\u50cf\u5934\u6545\u969c\u914d\u7f6e\uff1b\u672a\u8bfb\u53d6\u72b6\u6001\u503c\u3002"

    invoke-direct {p0, v1, v6}, Lcom/local/p5home/VehicleLabActivity;->detail(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 87
    const-string v1, "\u4eea\u8868\u4e0e\u91cc\u7a0b \u00b7 \u63a5\u53e3\u5f85\u9a8c\u8bc1"

    invoke-direct {p0, v3, v1}, Lcom/local/p5home/VehicleLabActivity;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 88
    const-string v6, "\u539f\u5382\u8f66\u63a7\u63d0\u4f9b\u603b\u91cc\u7a0b\u53ca A / B \u91cc\u7a0b\u8bfb\u53d6\u3002\u603b\u91cc\u7a0b\u8bfb\u53d6\u5931\u8d25\u65f6\u539f\u5382\u53ef\u80fd\u8fd4\u56de 0\uff1b\u5f53\u524d\u6ca1\u6709\u7ecf\u8fc7\u6765\u6e90\u3001\u72b6\u6001\u4e0e\u65f6\u6548\u9a8c\u8bc1\u7684\u5b9e\u65f6\u4eea\u8868\u6570\u636e\u3002"

    iget v10, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v6, v7, v10}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    const-string v6, "IcmController.getMileageTotal / getMileageA / getMileageB \u00b7 ICM_TOTAL_ODOMETER"

    invoke-direct {p0, v1, v6}, Lcom/local/p5home/VehicleLabActivity;->detail(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 90
    const-string v6, "2026-10-27 \u53ea\u8bfb\u914d\u7f6e\u68c0\u67e5\uff1a\u7cfb\u7edf UID \u6536\u5230\u603b\u91cc\u7a0b\u5c5e\u6027\u914d\u7f6e\uff1b\u672a\u8bfb\u53d6\u91cc\u7a0b\u503c\u3002"

    invoke-direct {p0, v1, v6}, Lcom/local/p5home/VehicleLabActivity;->detail(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 92
    const-string v1, "\u539f\u5382\u56de\u8c03\u89c2\u5bdf \u00b7 \u9ed8\u8ba4\u5173\u95ed"

    invoke-direct {p0, v3, v1}, Lcom/local/p5home/VehicleLabActivity;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 93
    const-string v6, "\u53ea\u65c1\u8def\u89c2\u5bdf\u539f\u8f66\u5e94\u7528\u81ea\u7136\u4ea7\u751f\u7684 ACC / LCC\u3001BSD / RCTA / RCW\u3001\u603b\u91cc\u7a0b\u548c AVM \u5de5\u4f5c\u72b6\u6001\u56de\u8c03\uff0c\u8bb0\u5f55\u539f\u59cb\u53c2\u6570\u4e0e\u63a5\u6536\u65f6\u95f4\uff1b\u4e0d\u4f1a\u4e3b\u52a8\u8bfb\u53d6\u4f20\u611f\u5668\u3001\u542f\u52a8\u76f8\u673a\u6216\u6539\u53d8\u539f\u5382\u8fd4\u56de\u503c\u3002\u8bb0\u5f55\u4ec5\u4fdd\u5b58\u5728\u5185\u5b58\u3002"

    iget v10, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v6, v7, v10}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    const/16 v6, 0xe

    invoke-static {p0, v1, v6}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-direct {p0}, Lcom/local/p5home/VehicleLabActivity;->observationStatus()Ljava/lang/String;

    move-result-object v10

    iget v12, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v10, v7, v12}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p0, v1, v6}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 95
    const-string v6, "\u9700\u5728 LSPosed \u52fe\u9009\u8f66\u8f86\u63a7\u5236\u53ca\u9a7e\u9a76\u5f71\u50cf\u8f85\u52a9\u4f5c\u7528\u57df\uff0c\u539f\u8f66\u5e94\u7528\u4e0b\u6b21\u542f\u52a8\u540e\u624d\u5c1d\u8bd5\u63a5\u5165\uff1b\u4e0d\u81ea\u52a8\u91cd\u542f\u3002\u8bb0\u5f55\u53ef\u80fd\u8fc7\u671f\u3001\u7f3a\u5931\u6216\u53d7\u539f\u5382\u5f02\u5e38\u56de\u9000\u5f71\u54cd\uff0c\u4e0d\u80fd\u4f5c\u4e3a\u9a7e\u9a76\u6216\u544a\u8b66\u4f9d\u636e\u3002\u8f66\u8f86\u63a7\u5236\u5e94\u7528\u4e0e\u5176\u4ed6\u7cfb\u7edf\u7ec4\u4ef6\u5171\u4eab UID\uff0c\u65e0\u6cd5\u72ec\u7acb\u8ba4\u8bc1\u5176\u6bcf\u6761\u62a5\u544a\u3002"

    iget v10, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v6, v4, v10}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    invoke-static {p0, v1, v5}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static {p0}, Lcom/local/p5home/VehicleObservationProvider;->enabled(Landroid/content/Context;)Z

    move-result v4

    .line 97
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/widget/Button;

    if-eqz v4, :cond_216

    const-string v10, "\u5173\u95ed\u56de\u8c03\u89c2\u5bdf"

    goto :goto_218

    :cond_216
    const-string v10, "\u5f00\u542f\u56de\u8c03\u89c2\u5bdf"

    :goto_218
    new-instance v12, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda7;

    invoke-direct {v12, p0, v4}, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda7;-><init>(Lcom/local/p5home/VehicleLabActivity;Z)V

    invoke-direct {p0, v10, v12}, Lcom/local/p5home/VehicleLabActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v4

    aput-object v4, v6, v8

    new-instance v4, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda8;-><init>(Lcom/local/p5home/VehicleLabActivity;)V

    const-string v8, "\u5237\u65b0\u89c2\u5bdf\u8bb0\u5f55"

    invoke-direct {p0, v8, v4}, Lcom/local/p5home/VehicleLabActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {p0, v1, v6}, Lcom/local/p5home/Ui;->buttons(Landroid/content/Context;Landroid/widget/LinearLayout;[Landroid/widget/Button;)V

    .line 98
    new-instance v2, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda9;-><init>(Lcom/local/p5home/VehicleLabActivity;)V

    const-string v4, "\u6253\u5f00 LSPosed \u7ba1\u7406\u5668"

    invoke-direct {p0, v4, v2}, Lcom/local/p5home/VehicleLabActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    new-instance v4, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda10;-><init>(Lcom/local/p5home/VehicleLabActivity;)V

    const-string v6, "\u6e05\u9664\u89c2\u5bdf\u8bb0\u5f55"

    invoke-direct {p0, v6, v4}, Lcom/local/p5home/VehicleLabActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v4

    filled-new-array {v2, v4}, [Landroid/widget/Button;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/local/p5home/Ui;->buttons(Landroid/content/Context;Landroid/widget/LinearLayout;[Landroid/widget/Button;)V

    .line 100
    const-string v1, "\u8bed\u97f3\u4e0e\u5bfc\u822a"

    invoke-direct {p0, v3, v1}, Lcom/local/p5home/VehicleLabActivity;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 101
    const-string v2, "\u5c0fP\u4e0e\u8c46\u5305\u4f7f\u7528 LSPosed \u63a5\u5165\uff1b\u9ad8\u5fb7\u652f\u6301\u641c\u7d22\u53ca\u5019\u9009\u8def\u7ebf\u6d41\u7a0b\uff0c\u5b9e\u9645\u8def\u7ebf\u7ed3\u679c\u4ecd\u4ee5\u5730\u56fe\u4e3a\u51c6\u3002\u8f93\u5165\u6846\u8bed\u97f3\u542c\u5199\u5c1a\u672a\u786e\u8ba4\u3002"

    iget v4, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v2, v7, v4}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    invoke-static {p0, v1, v5}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance v2, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/VehicleLabActivity;)V

    const-string v4, "\u8fd4\u56de\u5bfc\u822a\u4e0e\u8bed\u97f3\u8bbe\u7f6e"

    invoke-direct {p0, v4, v2}, Lcom/local/p5home/VehicleLabActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    const-string v1, "\u539f\u5382\u7ef4\u4fee\u4e0e\u8c03\u8bd5"

    invoke-direct {p0, v3, v1}, Lcom/local/p5home/VehicleLabActivity;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 105
    const-string v2, "\u539f\u5382\u547d\u4ee4\u9875\u548c\u7ef4\u4fee\u6a21\u5f0f\u5165\u53e3\u5df2\u5b9a\u4f4d\u3002\u7ef4\u4fee\u6a21\u5f0f\u53ef\u80fd\u4f7f\u8f66\u673a\u8d26\u6237\u9000\u51fa\uff0c\u5177\u4f53\u8f66\u8f86\u5f71\u54cd\u5c1a\u672a\u9a8c\u8bc1\uff1b\u8fdb\u5165\u53ca\u64cd\u4f5c\u7531\u539f\u5382\u9875\u9762\u548c\u5de5\u5177\u7bb1\u5904\u7406\u3002"

    iget v4, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v2, v7, v4}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    const-string v2, "\u547d\u4ee4\u9875\uff1acom.xiaopeng.devtools/.view.aftersales.CommonCmdActivity"

    invoke-direct {p0, v1, v2}, Lcom/local/p5home/VehicleLabActivity;->detail(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 108
    const-string v1, "\u5f00\u53d1\u8bb0\u5f55"

    invoke-direct {p0, v3, v1}, Lcom/local/p5home/VehicleLabActivity;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    const-string v2, "\u590d\u5236\u5df2\u53d1\u73b0\u7684\u5c5e\u6027\u548c\u8fb9\u754c\uff0c\u4fbf\u4e8e\u540e\u7eed\u6392\u67e5\uff1b\u4e0d\u4f1a\u590d\u5236\u5bc6\u94a5\u3001\u8d26\u6237\u6216\u5b9e\u65f6\u8f66\u51b5\u3002"

    iget v0, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    invoke-static {p0, v2, v7, v0}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p0, v1, v5}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance v0, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda1;-><init>(Lcom/local/p5home/VehicleLabActivity;)V

    const-string v2, "\u590d\u5236\u7814\u7a76\u6458\u8981"

    invoke-direct {p0, v2, v0}, Lcom/local/p5home/VehicleLabActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    return-void
.end method

.method private button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;
    .registers 4

    .line 112
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/local/p5home/Ui;->button(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method private card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 6

    .line 110
    invoke-static {p0}, Lcom/local/p5home/Ui;->panel(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x22

    invoke-static {p0, p2, v1}, Lcom/local/p5home/Ui;->title(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 p2, 0x10

    invoke-static {p0, v0, p2}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p2, 0x18

    invoke-static {p0, p1, p2}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    return-object v0
.end method

.method private catalog()Landroid/content/pm/PackageInfo;
    .registers 4

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/local/p5home/VehicleLabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.local.xpcatalog"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    goto :goto_f

    :catch_e
    move-exception v0

    :goto_f
    const/4 v0, 0x0

    return-object v0
.end method

.method private catalogStatus()Ljava/lang/String;
    .registers 5

    .line 116
    invoke-direct {p0}, Lcom/local/p5home/VehicleLabActivity;->catalog()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_21

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_11

    goto :goto_21

    :cond_11
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    const-wide/16 v2, 0x7

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1e

    const-string v0, "\u53ef\u76f4\u63a5\u6253\u5f00\u5de5\u5177\u9875"

    goto :goto_20

    :cond_1e
    const-string v0, "\u5e94\u7528\u5e93\u5df2\u5b89\u88c5 \u00b7 \u65e7\u7248\u9700\u4ece\u8bbe\u7f6e\u8fdb\u5165\u5de5\u5177\u7bb1"

    :goto_20
    return-object v0

    :cond_21
    :goto_21
    const-string v0, "\u5e94\u7528\u5e93\u672a\u5b89\u88c5\u6216\u4e0d\u53ef\u7528"

    return-object v0
.end method

.method private clearObservation()V
    .registers 3

    .line 128
    :try_start_0
    invoke-static {}, Lcom/local/p5home/VehicleObservationProvider;->clearRecords()V

    invoke-direct {p0}, Lcom/local/p5home/VehicleLabActivity;->build()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_11

    :catch_7
    move-exception v0

    const-string v1, "\u6e05\u9664\u672a\u5b8c\u6210"

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method private copyResearch()V
    .registers 4

    .line 140
    :try_start_0
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/local/p5home/VehicleLabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1d

    const-string v1, "\u8f66\u673a\u7814\u7a76\u6458\u8981"

    const-string v2, "\u8f66\u673a\u7814\u7a76\u8bb0\u5f55 \u00b7 G3 / D20 Android 9\n\u539f\u8f66\u8f6c\u5411\u5f71\u50cf\u5f00\u5173\uff1aSettings.System turn_assistant_sw\uff1b\u5f00\u5173\u4e0d\u8bc1\u660e\u753b\u9762\u53ef\u7528\u3002\n\u8f6c\u5411\u5019\u9009\uff1aBCM_LRTURNLAMP_ACTIVE_ST 0x21411cc0\uff1b\u539f\u5382\u5f71\u50cf\u8fdb\u7a0b\u662f\u5426\u53ef\u6ce8\u518c\u5c1a\u672a\u9a8c\u8bc1\u3002\n\u539f\u8f66\u63a7\u8bfb\u53d6\u540c\u4e00\u5c5e\u6027\uff1b\u5df2\u5206\u6790\u7684 Q5 \u914d\u7f6e\u9ed8\u8ba4\u4e0d\u542f\u7528\u8be5\u8f6c\u5411\u76d1\u542c\uff0c\u65e0\u6cd5\u8bc1\u660e\u5b58\u5728\u7b2c\u4e8c\u6570\u636e\u6e90\u3002\nD20 HAL \u914d\u7f6e\u4e2d\u7684 BCM_1 \u542b\u5de6\u53f3\u8f6c\u5411\u5f00\u5173\u548c\u706f\u8f93\u51fa\u4fe1\u53f7\u540d\uff0c\u4f46\u5c1a\u672a\u5efa\u7acb\u5e94\u7528\u53ef\u8bfb\u53d6\u7684\u63a5\u53e3\u6216\u6570\u636e\u65f6\u6548\u3002\n2026-10-27 \u53ea\u8bfb\u5feb\u7167\uff1aD20 \u4fe1\u53f7\u6709\u539f\u5382\u5904\u7406\u6807\u5fd7\uff0c\u4f46\u56db\u4e2a\u5019\u9009\u7684\u5c5e\u6027\u5173\u8054\u6570\u5747\u4e3a 0\uff1b\u5931\u8054\u6807\u5fd7\u4e0d\u80fd\u72ec\u7acb\u8bc1\u660e\u6570\u636e\u65b0\u9c9c\u3002\n\u6863\u4f4d\uff1aVCU_CURRENT_GEARLEV 0x21401205\uff1b\u8f66\u901f\uff1aVCU_RAW_CAR_SPEED 0x21601225\u3002getter \u65f6\u95f4\u6233\u53ef\u80fd\u5728\u8bfb\u53d6\u65f6\u91cd\u5199\uff0c\u4e0d\u80fd\u8bc1\u660e\u6e90\u6570\u636e\u5b9e\u65f6\u3002\nCarService \u7684 CAN \u6545\u969c\u901a\u77e5\u4e0e Vehicle HAL \u53cd\u590d\u5d29\u6e83\u6709\u5173\uff1b\u6ca1\u6709\u901a\u77e5\u4e0d\u80fd\u8bc1\u660e\u5e95\u5c42 CAN \u6570\u636e\u6216\u8f66\u901f\u5b9e\u65f6\u3002\nLCC\uff1aSCU_LCC_SW 0x2140260e \u4e3a\u5f00\u5173\uff0c\u975e 60/80 km/h \u901f\u5ea6\u4e0a\u9650\uff1b\u771f\u5b9e\u4e0a\u9650\u5199\u5165\u63a5\u53e3\u672a\u786e\u8ba4\u3002\n\u76f2\u533a\u548c\u540e\u65b9\u6a2a\u5411\u6765\u8f66\uff1a\u539f\u5382\u8f66\u63a7 getBsdState / getRctaState \u8bfb\u53d6\u8bbe\u7f6e\u72b6\u6001\uff0c\u5e76\u975e\u5b9e\u65f6\u544a\u8b66\uff1b\u53e6\u6709\u5de6\u53f3\u8b66\u544a\u5c5e\u6027\uff0c\u662f\u5426\u652f\u6301\u548c\u542b\u4e49\u5f85\u9a8c\u8bc1\u3002\n\u540e\u65b9\u78b0\u649e\u8b66\u544a\uff1a\u539f\u5382 CarService getScuRearCollisionWarning \u8bfb\u53d6 SCU_RCW_WARNING 0x2140267b\uff1b\u672c\u8f66\u662f\u5426\u53ef\u7528\u53ca\u542b\u4e49\u5f85\u9a8c\u8bc1\u3002\n\u4eea\u8868\uff1agetMileageTotal \u53ef\u8bfb\u53d6\u603b\u91cc\u7a0b\uff0c\u4f46\u5f02\u5e38\u65f6\u539f\u5382\u8fd4\u56de 0\uff1b\u7ed3\u679c\u672a\u7ecf\u72b6\u6001\u6821\u9a8c\u4e0d\u80fd\u5f53\u4f5c\u5b9e\u65f6\u6709\u6548\u503c\u3002\n\u7a84\u8def\u5f71\u50cf\uff1a\u539f\u8f66\u9a7e\u9a76\u5f71\u50cf\u5b58\u5728 NRA \u573a\u666f\u53ca AVM \u5de5\u4f5c\u6761\u4ef6\uff1b\u5e7f\u64ad\u5165\u53e3\u4e0d\u7b49\u540c\u8f6c\u5411\u4fa7\u6444\uff0c\u56fe\u50cf\u63a5\u5165\u672a\u9a8c\u8bc1\u3002\n2026-10-27 system UID \u914d\u7f6e\u67e5\u8be2\uff1a\u8fd4\u56de BSD \u5f00\u5173\u3001\u4eea\u8868\u603b\u91cc\u7a0b\u3001AVM \u5de5\u4f5c\u548c\u6444\u50cf\u5934\u6545\u969c\u5c5e\u6027\u914d\u7f6e\uff1b\u672a\u8fd4\u56de RCW / RCTA \u548c\u5de6\u53f3\u544a\u8b66\u3002\u67e5\u8be2\u4e0d\u5305\u542b\u5c5e\u6027\u503c\uff0c\u672a\u8fd4\u56de\u4e0d\u8bc1\u660e\u4e0d\u652f\u6301\u3002\n\u539f\u5382\u547d\u4ee4\u9875\uff1acom.xiaopeng.devtools/.view.aftersales.CommonCmdActivity\uff1b\u6253\u5f00\u548c\u6267\u884c\u7531\u5e94\u7528\u5e93\u5de5\u5177\u7bb1\u5904\u7406\u3002\n\u7ef4\u4fee\u6a21\u5f0f\uff1a\u539f\u5382\u9875\u9762\u548c\u670d\u52a1\u5b58\u5728\uff1b\u542f\u7528\u53ef\u80fd\u9000\u51fa\u8f66\u673a\u8d26\u6237\uff0c\u672a\u9a8c\u8bc1\u8f66\u8f86\u5f71\u54cd\u3002\n\u7ed3\u8bba\u6765\u81ea\u6307\u5b9a\u56fa\u4ef6\u7684\u9759\u6001\u6216\u53ea\u8bfb\u89c2\u5bdf\uff0c\u4e0d\u80fd\u63a8\u65ad\u5176\u4ed6\u8f66\u578b\u652f\u6301\uff0c\u4e5f\u4e0d\u4ee3\u8868\u5b9e\u9645\u529f\u80fd\u5df2\u542f\u7528\u3002"

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string v0, "\u5df2\u590d\u5236"

    const-string v1, "\u7814\u7a76\u6458\u8981\u5df2\u590d\u5236\uff0c\u53ef\u7c98\u8d34\u5230\u5f00\u53d1\u8bb0\u5f55\u3002 "

    invoke-static {p0, v0, v1}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u526a\u8d34\u677f\u4e0d\u53ef\u7528"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_25} :catch_25

    :catch_25
    move-exception v0

    const-string v1, "\u590d\u5236\u672a\u5b8c\u6210"

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2f
    return-void
.end method

.method private detail(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 5

    .line 111
    const/16 v0, 0xe

    invoke-static {p0, p1, v0}, Lcom/local/p5home/Ui;->gap(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-static {p0}, Lcom/local/p5home/Ui;->colors(Landroid/content/Context;)Lcom/local/p5home/Ui$Palette;

    move-result-object v0

    iget v0, v0, Lcom/local/p5home/Ui$Palette;->muted:I

    const/16 v1, 0x19

    invoke-static {p0, p2, v1, v0}, Lcom/local/p5home/Ui;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private launchCatalog(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4

    .line 139
    if-eqz p2, :cond_7

    :try_start_2
    const-string v0, "com.local.xpcatalog.LAUNCH_TARGET"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    const/high16 p2, 0x24000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/local/p5home/Ui;->launch(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_1a

    :catch_10
    move-exception p1

    const-string p2, "\u5e94\u7528\u5e93\u672a\u6253\u5f00"

    invoke-static {p1}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    return-void
.end method

.method private observationStatus()Ljava/lang/String;
    .registers 16

    .line 118
    const-string v0, "time8"

    const-string v1, "\u89c2\u5bdf\u72b6\u6001\u4e0d\u53ef\u7528"

    :try_start_4
    invoke-virtual {p0}, Lcom/local/p5home/VehicleLabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/local/p5home/VehicleObservationProvider;->URI:Landroid/net/Uri;

    const-string v4, "status"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_14

    return-object v1

    .line 119
    :cond_14
    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v0, "\u89c2\u5bdf\u5df2\u5173\u95ed \u00b7 \u65e0\u8bb0\u5f55"

    return-object v0

    .line 120
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ready"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const-string v4, "\u8f66\u63a7\uff1a\u6536\u5230\u8fc7\u63a5\u5165\u62a5\u544a"

    goto :goto_2e

    :cond_2c
    const-string v4, "\u8f66\u63a7\uff1a\u672a\u6536\u5230\u63a5\u5165\u62a5\u544a"

    :goto_2e
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    const-string v4, "cameraReady"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    const-string v4, " \u00b7 \u5f71\u50cf\uff1a\u6536\u5230\u8fc7\u63a5\u5165\u62a5\u544a"

    goto :goto_3e

    :cond_3c
    const-string v4, " \u00b7 \u5f71\u50cf\uff1a\u672a\u6536\u5230\u63a5\u5165\u62a5\u544a"

    :goto_3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff08\u4e0d\u80fd\u8bc1\u660e\u8fdb\u7a0b\u4ecd\u5728\u8fd0\u884c\uff09"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, ""

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "\u76f2\u533a\u8bbe\u7f6e\u539f\u59cb\u53c2\u6570"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "\u540e\u65b9\u6a2a\u5411\u6765\u8f66\u8bbe\u7f6e\u539f\u59cb\u53c2\u6570"

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-string v5, "\u603b\u91cc\u7a0b\u539f\u59cb\u53c2\u6570"

    const/4 v7, 0x3

    aput-object v5, v4, v7

    const-string v5, "\u540e\u65b9\u78b0\u649e\u8bbe\u7f6e\u539f\u59cb\u53c2\u6570"

    const/4 v7, 0x4

    aput-object v5, v4, v7

    const-string v5, "AVM \u5de5\u4f5c\u72b6\u6001\u539f\u59cb\u53c2\u6570"

    const/4 v12, 0x5

    aput-object v5, v4, v12

    const-string v5, "now"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 123
    move v5, v6

    :goto_6f
    if-gt v5, v12, :cond_7d

    aget-object v11, v4, v5

    move-object v6, v3

    move-object v7, v2

    move-wide v8, v13

    move v10, v5

    invoke-static/range {v6 .. v11}, Lcom/local/p5home/VehicleLabActivity;->appendObservation(Ljava/lang/StringBuilder;Landroid/os/Bundle;JILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6f

    :cond_7d
    const/4 v10, 0x7

    const-string v11, "ACC \u56de\u8c03\u539f\u59cb\u53c2\u6570"

    move-object v6, v3

    move-object v7, v2

    move-wide v8, v13

    invoke-static/range {v6 .. v11}, Lcom/local/p5home/VehicleLabActivity;->appendObservation(Ljava/lang/StringBuilder;Landroid/os/Bundle;JILjava/lang/String;)V

    const/16 v10, 0x8

    const-string v11, "LCC \u56de\u8c03\u9996\u4e2a\u53c2\u6570"

    move-object v6, v3

    move-object v7, v2

    move-wide v8, v13

    invoke-static/range {v6 .. v11}, Lcom/local/p5home/VehicleLabActivity;->appendObservation(Ljava/lang/StringBuilder;Landroid/os/Bundle;JILjava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_b8

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v13, v4

    if-ltz v0, :cond_b8

    const-string v0, " \u00b7 \u539f\u5382\u8f6c\u6362\u6807\u5fd7\uff1a"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "lccConvert"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b3

    const-string v2, "true"

    goto :goto_b5

    :cond_b3
    const-string v2, "false"

    :goto_b5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_bc
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_bc} :catch_bd

    return-object v0

    .line 124
    :catch_bd
    move-exception v0

    return-object v1
.end method

.method private openCamera()V
    .registers 3

    .line 129
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/local/p5home/TurnCameraSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->launch(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_15

    :catch_b
    move-exception v0

    const-string v1, "\u8f6c\u5411\u4fa7\u6444\u8bbe\u7f6e\u672a\u6253\u5f00"

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method private openCatalog(Ljava/lang/String;)V
    .registers 8

    .line 131
    invoke-direct {p0}, Lcom/local/p5home/VehicleLabActivity;->catalog()Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/local/p5home/VehicleLabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.local.xpcatalog"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 132
    if-eqz v0, :cond_51

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_51

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_51

    if-nez v1, :cond_1d

    goto :goto_51

    .line 133
    :cond_1d
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    const-wide/16 v4, 0x7

    cmp-long v0, v2, v4

    if-gez v0, :cond_4d

    .line 134
    invoke-static {p0}, Lcom/local/p5home/Ui;->dialog(Landroid/content/Context;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    const-string v0, "\u9700\u8981\u65b0\u7248\u5e94\u7528\u5e93"

    invoke-virtual {p1, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    const-string v0, "\u5f53\u524d\u7248\u672c\u4e0d\u652f\u6301\u76f4\u63a5\u8fdb\u5165\u3002\u53ef\u4ee5\u6253\u5f00\u5e94\u7528\u5e93\uff0c\u518d\u4ece\u201c\u8bbe\u7f6e\u201d\u8fdb\u5165\u8f66\u673a\u5de5\u5177\u7bb1\uff0c\u6216\u4ece\u9996\u9875\u6253\u5f00\u5e94\u7528\u7ba1\u7406\u3002"

    invoke-virtual {p1, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    .line 135
    const-string v0, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/local/p5home/Ui$PanelBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    new-instance v0, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, v1}, Lcom/local/p5home/VehicleLabActivity$$ExternalSyntheticLambda11;-><init>(Lcom/local/p5home/VehicleLabActivity;Landroid/content/Intent;)V

    const-string v1, "\u6253\u5f00\u5e94\u7528\u5e93"

    invoke-virtual {p1, v1, v0}, Lcom/local/p5home/Ui$PanelBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/local/p5home/Ui$PanelBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/local/p5home/Ui$PanelBuilder;->show()Lcom/local/p5home/Ui$PanelDialog;

    return-void

    .line 137
    :cond_4d
    invoke-direct {p0, v1, p1}, Lcom/local/p5home/VehicleLabActivity;->launchCatalog(Landroid/content/Intent;Ljava/lang/String;)V

    .line 138
    return-void

    .line 132
    :cond_51
    :goto_51
    const-string p1, "\u5e94\u7528\u5e93\u4e0d\u53ef\u7528"

    const-string v0, "\u8bf7\u5148\u5b89\u88c5\u5e76\u542f\u7528\u8f66\u578b\u5e94\u7528\u5e93\uff0c\u518d\u4f7f\u7528\u5176\u5de5\u5177\u7bb1\u4e0e\u5e94\u7528\u7ba1\u7406\u3002"

    invoke-static {p0, p1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static safe(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 113
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const-string p0, "\u672a\u77e5"

    :cond_a
    return-object p0
.end method

.method private setObservation(Z)V
    .registers 3

    .line 127
    :try_start_0
    invoke-static {p0, p1}, Lcom/local/p5home/VehicleObservationProvider;->setEnabled(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/local/p5home/VehicleLabActivity;->build()V

    goto :goto_1c

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\u8bbe\u7f6e\u4fdd\u5b58\u5931\u8d25"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_12} :catch_12

    :catch_12
    move-exception p1

    const-string v0, "\u8bbe\u7f6e\u672a\u4fdd\u5b58"

    invoke-static {p1}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    return-void
.end method


# virtual methods
.method synthetic lambda$build$0$com-local-g3home-VehicleLabActivity()V
    .registers 2

    .line 59
    const-string v0, "apps"

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleLabActivity;->openCatalog(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$build$1$com-local-g3home-VehicleLabActivity()V
    .registers 2

    .line 59
    const-string v0, "commands"

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleLabActivity;->openCatalog(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$build$2$com-local-g3home-VehicleLabActivity()V
    .registers 2

    .line 60
    const-string v0, "tools"

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleLabActivity;->openCatalog(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$build$3$com-local-g3home-VehicleLabActivity()V
    .registers 3

    .line 64
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/local/p5home/VehicleBridgeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/local/p5home/Ui;->launch(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_15

    :catch_b
    move-exception v0

    const-string v1, "\u8f66\u8f86\u63a5\u53e3\u9875\u9762\u672a\u6253\u5f00"

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/local/p5home/Ui;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method synthetic lambda$build$4$com-local-g3home-VehicleLabActivity(Z)V
    .registers 2

    .line 97
    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/local/p5home/VehicleLabActivity;->setObservation(Z)V

    return-void
.end method

.method synthetic lambda$build$5$com-local-g3home-VehicleLabActivity()V
    .registers 1

    .line 98
    invoke-static {p0}, Lcom/local/p5home/DeviceActions;->openLsposed(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$openCatalog$6$com-local-g3home-VehicleLabActivity(Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 135
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/local/p5home/VehicleLabActivity;->launchCatalog(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/local/p5home/VehicleLabActivity;->build()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/local/p5home/VehicleLabActivity;->build()V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget v0, p0, Lcom/local/p5home/VehicleLabActivity;->theme:I

    invoke-static {p0}, Lcom/local/p5home/Ui;->themeSignature(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_e

    invoke-direct {p0}, Lcom/local/p5home/VehicleLabActivity;->build()V

    :cond_e
    return-void
.end method
