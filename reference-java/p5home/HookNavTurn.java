package com.local.p5home;

import android.os.Handler;
import android.os.SystemClock;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
final class HookNavTurn {
    private final Field asrResult;
    private final Field contextData;
    private final Method continuous;
    private final Field currentState;
    private final Diagnostic diagnostic;
    private final Field dmContext;
    private final Field dmHandler;
    private final Enabled enabled;
    private long generation;
    private final Field idle;
    private Object lastAsr;
    final Method nluEntry;
    private final Field nluHandler;
    private final Field nluState;
    private Object observedSdk;
    private Owner owner;
    private final Constructor<?> result;
    private final Field sdkDm;
    private final Field sdkNlu;
    private final Field sessionId;
    private final Field shouldEnd;
    private final Class<?> state;
    private final Field stateSdk;

    interface Diagnostic {
        void code(String str);
    }

    interface Enabled {
        boolean get();
    }

    static final class Owner {
        boolean accepted;
        final Object asr;
        final long at = SystemClock.elapsedRealtime();
        final Object context;
        final Object data;
        Runnable expiry;
        final long generation;
        final Handler handler;
        Object neutral;
        final Object nlu;
        boolean queued;
        final Object sdk;
        final String token;

        Owner(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Handler handler, String str, long j) {
            this.sdk = obj;
            this.context = obj2;
            this.data = obj3;
            this.asr = obj4;
            this.nlu = obj5;
            this.handler = handler;
            this.token = str;
            this.generation = j;
        }
    }

    HookNavTurn(ClassLoader classLoader, Enabled enabled, Diagnostic diagnostic) throws Exception {
        this.enabled = enabled;
        this.diagnostic = diagnostic;
        Class<?> clsType = type(classLoader, "com.xiaopeng.carspeechservice.b.g");
        this.state = clsType;
        Class<?> clsType2 = type(classLoader, "com.xiaopeng.carspeechservice.g.b");
        Class<?> clsType3 = type(classLoader, "com.xiaopeng.carspeechservice.b.d");
        Class<?> clsType4 = type(classLoader, "com.xiaopeng.carspeechservice.b.c");
        Class<?> clsType5 = type(classLoader, "com.xiaopeng.carspeechservice.b.b");
        Class<?> clsType6 = type(classLoader, "com.xiaopeng.carspeechservice.b.a");
        Class<?> clsType7 = type(classLoader, "com.xiaopeng.speech.common.util.g");
        Class<?> clsType8 = type(classLoader, "com.xiaopeng.carspeechservice.nlu.a");
        Class<?> clsType9 = type(classLoader, "com.xiaopeng.carspeechservice.bean.b.g");
        Class<?> clsType10 = type(classLoader, "com.xiaopeng.carspeechservice.b.f");
        if (!Handler.class.isAssignableFrom(clsType7)) {
            throw new NoSuchFieldException("handler_contract");
        }
        this.stateSdk = field(clsType, "b", clsType2);
        this.sdkDm = field(clsType2, "i", clsType3);
        this.dmContext = field(clsType3, "a", clsType5);
        this.dmHandler = field(clsType3, "b", clsType7);
        this.contextData = field(clsType4, "j", clsType6);
        this.asrResult = field(clsType6, "c", type(classLoader, "com.xiaopeng.carspeechservice.bean.a.b"));
        this.sessionId = field(clsType6, "j", String.class);
        this.currentState = field(clsType4, "n", clsType10);
        this.idle = field(clsType4, "a", clsType10);
        this.sdkNlu = field(clsType2, "k", clsType8);
        this.nluHandler = field(clsType8, "c", clsType7);
        this.nluState = field(clsType8, "f", Integer.TYPE);
        this.nluEntry = method(clsType4, "a", Void.TYPE, clsType9);
        Constructor<?> declaredConstructor = clsType9.getDeclaredConstructor(new Class[0]);
        this.result = declaredConstructor;
        declaredConstructor.setAccessible(true);
        this.shouldEnd = field(clsType9, "i", Boolean.TYPE);
        this.continuous = method(type(classLoader, "com.xiaopeng.carspeechservice.speechutils.k"), "l", Boolean.TYPE, new Class[0]);
    }

    synchronized void observe(Object obj, Object obj2) {
        try {
            if (this.state.isInstance(obj)) {
                this.observedSdk = this.stateSdk.get(obj);
            }
        } catch (Exception e) {
        }
        clear();
        this.lastAsr = obj2;
        this.generation++;
    }

    synchronized Owner capture(Object obj) {
        Object obj2;
        try {
            if (this.enabled.get() && (obj2 = this.observedSdk) != null && this.lastAsr == obj) {
                Object obj3 = this.sdkDm.get(obj2);
                Object obj4 = this.dmContext.get(obj3);
                Object obj5 = this.contextData.get(obj4);
                Object obj6 = this.sdkNlu.get(this.observedSdk);
                Object obj7 = this.dmHandler.get(obj3);
                Object obj8 = this.sessionId.get(obj5);
                if ((obj7 instanceof Handler) && obj6 != null && this.nluHandler.get(obj6) == obj7 && this.asrResult.get(obj5) == obj && this.currentState.get(obj4) != this.idle.get(obj4) && (obj8 instanceof String) && !((String) obj8).isEmpty() && ((String) obj8).length() <= 256) {
                    this.continuous.invoke(null, new Object[0]);
                    return new Owner(this.observedSdk, obj4, obj5, obj, obj6, (Handler) obj7, (String) obj8, this.generation);
                }
                return null;
            }
            return null;
        } catch (Exception | LinkageError e) {
            this.diagnostic.code("NAV_TURN_CAPTURE_FAILED");
            return null;
        }
    }

    synchronized boolean accept(Owner owner) {
        if (!current(owner)) {
            return false;
        }
        clear();
        owner.accepted = true;
        this.owner = owner;
        this.diagnostic.code("NAV_TURN_ACK_OWNED");
        return true;
    }

    synchronized void afterAsr(Object obj, boolean z) {
        final Owner owner = this.owner;
        if (owner != null && owner.asr == obj) {
            if (!z && current(owner)) {
                if (owner.queued) {
                    return;
                }
                owner.queued = true;
                if (!owner.handler.post(new Runnable() { // from class: com.local.p5home.HookNavTurn$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m43lambda$afterAsr$0$comlocalg3homeHookNavTurn(owner);
                    }
                })) {
                    clear();
                    this.diagnostic.code("NAV_TURN_HANDLER_REJECTED");
                    return;
                } else {
                    owner.expiry = new Runnable() { // from class: com.local.p5home.HookNavTurn$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m44lambda$afterAsr$1$comlocalg3homeHookNavTurn(owner);
                        }
                    };
                    if (!owner.handler.postDelayed(owner.expiry, 15000L)) {
                        clear();
                        this.diagnostic.code("NAV_TURN_WATCHDOG_REJECTED");
                    }
                    return;
                }
            }
            clear();
            this.diagnostic.code(z ? "NAV_TURN_ORIGINAL_FAILED" : "NAV_TURN_OWNER_CHANGED");
        }
    }

    /* renamed from: lambda$afterAsr$1$com-local-g3home-HookNavTurn, reason: not valid java name */
    /* synthetic */ void m44lambda$afterAsr$1$comlocalg3homeHookNavTurn(Owner owner) {
        synchronized (this) {
            if (this.owner == owner) {
                clear();
                this.diagnostic.code("NAV_TURN_LEASE_EXPIRED");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: deliver, reason: merged with bridge method [inline-methods] */
    public synchronized void m43lambda$afterAsr$0$comlocalg3homeHookNavTurn(Owner owner) {
        if (this.owner != owner || !current(owner)) {
            if (this.owner == owner) {
                clear();
            }
            this.diagnostic.code("NAV_TURN_OWNER_CHANGED");
            return;
        }
        try {
        } catch (Exception | LinkageError e) {
            clear();
            this.diagnostic.code("NAV_TURN_NLU_FAILED");
        }
        if (this.nluState.getInt(owner.nlu) == 5) {
            clear();
            this.diagnostic.code("NAV_TURN_NLU_STOPPED");
            return;
        }
        Object objNewInstance = this.result.newInstance(new Object[0]);
        this.shouldEnd.setBoolean(objNewInstance, ((Boolean) this.continuous.invoke(null, new Object[0])).booleanValue() ? false : true);
        owner.neutral = objNewInstance;
        this.nluEntry.invoke(owner.context, objNewInstance);
        this.diagnostic.code("NAV_TURN_NLU_DISPATCHED");
    }

    synchronized boolean suppress(Object obj, Object obj2) {
        Owner owner = this.owner;
        if (owner == null) {
            return false;
        }
        if (!current(owner)) {
            clear();
            return false;
        }
        if (obj == owner.context && obj2 != null && obj2 != owner.neutral) {
            this.diagnostic.code("NAV_TURN_OLD_NLU_IGNORED");
            return true;
        }
        return false;
    }

    synchronized void disable() {
        clear();
    }

    private boolean current(Owner owner) {
        if (owner != null) {
            try {
                if (this.enabled.get() && SystemClock.elapsedRealtime() >= owner.at && SystemClock.elapsedRealtime() - owner.at <= 15000 && owner.generation == this.generation && this.observedSdk == owner.sdk && owner.asr == this.lastAsr && this.asrResult.get(owner.data) == owner.asr && owner.token.equals(this.sessionId.get(owner.data)) && this.currentState.get(owner.context) != this.idle.get(owner.context) && this.dmContext.get(this.sdkDm.get(owner.sdk)) == owner.context) {
                    return this.nluHandler.get(owner.nlu) == owner.handler;
                }
                return false;
            } catch (Exception | LinkageError e) {
                return false;
            }
        }
        return false;
    }

    private void clear() {
        Owner owner = this.owner;
        if (owner != null && owner.expiry != null) {
            this.owner.handler.removeCallbacks(this.owner.expiry);
        }
        this.owner = null;
    }

    private static Class<?> type(ClassLoader classLoader, String str) throws Exception {
        return Class.forName(str, false, classLoader);
    }

    private static Field field(Class<?> cls, String str, Class<?> cls2) throws Exception {
        Field declaredField = cls.getDeclaredField(str);
        if (declaredField.getType() != cls2) {
            throw new NoSuchFieldException("field_contract");
        }
        declaredField.setAccessible(true);
        return declaredField;
    }

    private static Method method(Class<?> cls, String str, Class<?> cls2, Class<?>... clsArr) throws Exception {
        Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
        if (declaredMethod.getReturnType() != cls2) {
            throw new NoSuchMethodException("return_contract");
        }
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
