.class public final synthetic Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/text/Collator;


# direct methods
.method public synthetic constructor <init>(Ljava/text/Collator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda1;->f$0:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity$$ExternalSyntheticLambda1;->f$0:Ljava/text/Collator;

    check-cast p1, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;

    check-cast p2, Lcom/local/p5home/TopBarSettingsActivity$AppChoice;

    invoke-static {v0, p1, p2}, Lcom/local/p5home/TopBarSettingsActivity;->lambda$loadApps$8(Ljava/text/Collator;Lcom/local/p5home/TopBarSettingsActivity$AppChoice;Lcom/local/p5home/TopBarSettingsActivity$AppChoice;)I

    move-result p1

    return p1
.end method
