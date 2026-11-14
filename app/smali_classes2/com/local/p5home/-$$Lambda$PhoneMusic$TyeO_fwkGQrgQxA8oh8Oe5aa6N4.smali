.class public final synthetic Lcom/local/p5home/-$$Lambda$PhoneMusic$TyeO_fwkGQrgQxA8oh8Oe5aa6N4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/local/p5home/-$$Lambda$PhoneMusic$TyeO_fwkGQrgQxA8oh8Oe5aa6N4;->f$0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/local/p5home/-$$Lambda$PhoneMusic$TyeO_fwkGQrgQxA8oh8Oe5aa6N4;->f$0:I

    invoke-static {v0}, Lcom/local/p5home/PhoneMusic;->lambda$tick$1(I)V

    return-void
.end method
