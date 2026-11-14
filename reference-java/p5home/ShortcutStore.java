package com.local.p5home;

import android.app.AppOpsManager;
import android.app.usage.UsageEvents;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Process;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
final class ShortcutStore {
    static final String VEHICLE = "@vehicle";
    static final String DRAWER = "@apps";
    private static final String[] DEFAULTS = {"@music", "@phone", VEHICLE, DRAWER};

    private static SharedPreferences prefs(Context context) {
        return context.createDeviceProtectedStorageContext().getSharedPreferences("g3_shortcuts", 0);
    }

    static boolean automatic(Context context) {
        return prefs(context).getBoolean("automatic", false);
    }

    static void automatic(Context context, boolean z) {
        prefs(context).edit().putBoolean("automatic", z).apply();
    }

    static String slot(Context context, int i) {
        if (i >= 0) {
            String[] strArr = DEFAULTS;
            if (i < strArr.length) {
                return prefs(context).getString("slot" + i, strArr[i]);
            }
        }
        throw new IllegalArgumentException("slot");
    }

    static void setSlot(Context context, int i, String str) {
        if (i < 0 || i >= DEFAULTS.length || str == null || str.isEmpty()) {
            throw new IllegalArgumentException("slot");
        }
        prefs(context).edit().putString("slot" + i, str).putBoolean("automatic", false).apply();
    }

    static void restore(Context context) {
        SharedPreferences.Editor editorPutBoolean = prefs(context).edit().putBoolean("automatic", false);
        for (int i = 0; i < DEFAULTS.length; i++) {
            editorPutBoolean.remove("slot" + i);
        }
        editorPutBoolean.apply();
    }

    static void record(Context context, String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        SharedPreferences sharedPreferencesPrefs = prefs(context);
        String str2 = "count:" + str;
        sharedPreferencesPrefs.edit().putInt(str2, Math.min(1000000, sharedPreferencesPrefs.getInt(str2, 0) + 1)).apply();
    }

    static boolean usageAccess(Context context) {
        try {
            AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
            if (appOpsManager != null) {
                return appOpsManager.checkOpNoThrow("android:get_usage_stats", Process.myUid(), context.getPackageName()) == 0;
            }
            return false;
        } catch (RuntimeException e) {
            return false;
        }
    }

    static Map<String, Integer> counts(Context context) {
        HashMap map = new HashMap();
        if (usageAccess(context)) {
            try {
                UsageStatsManager usageStatsManager = (UsageStatsManager) context.getSystemService("usagestats");
                long jCurrentTimeMillis = System.currentTimeMillis();
                UsageEvents usageEventsQueryEvents = usageStatsManager == null ? null : usageStatsManager.queryEvents(jCurrentTimeMillis - 604800000, jCurrentTimeMillis);
                if (usageEventsQueryEvents != null) {
                    UsageEvents.Event event = new UsageEvents.Event();
                    while (usageEventsQueryEvents.hasNextEvent()) {
                        usageEventsQueryEvents.getNextEvent(event);
                        if (event.getEventType() == 1 && event.getPackageName() != null) {
                            map.put(event.getPackageName(), Integer.valueOf(Math.min(1000000, ((Integer) map.getOrDefault(event.getPackageName(), 0)).intValue() + 1)));
                        }
                    }
                }
            } catch (RuntimeException e) {
            }
        }
        for (Map.Entry<String, ?> entry : prefs(context).getAll().entrySet()) {
            if (entry.getKey().startsWith("count:") && (entry.getValue() instanceof Integer)) {
                map.putIfAbsent(entry.getKey().substring(6), (Integer) entry.getValue());
            }
        }
        return map;
    }

    private ShortcutStore() {
    }
}
