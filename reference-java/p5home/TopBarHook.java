package com.local.p5home;

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

/* loaded from: classes.dex */
public final class TopBarHook implements IXposedHookLoadPackage {
    public void handleLoadPackage(XC_LoadPackage.LoadPackageParam loadPackageParam) {
        if (!"com.android.systemui".equals(loadPackageParam.packageName) || !"com.android.systemui".equals(loadPackageParam.processName)) {
            return;
        }
        String[] strArr = {"LandscapeInfoFlow", "VerticalInfoFlow"};
        for (int i = 0; i < 2; i++) {
            try {
                XposedHelpers.findAndHookMethod("com.xiaopeng.systemui.infoflow." + strArr[i], loadPackageParam.classLoader, "initView", new Object[]{new XC_MethodHook() { // from class: com.local.p5home.TopBarHook.1
                    protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                        try {
                            TopBarManager.get().beforeInit(methodHookParam.thisObject);
                        } catch (Throwable th) {
                            TopBarHook.log("RESTORE_UNAVAILABLE");
                        }
                    }

                    protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                        if (methodHookParam.hasThrowable()) {
                            return;
                        }
                        try {
                            TopBarManager.get().attach(methodHookParam.thisObject);
                        } catch (Throwable th) {
                            TopBarHook.log("ATTACH_UNAVAILABLE");
                        }
                    }
                }});
                log("INIT_HOOK_INSTALLED");
            } catch (Throwable th) {
                log("LAYOUT_HOOK_UNAVAILABLE");
            }
        }
    }

    static void log(String str) {
        try {
            XposedBridge.log("G3TopBar: " + str);
        } catch (Throwable th) {
        }
    }
}
