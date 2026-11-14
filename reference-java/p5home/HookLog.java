package com.local.p5home;

import android.util.Log;
import de.robv.android.xposed.XposedBridge;

/* loaded from: classes.dex */
final class HookLog {
    static void write(String str) {
        try {
            Log.i("G3Speech", str);
        } catch (Throwable th) {
        }
        try {
            XposedBridge.log("G3Speech " + str);
        } catch (Throwable th2) {
        }
    }

    private HookLog() {
    }
}
