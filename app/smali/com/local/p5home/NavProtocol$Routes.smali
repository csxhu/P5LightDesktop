.class final Lcom/local/p5home/NavProtocol$Routes;
.super Ljava/lang/Object;
.source "NavProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/NavProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Routes"
.end annotation


# instance fields
.field final arriveLatitude:D

.field final arriveLongitude:D

.field final count:I

.field final id:Ljava/lang/String;

.field final latitude:D

.field final longitude:D


# direct methods
.method constructor <init>(IDDDDLjava/lang/String;)V
    .registers 11

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput p1, p0, Lcom/local/p5home/NavProtocol$Routes;->count:I

    iput-wide p2, p0, Lcom/local/p5home/NavProtocol$Routes;->latitude:D

    iput-wide p4, p0, Lcom/local/p5home/NavProtocol$Routes;->longitude:D

    .line 149
    iput-wide p6, p0, Lcom/local/p5home/NavProtocol$Routes;->arriveLatitude:D

    iput-wide p8, p0, Lcom/local/p5home/NavProtocol$Routes;->arriveLongitude:D

    iput-object p10, p0, Lcom/local/p5home/NavProtocol$Routes;->id:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method matches(Lcom/local/p5home/NavProtocol$Poi;)Z
    .registers 11

    .line 154
    iget-object v0, p0, Lcom/local/p5home/NavProtocol$Routes;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p1, Lcom/local/p5home/NavProtocol$Poi;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/local/p5home/NavProtocol$Routes;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/local/p5home/NavProtocol$Poi;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 155
    :cond_19
    iget-wide v0, p0, Lcom/local/p5home/NavProtocol$Routes;->latitude:D

    iget-wide v2, p0, Lcom/local/p5home/NavProtocol$Routes;->longitude:D

    iget-wide v4, p1, Lcom/local/p5home/NavProtocol$Poi;->latitude:D

    iget-wide v6, p1, Lcom/local/p5home/NavProtocol$Poi;->longitude:D

    # invokes: Lcom/local/p5home/NavProtocol;->near(DDDD)Z
    invoke-static/range {v0 .. v7}, Lcom/local/p5home/NavProtocol;->access$000(DDDD)Z

    move-result v0

    if-nez v0, :cond_54

    iget-wide v1, p0, Lcom/local/p5home/NavProtocol$Routes;->arriveLatitude:D

    iget-wide v3, p0, Lcom/local/p5home/NavProtocol$Routes;->arriveLongitude:D

    iget-wide v5, p1, Lcom/local/p5home/NavProtocol$Poi;->latitude:D

    iget-wide v7, p1, Lcom/local/p5home/NavProtocol$Poi;->longitude:D

    .line 156
    # invokes: Lcom/local/p5home/NavProtocol;->near(DDDD)Z
    invoke-static/range {v1 .. v8}, Lcom/local/p5home/NavProtocol;->access$000(DDDD)Z

    move-result v0

    if-nez v0, :cond_54

    iget-wide v1, p0, Lcom/local/p5home/NavProtocol$Routes;->latitude:D

    iget-wide v3, p0, Lcom/local/p5home/NavProtocol$Routes;->longitude:D

    iget-wide v5, p1, Lcom/local/p5home/NavProtocol$Poi;->entryLatitude:D

    iget-wide v7, p1, Lcom/local/p5home/NavProtocol$Poi;->entryLongitude:D

    .line 157
    # invokes: Lcom/local/p5home/NavProtocol;->near(DDDD)Z
    invoke-static/range {v1 .. v8}, Lcom/local/p5home/NavProtocol;->access$000(DDDD)Z

    move-result v0

    if-nez v0, :cond_54

    iget-wide v1, p0, Lcom/local/p5home/NavProtocol$Routes;->arriveLatitude:D

    iget-wide v3, p0, Lcom/local/p5home/NavProtocol$Routes;->arriveLongitude:D

    iget-wide v5, p1, Lcom/local/p5home/NavProtocol$Poi;->entryLatitude:D

    iget-wide v7, p1, Lcom/local/p5home/NavProtocol$Poi;->entryLongitude:D

    .line 158
    # invokes: Lcom/local/p5home/NavProtocol;->near(DDDD)Z
    invoke-static/range {v1 .. v8}, Lcom/local/p5home/NavProtocol;->access$000(DDDD)Z

    move-result p1

    if-eqz p1, :cond_52

    goto :goto_54

    :cond_52
    const/4 p1, 0x0

    goto :goto_55

    :cond_54
    :goto_54
    const/4 p1, 0x1

    .line 155
    :goto_55
    return p1
.end method
