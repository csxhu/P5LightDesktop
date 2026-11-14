package com.local.p5home;

import android.app.AndroidAppHelper;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.os.Build;
import android.os.IBinder;
import android.os.Process;
import android.os.SystemClock;
import com.local.p5home.TurnCameraNativeBridge;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
public final class TurnCameraHook implements IXposedHookLoadPackage {
    private static final String APK_SHA = "397f217923c48cf0ba3b712347f7d86d632be3d54d1b6f3448c714de44c23105";
    private static final String CODE_SHA = "1befc632cc0d597eec02c01135f7e78699131ea17dc1b5e0386039d48bbc8754";
    private static final String PACKAGE = "com.xiaopeng.drivingimageassist";
    private static final String SIGNER_SHA = "162fb40e0725bcfcc0932a4d6bcd9606973b6443ebe1d2fa84ae735867286ee7";
    private static volatile TurnCameraStatusClient reporter;
    private static volatile Sample sample;
    private static long speedSequence;
    private static final AtomicBoolean attempted = new AtomicBoolean();
    private static final Object speedLock = new Object();
    private static final TurnCameraEventHealth health = new TurnCameraEventHealth();

    static /* synthetic */ long access$304() {
        long j = speedSequence + 1;
        speedSequence = j;
        return j;
    }

    static /* synthetic */ long access$308() {
        long j = speedSequence;
        speedSequence = 1 + j;
        return j;
    }

    private static final class Sample {
        final long at;
        final long epoch;
        final float value;

        Sample(float f, long j, long j2) {
            this.value = f;
            this.at = j;
            this.epoch = j2;
        }
    }

    public void handleLoadPackage(final XC_LoadPackage.LoadPackageParam loadPackageParam) {
        if (!PACKAGE.equals(loadPackageParam.packageName) || !PACKAGE.equals(loadPackageParam.processName)) {
            return;
        }
        try {
            Application applicationCurrentApplication = AndroidAppHelper.currentApplication();
            if (applicationCurrentApplication == null || !PACKAGE.equals(applicationCurrentApplication.getPackageName())) {
                XposedHelpers.findAndHookMethod(Application.class, "attach", new Object[]{Context.class, new XC_MethodHook() { // from class: com.local.p5home.TurnCameraHook.1
                    protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                        if (methodHookParam.hasThrowable() || methodHookParam.args == null || methodHookParam.args.length != 1 || !(methodHookParam.args[0] instanceof Context)) {
                            return;
                        }
                        Context context = (Context) methodHookParam.args[0];
                        if (TurnCameraHook.PACKAGE.equals(context.getPackageName())) {
                            TurnCameraHook.installOnce(context, loadPackageParam.classLoader);
                        }
                    }
                }});
            } else {
                installOnce(applicationCurrentApplication, loadPackageParam.classLoader);
            }
        } catch (Throwable th) {
            log("ATTACH_UNAVAILABLE");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void installOnce(Context context, final ClassLoader classLoader) {
        Context context2;
        if (attempted.compareAndSet(false, true)) {
            try {
                if (!allowed(context)) {
                    log("PRIVATE_IMPLEMENTATION_UNCONFIRMED");
                    return;
                }
                Class<?> cls = Class.forName("i8$b", false, classLoader);
                Class<?> cls2 = Class.forName("com.xiaopeng.drivingimageassist.carapi.CarEventFactory", false, classLoader);
                final Class<?> cls3 = Class.forName("com.xiaopeng.drivingimageassist.carapi.ICarEvent", false, classLoader);
                Class<?> cls4 = Class.forName("com.xiaopeng.drivingimageassist.carapi.event.BCMEvent", false, classLoader);
                Class<?> cls5 = Class.forName("com.xiaopeng.drivingimageassist.carapi.event.VCUEvent", false, classLoader);
                final Class<?> cls6 = Class.forName("android.car.hardware.CarPropertyValue", false, classLoader);
                Class<?> cls7 = Class.forName("com.xiaopeng.drivingimageassist.carapi.CarApiHelper", false, classLoader);
                Class<?> cls8 = Class.forName("com.xiaopeng.drivingimageassist.carapi.CarApiHelper$2", false, classLoader);
                Class<?> cls9 = Class.forName("p8", false, classLoader);
                Method declaredMethod = cls2.getDeclaredMethod("createCarEvents", cls);
                Method declaredMethod2 = cls7.getDeclaredMethod("getRawCarSpeed", new Class[0]);
                Method declaredMethod3 = cls9.getDeclaredMethod("c", new Class[0]);
                Method declaredMethod4 = cls9.getDeclaredMethod("d", new Class[0]);
                final Field declaredField = cls9.getDeclaredField("d");
                final Field declaredField2 = cls9.getDeclaredField("c");
                final Constructor<?> declaredConstructor = cls4.getDeclaredConstructor(new Class[0]);
                final Method declaredMethod5 = cls4.getDeclaredMethod("carManager", new Class[0]);
                final Method declaredMethod6 = cls4.getDeclaredMethod("eventIds", new Class[0]);
                final Method method = cls6.getMethod("getPropertyId", new Class[0]);
                final Method method2 = cls6.getMethod("getAreaId", new Class[0]);
                final Method method3 = cls6.getMethod("getStatus", new Class[0]);
                final Method method4 = cls6.getMethod("getValue", new Class[0]);
                Method declaredMethod7 = cls4.getDeclaredMethod("onChangeEvent", cls6);
                Method declaredMethod8 = cls4.getDeclaredMethod("onErrorEvent", Integer.TYPE, Integer.TYPE);
                Method declaredMethod9 = cls5.getDeclaredMethod("onChangeEvent", cls6);
                Method declaredMethod10 = cls5.getDeclaredMethod("onErrorEvent", Integer.TYPE, Integer.TYPE);
                Method declaredMethod11 = cls8.getDeclaredMethod("onServiceConnected", ComponentName.class, IBinder.class);
                Method declaredMethod12 = cls8.getDeclaredMethod("onServiceDisconnected", ComponentName.class);
                if (Modifier.isStatic(declaredMethod.getModifiers()) && List.class.isAssignableFrom(declaredMethod.getReturnType()) && !Modifier.isStatic(declaredMethod2.getModifiers()) && declaredMethod2.getReturnType() == Float.TYPE && !Modifier.isStatic(declaredMethod3.getModifiers()) && declaredMethod3.getReturnType() == Boolean.TYPE && declaredField.getType() == Float.TYPE && !Modifier.isStatic(declaredField.getModifiers()) && !Modifier.isStatic(declaredMethod4.getModifiers()) && declaredMethod4.getReturnType() == Boolean.TYPE && declaredField2.getType() == Integer.TYPE && !Modifier.isStatic(declaredField2.getModifiers()) && cls3.isAssignableFrom(cls4) && Modifier.isPublic(declaredConstructor.getModifiers()) && declaredMethod5.getReturnType() == String.class && List.class.isAssignableFrom(declaredMethod6.getReturnType()) && method.getReturnType() == Integer.TYPE && method2.getReturnType() == Integer.TYPE && method3.getReturnType() == Integer.TYPE && method4.getReturnType() == Object.class && cls6.getField("STATUS_AVAILABLE").getInt(null) == 0 && declaredMethod7.getReturnType() == Void.TYPE && declaredMethod8.getReturnType() == Void.TYPE && declaredMethod9.getReturnType() == Void.TYPE && declaredMethod10.getReturnType() == Void.TYPE && ServiceConnection.class.isAssignableFrom(cls8) && declaredMethod11.getReturnType() == Void.TYPE && declaredMethod12.getReturnType() == Void.TYPE) {
                    declaredField.setAccessible(true);
                    declaredField2.setAccessible(true);
                    declaredConstructor.setAccessible(true);
                    declaredMethod5.setAccessible(true);
                    declaredMethod6.setAccessible(true);
                    ArrayList arrayList = new ArrayList();
                    try {
                        addHook(arrayList, declaredMethod2, new XC_MethodHook() { // from class: com.local.p5home.TurnCameraHook.2
                            protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                                synchronized (TurnCameraHook.speedLock) {
                                    Sample unused = TurnCameraHook.sample = null;
                                    methodHookParam.setObjectExtra("g3_turn_speed_sequence", Long.valueOf(TurnCameraHook.access$304()));
                                    methodHookParam.setObjectExtra("g3_turn_connection_epoch", Long.valueOf(TurnCameraHook.health.epoch()));
                                }
                            }

                            protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                                synchronized (TurnCameraHook.speedLock) {
                                    Object objectExtra = methodHookParam.getObjectExtra("g3_turn_speed_sequence");
                                    Object objectExtra2 = methodHookParam.getObjectExtra("g3_turn_connection_epoch");
                                    if ((objectExtra instanceof Long) && ((Long) objectExtra).longValue() == TurnCameraHook.speedSequence && (objectExtra2 instanceof Long) && TurnCameraHook.health.current(((Long) objectExtra2).longValue())) {
                                        Object result = methodHookParam.hasThrowable() ? null : methodHookParam.getResult();
                                        if ((result instanceof Float) && TurnCameraContract.validSpeed(((Float) result).floatValue())) {
                                            Sample unused = TurnCameraHook.sample = new Sample(((Float) result).floatValue(), SystemClock.elapsedRealtime(), ((Long) objectExtra2).longValue());
                                            return;
                                        }
                                        Sample unused2 = TurnCameraHook.sample = null;
                                    }
                                }
                            }
                        });
                        addHook(arrayList, declaredMethod3, new XC_MethodHook() { // from class: com.local.p5home.TurnCameraHook.3
                            protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                                if (TurnCameraHook.health.hasObserver() && !methodHookParam.hasThrowable() && Boolean.TRUE.equals(methodHookParam.getResult())) {
                                    try {
                                        synchronized (TurnCameraHook.speedLock) {
                                            Sample sample2 = TurnCameraHook.sample;
                                            if (!(sample2 != null && TurnCameraHook.health.permitLamp(sample2.epoch) && TurnCameraContract.permitSpeed(true, declaredField.getFloat(methodHookParam.thisObject), sample2.value, sample2.at, SystemClock.elapsedRealtime()))) {
                                                methodHookParam.setResult(false);
                                            }
                                        }
                                    } catch (Throwable th) {
                                        methodHookParam.setResult(false);
                                    }
                                }
                            }
                        });
                        addHook(arrayList, declaredMethod4, new XC_MethodHook() { // from class: com.local.p5home.TurnCameraHook.4
                            protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                                if (TurnCameraHook.health.hasObserver() && !methodHookParam.hasThrowable() && Boolean.TRUE.equals(methodHookParam.getResult())) {
                                    try {
                                        if (!TurnCameraHook.health.permitGear(declaredField2.getInt(methodHookParam.thisObject))) {
                                            methodHookParam.setResult(false);
                                        }
                                    } catch (Throwable th) {
                                        methodHookParam.setResult(false);
                                    }
                                }
                            }
                        });
                        addHook(arrayList, declaredMethod, new XC_MethodHook() { // from class: com.local.p5home.TurnCameraHook.5
                            /* JADX WARN: Removed duplicated region for block: B:12:0x0038  */
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct add '--show-bad-code' argument
                            */
                            protected void afterHookedMethod(de.robv.android.xposed.XC_MethodHook.MethodHookParam r6) {
                                /*
                                    r5 = this;
                                    boolean r0 = r6.hasThrowable()
                                    if (r0 != 0) goto L61
                                    java.lang.Object r0 = r6.getResult()
                                    boolean r0 = r0 instanceof java.util.List
                                    if (r0 != 0) goto Lf
                                    goto L61
                                Lf:
                                    java.lang.Object r0 = r6.getResult()     // Catch: java.lang.Throwable -> L4f
                                    java.util.List r0 = (java.util.List) r0     // Catch: java.lang.Throwable -> L4f
                                    java.lang.Class r1 = r1     // Catch: java.lang.Throwable -> L4f
                                    java.lang.reflect.Constructor r2 = r2     // Catch: java.lang.Throwable -> L4f
                                    java.lang.reflect.Method r3 = r3     // Catch: java.lang.Throwable -> L4f
                                    java.lang.reflect.Method r4 = r4     // Catch: java.lang.Throwable -> L4f
                                    java.util.List r0 = com.local.p5home.TurnCameraContract.appendObserver(r0, r1, r2, r3, r4)     // Catch: java.lang.Throwable -> L4f
                                    if (r0 == 0) goto L38
                                    com.local.p5home.TurnCameraEventHealth r1 = com.local.p5home.TurnCameraHook.access$400()     // Catch: java.lang.Throwable -> L4f
                                    int r2 = r0.size()     // Catch: java.lang.Throwable -> L4f
                                    r3 = 1
                                    int r2 = r2 - r3
                                    java.lang.Object r2 = r0.get(r2)     // Catch: java.lang.Throwable -> L4f
                                    boolean r1 = r1.bindObserver(r2)     // Catch: java.lang.Throwable -> L4f
                                    if (r1 == 0) goto L38
                                    goto L39
                                L38:
                                    r3 = 0
                                L39:
                                    if (r3 == 0) goto L43
                                    r6.setResult(r0)     // Catch: java.lang.Throwable -> L4f
                                    java.lang.String r6 = "BCM_OBSERVER_ADDED"
                                    com.local.p5home.TurnCameraHook.access$500(r6)     // Catch: java.lang.Throwable -> L4f
                                L43:
                                    com.local.p5home.TurnCameraEventHealth r6 = com.local.p5home.TurnCameraHook.access$400()     // Catch: java.lang.Throwable -> L4f
                                    boolean r6 = r6.hasObserver()     // Catch: java.lang.Throwable -> L4f
                                    com.local.p5home.TurnCameraHook.access$600(r6)     // Catch: java.lang.Throwable -> L4f
                                    goto L60
                                L4f:
                                    r6 = move-exception
                                    com.local.p5home.TurnCameraEventHealth r6 = com.local.p5home.TurnCameraHook.access$400()
                                    boolean r6 = r6.hasObserver()
                                    com.local.p5home.TurnCameraHook.access$600(r6)
                                    java.lang.String r6 = "OBSERVER_UNAVAILABLE"
                                    com.local.p5home.TurnCameraHook.access$500(r6)
                                L60:
                                    return
                                L61:
                                    return
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.TurnCameraHook.AnonymousClass5.afterHookedMethod(de.robv.android.xposed.XC_MethodHook$MethodHookParam):void");
                            }
                        });
                        addHook(arrayList, declaredMethod7, new XC_MethodHook() { // from class: com.local.p5home.TurnCameraHook.6
                            protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                                if (TurnCameraHook.health.owns(methodHookParam.thisObject)) {
                                    try {
                                        Object obj = methodHookParam.args[0];
                                        if (!cls6.isInstance(obj)) {
                                            TurnCameraHook.health.lampError();
                                            TurnCameraHook.reportLamp(false);
                                            methodHookParam.setResult((Object) null);
                                        } else {
                                            if (((Integer) method.invoke(obj, new Object[0])).intValue() != 557915328) {
                                                return;
                                            }
                                            boolean zLamp = TurnCameraHook.health.lamp(((Integer) method2.invoke(obj, new Object[0])).intValue(), ((Integer) method3.invoke(obj, new Object[0])).intValue(), method4.invoke(obj, new Object[0]));
                                            TurnCameraHook.reportLamp(zLamp);
                                            if (!zLamp) {
                                                methodHookParam.setResult((Object) null);
                                            }
                                        }
                                    } catch (Throwable th) {
                                        TurnCameraHook.health.lampError();
                                        TurnCameraHook.reportLamp(false);
                                        methodHookParam.setResult((Object) null);
                                    }
                                }
                            }

                            protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                                if (methodHookParam.hasThrowable() && TurnCameraHook.health.owns(methodHookParam.thisObject)) {
                                    TurnCameraHook.health.lampError();
                                    TurnCameraHook.reportLamp(false);
                                }
                            }
                        });
                        addHook(arrayList, declaredMethod8, new XC_MethodHook() { // from class: com.local.p5home.TurnCameraHook.7
                            protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                                if (TurnCameraHook.health.owns(methodHookParam.thisObject)) {
                                    if (methodHookParam.args == null || methodHookParam.args.length < 1 || !(methodHookParam.args[0] instanceof Integer) || ((Integer) methodHookParam.args[0]).intValue() == 557915328) {
                                        TurnCameraHook.health.lampError();
                                        TurnCameraHook.reportLamp(false);
                                    }
                                }
                            }
                        });
                        addHook(arrayList, declaredMethod9, new XC_MethodHook() { // from class: com.local.p5home.TurnCameraHook.8
                            protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                                try {
                                    Object obj = methodHookParam.args[0];
                                    if (!cls6.isInstance(obj)) {
                                        TurnCameraHook.health.gearError();
                                        TurnCameraHook.reportGear(false);
                                    } else if (((Integer) method.invoke(obj, new Object[0])).intValue() == 557847045) {
                                        TurnCameraHook.reportGear(TurnCameraHook.health.gear(((Integer) method2.invoke(obj, new Object[0])).intValue(), ((Integer) method3.invoke(obj, new Object[0])).intValue(), method4.invoke(obj, new Object[0])));
                                    }
                                } catch (Throwable th) {
                                    TurnCameraHook.health.gearError();
                                    TurnCameraHook.reportGear(false);
                                }
                            }

                            protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                                if (methodHookParam.hasThrowable()) {
                                    TurnCameraHook.health.gearError();
                                    TurnCameraHook.reportGear(false);
                                }
                            }
                        });
                        addHook(arrayList, declaredMethod10, new XC_MethodHook() { // from class: com.local.p5home.TurnCameraHook.9
                            protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                                if (methodHookParam.args == null || methodHookParam.args.length < 1 || !(methodHookParam.args[0] instanceof Integer) || ((Integer) methodHookParam.args[0]).intValue() == 557847045) {
                                    TurnCameraHook.health.gearError();
                                    TurnCameraHook.reportGear(false);
                                }
                            }
                        });
                        addHook(arrayList, declaredMethod11, new XC_MethodHook() { // from class: com.local.p5home.TurnCameraHook.10
                            protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                                synchronized (TurnCameraHook.speedLock) {
                                    TurnCameraHook.health.connected();
                                    TurnCameraHook.access$308();
                                    Sample unused = TurnCameraHook.sample = null;
                                    methodHookParam.setObjectExtra("g3_turn_connect_epoch", Long.valueOf(TurnCameraHook.health.epoch()));
                                    TurnCameraHook.reportConnection(true);
                                }
                            }

                            protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                                if (methodHookParam.hasThrowable()) {
                                    synchronized (TurnCameraHook.speedLock) {
                                        Object objectExtra = methodHookParam.getObjectExtra("g3_turn_connect_epoch");
                                        if ((objectExtra instanceof Long) && TurnCameraHook.health.current(((Long) objectExtra).longValue())) {
                                            TurnCameraHook.health.disconnected();
                                            TurnCameraHook.access$308();
                                            Sample unused = TurnCameraHook.sample = null;
                                            TurnCameraHook.reportConnection(false);
                                        }
                                    }
                                }
                            }
                        });
                        addHook(arrayList, declaredMethod12, new XC_MethodHook() { // from class: com.local.p5home.TurnCameraHook.11
                            protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                                synchronized (TurnCameraHook.speedLock) {
                                    TurnCameraHook.health.disconnected();
                                    TurnCameraHook.access$308();
                                    Sample unused = TurnCameraHook.sample = null;
                                    TurnCameraHook.reportConnection(false);
                                }
                            }
                        });
                        try {
                            context2 = context;
                            try {
                                reporter = new TurnCameraStatusClient(context2);
                            } catch (Throwable th) {
                                reporter = null;
                                TurnCameraNativeBridge.install(context2, classLoader, new TurnCameraNativeBridge.Repair() { // from class: com.local.p5home.TurnCameraHook$$ExternalSyntheticLambda0
                                    @Override // com.local.p5home.TurnCameraNativeBridge.Repair
                                    public final boolean attach() {
                                        return TurnCameraHook.repairObserver(classLoader);
                                    }
                                });
                                log("HOOKS_READY");
                                return;
                            }
                        } catch (Throwable th2) {
                            context2 = context;
                        }
                        TurnCameraNativeBridge.install(context2, classLoader, new TurnCameraNativeBridge.Repair() { // from class: com.local.p5home.TurnCameraHook$$ExternalSyntheticLambda0
                            @Override // com.local.p5home.TurnCameraNativeBridge.Repair
                            public final boolean attach() {
                                return TurnCameraHook.repairObserver(classLoader);
                            }
                        });
                        log("HOOKS_READY");
                    } catch (Throwable th3) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            XC_MethodHook.Unhook unhook = (XC_MethodHook.Unhook) it.next();
                            if (unhook != null) {
                                try {
                                    unhook.unhook();
                                } catch (Throwable th4) {
                                }
                            }
                        }
                        sample = null;
                        log("HOOK_INSTALL_FAILED");
                    }
                    return;
                }
                log("ABI_MISMATCH");
            } catch (Throwable th5) {
                log("ABI_UNAVAILABLE");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean repairObserver(ClassLoader classLoader) throws Exception {
        boolean z;
        synchronized (speedLock) {
            Class<?> cls = Class.forName("com.xiaopeng.drivingimageassist.carapi.CarApiHelper", false, classLoader);
            Method declaredMethod = cls.getDeclaredMethod("instance", new Class[0]);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, new Object[0]);
            Field declaredField = cls.getDeclaredField("mCarEventList");
            Field declaredField2 = cls.getDeclaredField("mCarClient");
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            Object obj = declaredField.get(objInvoke);
            Object obj2 = declaredField2.get(objInvoke);
            if ((obj instanceof ArrayList) && obj2 != null) {
                if (!Boolean.TRUE.equals(obj2.getClass().getMethod("isConnected", new Class[0]).invoke(obj2, new Object[0]))) {
                    return false;
                }
                Class<?> cls2 = Class.forName("com.xiaopeng.drivingimageassist.carapi.ICarEvent", false, classLoader);
                Class<?> cls3 = Class.forName("com.xiaopeng.drivingimageassist.carapi.event.BCMEvent", false, classLoader);
                TurnCameraEventHealth turnCameraEventHealth = health;
                Object objObserver = turnCameraEventHealth.observer();
                if (objObserver != null) {
                    Iterator it = ((List) obj).iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            break;
                        }
                        if (it.next() == objObserver) {
                            z = true;
                            break;
                        }
                    }
                    if (!z) {
                        return false;
                    }
                    TurnCameraEventHealth turnCameraEventHealth2 = health;
                    if (turnCameraEventHealth2.epoch() < 0) {
                        turnCameraEventHealth2.connected();
                        sample = null;
                        speedSequence++;
                        reportConnection(true);
                    }
                    Method declaredMethod2 = cls.getDeclaredMethod("register", cls2);
                    declaredMethod2.setAccessible(true);
                    declaredMethod2.invoke(objInvoke, objObserver);
                    reportObserver(true);
                    return true;
                }
                List<Object> listAppendObserver = TurnCameraContract.appendObserver((List) obj, cls2, cls3.getDeclaredConstructor(new Class[0]), cls3.getDeclaredMethod("carManager", new Class[0]), cls3.getDeclaredMethod("eventIds", new Class[0]));
                if (listAppendObserver == null) {
                    return false;
                }
                Object obj3 = listAppendObserver.get(listAppendObserver.size() - 1);
                if (!turnCameraEventHealth.bindObserver(obj3)) {
                    return turnCameraEventHealth.hasObserver();
                }
                if (turnCameraEventHealth.epoch() < 0) {
                    turnCameraEventHealth.connected();
                    sample = null;
                    speedSequence++;
                    reportConnection(true);
                }
                Method declaredMethod3 = cls.getDeclaredMethod("addCarEvent", cls2);
                declaredMethod3.setAccessible(true);
                declaredMethod3.invoke(objInvoke, obj3);
                reportObserver(true);
                return true;
            }
            return false;
        }
    }

    private static void addHook(List<XC_MethodHook.Unhook> list, Method method, XC_MethodHook xC_MethodHook) {
        XC_MethodHook.Unhook unhookHookMethod = XposedBridge.hookMethod(method, xC_MethodHook);
        if (unhookHookMethod == null) {
            throw new IllegalStateException("hook unavailable");
        }
        list.add(unhookHookMethod);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void reportObserver(boolean z) {
        try {
            TurnCameraStatusClient turnCameraStatusClient = reporter;
            if (turnCameraStatusClient != null) {
                turnCameraStatusClient.observerAttempt(z);
            }
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void reportConnection(boolean z) {
        try {
            TurnCameraStatusClient turnCameraStatusClient = reporter;
            if (turnCameraStatusClient != null) {
                turnCameraStatusClient.connection(z);
            }
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void reportLamp(boolean z) {
        try {
            TurnCameraStatusClient turnCameraStatusClient = reporter;
            if (turnCameraStatusClient != null) {
                turnCameraStatusClient.lampCallback(z);
            }
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void reportGear(boolean z) {
        try {
            TurnCameraStatusClient turnCameraStatusClient = reporter;
            if (turnCameraStatusClient != null) {
                turnCameraStatusClient.gearCallback(z);
            }
        } catch (Throwable th) {
        }
    }

    static boolean allowed(Context context) throws Exception {
        PackageInfo packageInfo;
        Signature[] apkContentsSigners;
        if (Build.VERSION.SDK_INT != 28 || !"d20".equals(Build.DEVICE) || (packageInfo = context.getPackageManager().getPackageInfo(PACKAGE, 134217728)) == null || packageInfo.applicationInfo == null || packageInfo.applicationInfo.uid != Process.myUid() || packageInfo.signingInfo == null || packageInfo.signingInfo.hasMultipleSigners() || (apkContentsSigners = packageInfo.signingInfo.getApkContentsSigners()) == null || apkContentsSigners.length != 1 || !SIGNER_SHA.equals(hex(MessageDigest.getInstance("SHA-256").digest(apkContentsSigners[0].toByteArray())))) {
            return false;
        }
        File file = new File(packageInfo.applicationInfo.sourceDir);
        if (file.isFile()) {
            long j = 0;
            if (file.length() > 0 && file.length() <= 268435456) {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[16384];
                    while (true) {
                        int i = fileInputStream.read(bArr);
                        if (i == -1) {
                            break;
                        }
                        messageDigest.update(bArr, 0, i);
                    }
                    fileInputStream.close();
                    if (APK_SHA.equals(hex(messageDigest.digest()))) {
                        return true;
                    }
                    ZipFile zipFile = new ZipFile(file);
                    try {
                        Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                        ZipEntry zipEntry = null;
                        while (enumerationEntries.hasMoreElements()) {
                            ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                            if (zipEntryNextElement.getName().matches("classes[0-9]*\\.dex")) {
                                if (zipEntry != null || !"classes.dex".equals(zipEntryNextElement.getName())) {
                                    zipFile.close();
                                    return false;
                                }
                                zipEntry = zipEntryNextElement;
                            }
                        }
                        if (zipEntry != null && zipEntry.getSize() > 0 && zipEntry.getSize() <= 134217728) {
                            messageDigest.reset();
                            InputStream inputStream = zipFile.getInputStream(zipEntry);
                            try {
                                byte[] bArr2 = new byte[16384];
                                while (true) {
                                    int i2 = inputStream.read(bArr2);
                                    if (i2 == -1) {
                                        if (inputStream != null) {
                                            inputStream.close();
                                        }
                                        boolean zEquals = CODE_SHA.equals(hex(messageDigest.digest()));
                                        zipFile.close();
                                        return zEquals;
                                    }
                                    j += i2;
                                    if (j > 134217728) {
                                        if (inputStream != null) {
                                            inputStream.close();
                                        }
                                        zipFile.close();
                                        return false;
                                    }
                                    messageDigest.update(bArr2, 0, i2);
                                }
                            } finally {
                            }
                        }
                        zipFile.close();
                        return false;
                    } catch (Throwable th) {
                        try {
                            zipFile.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
            }
        }
        return false;
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

    /* JADX INFO: Access modifiers changed from: private */
    public static void log(String str) {
        try {
            XposedBridge.log("G3TurnCamera: " + str);
        } catch (Throwable th) {
        }
    }
}
