package com.local.p5home;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.util.UUID;

/* loaded from: classes.dex */
public final class VehicleObservationProvider extends ContentProvider {
    private static final String KEY = "vehicleObservationEnabled";
    private static boolean cameraReady;
    private static boolean lccConvert;
    private static boolean ready;
    static final Uri URI = Uri.parse("content://com.local.p5home.vehicleobserver");
    private static final Object LOCK = new Object();
    private static String generation = UUID.randomUUID().toString();
    private static final double[] VALUES = new double[9];
    private static final long[] TIMES = new long[9];

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    static boolean enabled(Context context) {
        return ConfigStore.prefs(context).getBoolean(KEY, false);
    }

    static boolean setEnabled(Context context, boolean z) {
        synchronized (LOCK) {
            if (!ConfigStore.prefs(context).edit().putBoolean(KEY, z).commit()) {
                return false;
            }
            generation = UUID.randomUUID().toString();
            clear();
            return true;
        }
    }

    static void clearRecords() {
        synchronized (LOCK) {
            clear();
        }
    }

    private static void clear() {
        int i = 0;
        ready = false;
        cameraReady = false;
        lccConvert = false;
        while (true) {
            long[] jArr = TIMES;
            if (i >= jArr.length) {
                return;
            }
            jArr[i] = 0;
            VALUES[i] = 0.0d;
            i++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x017e, code lost:
    
        if (r12.size() == 3) goto L70;
     */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.Bundle call(java.lang.String r10, java.lang.String r11, android.os.Bundle r12) {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.VehicleObservationProvider.call(java.lang.String, java.lang.String, android.os.Bundle):android.os.Bundle");
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return "vnd.android.cursor.item/vnd.p5home.vehicle-observation";
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }
}
