package com.local.p5home;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
final class TurnCameraNativeBridge {
    static final String ACTION = "com.local.p5home.TURN_CAMERA_NATIVE";
    static final String BUILD = "turn-20261028-d";
    static final String PERMISSION = "com.local.p5home.permission.TURN_CAMERA_CONTROL";
    static final String SCOPED_ACTION = "com.local.p5home.TURN_CAMERA_NATIVE_SCOPED";
    private final Method ap;
    private final Context app;
    private final Method avm;
    private final Method busyInstance;
    private final Method camera;
    private final Field carClient;
    private final Method carConnected;
    private final Method displayType;
    private final Method gear;
    private final Method helperInstance;
    private final Method hide;
    private final Class<?> hideTask;
    private final Method ignition;
    private final Method moduleContext;
    private final Method moduleInstance;
    private final Method nra;
    private final Field panelMode;
    private String previewOwnerToken;
    private final Method rawSpeed;
    private final Repair repair;
    private final Method show;
    private final Method showInstance;
    private final Class<?> showTask;
    private final Method showing;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final TurnCameraPreviewPolicy preview = new TurnCameraPreviewPolicy();
    private final AtomicLong previewLease = new AtomicLong();
    private final ThreadLocal<Permit> ownCall = new ThreadLocal<>();
    private final Map<Object, Permit> tasks = Collections.synchronizedMap(new WeakHashMap());
    private final ReentrantLock displayLock = new ReentrantLock();
    private final LinkedHashSet<String> seen = new LinkedHashSet<>();
    private final BroadcastReceiver receiver = new AnonymousClass4();

    interface Repair {
        boolean attach() throws Exception;
    }

    private static final class Permit {
        final boolean closing;
        final long deadline;
        final long generation;
        final int side;

        Permit(long j, int i, long j2, boolean z) {
            this.generation = j;
            this.side = i;
            this.deadline = j2;
            this.closing = z;
        }
    }

    private TurnCameraNativeBridge(Context context, ClassLoader classLoader, Repair repair) throws Exception {
        this.app = context;
        this.repair = repair;
        Class<?> clsType = type(classLoader, "com.xiaopeng.drivingimageassist.carapi.CarApiHelper");
        Class<?> clsType2 = type(classLoader, "android.car.Car");
        Class<?> clsType3 = type(classLoader, "com.xiaopeng.drivingimageassist.a");
        Class<?> clsType4 = type(classLoader, "com.xiaopeng.drivingimageassist.b");
        Class<?> clsType5 = type(classLoader, "k8");
        this.helperInstance = method(clsType, "instance", clsType, new Class[0]);
        this.rawSpeed = method(clsType, "getRawCarSpeed", Float.TYPE, new Class[0]);
        this.gear = method(clsType, "getDisplayGearLevel", Integer.TYPE, new Class[0]);
        this.avm = method(clsType, "getAvmWorkState", Boolean.TYPE, new Class[0]);
        Field declaredField = clsType.getDeclaredField("mCarClient");
        this.carClient = declaredField;
        if (declaredField.getType() == clsType2) {
            declaredField.setAccessible(true);
            this.carConnected = method(clsType2, "isConnected", Boolean.TYPE, new Class[0]);
            this.showInstance = method(clsType3, "d", clsType3, new Class[0]);
            this.show = method(clsType3, "a", Void.TYPE, Context.class, Integer.TYPE);
            this.hide = method(clsType3, "b", Void.TYPE, new Class[0]);
            this.showing = method(clsType3, "c", Boolean.TYPE, new Class[0]);
            this.displayType = method(clsType3, "a", Integer.TYPE, new Class[0]);
            this.moduleInstance = method(clsType4, "f", clsType4, new Class[0]);
            this.moduleContext = method(clsType4, "c", Context.class, new Class[0]);
            this.ignition = method(clsType4, "d", Boolean.TYPE, new Class[0]);
            this.nra = method(clsType4, "a", Boolean.TYPE, new Class[0]);
            this.busyInstance = method(clsType5, "c", clsType5, new Class[0]);
            this.ap = method(clsType5, "a", Boolean.TYPE, new Class[0]);
            this.camera = method(clsType5, "b", Boolean.TYPE, new Class[0]);
            Field declaredField2 = type(classLoader, "com.xiaopeng.drivingimageassist.c").getDeclaredField("g");
            this.panelMode = declaredField2;
            if (declaredField2.getType() != Integer.TYPE || !Modifier.isStatic(declaredField2.getModifiers())) {
                throw new NoSuchFieldException("panel_mode");
            }
            declaredField2.setAccessible(true);
            this.showTask = type(classLoader, "com.xiaopeng.drivingimageassist.c$a");
            this.hideTask = type(classLoader, "com.xiaopeng.drivingimageassist.c$b");
            return;
        }
        throw new NoSuchFieldException("car_client");
    }

    static void install(Context context, ClassLoader classLoader, Repair repair) {
        try {
            TurnCameraNativeBridge turnCameraNativeBridge = new TurnCameraNativeBridge(context, classLoader, repair);
            ArrayList arrayList = new ArrayList();
            try {
                XC_MethodHook xC_MethodHook = new XC_MethodHook() { // from class: com.local.p5home.TurnCameraNativeBridge.1
                    protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                        TurnCameraNativeBridge.this.displayLock.lock();
                        methodHookParam.setObjectExtra("g3_turn_display_lock", true);
                        if (TurnCameraNativeBridge.this.ownCall.get() == null) {
                            TurnCameraNativeBridge.this.externalDisplay(methodHookParam.args != null && methodHookParam.args.length == 2, (methodHookParam.args != null && methodHookParam.args.length == 2 && (methodHookParam.args[1] instanceof Integer)) ? ((Integer) methodHookParam.args[1]).intValue() : -1);
                        }
                    }

                    protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                        if (Boolean.TRUE.equals(methodHookParam.getObjectExtra("g3_turn_display_lock"))) {
                            TurnCameraNativeBridge.this.displayLock.unlock();
                        }
                    }
                };
                add(arrayList, turnCameraNativeBridge.show, xC_MethodHook);
                add(arrayList, turnCameraNativeBridge.hide, xC_MethodHook);
                XC_MethodHook xC_MethodHook2 = new XC_MethodHook() { // from class: com.local.p5home.TurnCameraNativeBridge.2
                    protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                        Permit permit = (Permit) TurnCameraNativeBridge.this.ownCall.get();
                        if (methodHookParam.hasThrowable() || permit == null) {
                            return;
                        }
                        TurnCameraNativeBridge.this.tasks.put(methodHookParam.thisObject, permit);
                    }
                };
                Class<?> declaringClass = turnCameraNativeBridge.panelMode.getDeclaringClass();
                add(arrayList, turnCameraNativeBridge.showTask.getDeclaredConstructor(declaringClass, Integer.TYPE, Context.class), xC_MethodHook2);
                add(arrayList, turnCameraNativeBridge.hideTask.getDeclaredConstructor(declaringClass), xC_MethodHook2);
                XC_MethodHook xC_MethodHook3 = new XC_MethodHook() { // from class: com.local.p5home.TurnCameraNativeBridge.3
                    protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                        Permit permit = (Permit) TurnCameraNativeBridge.this.tasks.get(methodHookParam.thisObject);
                        if (permit == null) {
                            return;
                        }
                        boolean z = true;
                        boolean z2 = permit.closing || TurnCameraNativeBridge.this.parked();
                        TurnCameraNativeBridge.this.displayLock.lock();
                        methodHookParam.setObjectExtra("g3_turn_task_lock", true);
                        try {
                            if (TurnCameraNativeBridge.this.tasks.remove(methodHookParam.thisObject) == null) {
                                return;
                            }
                            boolean z3 = TurnCameraNativeBridge.this.preview.sameGeneration(permit.generation) && ((Integer) TurnCameraNativeBridge.this.displayType.invoke(TurnCameraNativeBridge.this.showInstance.invoke(null, new Object[0]), new Object[0])).intValue() == permit.side;
                            if (!permit.closing) {
                                if (!z3 || !TurnCameraNativeBridge.this.preview.active(permit.generation) || SystemClock.elapsedRealtime() >= permit.deadline || !z2) {
                                    z = false;
                                }
                                z3 = z;
                            }
                            if (!z3) {
                                methodHookParam.setResult((Object) null);
                                if (!permit.closing) {
                                    TurnCameraNativeBridge.this.resetPending(permit);
                                }
                            }
                        } catch (Throwable th) {
                            methodHookParam.setResult((Object) null);
                            if (!permit.closing) {
                                TurnCameraNativeBridge.this.resetPending(permit);
                            }
                        }
                    }

                    protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                        if (Boolean.TRUE.equals(methodHookParam.getObjectExtra("g3_turn_task_lock"))) {
                            TurnCameraNativeBridge.this.displayLock.unlock();
                        }
                    }
                };
                add(arrayList, method(turnCameraNativeBridge.showTask, "run", Void.TYPE, new Class[0]), xC_MethodHook3);
                add(arrayList, method(turnCameraNativeBridge.hideTask, "run", Void.TYPE, new Class[0]), xC_MethodHook3);
                IntentFilter intentFilter = new IntentFilter(ACTION);
                intentFilter.addAction(SCOPED_ACTION);
                context.registerReceiver(turnCameraNativeBridge.receiver, intentFilter, PERMISSION, turnCameraNativeBridge.main);
                HookLog.write("TURN_NATIVE_BRIDGE_READY");
            } catch (Throwable th) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    try {
                        ((XC_MethodHook.Unhook) it.next()).unhook();
                    } catch (Throwable th2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            HookLog.write("TURN_NATIVE_BRIDGE_UNAVAILABLE");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void externalDisplay(boolean z, int i) {
        try {
            Object objInvoke = this.showInstance.invoke(null, new Object[0]);
            int iIntValue = ((Integer) this.displayType.invoke(objInvoke, new Object[0])).intValue();
            if (this.preview.owns(iIntValue) && !((Boolean) this.showing.invoke(objInvoke, new Object[0])).booleanValue()) {
                long jGeneration = this.preview.generation();
                if (z && i == iIntValue) {
                    synchronized (this.tasks) {
                        Iterator<Map.Entry<Object, Permit>> it = this.tasks.entrySet().iterator();
                        while (it.hasNext()) {
                            Permit value = it.next().getValue();
                            if (!value.closing && value.generation == jGeneration && value.side == iIntValue) {
                                it.remove();
                            }
                        }
                    }
                } else if (!z) {
                    resetPending(new Permit(jGeneration, iIntValue, 0L, false));
                }
            }
        } catch (Throwable th) {
        }
        this.preview.externalDisplay();
        this.previewOwnerToken = null;
        this.previewLease.incrementAndGet();
    }

    /* renamed from: com.local.p5home.TurnCameraNativeBridge$4, reason: invalid class name */
    class AnonymousClass4 extends BroadcastReceiver {
        AnonymousClass4() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle bundle = new Bundle();
            bundle.putString("nativeBuild", TurnCameraNativeBridge.BUILD);
            if (intent != null) {
                if ((TurnCameraNativeBridge.ACTION.equals(intent.getAction()) || TurnCameraNativeBridge.SCOPED_ACTION.equals(intent.getAction())) && "com.xiaopeng.drivingimageassist".equals(intent.getPackage())) {
                    boolean zEquals = TurnCameraNativeBridge.SCOPED_ACTION.equals(intent.getAction());
                    String stringExtra = intent.getStringExtra("operation");
                    String stringExtra2 = intent.getStringExtra("requestId");
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    String str = "REQUEST_EXPIRED";
                    if (stringExtra2 != null && stringExtra2.matches("[A-Za-z0-9-]{1,80}")) {
                        if (TurnCameraPreviewPolicy.fresh(intent.getLongExtra("sentAt", -1L), jElapsedRealtime)) {
                            if (TurnCameraNativeBridge.this.seen.contains(stringExtra2)) {
                                bundle.putString("code", "DUPLICATE_IGNORED");
                                setResultCode(208);
                                return;
                            }
                            if (!Arrays.asList("probe", "repair", "left", "right", "close").contains(stringExtra)) {
                                setResultCode(400);
                                return;
                            }
                            TurnCameraNativeBridge.this.seen.add(stringExtra2);
                            while (TurnCameraNativeBridge.this.seen.size() > 32) {
                                TurnCameraNativeBridge.this.seen.remove(TurnCameraNativeBridge.this.seen.iterator().next());
                            }
                            int i = 200;
                            if ("repair".equals(stringExtra)) {
                                bundle.putBoolean("observer", TurnCameraNativeBridge.this.repair.attach());
                                bundle.putString("code", bundle.getBoolean("observer") ? "OBSERVER_ATTACHED" : "OBSERVER_NOT_READY");
                                if (!bundle.getBoolean("observer")) {
                                    i = 503;
                                }
                                setResultCode(i);
                                return;
                            }
                            try {
                                if ("close".equals(stringExtra)) {
                                    String stringExtra3 = intent.getStringExtra("expectedLeaseToken");
                                    TurnCameraNativeBridge.this.displayLock.lock();
                                    try {
                                        if (!TurnCameraPreviewPolicy.fresh(intent.getLongExtra("sentAt", -1L), SystemClock.elapsedRealtime())) {
                                            bundle.putString("code", "REQUEST_EXPIRED");
                                            setResultCode(408);
                                            return;
                                        }
                                        if (zEquals && stringExtra3 == null) {
                                            bundle.putString("code", "INVALID_PREVIEW_LEASE");
                                            setResultCode(400);
                                            return;
                                        } else if (stringExtra3 != null && (!stringExtra3.matches("[A-Za-z0-9-]{16,80}") || !stringExtra3.equals(TurnCameraNativeBridge.this.previewOwnerToken))) {
                                            bundle.putString("code", "PREVIEW_LEASE_MISMATCH");
                                            setResultCode(409);
                                            return;
                                        } else {
                                            bundle.putBoolean("closed", TurnCameraNativeBridge.this.closeOwned());
                                            bundle.putString("code", bundle.getBoolean("closed") ? "PREVIEW_CLOSED" : "NO_OWN_PREVIEW");
                                            setResultCode(200);
                                            return;
                                        }
                                    } finally {
                                    }
                                }
                                Object objInvoke = TurnCameraNativeBridge.this.showInstance.invoke(null, new Object[0]);
                                boolean z = ((Boolean) TurnCameraNativeBridge.this.showing.invoke(objInvoke, new Object[0])).booleanValue() || ((Integer) TurnCameraNativeBridge.this.displayType.invoke(objInvoke, new Object[0])).intValue() != -1;
                                boolean zParked = TurnCameraNativeBridge.this.parked();
                                bundle.putBoolean("parkedReady", zParked);
                                bundle.putBoolean("displayOccupied", z);
                                if ("probe".equals(stringExtra)) {
                                    bundle.putBoolean("scopedLeaseSupported", true);
                                    bundle.putString("lampMetadata", TurnCameraNativeBridge.this.lampMetadata());
                                    bundle.putString("code", "NATIVE_BRIDGE_READY");
                                    setResultCode(200);
                                    return;
                                }
                                String stringExtra4 = intent.getStringExtra("leaseToken");
                                if ((zEquals && stringExtra4 == null) || (stringExtra4 != null && !stringExtra4.matches("[A-Za-z0-9-]{16,80}"))) {
                                    bundle.putString("code", "INVALID_PREVIEW_LEASE");
                                    setResultCode(400);
                                    return;
                                }
                                if (!zParked || z) {
                                    bundle.putString("code", z ? "OEM_DISPLAY_BUSY" : "PARKED_CONDITIONS_NOT_READY");
                                    setResultCode(409);
                                    return;
                                }
                                TurnCameraNativeBridge.this.displayLock.lock();
                                try {
                                    if (!TurnCameraPreviewPolicy.fresh(intent.getLongExtra("sentAt", -1L), SystemClock.elapsedRealtime())) {
                                        bundle.putString("code", "REQUEST_EXPIRED");
                                        setResultCode(408);
                                        return;
                                    }
                                    if (!((Boolean) TurnCameraNativeBridge.this.showing.invoke(objInvoke, new Object[0])).booleanValue() && ((Integer) TurnCameraNativeBridge.this.displayType.invoke(objInvoke, new Object[0])).intValue() == -1) {
                                        Object objInvoke2 = TurnCameraNativeBridge.this.moduleContext.invoke(TurnCameraNativeBridge.this.moduleInstance.invoke(null, new Object[0]), new Object[0]);
                                        if (!(objInvoke2 instanceof Context)) {
                                            setResultCode(503);
                                            return;
                                        }
                                        int i2 = "left".equals(stringExtra) ? 2 : 3;
                                        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                                        long jBegin = TurnCameraNativeBridge.this.preview.begin(i2, jElapsedRealtime2);
                                        final long jIncrementAndGet = TurnCameraNativeBridge.this.previewLease.incrementAndGet();
                                        TurnCameraNativeBridge.this.previewOwnerToken = stringExtra4;
                                        TurnCameraNativeBridge.this.ownCall.set(new Permit(jBegin, i2, jElapsedRealtime2 + 5000, false));
                                        try {
                                            TurnCameraNativeBridge.this.show.invoke(objInvoke, objInvoke2, Integer.valueOf(i2));
                                            TurnCameraNativeBridge.this.ownCall.remove();
                                            TurnCameraNativeBridge.this.main.postDelayed(new Runnable() { // from class: com.local.p5home.TurnCameraNativeBridge$4$$ExternalSyntheticLambda0
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    this.f$0.m155lambda$onReceive$0$comlocalg3homeTurnCameraNativeBridge$4(jIncrementAndGet);
                                                }
                                            }, 200L);
                                            bundle.putString("code", "PREVIEW_REQUESTED");
                                            bundle.putInt("side", i2);
                                            bundle.putInt("durationMs", 5000);
                                            setResultCode(202);
                                            return;
                                        } finally {
                                        }
                                    }
                                    bundle.putString("code", "OEM_DISPLAY_BUSY");
                                    setResultCode(409);
                                    return;
                                } finally {
                                }
                                return;
                            } finally {
                            }
                        }
                        str = "REQUEST_EXPIRED";
                    }
                    bundle.putString("code", str);
                    setResultCode(408);
                    return;
                }
            }
            setResultCode(400);
        }

        /* renamed from: lambda$onReceive$0$com-local-g3home-TurnCameraNativeBridge$4, reason: not valid java name */
        /* synthetic */ void m155lambda$onReceive$0$comlocalg3homeTurnCameraNativeBridge$4(long j) {
            TurnCameraNativeBridge.this.m154lambda$watch$0$comlocalg3homeTurnCameraNativeBridge(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String lampMetadata() {
        Object objInvoke;
        try {
            Object obj = this.carClient.get(this.helperInstance.invoke(null, new Object[0]));
            if (obj == null || !Boolean.TRUE.equals(this.carConnected.invoke(obj, new Object[0])) || (objInvoke = obj.getClass().getMethod("getCarManager", String.class).invoke(obj, "xp_bcm")) == null) {
                return "unknown";
            }
            Object objInvoke2 = objInvoke.getClass().getMethod("getPropertyList", new Class[0]).invoke(objInvoke, new Object[0]);
            if (!(objInvoke2 instanceof List)) {
                return "unknown";
            }
            List list = (List) objInvoke2;
            if (!list.isEmpty() && list.size() <= 4096) {
                Class<?> cls = Class.forName("android.car.hardware.CarPropertyConfig", false, obj.getClass().getClassLoader());
                Method method = cls.getMethod("getPropertyId", new Class[0]);
                for (Object obj2 : list) {
                    if (!cls.isInstance(obj2)) {
                        return "unknown";
                    }
                    Integer num = 557915328;
                    if (num.equals(method.invoke(obj2, new Object[0]))) {
                        return "available";
                    }
                }
                return "not_exposed";
            }
            return "unknown";
        } catch (Throwable th) {
            return "unknown";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean parked() {
        boolean z;
        boolean z2;
        try {
            Object objInvoke = this.helperInstance.invoke(null, new Object[0]);
            Object obj = this.carClient.get(objInvoke);
            Object objInvoke2 = this.moduleInstance.invoke(null, new Object[0]);
            Object objInvoke3 = this.busyInstance.invoke(null, new Object[0]);
            if (obj == null || !((Boolean) this.carConnected.invoke(obj, new Object[0])).booleanValue()) {
                z = false;
            } else {
                z = true;
            }
            float fFloatValue = ((Float) this.rawSpeed.invoke(objInvoke, new Object[0])).floatValue();
            int iIntValue = ((Integer) this.gear.invoke(objInvoke, new Object[0])).intValue();
            boolean zBooleanValue = ((Boolean) this.avm.invoke(objInvoke, new Object[0])).booleanValue();
            boolean zBooleanValue2 = ((Boolean) this.ignition.invoke(objInvoke2, new Object[0])).booleanValue();
            if (!((Boolean) this.nra.invoke(objInvoke2, new Object[0])).booleanValue() && !((Boolean) this.ap.invoke(objInvoke3, new Object[0])).booleanValue() && !((Boolean) this.camera.invoke(objInvoke3, new Object[0])).booleanValue()) {
                z2 = false;
            } else {
                z2 = true;
            }
            return TurnCameraPreviewPolicy.parked(z, fFloatValue, iIntValue, zBooleanValue, zBooleanValue2, z2);
        } catch (Throwable th) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: watch, reason: merged with bridge method [inline-methods] */
    public void m154lambda$watch$0$comlocalg3homeTurnCameraNativeBridge(final long j) {
        if (j != this.previewLease.get()) {
            return;
        }
        try {
            if (!this.preview.owns(((Integer) this.displayType.invoke(this.showInstance.invoke(null, new Object[0]), new Object[0])).intValue())) {
                this.preview.release();
                return;
            }
            if (!this.preview.expired(SystemClock.elapsedRealtime()) && parked()) {
                this.main.postDelayed(new Runnable() { // from class: com.local.p5home.TurnCameraNativeBridge$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m154lambda$watch$0$comlocalg3homeTurnCameraNativeBridge(j);
                    }
                }, 200L);
                return;
            }
            closeOwned();
        } catch (Throwable th) {
            closeOwned();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean closeOwned() {
        this.displayLock.lock();
        try {
            this.previewLease.incrementAndGet();
            this.previewOwnerToken = null;
            Object objInvoke = this.showInstance.invoke(null, new Object[0]);
            boolean zOwns = this.preview.owns(((Integer) this.displayType.invoke(objInvoke, new Object[0])).intValue());
            this.preview.release();
            if (!zOwns) {
                return false;
            }
            Permit permit = new Permit(this.preview.generation(), ((Integer) this.displayType.invoke(objInvoke, new Object[0])).intValue(), SystemClock.elapsedRealtime(), true);
            this.ownCall.set(permit);
            try {
                this.hide.invoke(objInvoke, new Object[0]);
                resetPending(permit);
                this.displayLock.unlock();
                return true;
            } finally {
                this.ownCall.remove();
            }
        } catch (Throwable th) {
            this.preview.release();
            return false;
        } finally {
            this.displayLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetPending(Permit permit) {
        this.displayLock.lock();
        try {
            Object objInvoke = this.showInstance.invoke(null, new Object[0]);
            if (this.preview.sameGeneration(permit.generation) && ((Integer) this.displayType.invoke(objInvoke, new Object[0])).intValue() == permit.side && !((Boolean) this.showing.invoke(objInvoke, new Object[0])).booleanValue()) {
                this.panelMode.setInt(null, -1);
                this.preview.release();
            }
        } catch (Throwable th) {
        }
        this.displayLock.unlock();
    }

    private static void add(List<XC_MethodHook.Unhook> list, Member member, XC_MethodHook xC_MethodHook) {
        XC_MethodHook.Unhook unhookHookMethod = XposedBridge.hookMethod(member, xC_MethodHook);
        if (unhookHookMethod == null) {
            throw new IllegalStateException("hook unavailable");
        }
        list.add(unhookHookMethod);
    }

    private static Class<?> type(ClassLoader classLoader, String str) throws Exception {
        return Class.forName(str, false, classLoader);
    }

    private static Method method(Class<?> cls, String str, Class<?> cls2, Class<?>... clsArr) throws Exception {
        Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
        if (declaredMethod.getReturnType() != cls2) {
            throw new NoSuchMethodException(str);
        }
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
