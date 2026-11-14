.class Lcom/local/p5home/PhoneMusic$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "PhoneMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/PhoneMusic;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/PhoneMusic;


# direct methods
.method constructor <init>(Lcom/local/p5home/PhoneMusic;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/local/p5home/PhoneMusic$2;->this$0:Lcom/local/p5home/PhoneMusic;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 58
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/local/p5home/PhoneMusic;->access$000(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 59
    return-void
.end method
