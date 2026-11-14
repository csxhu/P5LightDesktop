.class Lcom/local/p5home/LunaMusicHook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "LunaMusicHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/LunaMusicHook;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/LunaMusicHook;

.field final synthetic val$execute:Ljava/lang/reflect/Method;

.field final synthetic val$manager:Ljava/lang/Class;

.field final synthetic val$ready:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/local/p5home/LunaMusicHook;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 5

    .line 25
    iput-object p1, p0, Lcom/local/p5home/LunaMusicHook$1;->this$0:Lcom/local/p5home/LunaMusicHook;

    iput-object p2, p0, Lcom/local/p5home/LunaMusicHook$1;->val$manager:Ljava/lang/Class;

    iput-object p3, p0, Lcom/local/p5home/LunaMusicHook$1;->val$execute:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lcom/local/p5home/LunaMusicHook$1;->val$ready:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 25
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/local/p5home/LunaMusicHook$1;->val$manager:Ljava/lang/Class;

    iget-object v1, p0, Lcom/local/p5home/LunaMusicHook$1;->val$execute:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/local/p5home/LunaMusicHook$1;->val$ready:Ljava/lang/reflect/Method;

    # invokes: Lcom/local/p5home/LunaMusicHook;->install(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    invoke-static {p1, v0, v1, v2}, Lcom/local/p5home/LunaMusicHook;->access$000(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-void
.end method
