package com.local.p5home;

import android.service.notification.NotificationListenerService;

/* loaded from: classes.dex */
public final class BridgeMusicListener extends NotificationListenerService {
    @Override // android.service.notification.NotificationListenerService
    public void onListenerConnected() {
        super.onListenerConnected();
        VehicleBridgeClient.musicAccessChanged(this);
    }

    @Override // android.service.notification.NotificationListenerService
    public void onListenerDisconnected() {
        VehicleBridgeClient.musicAccessChanged(this);
        super.onListenerDisconnected();
    }
}
