.class Lcom/local/p5home/PhoneMusic$4;
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

    .line 67
    iput-object p1, p0, Lcom/local/p5home/PhoneMusic$4;->this$0:Lcom/local/p5home/PhoneMusic;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    .line 69
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/local/p5home/PhoneMusic;->access$102(Landroid/app/Activity;)Landroid/app/Activity;

    .line 70
    return-void
.end method
