package com.local.p5home;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import java.lang.reflect.Method;

public final class LunaVoiceInitializer {
    public static void ensure(Context context, Class<?> manager) {
        try {
            Object voice = manager.getField("INSTANCE").get(null);
            Method ready = manager.getMethod("isSupportVoiceAction", String.class);
            if (Boolean.TRUE.equals(ready.invoke(voice, "APP_SEARCH_MUSIC"))) {
                Log.i("P5Music", "LUNA_VOICE_READY");
                return;
            }
            Context app = context.getApplicationContext();
            if (!(app instanceof Application)) {
                Log.i("P5Music", "LUNA_APP_WAITING");
                return;
            }
            Class<?> handler = Class.forName(
                    "com.luna.music.car.adaption.common.CommonVoiceHandler", true,
                    manager.getClassLoader());
            Object instance = handler.getField("INSTANCE").get(null);
            handler.getMethod("init", Application.class).invoke(instance, app);
            Log.i("P5Music", "LUNA_VOICE_INITIALIZED_"
                    + Boolean.TRUE.equals(ready.invoke(voice, "APP_SEARCH_MUSIC")));
        } catch (Exception | LinkageError error) {
            Log.w("P5Music", "LUNA_VOICE_INIT_FAILED_" + error.getClass().getSimpleName());
        }
    }

    private LunaVoiceInitializer() {}
}
