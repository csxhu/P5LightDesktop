package com.local.p5home;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class HookBindings {
    private final Method actorPost;
    private final Field actors;
    final Method asrEntry;
    final Method asrJson;
    final Method busEntry;
    private final Field reactors;
    private final Constructor<?> resultCtor;
    private final Method resultSet;
    private final Method singleton;
    private final Constructor<?> supportCtor;
    private final Method supportSet;
    private volatile String ttsCode = "TTS_NOT_CHECKED";
    private final Method ttsGetter;
    private final Method ttsSpeak;
    private final Constructor<?> widgetCtor;
    private final Method widgetSupport;
    private final Method widgetTts;

    HookBindings(ClassLoader classLoader) throws Exception {
        Class<?> clsType = type(classLoader, "com.xiaopeng.carspeechservice.bean.a.b");
        this.asrEntry = method(type(classLoader, "com.xiaopeng.carspeechservice.b.f"), "a", Void.TYPE, clsType);
        this.asrJson = method(clsType, "getJsonData", String.class, new Class[0]);
        this.busEntry = method(type(classLoader, "com.xiaopeng.carspeechservice.e.e"), "a", Void.TYPE, String.class, String.class);
        Class<?> clsType2 = type(classLoader, "com.xiaopeng.carspeechservice.h.g");
        Class<?> clsType3 = type(classLoader, "com.xiaopeng.speech.d.i");
        Method method = method(clsType2, "a", clsType2, new Class[0]);
        this.singleton = method;
        if (!Modifier.isStatic(method.getModifiers())) {
            throw new NoSuchMethodException("singleton");
        }
        this.ttsGetter = method(clsType2, "d", clsType3, new Class[0]);
        this.ttsSpeak = method(clsType3, "a", Boolean.TYPE, String.class, Integer.TYPE, String.class, Integer.TYPE);
        Class<?> clsType4 = type(classLoader, "com.xiaopeng.carspeechservice.h.a.b");
        Class<?> clsType5 = type(classLoader, "com.xiaopeng.speech.actor.Actor");
        this.actors = field(clsType2, "e", clsType4);
        this.reactors = field(clsType4, "b", Map.class);
        this.actorPost = method(clsType4, "a", Void.TYPE, clsType5);
        Class<?> clsType6 = type(classLoader, "com.xiaopeng.speech.actorapi.ResultActor");
        Class<?> clsType7 = type(classLoader, "com.xiaopeng.speech.actorapi.SupportActor");
        Class<?> clsType8 = type(classLoader, "com.xiaopeng.speech.j.f");
        this.resultCtor = clsType6.getConstructor(String.class);
        this.supportCtor = clsType7.getConstructor(String.class);
        this.widgetCtor = clsType8.getConstructor(new Class[0]);
        this.resultSet = method(clsType6, "a", clsType6, String.class);
        this.supportSet = method(clsType7, "a", clsType7, clsType8);
        this.widgetSupport = method(clsType8, "a", clsType8, Boolean.TYPE);
        this.widgetTts = method(clsType8, "c", clsType8, String.class);
    }

    boolean ttsReady() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            Object objInvoke = this.singleton.invoke(null, new Object[0]);
            if (objInvoke == null) {
                this.ttsCode = "TTS_SERVER_NULL";
                return false;
            }
            Object objInvoke2 = this.ttsGetter.invoke(objInvoke, new Object[0]);
            this.ttsCode = objInvoke2 == null ? "TTS_ENGINE_NULL" : "TTS_READY";
            return objInvoke2 != null;
        } catch (Exception | LinkageError e) {
            this.ttsCode = exceptionCode(e, "TTS_GETTER");
            return false;
        }
    }

    String ttsCode() {
        return this.ttsCode;
    }

    boolean speak(String str, String str2) throws Exception {
        try {
            Object objInvoke = this.ttsGetter.invoke(this.singleton.invoke(null, new Object[0]), new Object[0]);
            if (objInvoke == null) {
                this.ttsCode = "TTS_ENGINE_NULL";
                return false;
            }
            try {
                boolean zEquals = Boolean.TRUE.equals(this.ttsSpeak.invoke(objInvoke, str2, 1, "g3-" + str, 3));
                this.ttsCode = zEquals ? "TTS_QUEUED" : "TTS_RETURNED_FALSE";
                return zEquals;
            } catch (Exception | LinkageError e) {
                this.ttsCode = exceptionCode(e, "TTS_SPEAK");
                throw e;
            }
        } catch (Exception | LinkageError e2) {
            this.ttsCode = exceptionCode(e2, "TTS_GETTER");
            throw e2;
        }
    }

    boolean actor(String str, String str2, String str3) throws Exception {
        Object objNewInstance;
        Object obj = this.actors.get(this.singleton.invoke(null, new Object[0]));
        if (obj == null) {
            return false;
        }
        Object obj2 = this.reactors.get(obj);
        if (!(obj2 instanceof Map)) {
            return false;
        }
        if ("result".equals(str)) {
            if (!((Map) obj2).containsKey("ResultActor")) {
                return false;
            }
            new JSONObject(str3);
            objNewInstance = this.resultCtor.newInstance(str2);
            this.resultSet.invoke(objNewInstance, str3);
        } else {
            if (!"support".equals(str) || !((Map) obj2).containsKey("SupportActor")) {
                return false;
            }
            JSONObject jSONObject = new JSONObject(str3);
            Object objOpt = jSONObject.opt("status");
            if ((!"1".equals(objOpt) && !"0".equals(objOpt)) || !jSONObject.optString("tts", "").isEmpty()) {
                return false;
            }
            Object objNewInstance2 = this.widgetCtor.newInstance(new Object[0]);
            this.widgetSupport.invoke(objNewInstance2, Boolean.valueOf("1".equals(objOpt)));
            this.widgetTts.invoke(objNewInstance2, "");
            Object objNewInstance3 = this.supportCtor.newInstance(str2);
            this.supportSet.invoke(objNewInstance3, objNewInstance2);
            objNewInstance = objNewInstance3;
        }
        this.actorPost.invoke(obj, objNewInstance);
        return true;
    }

    private static Class<?> type(ClassLoader classLoader, String str) throws ClassNotFoundException {
        return Class.forName(str, false, classLoader);
    }

    private static Method method(Class<?> cls, String str, Class<?> cls2, Class<?>... clsArr) throws Exception {
        Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
        if (declaredMethod.getReturnType() != cls2) {
            throw new NoSuchMethodException("return_contract");
        }
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    private static Field field(Class<?> cls, String str, Class<?> cls2) throws Exception {
        Field declaredField = cls.getDeclaredField(str);
        if (declaredField.getType() != cls2) {
            throw new NoSuchFieldException("field_contract");
        }
        declaredField.setAccessible(true);
        return declaredField;
    }

    private static String exceptionCode(Throwable th, String str) {
        for (int i = 0; i < 3 && (th instanceof InvocationTargetException); i++) {
            th = ((InvocationTargetException) th).getTargetException();
        }
        return th instanceof NullPointerException ? str + "_UNINITIALIZED" : th instanceof SecurityException ? str + "_SECURITY" : th instanceof IllegalAccessException ? str + "_ACCESS" : th instanceof LinkageError ? str + "_LINKAGE" : str + "_EXCEPTION";
    }
}
