.class Lcom/local/p5home/SpeechHook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SpeechHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/SpeechHook;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/SpeechHook;

.field final synthetic val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;


# direct methods
.method constructor <init>(Lcom/local/p5home/SpeechHook;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 3

    .line 29
    iput-object p1, p0, Lcom/local/p5home/SpeechHook$1;->this$0:Lcom/local/p5home/SpeechHook;

    iput-object p2, p0, Lcom/local/p5home/SpeechHook$1;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 4

    .line 31
    const-string v0, "ATTACH_HIT"

    # invokes: Lcom/local/p5home/SpeechHook;->report(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/local/p5home/SpeechHook;->access$000(Ljava/lang/String;)V

    .line 32
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/local/p5home/SpeechHook$1;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    iget-object v0, v0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v1, "START_FROM_ATTACH"

    # invokes: Lcom/local/p5home/SpeechHook;->tryStart(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    invoke-static {p1, v0, v1}, Lcom/local/p5home/SpeechHook;->access$100(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    .line 33
    return-void
.end method
