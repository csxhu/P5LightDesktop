package com.local.p5home;

/* loaded from: classes.dex */
final class TopBarBounds {
    private TopBarBounds() {
    }

    static int side(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, float f) {
        if (i <= 0 || i2 <= 0 || !Float.isFinite(f) || f <= 0.0f) {
            return 0;
        }
        long jMax = (i - Math.max(0, i3)) - Math.max(0, i5);
        long jMax2 = (i2 - Math.max(0, i4)) - Math.max(0, i6);
        if (jMax <= 0 || jMax2 <= 0) {
            return 0;
        }
        int iMin = (int) Math.min(Math.max(1, Math.min(192, Math.round(f * 64.0f))), Math.min(jMax, jMax2));
        if (i7 > 0) {
            iMin = Math.min(iMin, i7);
        }
        if (i8 > 0) {
            iMin = Math.min(iMin, i8);
        }
        return Math.max(0, iMin);
    }

    static int[] fit(int i, int i2, int i3) {
        if (i3 <= 0) {
            return new int[]{0, 0};
        }
        if (i <= 0 || i2 <= 0) {
            return new int[]{i3, i3};
        }
        double d = i3;
        double d2 = i;
        double d3 = i2;
        double dMin = Math.min(d / d2, d / d3);
        return new int[]{Math.max(1, (int) Math.round(d2 * dMin)), Math.max(1, (int) Math.round(d3 * dMin))};
    }
}
