package com.local.p5home;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.SystemClock;

/* loaded from: classes.dex */
public final class TopBarStore {
    public static final String PACKAGE = "com.local.p5home";
    private static final String PREFS = "g3_topbar_v1";
    public static final Uri URI = Uri.parse("content://com.local.p5home.topbar/config");
    private static Bundle heartbeat = new Bundle();

    private TopBarStore() {
    }

    public static final class Snapshot {
        public final boolean enabled;
        public final boolean migrationAttempted;
        public final long revision;
        public final TopBarSlot[] slots;
        public final boolean valid;

        Snapshot(boolean z, long j, TopBarSlot[] topBarSlotArr, boolean z2, boolean z3) {
            this.enabled = z && z3;
            this.revision = j;
            this.slots = topBarSlotArr;
            this.migrationAttempted = z2;
            this.valid = z3;
        }
    }

    private static SharedPreferences prefs(Context context) {
        if (context == null || !PACKAGE.equals(context.getPackageName())) {
            throw new SecurityException("Companion context required");
        }
        return context.getSharedPreferences(PREFS, 0);
    }

    private static TopBarSlot[] defaults() {
        TopBarSlot[] topBarSlotArr = new TopBarSlot[6];
        for (int i = 0; i < 6; i++) {
            topBarSlotArr[i] = TopBarSlot.original(i);
        }
        return topBarSlotArr;
    }

    static Snapshot disabled() {
        return new Snapshot(false, 0L, defaults(), false, false);
    }

    public static synchronized Snapshot load(Context context) {
        try {
            SharedPreferences sharedPreferencesPrefs = prefs(context);
            if (sharedPreferencesPrefs.getInt("schema", 1) != 1) {
                return disabled();
            }
            TopBarSlot[] topBarSlotArrDefaults = defaults();
            for (int i = 0; i < 6; i++) {
                topBarSlotArrDefaults[i] = new TopBarSlot(i, sharedPreferencesPrefs.getString("pkg" + i, ""), sharedPreferencesPrefs.getString("act" + i, ""), sharedPreferencesPrefs.getString("label" + i, ""));
            }
            long j = sharedPreferencesPrefs.getLong("revision", 0L);
            if (j < 0) {
                return disabled();
            }
            return new Snapshot(sharedPreferencesPrefs.getBoolean("enabled", false), j, topBarSlotArrDefaults, sharedPreferencesPrefs.getBoolean("migrationAttempted", false), true);
        } catch (RuntimeException e) {
            return disabled();
        }
    }

    private static SharedPreferences.Editor edit(Context context) {
        long j;
        SharedPreferences sharedPreferencesPrefs = prefs(context);
        try {
            j = sharedPreferencesPrefs.getLong("revision", 0L);
        } catch (ClassCastException e) {
            j = 0;
        }
        return sharedPreferencesPrefs.edit().putInt("schema", 1).putLong("revision", j != Long.MAX_VALUE ? 1 + Math.max(0L, j) : 1L);
    }

    private static void changed(Context context) {
        try {
            context.getContentResolver().notifyChange(URI, null);
        } catch (RuntimeException e) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000c, code lost:
    
        if (load(r4).valid == false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized boolean setEnabled(android.content.Context r4, boolean r5) {
        /*
            java.lang.Class<com.local.p5home.TopBarStore> r0 = com.local.p5home.TopBarStore.class
            monitor-enter(r0)
            r1 = 0
            if (r5 == 0) goto L10
            com.local.p5home.TopBarStore$Snapshot r2 = load(r4)     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            boolean r2 = r2.valid     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            if (r2 != 0) goto L10
        Le:
            monitor-exit(r0)
            return r1
        L10:
            android.content.SharedPreferences$Editor r2 = edit(r4)     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            java.lang.String r3 = "enabled"
            android.content.SharedPreferences$Editor r5 = r2.putBoolean(r3, r5)     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            boolean r5 = r5.commit()     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            if (r5 == 0) goto L23
            changed(r4)     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
        L23:
            monitor-exit(r0)
            return r5
        L25:
            r4 = move-exception
            monitor-exit(r0)
            throw r4
        L28:
            r4 = move-exception
            goto Le
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.TopBarStore.setEnabled(android.content.Context, boolean):boolean");
    }

    public static synchronized boolean setSlot(Context context, int i, String str, String str2, String str3) {
        if (i >= 0 && i < 6) {
            try {
                TopBarSlot topBarSlotLauncher = launcher(context, i, str, str2, str3);
                if (topBarSlotLauncher != null) {
                    boolean zCommit = write(edit(context), topBarSlotLauncher).commit();
                    if (zCommit) {
                        changed(context);
                    }
                    return zCommit;
                }
            } catch (RuntimeException e) {
                return false;
            }
        }
        return false;
    }

    public static synchronized boolean resetSlot(Context context, int i) {
        if (i >= 0 && i < 6) {
            try {
                boolean zCommit = write(edit(context), TopBarSlot.original(i)).commit();
                if (zCommit) {
                    changed(context);
                }
                return zCommit;
            } catch (RuntimeException e) {
            }
        }
        return false;
    }

    public static synchronized boolean resetAll(Context context) {
        boolean zCommit;
        try {
            SharedPreferences.Editor editorPutBoolean = edit(context).putBoolean("enabled", false);
            for (int i = 0; i < 6; i++) {
                write(editorPutBoolean, TopBarSlot.original(i));
            }
            zCommit = editorPutBoolean.commit();
            if (zCommit) {
                changed(context);
            }
        } catch (RuntimeException e) {
            return false;
        }
        return zCommit;
    }

    private static SharedPreferences.Editor write(SharedPreferences.Editor editor, TopBarSlot topBarSlot) {
        return editor.putString("pkg" + topBarSlot.index, topBarSlot.packageName).putString("act" + topBarSlot.index, topBarSlot.activityName).putString("label" + topBarSlot.index, topBarSlot.label);
    }

    static TopBarSlot launcher(Context context, int i, String str, String str2, String str3) throws PackageManager.NameNotFoundException {
        try {
            String strClean = TopBarSlot.clean(str);
            String strClean2 = TopBarSlot.clean(str2);
            if (strClean.isEmpty()) {
                return TopBarSlot.original(i);
            }
            if (!TopBarSlot.validPackage(strClean)) {
                return null;
            }
            if (strClean2.isEmpty()) {
                Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(strClean);
                if (launchIntentForPackage != null && launchIntentForPackage.getComponent() != null) {
                    strClean2 = launchIntentForPackage.getComponent().getClassName();
                }
                return null;
            }
            if (strClean2.startsWith(".")) {
                strClean2 = strClean + strClean2;
            }
            TopBarSlot topBarSlot = new TopBarSlot(i, strClean, strClean2, str3);
            ComponentName componentName = new ComponentName(strClean, strClean2);
            ActivityInfo activityInfo = context.getPackageManager().getActivityInfo(componentName, 0);
            if (activityInfo.exported && activityInfo.enabled && activityInfo.applicationInfo != null && activityInfo.applicationInfo.enabled) {
                for (ResolveInfo resolveInfo : context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setComponent(componentName), 0)) {
                    if (resolveInfo.activityInfo != null && strClean.equals(resolveInfo.activityInfo.packageName) && strClean2.equals(resolveInfo.activityInfo.name)) {
                        return topBarSlot;
                    }
                }
                return null;
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    public static boolean migrateLegacyOnce(Context context) throws PackageManager.NameNotFoundException {
        TopBarSlot topBarSlotLauncher;
        synchronized (TopBarStore.class) {
            Snapshot snapshotLoad = load(context);
            if (snapshotLoad.valid && !snapshotLoad.enabled && !snapshotLoad.migrationAttempted) {
                for (TopBarSlot topBarSlot : snapshotLoad.slots) {
                    if (topBarSlot.isCustom()) {
                        return false;
                    }
                }
                try {
                    if (!edit(context).putBoolean("migrationAttempted", true).commit()) {
                        return false;
                    }
                    long j = load(context).revision;
                    try {
                        context.getPackageManager().getApplicationInfo("com.local.cartopbar", 0);
                        Bundle bundleCall = context.getContentResolver().call(Uri.parse("content://com.local.cartopbar.provider"), "get_slots", (String) null, (Bundle) null);
                        if (bundleCall == null) {
                            return false;
                        }
                        TopBarSlot[] topBarSlotArrDefaults = defaults();
                        int i = 0;
                        for (int i2 = 0; i2 < 6; i2++) {
                            try {
                                String string = bundleCall.getString("slot_" + i2, "");
                                if (string.length() <= 1000) {
                                    String[] strArrSplit = string.split("\\|", -1);
                                    if (strArrSplit.length == 3 && !strArrSplit[0].isEmpty() && (topBarSlotLauncher = launcher(context, i2, strArrSplit[0], strArrSplit[1], strArrSplit[2])) != null && topBarSlotLauncher.isCustom()) {
                                        topBarSlotArrDefaults[i2] = topBarSlotLauncher;
                                        i++;
                                    }
                                }
                            } catch (RuntimeException e) {
                            }
                        }
                        synchronized (TopBarStore.class) {
                            Snapshot snapshotLoad2 = load(context);
                            if (i != 0 && snapshotLoad2.valid && !snapshotLoad2.enabled && snapshotLoad2.revision == j) {
                                SharedPreferences.Editor editorPutBoolean = edit(context).putBoolean("enabled", false);
                                for (TopBarSlot topBarSlot2 : topBarSlotArrDefaults) {
                                    write(editorPutBoolean, topBarSlot2);
                                }
                                boolean zCommit = editorPutBoolean.commit();
                                if (zCommit) {
                                    changed(context);
                                }
                                return zCommit;
                            }
                            return false;
                        }
                    } catch (Exception e2) {
                        return false;
                    }
                } catch (RuntimeException e3) {
                    return false;
                }
            }
            return false;
        }
    }

    static Bundle config(Context context) {
        Snapshot snapshotLoad = load(context);
        Bundle bundle = new Bundle();
        bundle.putInt("schema", 1);
        bundle.putBoolean("valid", snapshotLoad.valid);
        bundle.putBoolean("enabled", snapshotLoad.enabled);
        bundle.putLong("revision", snapshotLoad.revision);
        bundle.putBoolean("migrationAttempted", snapshotLoad.migrationAttempted);
        for (TopBarSlot topBarSlot : snapshotLoad.slots) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("pkg", topBarSlot.packageName);
            bundle2.putString("act", topBarSlot.activityName);
            bundle2.putString("label", topBarSlot.label);
            bundle.putBundle("slot_" + topBarSlot.index, bundle2);
        }
        return bundle;
    }

    static Snapshot fetch(Context context) {
        try {
            return decode(context.getContentResolver().call(URI, "get_config", (String) null, (Bundle) null));
        } catch (RuntimeException e) {
            return disabled();
        }
    }

    static Snapshot decode(Bundle bundle) {
        if (bundle != null) {
            try {
                if (bundle.getInt("schema", 0) == 1 && Boolean.TRUE.equals(bundle.get("valid")) && (bundle.get("enabled") instanceof Boolean) && (bundle.get("revision") instanceof Long) && bundle.getLong("revision", -1L) >= 0) {
                    TopBarSlot[] topBarSlotArrDefaults = defaults();
                    for (int i = 0; i < 6; i++) {
                        Bundle bundle2 = bundle.getBundle("slot_" + i);
                        if (bundle2 != null && (bundle2.get("pkg") instanceof String) && (bundle2.get("act") instanceof String) && (bundle2.get("label") instanceof String)) {
                            topBarSlotArrDefaults[i] = new TopBarSlot(i, bundle2.getString("pkg"), bundle2.getString("act"), bundle2.getString("label"));
                        }
                        return disabled();
                    }
                    return new Snapshot(bundle.getBoolean("enabled"), bundle.getLong("revision"), topBarSlotArrDefaults, bundle.getBoolean("migrationAttempted", false), true);
                }
            } catch (RuntimeException e) {
                return disabled();
            }
        }
        return disabled();
    }

    static synchronized void recordHeartbeat(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        int i = 0;
        int i2 = bundle.getInt("boundCount", 0);
        int i3 = bundle.getInt("appliedCount", 0);
        int i4 = bundle.getInt("interceptedCount", 0);
        int i5 = bundle.getInt("boundMask", 0);
        int i6 = bundle.getInt("overflowCount", 0);
        if (i2 >= 0) {
            int i7 = 6;
            if (i2 <= 6 && i3 >= 0 && i3 <= i2 && i4 >= i3 && i4 <= i2 && i5 >= 0 && i5 <= 63 && Integer.bitCount(i5) == i2 && i6 >= 0 && i6 <= i3) {
                String[] strArr = {"iconWidths", "iconHeights", "availableWidths", "availableHeights", "drawableWidths", "drawableHeights", "renderedWidths", "renderedHeights"};
                int i8 = 0;
                for (int i9 = 8; i8 < i9; i9 = 8) {
                    String str = strArr[i8];
                    int[] intArray = bundle.getIntArray(str);
                    if (intArray != null && intArray.length == i7) {
                        int length = intArray.length;
                        while (i < length) {
                            int i10 = intArray[i];
                            if (i10 >= 0 && i10 <= 65535) {
                                i++;
                            }
                        }
                        bundle2.putIntArray(str, (int[]) intArray.clone());
                        i8++;
                        i = 0;
                        i7 = 6;
                    }
                    return;
                }
                String string = bundle.getString("code", "");
                if (string.matches("[A-Z_]{1,40}")) {
                    String string2 = bundle.getString("loadedBuild", "legacy");
                    if (!string2.matches("[A-Za-z0-9_.-]{1,64}")) {
                        string2 = "unknown";
                    }
                    bundle2.putString("loadedBuild", string2);
                    bundle2.putInt("boundCount", i2);
                    bundle2.putInt("boundMask", i5);
                    bundle2.putInt("appliedCount", i3);
                    bundle2.putInt("interceptedCount", i4);
                    bundle2.putInt("overflowCount", i6);
                    bundle2.putInt("hookPid", Binder.getCallingPid());
                    bundle2.putLong("lastSeen", SystemClock.elapsedRealtime());
                    bundle2.putString("code", string);
                    heartbeat = bundle2;
                }
            }
        }
    }

    static synchronized Bundle localStatus(Context context) {
        Bundle bundle;
        String str;
        String str2;
        Snapshot snapshotLoad = load(context);
        bundle = new Bundle(heartbeat);
        long jElapsedRealtime = SystemClock.elapsedRealtime() - bundle.getLong("lastSeen", 0L);
        boolean z = true;
        boolean z2 = bundle.containsKey("lastSeen") && jElapsedRealtime >= 0 && jElapsedRealtime <= 15000;
        bundle.putBoolean("enabled", snapshotLoad.enabled);
        bundle.putBoolean("valid", snapshotLoad.valid);
        bundle.putLong("revision", snapshotLoad.revision);
        bundle.putBoolean("migrationAttempted", snapshotLoad.migrationAttempted);
        bundle.putBoolean("hookReady", z2 && bundle.getInt("boundCount", 0) > 0);
        if (snapshotLoad.enabled || !z2 || (bundle.getInt("interceptedCount", 0) <= 0 && bundle.getInt("appliedCount", 0) <= 0)) {
            z = false;
        }
        bundle.putBoolean("restorePending", z);
        if (!z2) {
            str = "code";
            str2 = "HOOK_NOT_SEEN";
        } else if (!snapshotLoad.valid) {
            str = "code";
            str2 = "CONFIG_INVALID";
        }
        bundle.putString(str, str2);
        return bundle;
    }

    public static Bundle status(Context context) {
        try {
            Bundle bundleCall = context.getContentResolver().call(URI, "status", (String) null, (Bundle) null);
            if (bundleCall != null) {
                return bundleCall;
            }
        } catch (RuntimeException e) {
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("hookReady", false);
        bundle.putString("code", "STATUS_UNAVAILABLE");
        return bundle;
    }
}
