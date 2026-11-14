package com.local.p5home;

import android.app.AndroidAppHelper;
import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class SpeechHook implements IXposedHookLoadPackage {
    private static final String CAR = "com.xiaopeng.carspeechservice";
    private static final AtomicBoolean started = new AtomicBoolean();
    private static final AtomicBoolean attachInstalled = new AtomicBoolean();
    private static final Set<String> reported = new HashSet();

    public void handleLoadPackage(final XC_LoadPackage.LoadPackageParam loadPackageParam) {
        if (CAR.equals(loadPackageParam.packageName)) {
            report("PACKAGE_LOADED");
            if (!CAR.equals(loadPackageParam.processName)) {
                report("PROCESS_NOT_TARGET");
                return;
            }
            if (tryStart(currentApplication(), loadPackageParam.classLoader, "START_EXISTING_APPLICATION")) {
                return;
            }
            if (attachInstalled.compareAndSet(false, true)) {
                try {
                    XposedHelpers.findAndHookMethod(Application.class, "attach", new Object[]{Context.class, new XC_MethodHook() { // from class: com.local.p5home.SpeechHook.1
                        protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                            SpeechHook.report("ATTACH_HIT");
                            SpeechHook.tryStart((Context) methodHookParam.args[0], loadPackageParam.classLoader, "START_FROM_ATTACH");
                        }
                    }});
                    report("ATTACH_WATCH_INSTALLED");
                } catch (Exception | LinkageError e) {
                    attachInstalled.set(false);
                    report("HOOK_ENTRY_UNAVAILABLE");
                }
            }
            if (tryStart(currentApplication(), loadPackageParam.classLoader, "START_AFTER_ATTACH_WATCH")) {
                return;
            }
            try {
                Handler handler = new Handler(Looper.getMainLooper());
                long[] jArr = {0, 250, 1000};
                for (int i = 0; i < 3; i++) {
                    handler.postDelayed(new Runnable() { // from class: com.local.p5home.SpeechHook$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            SpeechHook.lambda$handleLoadPackage$0(loadPackageParam);
                        }
                    }, jArr[i]);
                }
                report("ATTACH_WAITING");
            } catch (Exception | LinkageError e2) {
                report("LATE_APP_PROBE_UNAVAILABLE");
            }
        }
    }

    static /* synthetic */ void lambda$handleLoadPackage$0(XC_LoadPackage.LoadPackageParam loadPackageParam) {
        if (!started.get()) {
            tryStart(currentApplication(), loadPackageParam.classLoader, "START_LATE_APPLICATION");
        }
    }

    private static Context currentApplication() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            Application applicationCurrentApplication = AndroidAppHelper.currentApplication();
            if (applicationCurrentApplication != null) {
                report("APP_FOUND_HELPER");
                return applicationCurrentApplication;
            }
        } catch (Exception | LinkageError e) {
            report("APP_HELPER_UNAVAILABLE");
        }
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread").getDeclaredMethod("currentApplication", new Class[0]);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, new Object[0]);
            if (objInvoke instanceof Application) {
                report("APP_FOUND_THREAD");
                return (Application) objInvoke;
            }
        } catch (Exception | LinkageError e2) {
            report("APP_THREAD_UNAVAILABLE");
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean tryStart(Context context, ClassLoader classLoader, String str) {
        if (context == null) {
            return false;
        }
        try {
            if (!CAR.equals(context.getPackageName())) {
                report("APP_CONTEXT_NOT_TARGET");
                return false;
            }
            if (!started.compareAndSet(false, true)) {
                report("RUNTIME_ALREADY_STARTED");
                return true;
            }
            Context applicationContext = context.getApplicationContext();
            if (classLoader == null) {
                classLoader = context.getClassLoader();
            }
            report(str);
            if (applicationContext != null) {
                context = applicationContext;
            }
            new HookRuntime(context, classLoader).start();
            return true;
        } catch (Exception | LinkageError e) {
            report("HOOK_ATTACH_UNAVAILABLE");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void report(String str) {
        Set<String> set = reported;
        synchronized (set) {
            if (set.add(str)) {
                HookLog.write(str);
            }
        }
    }
}
