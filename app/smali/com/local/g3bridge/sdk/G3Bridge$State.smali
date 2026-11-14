.class public final enum Lcom/local/g3bridge/sdk/G3Bridge$State;
.super Ljava/lang/Enum;
.source "G3Bridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/g3bridge/sdk/G3Bridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/local/g3bridge/sdk/G3Bridge$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/local/g3bridge/sdk/G3Bridge$State;

.field public static final enum CONFIRMED:Lcom/local/g3bridge/sdk/G3Bridge$State;

.field public static final enum EXPIRED:Lcom/local/g3bridge/sdk/G3Bridge$State;

.field public static final enum FAILED:Lcom/local/g3bridge/sdk/G3Bridge$State;

.field public static final enum PENDING:Lcom/local/g3bridge/sdk/G3Bridge$State;

.field public static final enum QUEUED:Lcom/local/g3bridge/sdk/G3Bridge$State;

.field public static final enum REJECTED:Lcom/local/g3bridge/sdk/G3Bridge$State;

.field public static final enum SUBMITTED:Lcom/local/g3bridge/sdk/G3Bridge$State;

.field public static final enum UNKNOWN:Lcom/local/g3bridge/sdk/G3Bridge$State;


# direct methods
.method private static synthetic $values()[Lcom/local/g3bridge/sdk/G3Bridge$State;
    .registers 8

    .line 156
    sget-object v0, Lcom/local/g3bridge/sdk/G3Bridge$State;->QUEUED:Lcom/local/g3bridge/sdk/G3Bridge$State;

    sget-object v1, Lcom/local/g3bridge/sdk/G3Bridge$State;->SUBMITTED:Lcom/local/g3bridge/sdk/G3Bridge$State;

    sget-object v2, Lcom/local/g3bridge/sdk/G3Bridge$State;->PENDING:Lcom/local/g3bridge/sdk/G3Bridge$State;

    sget-object v3, Lcom/local/g3bridge/sdk/G3Bridge$State;->CONFIRMED:Lcom/local/g3bridge/sdk/G3Bridge$State;

    sget-object v4, Lcom/local/g3bridge/sdk/G3Bridge$State;->REJECTED:Lcom/local/g3bridge/sdk/G3Bridge$State;

    sget-object v5, Lcom/local/g3bridge/sdk/G3Bridge$State;->FAILED:Lcom/local/g3bridge/sdk/G3Bridge$State;

    sget-object v6, Lcom/local/g3bridge/sdk/G3Bridge$State;->EXPIRED:Lcom/local/g3bridge/sdk/G3Bridge$State;

    sget-object v7, Lcom/local/g3bridge/sdk/G3Bridge$State;->UNKNOWN:Lcom/local/g3bridge/sdk/G3Bridge$State;

    filled-new-array/range {v0 .. v7}, [Lcom/local/g3bridge/sdk/G3Bridge$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 156
    new-instance v0, Lcom/local/g3bridge/sdk/G3Bridge$State;

    const-string v1, "QUEUED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/local/g3bridge/sdk/G3Bridge$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/local/g3bridge/sdk/G3Bridge$State;->QUEUED:Lcom/local/g3bridge/sdk/G3Bridge$State;

    new-instance v0, Lcom/local/g3bridge/sdk/G3Bridge$State;

    const-string v1, "SUBMITTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/local/g3bridge/sdk/G3Bridge$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/local/g3bridge/sdk/G3Bridge$State;->SUBMITTED:Lcom/local/g3bridge/sdk/G3Bridge$State;

    new-instance v0, Lcom/local/g3bridge/sdk/G3Bridge$State;

    const-string v1, "PENDING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/local/g3bridge/sdk/G3Bridge$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/local/g3bridge/sdk/G3Bridge$State;->PENDING:Lcom/local/g3bridge/sdk/G3Bridge$State;

    new-instance v0, Lcom/local/g3bridge/sdk/G3Bridge$State;

    const-string v1, "CONFIRMED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/local/g3bridge/sdk/G3Bridge$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/local/g3bridge/sdk/G3Bridge$State;->CONFIRMED:Lcom/local/g3bridge/sdk/G3Bridge$State;

    new-instance v0, Lcom/local/g3bridge/sdk/G3Bridge$State;

    const-string v1, "REJECTED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/local/g3bridge/sdk/G3Bridge$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/local/g3bridge/sdk/G3Bridge$State;->REJECTED:Lcom/local/g3bridge/sdk/G3Bridge$State;

    new-instance v0, Lcom/local/g3bridge/sdk/G3Bridge$State;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/local/g3bridge/sdk/G3Bridge$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/local/g3bridge/sdk/G3Bridge$State;->FAILED:Lcom/local/g3bridge/sdk/G3Bridge$State;

    new-instance v0, Lcom/local/g3bridge/sdk/G3Bridge$State;

    const-string v1, "EXPIRED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/local/g3bridge/sdk/G3Bridge$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/local/g3bridge/sdk/G3Bridge$State;->EXPIRED:Lcom/local/g3bridge/sdk/G3Bridge$State;

    new-instance v0, Lcom/local/g3bridge/sdk/G3Bridge$State;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/local/g3bridge/sdk/G3Bridge$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/local/g3bridge/sdk/G3Bridge$State;->UNKNOWN:Lcom/local/g3bridge/sdk/G3Bridge$State;

    invoke-static {}, Lcom/local/g3bridge/sdk/G3Bridge$State;->$values()[Lcom/local/g3bridge/sdk/G3Bridge$State;

    move-result-object v0

    sput-object v0, Lcom/local/g3bridge/sdk/G3Bridge$State;->$VALUES:[Lcom/local/g3bridge/sdk/G3Bridge$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/local/g3bridge/sdk/G3Bridge$State;
    .registers 2

    .line 156
    const-class v0, Lcom/local/g3bridge/sdk/G3Bridge$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/local/g3bridge/sdk/G3Bridge$State;

    return-object p0
.end method

.method public static values()[Lcom/local/g3bridge/sdk/G3Bridge$State;
    .registers 1

    .line 156
    sget-object v0, Lcom/local/g3bridge/sdk/G3Bridge$State;->$VALUES:[Lcom/local/g3bridge/sdk/G3Bridge$State;

    invoke-virtual {v0}, [Lcom/local/g3bridge/sdk/G3Bridge$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/local/g3bridge/sdk/G3Bridge$State;

    return-object v0
.end method
