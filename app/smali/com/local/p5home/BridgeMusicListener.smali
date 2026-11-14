.class public final Lcom/local/p5home/BridgeMusicListener;
.super Landroid/service/notification/NotificationListenerService;
.source "BridgeMusicListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .registers 1

    .line 7
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    invoke-static {p0}, Lcom/local/p5home/VehicleBridgeClient;->musicAccessChanged(Landroid/content/Context;)V

    return-void
.end method

.method public onListenerDisconnected()V
    .registers 1

    .line 8
    invoke-static {p0}, Lcom/local/p5home/VehicleBridgeClient;->musicAccessChanged(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    return-void
.end method
