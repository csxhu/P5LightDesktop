.class Lcom/local/p5home/P5SpeechBridge$4;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "P5SpeechBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/P5SpeechBridge;->install()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/P5SpeechBridge;


# direct methods
.method constructor <init>(Lcom/local/p5home/P5SpeechBridge;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/local/p5home/P5SpeechBridge$4;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/local/p5home/P5SpeechBridge$4;->this$0:Lcom/local/p5home/P5SpeechBridge;

    invoke-static {v0, p1}, Lcom/local/p5home/P5SpeechBridge;->access$1800(Lcom/local/p5home/P5SpeechBridge;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    .line 218
    return-void
.end method
