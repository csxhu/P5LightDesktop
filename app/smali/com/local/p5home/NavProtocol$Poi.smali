.class final Lcom/local/p5home/NavProtocol$Poi;
.super Ljava/lang/Object;
.source "NavProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/NavProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Poi"
.end annotation


# instance fields
.field final direct:Z

.field final entryLatitude:D

.field final entryLongitude:D

.field final id:Ljava/lang/String;

.field final latitude:D

.field final longitude:D

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;DDDDZ)V
    .registers 12

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/local/p5home/NavProtocol$Poi;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/local/p5home/NavProtocol$Poi;->id:Ljava/lang/String;

    iput-wide p3, p0, Lcom/local/p5home/NavProtocol$Poi;->latitude:D

    iput-wide p5, p0, Lcom/local/p5home/NavProtocol$Poi;->longitude:D

    .line 83
    iput-wide p7, p0, Lcom/local/p5home/NavProtocol$Poi;->entryLatitude:D

    iput-wide p9, p0, Lcom/local/p5home/NavProtocol$Poi;->entryLongitude:D

    iput-boolean p11, p0, Lcom/local/p5home/NavProtocol$Poi;->direct:Z

    .line 84
    return-void
.end method
