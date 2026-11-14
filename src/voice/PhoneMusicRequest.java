package com.local.p5home;
import android.content.*; import android.net.Uri; import android.os.SystemClock; import android.util.Log; import java.lang.reflect.*; import java.util.*;
public final class PhoneMusicRequest {
private static final String PKG="com.luna.music"; private static final String EXTRA="com.local.p5home.phoneMusicQuery";
    public static List addProvider(Context context, List original) {
        ArrayList result = new ArrayList(original);
        try {
            Class<?> cls = Class.forName("com.local.p5home.MusicRouter$Provider");
            Constructor<?> ctor = cls.getDeclaredConstructor(Context.class, String.class,
                    String.class, String[].class);
            ctor.setAccessible(true);
            result.add(ctor.newInstance(context, "qishui_phone", "汽水音乐（手机版）",
                    new String[]{PKG}));
        } catch (Exception e) { Log.e("P5PhoneMusic", "PROVIDER_FAILED", e); }
        return result;
    }

    public static Intent intent(Object song) {
        try {
            Method method = song.getClass().getDeclaredMethod("query");
            method.setAccessible(true);
            return request((String) method.invoke(song));
        } catch (Exception e) { throw new IllegalArgumentException(e); }
    }

    public static Intent request(String value) {
        return new Intent(Intent.ACTION_VIEW, Uri.parse("luna://luna.com/search"))
                .setClassName(PKG, "com.luna.biz.main.main.SchemeActivity")
                .putExtra(EXTRA, value).putExtra("p5QueuedAt", SystemClock.elapsedRealtime())
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
    }


}