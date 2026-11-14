package com.local.p5home;

import com.local.p5home.WakeWordPolicy;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
final class HookWakeWords {
    private final Method buttonEntry;
    private final Method change;
    private boolean enabled;
    private final Field helperWords;
    private boolean installed;
    private final Listener listener;
    private final ClassLoader loader;
    private Object owner;
    private long revision;
    private final Field sdkWake;
    private final Field serverSdk;
    private final Method singleton;
    private final Method submit;
    private final Class<?> taskClass;
    private final Class<?> valueClass;
    private final Field valuePinyin;
    private final Field valueText;
    private final Field valueThreshold;
    private final Field wakeAllowed;
    private final Field wakeAutoListen;
    private final Class<?> wakeClass;
    private final Method wakeEntry;
    private final Field wakeHelper;
    private final Field wakeReason;
    private final Field wakeRunner;
    private final Field wakeWord;
    private final LinkedHashMap<String, Owned> owned = new LinkedHashMap<>();
    private List<WakeWordPolicy.Word> desired = Collections.emptyList();
    private volatile String lastCode = "WAKE_WORDS_DISABLED";

    interface Listener {
        void onWake(boolean z);
    }

    private static final class Owned {
        final Object value;
        final WakeWordPolicy.Word word;

        Owned(WakeWordPolicy.Word word, Object obj) {
            this.word = word;
            this.value = obj;
        }
    }

    HookWakeWords(ClassLoader classLoader, Listener listener) throws Exception {
        this.loader = classLoader;
        this.listener = listener;
        Class<?> clsType = type("com.xiaopeng.carspeechservice.h.g");
        Class<?> clsType2 = type("com.xiaopeng.carspeechservice.g.b");
        Class<?> clsType3 = type("com.xiaopeng.carspeechservice.n.c");
        Class<?> clsType4 = type("com.xiaopeng.carspeechservice.n.d");
        Class<?> clsType5 = type("com.xiaopeng.carspeechservice.g.a.c");
        Class<?> clsType6 = type("com.xiaopeng.speech.common.util.a");
        Class<?> clsType7 = type("com.xiaopeng.carspeechservice.b.c");
        Class<?> clsType8 = type("com.xiaopeng.speech.jarvisproto.x");
        Class<?> clsType9 = type("com.xiaopeng.speech.jarvisproto.y");
        Class<?> clsType10 = type("com.xiaopeng.carspeechservice.n.a");
        this.wakeClass = clsType10;
        Class<?> clsType11 = type("com.xiaopeng.carspeechservice.g.a.c$a");
        this.taskClass = clsType11;
        Class<?> clsType12 = type("com.xiaopeng.carspeechservice.n.d$b");
        this.valueClass = clsType12;
        if (!clsType11.isInterface()) {
            throw new NoSuchMethodException("wake_task_contract");
        }
        method(clsType11, "a", Object.class, new Class[0]);
        Method method = method(clsType, "a", clsType, new Class[0]);
        this.singleton = method;
        if (Modifier.isStatic(method.getModifiers())) {
            this.serverSdk = field(clsType, "c", clsType2);
            this.sdkWake = field(clsType2, "e", clsType3);
            this.wakeHelper = field(clsType10, "B", clsType4);
            this.wakeRunner = field(clsType10, "j", clsType5);
            this.helperWords = field(clsType4, "b", HashMap.class);
            this.valueText = field(clsType12, "b", String.class);
            this.valuePinyin = field(clsType12, "c", String.class);
            this.valueThreshold = field(clsType12, "d", String.class);
            this.submit = method(clsType6, "b", Void.TYPE, Object.class);
            this.change = method(clsType4, "a", Void.TYPE, String.class, String[].class, String[].class, String[].class, String[].class, String[][].class, Integer.TYPE);
            this.wakeEntry = method(clsType7, "a", Void.TYPE, clsType8);
            this.buttonEntry = method(clsType7, "a", Void.TYPE, String.class);
            this.wakeReason = field(clsType9, "d", String.class);
            this.wakeWord = field(clsType9, "e", String.class);
            this.wakeAllowed = field(clsType9, "l", Boolean.TYPE);
            this.wakeAutoListen = field(clsType9, "k", Boolean.TYPE);
            return;
        }
        throw new NoSuchMethodException("wake_singleton");
    }

    synchronized void install() {
        if (this.installed) {
            return;
        }
        XposedBridge.hookMethod(this.wakeEntry, new XC_MethodHook() { // from class: com.local.p5home.HookWakeWords.1
            protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) throws IllegalAccessException, IllegalArgumentException {
                try {
                    Object obj = methodHookParam.args[0];
                    if (obj != null && HookWakeWords.this.wakeAllowed.getBoolean(obj) && "major".equals(HookWakeWords.this.wakeReason.get(obj))) {
                        HookWakeWords hookWakeWords = HookWakeWords.this;
                        if (hookWakeWords.matches((String) hookWakeWords.wakeWord.get(obj)) && HookWakeWords.this.wakeAutoListen.getBoolean(obj)) {
                            HookWakeWords.this.wakeAutoListen.setBoolean(obj, false);
                        }
                    }
                } catch (Exception e) {
                } catch (LinkageError e2) {
                }
            }

            protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                if (methodHookParam.hasThrowable()) {
                    return;
                }
                boolean z = false;
                try {
                    Object obj = methodHookParam.args[0];
                    if (obj != null && HookWakeWords.this.wakeAllowed.getBoolean(obj) && "major".equals(HookWakeWords.this.wakeReason.get(obj))) {
                        HookWakeWords hookWakeWords = HookWakeWords.this;
                        if (hookWakeWords.matches((String) hookWakeWords.wakeWord.get(obj))) {
                            z = true;
                        }
                    }
                } catch (Exception e) {
                } catch (LinkageError e2) {
                }
                HookWakeWords.this.notifyWake(z);
            }
        });
        XposedBridge.hookMethod(this.buttonEntry, new XC_MethodHook() { // from class: com.local.p5home.HookWakeWords.2
            protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                if (methodHookParam.hasThrowable()) {
                    return;
                }
                HookWakeWords.this.notifyWake(false);
            }
        });
        this.installed = true;
    }

    void update(String str, boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        final long j;
        try {
            List<WakeWordPolicy.Word> listEmptyList = z ? WakeWordPolicy.parse(str) : Collections.emptyList();
            synchronized (this) {
                if (this.enabled != z || !same(this.desired, listEmptyList)) {
                    this.revision++;
                    this.desired = listEmptyList;
                    this.enabled = z;
                }
                j = this.revision;
            }
            try {
                if (!this.installed) {
                    this.lastCode = "WAKE_WORDS_NOT_INSTALLED";
                    return;
                }
                final Object objEngine = engine();
                if (objEngine == null) {
                    this.lastCode = "WAKE_ENGINE_NOT_READY";
                    return;
                }
                final Object obj = this.wakeHelper.get(objEngine);
                Object obj2 = this.wakeRunner.get(objEngine);
                if (obj != null && obj2 != null) {
                    this.submit.invoke(obj2, Proxy.newProxyInstance(this.loader, new Class[]{this.taskClass}, new InvocationHandler() { // from class: com.local.p5home.HookWakeWords$$ExternalSyntheticLambda0
                        @Override // java.lang.reflect.InvocationHandler
                        public final Object invoke(Object obj3, Method method, Object[] objArr) {
                            return this.f$0.m59lambda$update$0$comlocalg3homeHookWakeWords(objEngine, obj, j, obj3, method, objArr);
                        }
                    }));
                    return;
                }
                this.lastCode = "WAKE_ENGINE_NOT_READY";
            } catch (Exception | LinkageError e) {
                this.lastCode = "WAKE_WORDS_UPDATE_FAILED";
            }
        } catch (IllegalArgumentException e2) {
            this.lastCode = "WAKE_WORDS_CONFIG_INVALID";
        }
    }

    /* renamed from: lambda$update$0$com-local-g3home-HookWakeWords, reason: not valid java name */
    /* synthetic */ Object m59lambda$update$0$comlocalg3homeHookWakeWords(Object obj, Object obj2, long j, Object obj3, Method method, Object[] objArr) throws Throwable {
        if (method.getDeclaringClass() != Object.class) {
            if (!"a".equals(method.getName()) || method.getParameterCount() != 0) {
                throw new UnsupportedOperationException("wake_task_contract");
            }
            apply(obj, obj2, j);
            return null;
        }
        if ("hashCode".equals(method.getName())) {
            return Integer.valueOf(System.identityHashCode(obj3));
        }
        if (!"equals".equals(method.getName())) {
            return "G3WakeWordsTask";
        }
        boolean z = false;
        if (objArr != null && objArr.length == 1 && obj3 == objArr[0]) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    String code() {
        return this.lastCode;
    }

    synchronized int registeredCount() {
        return this.owned.size();
    }

    private synchronized Map<String, Object> major(Object obj) throws Exception {
        Object obj2;
        Object obj3 = this.helperWords.get(obj);
        if (!(obj3 instanceof Map)) {
            throw new IllegalStateException("wake_groups");
        }
        obj2 = ((Map) obj3).get("major");
        if (!(obj2 instanceof ConcurrentHashMap)) {
            throw new IllegalStateException("wake_major");
        }
        return (Map) obj2;
    }

    private synchronized void apply(Object obj, Object obj2, long j) {
        if (j != this.revision) {
            return;
        }
        try {
        } catch (Exception | LinkageError e) {
            this.lastCode = "WAKE_WORDS_UPDATE_FAILED";
        }
        if (engine() == obj && this.wakeHelper.get(obj) == obj2) {
            if (this.owner != obj2) {
                this.owner = obj2;
                this.owned.clear();
            }
            Map<String, Object> mapMajor = major(obj2);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (WakeWordPolicy.Word word : this.desired) {
                linkedHashMap.put(word.pinyin, word);
            }
            Iterator<Map.Entry<String, Owned>> it = this.owned.entrySet().iterator();
            while (true) {
                char c = 3;
                if (it.hasNext()) {
                    Map.Entry<String, Owned> next = it.next();
                    Owned value = next.getValue();
                    WakeWordPolicy.Word word2 = (WakeWordPolicy.Word) linkedHashMap.get(next.getKey());
                    if (mapMajor.get(next.getKey()) != value.value) {
                        it.remove();
                    } else if (!this.enabled || word2 == null || !word2.key().equals(value.word.key())) {
                        this.change.invoke(obj2, "major", null, null, new String[]{next.getKey()}, null, null, 2);
                        if (mapMajor.get(next.getKey()) == value.value) {
                            this.lastCode = "WAKE_WORDS_REMOVE_UNCONFIRMED";
                            return;
                        }
                        it.remove();
                    }
                } else {
                    if (!this.enabled) {
                        this.lastCode = "WAKE_WORDS_DISABLED";
                        return;
                    }
                    boolean z = false;
                    for (WakeWordPolicy.Word word3 : this.desired) {
                        Owned owned = this.owned.get(word3.pinyin);
                        if (owned == null || mapMajor.get(word3.pinyin) != owned.value) {
                            if (!mapMajor.containsKey(word3.pinyin)) {
                                Method method = this.change;
                                Object[] objArr = new Object[7];
                                objArr[0] = "major";
                                objArr[1] = null;
                                objArr[2] = new String[]{word3.text};
                                objArr[c] = new String[]{word3.pinyin};
                                objArr[4] = new String[]{word3.threshold};
                                objArr[5] = null;
                                objArr[6] = 1;
                                method.invoke(obj2, objArr);
                                Object obj3 = mapMajor.get(word3.pinyin);
                                if (obj3 != null && this.valueClass.isInstance(obj3) && word3.text.equals(this.valueText.get(obj3)) && word3.pinyin.equals(this.valuePinyin.get(obj3)) && word3.threshold.equals(this.valueThreshold.get(obj3))) {
                                    this.owned.put(word3.pinyin, new Owned(word3, obj3));
                                }
                                this.lastCode = "WAKE_WORDS_REGISTER_UNCONFIRMED";
                                return;
                            }
                            z = true;
                        }
                        c = 3;
                    }
                    this.lastCode = z ? "WAKE_WORDS_CONFLICT" : "WAKE_WORDS_DISPATCHED";
                }
            }
            return;
        }
        this.lastCode = "WAKE_WORDS_OWNER_CHANGED";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean matches(String str) {
        Object objEngine;
        if (!this.enabled || str == null || this.owner == null) {
            return false;
        }
        try {
            objEngine = engine();
        } catch (Exception e) {
        } catch (LinkageError e2) {
        }
        if (objEngine != null) {
            Object obj = this.wakeHelper.get(objEngine);
            Object obj2 = this.owner;
            if (obj == obj2) {
                Map<String, Object> mapMajor = major(obj2);
                String strReplaceAll = str.trim().replaceAll("\\s+", " ");
                for (Owned owned : this.owned.values()) {
                    if (mapMajor.get(owned.word.pinyin) == owned.value && (owned.word.text.equals(strReplaceAll.replace(" ", "")) || owned.word.pinyin.equals(strReplaceAll))) {
                        this.lastCode = "WAKE_WORDS_HIT";
                        return true;
                    }
                }
                return false;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyWake(boolean z) {
        try {
            this.listener.onWake(z);
        } catch (RuntimeException e) {
        }
    }

    private Object engine() throws Exception {
        Object obj = this.serverSdk.get(this.singleton.invoke(null, new Object[0]));
        if (obj == null) {
            return null;
        }
        Object obj2 = this.sdkWake.get(obj);
        if (this.wakeClass.isInstance(obj2)) {
            return obj2;
        }
        return null;
    }

    private static boolean same(List<WakeWordPolicy.Word> list, List<WakeWordPolicy.Word> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!list.get(i).key().equals(list2.get(i).key())) {
                return false;
            }
        }
        return true;
    }

    private Class<?> type(String str) throws ClassNotFoundException {
        return Class.forName(str, false, this.loader);
    }

    private static Field field(Class<?> cls, String str, Class<?> cls2) throws Exception {
        Field declaredField = cls.getDeclaredField(str);
        if (declaredField.getType() != cls2) {
            throw new NoSuchFieldException("wake_field_contract");
        }
        declaredField.setAccessible(true);
        return declaredField;
    }

    private static Method method(Class<?> cls, String str, Class<?> cls2, Class<?>... clsArr) throws Exception {
        Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
        if (declaredMethod.getReturnType() != cls2) {
            throw new NoSuchMethodException("wake_method_contract");
        }
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
