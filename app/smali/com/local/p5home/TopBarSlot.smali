.class public final Lcom/local/p5home/TopBarSlot;
.super Ljava/lang/Object;
.source "TopBarSlot.java"


# static fields
.field static final IDS:[Ljava/lang/String;

.field public static final NAMES:[Ljava/lang/String;

.field public static final SLOT_COUNT:I = 0x7


# instance fields
.field public final activityName:Ljava/lang/String;

.field public final index:I

.field public final label:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 6
    const-string v0, "\u5730\u56fe"

    const-string v1, "\u97f3\u4e50"

    const-string v2, "\u84dd\u7259\u7535\u8bdd"

    const-string v3, "\u76f8\u673a"

    const-string v4, "\u8bbe\u7f6e"

    const-string v5, "\u5e94\u7528\u5217\u8868"

    const-string v6, "\u5c0fP"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/local/p5home/TopBarSlot;->NAMES:[Ljava/lang/String;

    .line 7
    const-string v1, "img_app_map"

    const-string v2, "img_app_music"

    const-string v3, "img_app_phone"

    const-string v4, "img_app_camera"

    const-string v5, "img_app_setting"

    const-string v6, "img_app_list"

    const-string v7, "img_app_aiassistant"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/local/p5home/TopBarSlot;->IDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    if-ltz p1, :cond_4d

    const/4 v0, 0x7

    if-ge p1, v0, :cond_4d

    .line 12
    iput p1, p0, Lcom/local/p5home/TopBarSlot;->index:I

    invoke-static {p2}, Lcom/local/p5home/TopBarSlot;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/TopBarSlot;->packageName:Ljava/lang/String;

    invoke-static {p3}, Lcom/local/p5home/TopBarSlot;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/local/p5home/TopBarSlot;->activityName:Ljava/lang/String;

    invoke-static {p4}, Lcom/local/p5home/TopBarSlot;->display(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/local/p5home/TopBarSlot;->label:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_37

    invoke-static {p1}, Lcom/local/p5home/TopBarSlot;->validPackage(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2f

    invoke-static {p2}, Lcom/local/p5home/TopBarSlot;->validActivity(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2f

    goto :goto_37

    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid launcher component"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_37
    :goto_37
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_44

    goto :goto_4c

    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing package"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_4c
    :goto_4c
    return-void

    .line 11
    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid slot"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static clean(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 19
    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method static display(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 22
    invoke-static {p0}, Lcom/local/p5home/TopBarSlot;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_40

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x50

    if-ge v2, v3, :cond_40

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-nez v3, :cond_3d

    const/16 v3, 0x202e

    if-eq v2, v3, :cond_3d

    const/16 v3, 0x202d

    if-eq v2, v3, :cond_3d

    const/16 v3, 0x2066

    if-eq v2, v3, :cond_3d

    const/16 v3, 0x2067

    if-eq v2, v3, :cond_3d

    const/16 v3, 0x2068

    if-eq v2, v3, :cond_3d

    const/16 v3, 0x2069

    if-eq v2, v3, :cond_3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static original(I)Lcom/local/p5home/TopBarSlot;
    .registers 3

    .line 18
    new-instance v0, Lcom/local/p5home/TopBarSlot;

    const-string v1, ""

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/local/p5home/TopBarSlot;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static validActivity(Ljava/lang/String;)Z
    .registers 3

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_18

    const-string v0, "\\.?[A-Za-z_$][A-Za-z0-9_.$]*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method static validPackage(Ljava/lang/String;)Z
    .registers 3

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_12

    const-string v0, "[A-Za-z_][A-Za-z0-9_]*(\\.[A-Za-z_][A-Za-z0-9_]*)+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method


# virtual methods
.method public displayLabel()Ljava/lang/String;
    .registers 4

    .line 17
    invoke-virtual {p0}, Lcom/local/p5home/TopBarSlot;->isCustom()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/local/p5home/TopBarSlot;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/local/p5home/TopBarSlot;->packageName:Ljava/lang/String;

    goto :goto_2d

    :cond_11
    iget-object v0, p0, Lcom/local/p5home/TopBarSlot;->label:Ljava/lang/String;

    goto :goto_2d

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u539f\u8f66\u9ed8\u8ba4 \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/local/p5home/TopBarSlot;->NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/local/p5home/TopBarSlot;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    return-object v0
.end method

.method public isCustom()Z
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/local/p5home/TopBarSlot;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
