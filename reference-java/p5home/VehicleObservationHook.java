package com.local.p5home;

import android.app.AndroidAppHelper;
import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.os.Bundle;
import android.os.Process;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class VehicleObservationHook implements IXposedHookLoadPackage {
    private static final String CAMERA = "com.xiaopeng.drivingimageassist";
    private static final String CERT = "162fb40e0725bcfcc0932a4d6bcd9606973b6443ebe1d2fa84ae735867286ee7";
    private static final String PACKAGE = "com.xiaopeng.carcontrol";
    private static final ThreadPoolExecutor SEND;
    private static final AtomicBoolean attempted = new AtomicBoolean();

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new ArrayBlockingQueue(8), new ThreadPoolExecutor.DiscardPolicy());
        SEND = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    public void handleLoadPackage(final XC_LoadPackage.LoadPackageParam loadPackageParam) {
        if ((PACKAGE.equals(loadPackageParam.packageName) || CAMERA.equals(loadPackageParam.packageName)) && loadPackageParam.packageName.equals(loadPackageParam.processName)) {
            final String str = loadPackageParam.packageName;
            try {
                Application applicationCurrentApplication = AndroidAppHelper.currentApplication();
                if (applicationCurrentApplication == null || !str.equals(applicationCurrentApplication.getPackageName())) {
                    XposedHelpers.findAndHookMethod(Application.class, "attach", new Object[]{Context.class, new XC_MethodHook() { // from class: com.local.p5home.VehicleObservationHook.1
                        protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                            if (methodHookParam.hasThrowable() || methodHookParam.args == null || methodHookParam.args.length != 1 || !(methodHookParam.args[0] instanceof Context)) {
                                return;
                            }
                            Context context = (Context) methodHookParam.args[0];
                            if (str.equals(context.getPackageName())) {
                                VehicleObservationHook.schedule(context, loadPackageParam.classLoader, str);
                            }
                        }
                    }});
                } else {
                    schedule(applicationCurrentApplication, loadPackageParam.classLoader, str);
                }
            } catch (Throwable th) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void schedule(final Context context, final ClassLoader classLoader, final String str) {
        if (attempted.compareAndSet(false, true)) {
            try {
                SEND.execute(new Runnable() { // from class: com.local.p5home.VehicleObservationHook$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        VehicleObservationHook.lambda$schedule$0(str, context, classLoader);
                    }
                });
            } catch (Throwable th) {
            }
        }
    }

    static /* synthetic */ void lambda$schedule$0(String str, Context context, ClassLoader classLoader) {
        if (CAMERA.equals(str)) {
            installCamera(context, classLoader);
        } else {
            install(context, classLoader);
        }
    }

    private static void installCamera(Context context, ClassLoader classLoader) {
        String string;
        XC_MethodHook.Unhook unhookHookMethod = null;
        try {
            Bundle bundleCall = context.getContentResolver().call(VehicleObservationProvider.URI, "config", (String) null, (Bundle) null);
            if (bundleCall != null && bundleCall.getBoolean("enabled", false) && TurnCameraStatusIdentity.verified(context, Process.myUid()) && (string = bundleCall.getString("generation")) != null && string.length() <= 64) {
                Method declaredMethod = Class.forName("com.xiaopeng.drivingimageassist.carapi.event.AVMEvent", false, classLoader).getDeclaredMethod("onAvmWork", Integer.TYPE);
                if (passiveCallback(declaredMethod)) {
                    unhookHookMethod = XposedBridge.hookMethod(declaredMethod, observer(context, 5, string));
                    publish(context, 6, 1.0d, string);
                }
            }
        } catch (Throwable th) {
            if (unhookHookMethod != null) {
                try {
                    unhookHookMethod.unhook();
                } catch (Throwable th2) {
                }
            }
        }
    }

    private static void install(Context context, ClassLoader classLoader) {
        String string;
        ArrayList arrayList = new ArrayList();
        try {
            Bundle bundleCall = context.getContentResolver().call(VehicleObservationProvider.URI, "config", (String) null, (Bundle) null);
            if (bundleCall != null && bundleCall.getBoolean("enabled", false) && allowed(context) && (string = bundleCall.getString("generation")) != null && string.length() <= 64) {
                Class<?> cls = Class.forName("com.xiaopeng.carcontrol.carmanager.impl.ScuController", false, classLoader);
                Class<?> cls2 = Class.forName("com.xiaopeng.carcontrol.carmanager.impl.IcmController", false, classLoader);
                Method declaredMethod = cls.getDeclaredMethod("handleBsdUpdate", Integer.TYPE);
                Method declaredMethod2 = cls.getDeclaredMethod("handleRctaUpdate", Integer.TYPE);
                Method declaredMethod3 = cls2.getDeclaredMethod("handleMileageTotalUpdate", Float.TYPE);
                Method declaredMethod4 = cls.getDeclaredMethod("handleRcwUpdate", Integer.TYPE);
                Method declaredMethod5 = cls.getDeclaredMethod("handleAccUpdate", Integer.TYPE);
                Method declaredMethod6 = cls.getDeclaredMethod("handleLccUpdate", Integer.TYPE, Boolean.TYPE);
                if (passiveCallback(declaredMethod) && passiveCallback(declaredMethod2) && passiveCallback(declaredMethod3) && passiveCallback(declaredMethod4) && passiveCallback(declaredMethod5) && passiveCallback(declaredMethod6)) {
                    arrayList.add(XposedBridge.hookMethod(declaredMethod, observer(context, 1, string)));
                    arrayList.add(XposedBridge.hookMethod(declaredMethod2, observer(context, 2, string)));
                    arrayList.add(XposedBridge.hookMethod(declaredMethod3, observer(context, 3, string)));
                    arrayList.add(XposedBridge.hookMethod(declaredMethod4, observer(context, 4, string)));
                    arrayList.add(XposedBridge.hookMethod(declaredMethod5, observer(context, 7, string)));
                    arrayList.add(XposedBridge.hookMethod(declaredMethod6, lccObserver(context, string)));
                    publish(context, 0, 1.0d, string);
                }
            }
        } catch (Throwable th) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                try {
                    ((XC_MethodHook.Unhook) it.next()).unhook();
                } catch (Throwable th2) {
                }
            }
        }
    }

    private static XC_MethodHook observer(final Context context, final int i, final String str) {
        return new XC_MethodHook() { // from class: com.local.p5home.VehicleObservationHook.2
            protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                try {
                    if (!methodHookParam.hasThrowable() && methodHookParam.args != null && methodHookParam.args.length == 1) {
                        Object obj = methodHookParam.args[0];
                        int i2 = i;
                        if (i2 != 3 || (obj instanceof Float)) {
                            if (i2 == 3 || (obj instanceof Integer)) {
                                double dDoubleValue = ((Number) obj).doubleValue();
                                if (!Double.isNaN(dDoubleValue) && !Double.isInfinite(dDoubleValue)) {
                                    VehicleObservationHook.publish(context, i, dDoubleValue, str);
                                }
                            }
                        }
                    }
                } catch (Throwable th) {
                }
            }
        };
    }

    private static XC_MethodHook lccObserver(final Context context, final String str) {
        return new XC_MethodHook() { // from class: com.local.p5home.VehicleObservationHook.3
            protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                try {
                    if (!methodHookParam.hasThrowable() && methodHookParam.args != null && methodHookParam.args.length == 2 && (methodHookParam.args[0] instanceof Integer) && (methodHookParam.args[1] instanceof Boolean)) {
                        VehicleObservationHook.publish(context, 8, ((Integer) methodHookParam.args[0]).doubleValue(), str, (Boolean) methodHookParam.args[1]);
                    }
                } catch (Throwable th) {
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void publish(Context context, int i, double d, String str) {
        publish(context, i, d, str, null);
    }

    static /* synthetic */ void lambda$publish$1(int i, double d, String str, Boolean bool, Context context) {
        try {
            Bundle bundle = new Bundle();
            bundle.putInt("kind", i);
            bundle.putDouble("value", d);
            bundle.putString("generation", str);
            if (bool != null) {
                bundle.putBoolean("convert", bool.booleanValue());
            }
            context.getContentResolver().call(VehicleObservationProvider.URI, "report", (String) null, bundle);
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void publish(final Context context, final int i, final double d, final String str, final Boolean bool) {
        try {
            SEND.execute(new Runnable() { // from class: com.local.p5home.VehicleObservationHook$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    VehicleObservationHook.lambda$publish$1(i, d, str, bool, context);
                }
            });
        } catch (Throwable th) {
        }
    }

    private static boolean allowed(Context context) throws Exception {
        Signature[] apkContentsSigners;
        if (Process.myUid() != 1000 || !PACKAGE.equals(context.getPackageName())) {
            return false;
        }
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(PACKAGE, 134217728);
        return (packageInfo.applicationInfo == null || !packageInfo.applicationInfo.enabled || packageInfo.applicationInfo.uid != Process.myUid() || (packageInfo.applicationInfo.flags & 129) == 0 || packageInfo.signingInfo == null || packageInfo.signingInfo.hasMultipleSigners() || (apkContentsSigners = packageInfo.signingInfo.getApkContentsSigners()) == null || apkContentsSigners.length != 1 || !CERT.equals(hex(MessageDigest.getInstance("SHA-256").digest(apkContentsSigners[0].toByteArray())))) ? false : true;
    }

    private static boolean passiveCallback(Method method) {
        int modifiers = method.getModifiers();
        return (method.getReturnType() != Void.TYPE || Modifier.isStatic(modifiers) || Modifier.isAbstract(modifiers) || Modifier.isNative(modifiers)) ? false : true;
    }

    private static String hex(byte[] bArr) {
        char[] charArray = "0123456789abcdef".toCharArray();
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = i * 2;
            byte b = bArr[i];
            cArr[i2] = charArray[(b & 255) >>> 4];
            cArr[i2 + 1] = charArray[b & 15];
        }
        return new String(cArr);
    }
}
