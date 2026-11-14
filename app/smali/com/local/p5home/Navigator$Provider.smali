.class public Lcom/local/p5home/Navigator$Provider;
.super Ljava/lang/Object;
.source "Navigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/Navigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# instance fields
.field public final detail:Ljava/lang/String;

.field public final installed:Z

.field public final label:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final voiceSupported:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 6

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/local/p5home/Navigator$Provider;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/local/p5home/Navigator$Provider;->label:Ljava/lang/String;

    iput-object p3, p0, Lcom/local/p5home/Navigator$Provider;->detail:Ljava/lang/String;

    .line 37
    iput-boolean p4, p0, Lcom/local/p5home/Navigator$Provider;->installed:Z

    iput-boolean p5, p0, Lcom/local/p5home/Navigator$Provider;->voiceSupported:Z

    .line 38
    return-void
.end method
