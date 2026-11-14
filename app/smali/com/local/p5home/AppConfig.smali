.class public final Lcom/local/p5home/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"


# instance fields
.field public apiProtocol:Ljava/lang/String;

.field public autoLaunchNav:Z

.field public customWakeUseNative:Z

.field public doubaoEnabled:Z

.field public endpoint:Ljava/lang/String;

.field public modelId:Ljava/lang/String;

.field public modelWakeEnabled:Z

.field public modelWakeWords:Ljava/lang/String;

.field public musicProvider:Ljava/lang/String;

.field public navPackage:Ljava/lang/String;

.field public prefix:Ljava/lang/String;

.field public restoreAfterWake:Z

.field public voiceEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/AppConfig;->voiceEnabled:Z

    iput-boolean v0, p0, Lcom/local/p5home/AppConfig;->doubaoEnabled:Z

    iput-boolean v0, p0, Lcom/local/p5home/AppConfig;->autoLaunchNav:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/local/p5home/AppConfig;->restoreAfterWake:Z

    .line 6
    const-string v1, "system"

    iput-object v1, p0, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    .line 7
    const-string v1, "com.autonavi.amapauto"

    iput-object v1, p0, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    .line 8
    const-string v1, "https://ark.cn-beijing.volces.com/api/v3"

    iput-object v1, p0, Lcom/local/p5home/AppConfig;->endpoint:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/local/p5home/AppConfig;->modelId:Ljava/lang/String;

    const-string v1, "\u95ee\u8c46\u5305"

    iput-object v1, p0, Lcom/local/p5home/AppConfig;->prefix:Ljava/lang/String;

    .line 9
    const-string v1, "ark"

    iput-object v1, p0, Lcom/local/p5home/AppConfig;->apiProtocol:Ljava/lang/String;

    const-string v1, "\u8c46\u5305\u8c46\u5305\uff0c\u5c0f\u7231\u540c\u5b66"

    iput-object v1, p0, Lcom/local/p5home/AppConfig;->modelWakeWords:Ljava/lang/String;

    .line 10
    iput-boolean v0, p0, Lcom/local/p5home/AppConfig;->modelWakeEnabled:Z

    return-void
.end method
