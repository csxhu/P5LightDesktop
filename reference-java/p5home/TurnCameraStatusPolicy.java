package com.local.p5home;

/* loaded from: classes.dex */
final class TurnCameraStatusPolicy {
    static boolean allowRead(int i, int i2, int i3) {
        return i == 0 || (i2 > 0 && i == i2) || (i3 > 0 && i == i3);
    }

    static boolean allowReport(int i, int i2, int i3, int i4, boolean z) {
        return z && i > 0 && i4 > 0 && i == i4 && i != i2 && i != i3;
    }

    private TurnCameraStatusPolicy() {
    }
}
