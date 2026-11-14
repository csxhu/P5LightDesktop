package com.local.p5home;

import android.app.AndroidAppHelper;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import com.local.p5home.MusicPolicy;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.LinkedHashSet;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class LunaMusicHook implements IXposedHookLoadPackage {
    static final String ACTION = "com.local.p5home.MUSIC_PLAY_LUNA";
    static final String PACKAGE = "com.luna.music.car";
    static final String PERMISSION = "com.local.p5home.permission.MUSIC_CONTROL";
    private static final AtomicBoolean installed = new AtomicBoolean();

    public void handleLoadPackage(XC_LoadPackage.LoadPackageParam loadPackageParam) throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        if (!PACKAGE.equals(loadPackageParam.packageName) || !PACKAGE.equals(loadPackageParam.processName)) {
            return;
        }
        try {
            final Class<?> cls = Class.forName("com.luna.music.car.adaption.framework.VoiceManager", false, loadPackageParam.classLoader);
            final Method declaredMethod = cls.getDeclaredMethod("execute", String.class, String.class);
            final Method declaredMethod2 = cls.getDeclaredMethod("isSupportVoiceAction", String.class);
            if (!contract(cls, declaredMethod, declaredMethod2)) {
                throw new NoSuchMethodException("music_contract");
            }
            declaredMethod.setAccessible(true);
            declaredMethod2.setAccessible(true);
            XposedHelpers.findAndHookMethod(Application.class, "attach", new Object[]{Context.class, new XC_MethodHook() { // from class: com.local.p5home.LunaMusicHook.1
                protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) throws PackageManager.NameNotFoundException {
                    LunaMusicHook.install((Context) methodHookParam.args[0], cls, declaredMethod, declaredMethod2);
                }
            }});
            Application applicationCurrentApplication = AndroidAppHelper.currentApplication();
            if (applicationCurrentApplication != null) {
                install(applicationCurrentApplication, cls, declaredMethod, declaredMethod2);
            }
        } catch (Exception | LinkageError e) {
            HookLog.write("MUSIC_LUNA_INTERFACE_UNAVAILABLE");
        }
    }

    private static boolean contract(Class<?> cls, Method method, Method method2) throws Exception {
        Field field = cls.getField("INSTANCE");
        return field.getType() == cls && Modifier.isStatic(field.getModifiers()) && method.getDeclaringClass() == cls && method.getReturnType() == Void.TYPE && !Modifier.isStatic(method.getModifiers()) && !Modifier.isAbstract(method.getModifiers()) && !Modifier.isNative(method.getModifiers()) && method2.getDeclaringClass() == cls && method2.getReturnType() == Boolean.TYPE && !Modifier.isStatic(method2.getModifiers()) && !Modifier.isAbstract(method2.getModifiers()) && !Modifier.isNative(method2.getModifiers());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void install(final Context context, final Class<?> cls, final Method method, final Method method2) throws PackageManager.NameNotFoundException {
        try {
            if (PACKAGE.equals(context.getPackageName()) && contract(cls, method, method2)) {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(PACKAGE, 0);
                if (packageInfo.applicationInfo != null && packageInfo.applicationInfo.enabled && packageInfo.applicationInfo.uid == Process.myUid() && installed.compareAndSet(false, true)) {
                    final LinkedHashSet linkedHashSet = new LinkedHashSet();
                    context.registerReceiver(new BroadcastReceiver() { // from class: com.local.p5home.LunaMusicHook.2
                        @Override // android.content.BroadcastReceiver
                        public void onReceive(Context context2, Intent intent) throws IllegalAccessException, JSONException, IllegalArgumentException, InvocationTargetException {
                            try {
                                if (LunaMusicHook.ACTION.equals(intent.getAction()) && LunaMusicHook.PACKAGE.equals(intent.getPackage())) {
                                    Object obj = cls.getField("INSTANCE").get(null);
                                    if (!Boolean.TRUE.equals(method2.invoke(obj, "APP_SEARCH_MUSIC"))) {
                                        setResultCode(503);
                                        return;
                                    }
                                    if (intent.getBooleanExtra("probe", false)) {
                                        setResultCode(204);
                                        return;
                                    }
                                    String stringExtra = intent.getStringExtra("requestId");
                                    long jElapsedRealtime = SystemClock.elapsedRealtime() - intent.getLongExtra("queuedAt", -30001L);
                                    MusicPolicy.Song song = MusicPolicy.song(intent.getStringExtra("data"));
                                    if (stringExtra != null && stringExtra.matches("[A-Za-z0-9-]{1,100}") && jElapsedRealtime >= 0 && jElapsedRealtime <= 15000 && song != null) {
                                        if (linkedHashSet.contains(stringExtra)) {
                                            setResultCode(202);
                                            return;
                                        }
                                        JSONArray jSONArray = new JSONArray();
                                        if (!song.title.isEmpty()) {
                                            jSONArray.put(song.title);
                                        }
                                        if (!song.artist.isEmpty()) {
                                            jSONArray.put(song.artist);
                                        }
                                        method.invoke(obj, "APP_SEARCH_MUSIC", new JSONObject().put("type", "songs").put("keyword", jSONArray).toString());
                                        linkedHashSet.add(stringExtra);
                                        while (linkedHashSet.size() > 32) {
                                            LinkedHashSet linkedHashSet2 = linkedHashSet;
                                            linkedHashSet2.remove(linkedHashSet2.iterator().next());
                                        }
                                        setResultCode(202);
                                        HookLog.write("MUSIC_LUNA_PLAY_REQUESTED");
                                        return;
                                    }
                                    setResultCode(400);
                                }
                            } catch (Exception | LinkageError e) {
                                setResultCode(500);
                                HookLog.write("MUSIC_LUNA_PLAY_FAILED");
                            }
                        }
                    }, new IntentFilter(ACTION), PERMISSION, new Handler(Looper.getMainLooper()));
                    HookLog.write("MUSIC_LUNA_BRIDGE_REGISTERED");
                    final Handler handler = new Handler(Looper.getMainLooper());
                    handler.post(new Runnable() { // from class: com.local.p5home.LunaMusicHook.3
                        int attempts;

                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                if (Boolean.TRUE.equals(method2.invoke(cls.getField("INSTANCE").get(null), "APP_SEARCH_MUSIC"))) {
                                    context.getContentResolver().call(Uri.parse("content://com.local.p5home.bridge"), "music_ready", (String) null, (Bundle) null);
                                    return;
                                }
                            } catch (Exception e) {
                            } catch (LinkageError e2) {
                            }
                            int i = this.attempts + 1;
                            this.attempts = i;
                            if (i < 20) {
                                handler.postDelayed(this, 1000L);
                            }
                        }
                    });
                }
            }
        } catch (Exception | LinkageError e) {
            installed.set(false);
            HookLog.write("MUSIC_LUNA_BRIDGE_UNAVAILABLE");
        }
    }
}
