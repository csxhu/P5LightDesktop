package com.local.p5home;

import android.os.Handler;
import android.os.SystemClock;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
final class HookSessions {
    private final Field asrResult;
    private final Method cancelListening;
    private final Method clearDds;
    private final Method clearFusion;
    private final Field contextData;
    private final Method continuous;
    private final Field currentState;
    private final Class<?> dds;
    private final Field dmContext;
    private final Field dmHandler;
    private final Field fusionSticky;
    private long generation;
    private final Field idle;
    private Object lastAsr;
    private final Method listenWindow;
    private final Field listening;
    private final Field nluFusion;
    private final Field nluHandler;
    private final Field nluProviders;
    private volatile Object observedSdk;
    private final Class<?> provider;
    private final Field sdkAsr;
    private final Field sdkDm;
    private final Field sdkNlu;
    private final Field sdkTts;
    private final Field serverSdk;
    private final Field sessionId;
    private final Method setNluState;
    private final Method setSolo;
    private final Method singleton;
    private Entry soloOwner;
    private final Field speaking;
    private final Method startListening;
    private final Class<?> state;
    private final Field stateSdk;
    private final Method stop;
    private final Method stopProvider;
    private final Class<?> systemTts;
    private final Method transition;
    private final Field ttsEngine;
    private volatile String lastCode = "TURN_IDLE";
    private volatile String soloCode = "SOLO_IDLE";
    private final LinkedHashMap<String, Entry> entries = new LinkedHashMap<>();

    interface Completion {
        void done(boolean z, String str);
    }

    static final class Snapshot {
        final Object asr;
        final long at = SystemClock.elapsedRealtime();
        final Object context;
        final Object data;
        final long generation;
        final Handler handler;
        final Object nlu;
        final Object sdk;
        final Object solo;
        final String token;

        Snapshot(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Handler handler, String str, long j) {
            this.sdk = obj;
            this.context = obj2;
            this.data = obj3;
            this.asr = obj4;
            this.nlu = obj5;
            this.solo = obj6;
            this.handler = handler;
            this.token = str;
            this.generation = j;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class Entry {
        int attempts;
        long deadline;
        boolean ended;
        Runnable expiry;
        final boolean external;
        boolean prepared;
        int queued;
        final Snapshot snapshot;
        boolean soloBorrowed;
        boolean started;

        Entry(Snapshot snapshot, boolean z) {
            this.snapshot = snapshot;
            this.external = z;
            this.deadline = snapshot.at + 5000;
        }
    }

    HookSessions(ClassLoader classLoader) throws Exception {
        Class<?> clsType = type(classLoader, "com.xiaopeng.carspeechservice.b.g");
        this.state = clsType;
        Class<?> clsType2 = type(classLoader, "com.xiaopeng.carspeechservice.b.f");
        Class<?> clsType3 = type(classLoader, "com.xiaopeng.carspeechservice.g.b");
        Class<?> clsType4 = type(classLoader, "com.xiaopeng.carspeechservice.b.d");
        Class<?> clsType5 = type(classLoader, "com.xiaopeng.carspeechservice.b.c");
        Class<?> clsType6 = type(classLoader, "com.xiaopeng.carspeechservice.b.b");
        Class<?> clsType7 = type(classLoader, "com.xiaopeng.carspeechservice.b.a");
        Class<?> clsType8 = type(classLoader, "com.xiaopeng.carspeechservice.h.g");
        Class<?> clsType9 = type(classLoader, "com.xiaopeng.speech.common.util.g");
        Class<?> clsType10 = type(classLoader, "com.xiaopeng.carspeechservice.nlu.a");
        Class<?> clsType11 = type(classLoader, "com.xiaopeng.carspeechservice.nlu.b.a");
        Class<?> clsType12 = type(classLoader, "com.xiaopeng.carspeechservice.a.a");
        Class<?> clsType13 = type(classLoader, "com.xiaopeng.carspeechservice.tts.b");
        Class<?> clsType14 = type(classLoader, "com.xiaopeng.carspeechservice.tts.a");
        Class<?> clsType15 = type(classLoader, "com.xiaopeng.carspeechservice.tts.a.a");
        this.systemTts = clsType15;
        this.sdkTts = field(clsType3, "c", clsType13);
        this.ttsEngine = field(clsType13, "a", clsType14);
        this.setSolo = method(clsType15, "a", Void.TYPE, Boolean.TYPE);
        Class<?> clsType16 = type(classLoader, "com.xiaopeng.carspeechservice.nlu.c.d");
        this.provider = clsType16;
        Class<?> clsType17 = type(classLoader, "com.xiaopeng.carspeechservice.nlu.c.b");
        this.dds = clsType17;
        if (Handler.class.isAssignableFrom(clsType9)) {
            this.stateSdk = field(clsType, "b", clsType3);
            this.serverSdk = field(clsType8, "c", clsType3);
            this.sdkDm = field(clsType3, "i", clsType4);
            this.dmContext = field(clsType4, "a", clsType6);
            this.dmHandler = field(clsType4, "b", clsType9);
            this.contextData = field(clsType5, "j", clsType7);
            this.sessionId = field(clsType7, "j", String.class);
            this.asrResult = field(clsType7, "c", type(classLoader, "com.xiaopeng.carspeechservice.bean.a.b"));
            this.idle = field(clsType5, "a", clsType2);
            this.listening = field(clsType5, "b", clsType2);
            this.speaking = field(clsType5, "e", clsType2);
            this.currentState = field(clsType5, "n", clsType2);
            this.sdkNlu = field(clsType3, "k", clsType10);
            this.nluHandler = field(clsType10, "c", clsType9);
            this.nluProviders = field(clsType10, "a", Map.class);
            this.nluFusion = field(clsType10, "b", clsType11);
            this.fusionSticky = field(clsType11, "f", Boolean.TYPE);
            this.sdkAsr = field(clsType3, "j", clsType12);
            this.singleton = method(clsType8, "a", clsType8, new Class[0]);
            this.stop = method(clsType5, "b", Void.TYPE, String.class, String.class);
            this.transition = method(clsType5, "a", clsType2, clsType2);
            this.startListening = method(clsType, "n", Void.TYPE, new Class[0]);
            this.cancelListening = method(clsType, "p", Void.TYPE, new Class[0]);
            this.continuous = method(type(classLoader, "com.xiaopeng.carspeechservice.speechutils.k"), "l", Boolean.TYPE, new Class[0]);
            this.clearFusion = method(clsType11, "a", Void.TYPE, new Class[0]);
            this.setNluState = method(clsType10, "a", Void.TYPE, Integer.TYPE);
            this.stopProvider = method(clsType16, "b", Void.TYPE, new Class[0]);
            this.clearDds = method(clsType17, "j", Void.TYPE, new Class[0]);
            this.listenWindow = method(clsType12, "c", Void.TYPE, Long.TYPE);
            return;
        }
        throw new IllegalStateException("handler_contract");
    }

    void observe(Object obj) {
        Object obj2;
        if (obj != null) {
            try {
                if (!this.state.isInstance(obj) || (obj2 = this.stateSdk.get(obj)) == null) {
                    return;
                }
                this.observedSdk = obj2;
            } catch (Exception e) {
            }
        }
    }

    synchronized void observeAsr(Object obj) {
        if (obj != this.lastAsr) {
            Entry entry = this.soloOwner;
            if (entry != null) {
                restoreSolo(entry);
            }
            this.lastAsr = obj;
            this.generation++;
            Iterator<Entry> it = this.entries.values().iterator();
            while (it.hasNext()) {
                cancelExpiry(it.next());
            }
        }
    }

    boolean continuousEnabled() {
        try {
            return ((Boolean) this.continuous.invoke(null, new Object[0])).booleanValue();
        } catch (Exception | LinkageError e) {
            return false;
        }
    }

    Snapshot capture() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object obj;
        Snapshot snapshot;
        try {
            Object objCurrentSdk = currentSdk();
            if (objCurrentSdk == null || (obj = this.sdkDm.get(objCurrentSdk)) == null) {
                return null;
            }
            Object obj2 = this.dmContext.get(obj);
            Object obj3 = this.contextData.get(obj2);
            Object obj4 = this.dmHandler.get(obj);
            Object obj5 = this.sdkNlu.get(objCurrentSdk);
            Object obj6 = this.asrResult.get(obj3);
            Object obj7 = this.sessionId.get(obj3);
            if ((obj4 instanceof Handler) && obj5 != null && this.nluHandler.get(obj5) == obj4 && obj6 != null && this.currentState.get(obj2) != this.idle.get(obj2) && (obj7 instanceof String) && !((String) obj7).isEmpty() && ((String) obj7).length() <= 256) {
                this.continuous.invoke(null, new Object[0]);
                Object obj8 = this.sdkTts.get(objCurrentSdk);
                Object obj9 = obj8 == null ? null : this.ttsEngine.get(obj8);
                if (!this.systemTts.isInstance(obj9)) {
                    obj9 = null;
                }
                synchronized (this) {
                    snapshot = new Snapshot(objCurrentSdk, obj2, obj3, obj6, obj5, obj9, (Handler) obj4, (String) obj7, this.generation);
                }
                return snapshot;
            }
            return null;
        } catch (Exception | LinkageError e) {
            return null;
        }
    }

    String code() {
        return this.lastCode;
    }

    String soloCode() {
        return this.soloCode;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x000b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized boolean soloRequestActive() {
        /*
            r1 = this;
            monitor-enter(r1)
            com.local.p5home.HookSessions$Entry r0 = r1.soloOwner     // Catch: java.lang.Throwable -> Le
            if (r0 == 0) goto Lb
            boolean r0 = r0.soloBorrowed     // Catch: java.lang.Throwable -> Le
            if (r0 == 0) goto Lb
            r0 = 1
            goto Lc
        Lb:
            r0 = 0
        Lc:
            monitor-exit(r1)
            return r0
        Le:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.HookSessions.soloRequestActive():boolean");
    }

    boolean externalReady(Snapshot snapshot) {
        return (snapshot == null || (continuousEnabled() && snapshot.solo == null)) ? false : true;
    }

    void accept(String str, Snapshot snapshot) {
        accept(str, snapshot, false);
    }

    synchronized void accept(String str, Snapshot snapshot, boolean z) {
        if (HookPolicy.safeId(str) && snapshot != null) {
            if (this.entries.size() >= 32) {
                LinkedHashMap<String, Entry> linkedHashMap = this.entries;
                Entry entryRemove = linkedHashMap.remove(linkedHashMap.keySet().iterator().next());
                cancelExpiry(entryRemove);
                if (entryRemove.soloBorrowed) {
                    restoreSolo(entryRemove);
                }
            }
            this.entries.put(str, new Entry(snapshot, z));
        }
    }

    void begin(String str, Completion completion) {
        enqueue(str, 0, completion);
    }

    void finish(String str, Completion completion) {
        enqueue(str, 1, completion);
    }

    void started(String str, Completion completion) {
        enqueue(str, 2, completion);
    }

    void display(String str, final String str2, final HookTranscript hookTranscript, final Completion completion) {
        synchronized (this) {
            final Entry entry = this.entries.get(str);
            if (entry != null && entry.external) {
                if (entry.queued < 4 && entry.attempts < 8) {
                    entry.queued++;
                    entry.attempts++;
                    if (!entry.snapshot.handler.post(new Runnable() { // from class: com.local.p5home.HookSessions$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m55lambda$display$0$comlocalg3homeHookSessions(entry, completion, hookTranscript, str2);
                        }
                    })) {
                        synchronized (this) {
                            entry.queued--;
                        }
                        completion.done(false, "TRANSCRIPT_HANDLER_REJECTED");
                        return;
                    }
                    return;
                }
                completion.done(false, "TRANSCRIPT_CALLBACK_BOUND");
                return;
            }
            completion.done(false, "TRANSCRIPT_OWNER_UNKNOWN");
        }
    }

    /* renamed from: lambda$display$0$com-local-g3home-HookSessions, reason: not valid java name */
    /* synthetic */ void m55lambda$display$0$comlocalg3homeHookSessions(Entry entry, Completion completion, HookTranscript hookTranscript, String str) {
        try {
            boolean z = false;
            if (entry.prepared && current(entry.snapshot) && SystemClock.elapsedRealtime() <= entry.deadline) {
                if (hookTranscript != null && hookTranscript.show(str)) {
                    z = true;
                }
                completion.done(z, hookTranscript == null ? "TRANSCRIPT_UNAVAILABLE" : hookTranscript.code());
                synchronized (this) {
                    entry.queued--;
                }
                return;
            }
            completion.done(false, "TRANSCRIPT_OWNER_STALE");
            synchronized (this) {
                entry.queued--;
            }
        } catch (Throwable th) {
            synchronized (this) {
                entry.queued--;
                throw th;
            }
        }
    }

    synchronized boolean suppressNativeResult(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        for (Entry entry : this.entries.values()) {
            if (entry.external && entry.snapshot.context == obj && current(entry.snapshot)) {
                return true;
            }
        }
        return false;
    }

    private void enqueue(String str, final int i, final Completion completion) {
        synchronized (this) {
            final Entry entry = this.entries.get(str);
            if (entry == null) {
                completion.done(false, "TURN_UNKNOWN");
                return;
            }
            if (entry.ended) {
                completion.done(true, "TURN_ALREADY_COMPLETED");
                return;
            }
            if (entry.queued >= 4) {
                completion.done(false, "TURN_CALLBACK_BOUND");
                return;
            }
            if (entry.attempts >= 8) {
                completion.done(false, "TURN_RETRY_BOUND");
                return;
            }
            entry.queued++;
            entry.attempts++;
            if (!entry.snapshot.handler.post(new Runnable() { // from class: com.local.p5home.HookSessions$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m56lambda$enqueue$1$comlocalg3homeHookSessions(entry, i, completion);
                }
            })) {
                synchronized (this) {
                    entry.queued--;
                }
                report(completion, false, "TURN_HANDLER_REJECTED");
            }
        }
    }

    /* renamed from: lambda$enqueue$1$com-local-g3home-HookSessions, reason: not valid java name */
    /* synthetic */ void m56lambda$enqueue$1$comlocalg3homeHookSessions(Entry entry, int i, Completion completion) {
        try {
            perform(entry, i, completion);
            synchronized (this) {
                entry.queued--;
            }
        } catch (Throwable th) {
            synchronized (this) {
                entry.queued--;
                throw th;
            }
        }
    }

    private void perform(Entry entry, int i, Completion completion) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Snapshot snapshot = entry.snapshot;
        boolean z = true;
        if (entry.ended) {
            report(completion, true, "TURN_ALREADY_COMPLETED");
            return;
        }
        if (!current(snapshot) || SystemClock.elapsedRealtime() > entry.deadline) {
            report(completion, false, "TURN_CHANGED_OR_STALE");
            return;
        }
        try {
            if (i == 2) {
                if (entry.prepared && entry.external && this.currentState.get(snapshot.context) == this.speaking.get(snapshot.context)) {
                    if (!entry.started) {
                        entry.started = true;
                        entry.deadline = SystemClock.elapsedRealtime() + 70000;
                        scheduleExpiry(entry);
                    }
                    report(completion, true, "TURN_EXTERNAL_SPEAKING");
                    return;
                }
                report(completion, false, "TURN_NOT_WAITING");
                return;
            }
            if (entry.prepared) {
                if (i == 0) {
                    report(completion, true, "TURN_ALREADY_PREPARED");
                    return;
                }
                if (entry.external && this.currentState.get(snapshot.context) == this.speaking.get(snapshot.context)) {
                    resume(entry, completion);
                    return;
                }
                report(completion, false, "TURN_STAGE_CHANGED");
                return;
            }
            if (i != 0) {
                report(completion, false, "TURN_NOT_PREPARED");
                return;
            }
            if (!((Boolean) this.continuous.invoke(null, new Object[0])).booleanValue()) {
                this.stop.invoke(snapshot.context, "normal", "");
                if (snapshot.token.equals(this.sessionId.get(snapshot.data))) {
                    z = false;
                }
                entry.ended = z;
                report(completion, z, z ? "TURN_SINGLE_COMPLETED" : "TURN_SINGLE_UNCONFIRMED");
                return;
            }
            if (entry.external && snapshot.solo == null) {
                report(completion, false, "TURN_SOLO_UNSUPPORTED");
                return;
            }
            Object obj = this.nluProviders.get(snapshot.nlu);
            Object obj2 = this.nluFusion.get(snapshot.nlu);
            Object obj3 = this.sdkAsr.get(snapshot.sdk);
            if ((obj instanceof Map) && ((Map) obj).size() <= 8 && obj2 != null && obj3 != null) {
                ArrayList arrayList = new ArrayList(((Map) obj).values());
                for (Object obj4 : arrayList) {
                    if (obj4 == null || !this.provider.isInstance(obj4)) {
                        report(completion, false, "TURN_PROVIDER_UNSUPPORTED");
                        return;
                    }
                }
                this.setNluState.invoke(snapshot.nlu, 5);
                this.clearFusion.invoke(obj2, new Object[0]);
                this.fusionSticky.setBoolean(obj2, false);
                for (Object obj5 : arrayList) {
                    if (this.dds.isInstance(obj5)) {
                        this.clearDds.invoke(obj5, new Object[0]);
                    } else {
                        this.stopProvider.invoke(obj5, new Object[0]);
                    }
                }
                entry.prepared = true;
                if (entry.external) {
                    this.transition.invoke(snapshot.context, this.speaking.get(snapshot.context));
                    entry.deadline = SystemClock.elapsedRealtime() + 75000;
                    scheduleExpiry(entry);
                    this.setSolo.invoke(snapshot.solo, false);
                    synchronized (this) {
                        entry.soloBorrowed = true;
                        this.soloOwner = entry;
                        this.soloCode = "SOLO_RELEASE_DISPATCHED";
                    }
                    this.cancelListening.invoke(this.currentState.get(snapshot.context), new Object[0]);
                    report(completion, true, "TURN_EXTERNAL_WAIT");
                } else {
                    resume(entry, completion);
                }
                return;
            }
            report(completion, false, "TURN_NLU_UNAVAILABLE");
        } catch (Exception | LinkageError e) {
            report(completion, false, "TURN_COMPLETE_EXCEPTION");
        }
    }

    private void resume(Entry entry, Completion completion) throws Exception {
        Snapshot snapshot = entry.snapshot;
        cancelExpiry(entry);
        restoreSolo(entry);
        boolean z = false;
        if (!((Boolean) this.continuous.invoke(null, new Object[0])).booleanValue()) {
            this.stop.invoke(snapshot.context, "normal", "");
            boolean z2 = !snapshot.token.equals(this.sessionId.get(snapshot.data));
            entry.ended = z2;
            report(completion, z2, z2 ? "TURN_SINGLE_COMPLETED" : "TURN_SINGLE_UNCONFIRMED");
            return;
        }
        Object obj = this.listening.get(snapshot.context);
        this.transition.invoke(snapshot.context, obj);
        Method method = this.listenWindow;
        Object obj2 = this.sdkAsr.get(snapshot.sdk);
        Object[] objArr = new Object[1];
        objArr[0] = Long.valueOf(entry.external ? 30000L : 7000L);
        method.invoke(obj2, objArr);
        this.startListening.invoke(obj, new Object[0]);
        if (snapshot.token.equals(this.sessionId.get(snapshot.data)) && this.currentState.get(snapshot.context) == obj) {
            z = true;
        }
        entry.ended = z;
        report(completion, z, z ? "TURN_CONTINUOUS_LISTENING" : "TURN_CONTINUOUS_UNCONFIRMED");
    }

    private void scheduleExpiry(final Entry entry) {
        cancelExpiry(entry);
        entry.expiry = new Runnable() { // from class: com.local.p5home.HookSessions$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m58lambda$scheduleExpiry$3$comlocalg3homeHookSessions(entry);
            }
        };
        if (!entry.snapshot.handler.postDelayed(entry.expiry, Math.max(1L, entry.deadline - SystemClock.elapsedRealtime()))) {
            this.lastCode = "TURN_WATCHDOG_REJECTED";
        }
    }

    /* renamed from: lambda$scheduleExpiry$3$com-local-g3home-HookSessions, reason: not valid java name */
    /* synthetic */ void m58lambda$scheduleExpiry$3$comlocalg3homeHookSessions(Entry entry) {
        if (entry.ended) {
            return;
        }
        try {
            if (current(entry.snapshot) && this.currentState.get(entry.snapshot.context) == this.speaking.get(entry.snapshot.context)) {
                resume(entry, new Completion() { // from class: com.local.p5home.HookSessions$$ExternalSyntheticLambda2
                    @Override // com.local.p5home.HookSessions.Completion
                    public final void done(boolean z, String str) {
                        this.f$0.m57lambda$scheduleExpiry$2$comlocalg3homeHookSessions(z, str);
                    }
                });
            } else {
                restoreSolo(entry);
                this.lastCode = "TURN_EXTERNAL_TIMEOUT_STALE";
            }
        } catch (Exception | LinkageError e) {
            this.lastCode = "TURN_EXTERNAL_TIMEOUT_EXCEPTION";
        }
    }

    /* renamed from: lambda$scheduleExpiry$2$com-local-g3home-HookSessions, reason: not valid java name */
    /* synthetic */ void m57lambda$scheduleExpiry$2$comlocalg3homeHookSessions(boolean z, String str) {
        if (z) {
            str = "TURN_EXTERNAL_TIMEOUT_RELEASED";
        }
        this.lastCode = str;
    }

    private void cancelExpiry(Entry entry) {
        if (entry == null || entry.expiry == null) {
            return;
        }
        entry.snapshot.handler.removeCallbacks(entry.expiry);
        entry.expiry = null;
    }

    private synchronized void restoreSolo(Entry entry) {
        if (entry != null) {
            if (entry.soloBorrowed) {
                Snapshot snapshot = entry.snapshot;
                try {
                    try {
                        Object obj = this.sdkTts.get(snapshot.sdk);
                        Object obj2 = obj == null ? null : this.ttsEngine.get(obj);
                        if (currentSdk() == snapshot.sdk && snapshot.token.equals(this.sessionId.get(snapshot.data)) && this.currentState.get(snapshot.context) != this.idle.get(snapshot.context) && obj2 == snapshot.solo) {
                            this.setSolo.invoke(snapshot.solo, true);
                            this.soloCode = "SOLO_RESTORE_DISPATCHED";
                        } else {
                            this.soloCode = "SOLO_RESTORE_OWNER_CHANGED";
                        }
                    } finally {
                        entry.soloBorrowed = false;
                        if (this.soloOwner == entry) {
                            this.soloOwner = null;
                        }
                    }
                } catch (Exception | LinkageError e) {
                    this.soloCode = "SOLO_RESTORE_EXCEPTION";
                    entry.soloBorrowed = false;
                    if (this.soloOwner == entry) {
                    }
                }
            }
        }
    }

    private synchronized boolean current(Snapshot snapshot) {
        boolean z = false;
        try {
            if (SystemClock.elapsedRealtime() >= snapshot.at && this.generation == snapshot.generation && currentSdk() == snapshot.sdk && snapshot.token.equals(this.sessionId.get(snapshot.data)) && this.asrResult.get(snapshot.data) == snapshot.asr) {
                if (this.currentState.get(snapshot.context) != this.idle.get(snapshot.context)) {
                    z = true;
                }
            }
            return z;
        } catch (Exception e) {
            return false;
        } catch (LinkageError e2) {
            return false;
        }
    }

    private void report(Completion completion, boolean z, String str) {
        this.lastCode = str;
        completion.done(z, str);
    }

    private Object currentSdk() throws Exception {
        return this.observedSdk != null ? this.observedSdk : this.serverSdk.get(this.singleton.invoke(null, new Object[0]));
    }

    private static Class<?> type(ClassLoader classLoader, String str) throws ClassNotFoundException {
        return Class.forName(str, false, classLoader);
    }

    private static Field field(Class<?> cls, String str, Class<?> cls2) throws Exception {
        Field declaredField = cls.getDeclaredField(str);
        if (declaredField.getType() != cls2) {
            throw new NoSuchFieldException("turn_field_contract");
        }
        declaredField.setAccessible(true);
        return declaredField;
    }

    private static Method method(Class<?> cls, String str, Class<?> cls2, Class<?>... clsArr) throws Exception {
        Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
        if (declaredMethod.getReturnType() != cls2) {
            throw new NoSuchMethodException("turn_method_contract");
        }
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
