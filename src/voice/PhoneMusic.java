package com.local.p5home;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import android.util.Log;
import java.lang.reflect.*;
import java.util.*;
import de.robv.android.xposed.*;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

/** Version-scoped adapter for the phone app's visible search UI. */
public final class PhoneMusic implements IXposedHookLoadPackage {
    private static final String PKG = "com.luna.music";
    private static final String EXTRA = "com.local.p5home.phoneMusicQuery";
    private static Handler main;
    private static Activity activity;
    private static String query;
    private static long until;
    private static int generation;
    private static boolean searched;

    @Override public void handleLoadPackage(XC_LoadPackage.LoadPackageParam p) throws Throwable {
        if (!PKG.equals(p.packageName) || !PKG.equals(p.processName)) return;
        // This car's camera service rejects WebView's availability listener.
        // Ignore only that optional observation failure, inside this music process.
        XposedBridge.hookAllMethods(android.hardware.camera2.CameraManager.class,
                "registerAvailabilityCallback", new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam param) {
                Throwable error = param.getThrowable();
                if (error instanceof IllegalStateException
                        && "Failed to register a camera service listener".equals(error.getMessage())) {
                    for (StackTraceElement frame : Thread.currentThread().getStackTrace()) {
                        if (frame.getClassName().contains("CameraAvailabilityObserver")) {
                            param.setResult(null);
                            Log.w("P5PhoneMusic", "WEBVIEW_CAMERA_OBSERVER_UNAVAILABLE");
                            break;
                        }
                    }
                }
            }
        });
        XposedHelpers.findAndHookMethod(Activity.class, "onCreate", Bundle.class,
                new XC_MethodHook() {
            @Override protected void beforeHookedMethod(MethodHookParam param) {
                accept((Activity)param.thisObject, ((Activity)param.thisObject).getIntent());
            }
        });
        XposedHelpers.findAndHookMethod(Activity.class, "onNewIntent", Intent.class,
                new XC_MethodHook() {
            @Override protected void beforeHookedMethod(MethodHookParam param) {
                accept((Activity)param.thisObject, (Intent)param.args[0]);
            }
        });
        XposedHelpers.findAndHookMethod(Activity.class, "onResume", new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam param) {
                activity = (Activity)param.thisObject;
            }
        });
        Log.i("P5PhoneMusic", "HOOK_INSTALLED");
    }

    private static void accept(Activity a, Intent intent) {
        if (main == null) main = new Handler(Looper.getMainLooper());
        if (intent == null || !intent.hasExtra(EXTRA)) return;
        String value = intent.getStringExtra(EXTRA);
        long age = SystemClock.elapsedRealtime() - intent.getLongExtra("p5QueuedAt", -30001);
        if (value == null || value.trim().isEmpty() || value.length() > 160 || age < 0 || age > 15000) return;
        try {
            if (!"20.2.0".equals(a.getPackageManager().getPackageInfo(PKG, 0).versionName)) {
                Toast.makeText(a, "此版本汽水手机版尚未适配自动点歌", Toast.LENGTH_LONG).show();
                return;
            }
        } catch (Exception error) { return; }
        intent.removeExtra(EXTRA);
        query = value.trim();
        searched = false;
        until = SystemClock.elapsedRealtime() + 20000;
        int token = ++generation;
        Log.i("P5PhoneMusic", "REQUEST_ACCEPTED");
        main.postDelayed(() -> tick(token), 400);
    }

    private static void tick(int token) {
        if (token != generation || query == null) return;
        Activity a = activity;
        if (SystemClock.elapsedRealtime() > until) {
            query = null;
            Log.w("P5PhoneMusic", "NO_EXACT_RESULT_OR_SEARCH_TIMEOUT");
            if (a != null) Toast.makeText(a, "未找到可自动播放的同名歌曲，请在搜索结果中选择", Toast.LENGTH_LONG).show();
            return;
        }
        if (a != null && !a.isFinishing() && a.hasWindowFocus()) {
            View root = a.getWindow().getDecorView();
            EditText edit = findEdit(root);
            if (!searched && edit != null) {
                edit.setText(query);
                edit.setSelection(edit.length());
                edit.onEditorAction(EditorInfo.IME_ACTION_SEARCH);
                searched = true;
                Log.i("P5PhoneMusic", "SEARCH_SUBMITTED");
                main.postDelayed(() -> tick(token), 1200);
                return;
            }
            if (searched && edit != null && query.equals(edit.getText().toString().trim())) {
                TextView title = findTitle(root, query);
                if (title != null) {
                    View item = title;
                    for (int i = 0; i < 5 && item != null; i++) {
                        if (item.isClickable() && item.isEnabled() && item.isShown()) {
                            query = null;
                            item.performClick();
                            Log.i("P5PhoneMusic", "EXACT_RESULT_CLICKED");
                            return;
                        }
                        ViewParent parent = item.getParent();
                        item = parent instanceof View ? (View)parent : null;
                    }
                }
            }
        }
        main.postDelayed(() -> tick(token), 400);
    }

    private static EditText findEdit(View v) {
        if (!v.isShown()) return null;
        if (v instanceof EditText) return (EditText)v;
        if (v instanceof ViewGroup) for (int i=0;i<((ViewGroup)v).getChildCount();i++) {
            EditText found=findEdit(((ViewGroup)v).getChildAt(i)); if(found!=null)return found;
        }
        return null;
    }
    private static TextView findTitle(View v, String value) {
        if (!v.isShown()) return null;
        if (v instanceof TextView && !(v instanceof EditText)
                && value.equals(((TextView)v).getText().toString().trim())) return (TextView)v;
        if (v instanceof ViewGroup) for(int i=0;i<((ViewGroup)v).getChildCount();i++) {
            TextView found=findTitle(((ViewGroup)v).getChildAt(i),value); if(found!=null)return found;
        }
        return null;
    }
}
