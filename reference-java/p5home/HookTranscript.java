package com.local.p5home;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class HookTranscript {
    private static final String EVENT = "jarvis.context.output";
    private volatile String lastCode = "TRANSCRIPT_IDLE";
    private final Method publish;
    private final Method singleton;

    HookTranscript(ClassLoader classLoader) throws Exception {
        Class<?> cls = Class.forName("com.xiaopeng.carspeechservice.e.e", false, classLoader);
        Method declaredMethod = Class.forName("com.xiaopeng.carspeechservice.e.e$a", false, classLoader).getDeclaredMethod("a", new Class[0]);
        this.singleton = declaredMethod;
        if (declaredMethod.getReturnType() != cls || !Modifier.isStatic(declaredMethod.getModifiers())) {
            throw new NoSuchMethodException("transcript_singleton_contract");
        }
        declaredMethod.setAccessible(true);
        Method declaredMethod2 = cls.getDeclaredMethod("a", String.class, String.class);
        this.publish = declaredMethod2;
        if (declaredMethod2.getReturnType() != Void.TYPE || Modifier.isStatic(declaredMethod2.getModifiers())) {
            throw new NoSuchMethodException("transcript_publish_contract");
        }
        declaredMethod2.setAccessible(true);
    }

    boolean show(String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (str == null || str.trim().isEmpty() || str.length() > 1200) {
            this.lastCode = "TRANSCRIPT_INPUT_REJECTED";
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt < ' ' && cCharAt != '\n' && cCharAt != '\t') || cCharAt == 127) {
                this.lastCode = "TRANSCRIPT_INPUT_REJECTED";
                return false;
            }
        }
        try {
            Object objInvoke = this.singleton.invoke(null, new Object[0]);
            if (objInvoke == null) {
                this.lastCode = "TRANSCRIPT_BUS_UNAVAILABLE";
                return false;
            }
            this.publish.invoke(objInvoke, EVENT, new JSONObject().put("text", str).put("outputText", str).toString());
            this.lastCode = "TRANSCRIPT_DISPATCHED";
            return true;
        } catch (Exception | LinkageError e) {
            this.lastCode = "TRANSCRIPT_DISPATCH_FAILED";
            return false;
        }
    }

    String code() {
        return this.lastCode;
    }
}
