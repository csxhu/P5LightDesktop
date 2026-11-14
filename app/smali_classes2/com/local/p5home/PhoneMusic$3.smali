.class Lcom/local/p5home/PhoneMusic$3;
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

    .line 62
    iput-object p1, p0, Lcom/local/p5home/PhoneMusic$3;->this$0:Lcom/local/p5home/PhoneMusic;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2

    .line 64
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/local/p5home/PhoneMusic;->access$000(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 65
    return-void
.end method
