package com.local.p5home;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.SystemClock;
import com.local.p5home.TurnCameraStatusState;
import java.security.SecureRandom;

/* loaded from: classes.dex */
public final class TurnCameraStatusProvider extends ContentProvider {
    private static final TurnCameraStatusState STATE = new TurnCameraStatusState();

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, Bundle bundle) {
        int callingUid = Binder.getCallingUid();
        int i = getContext().getApplicationInfo().uid;
        if (!"status".equals(str)) {
            if (!"begin".equals(str) && !"publish".equals(str)) {
                throw new IllegalArgumentException("Unknown status method");
            }
            if (!TurnCameraStatusPolicy.allowReport(callingUid, i, 1000, callingUid, TurnCameraStatusIdentity.verified(getContext(), callingUid))) {
                throw new SecurityException("Verified OEM sender required");
            }
            int callingPid = Binder.getCallingPid();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            Bundle bundle2 = new Bundle();
            if ("begin".equals(str)) {
                byte[] bArr = new byte[16];
                new SecureRandom().nextBytes(bArr);
                String strHex = hex(bArr);
                if (!STATE.begin(callingPid, strHex, jElapsedRealtime)) {
                    throw new IllegalStateException("Invalid sender session");
                }
                bundle2.putString("session", strHex);
                return bundle2;
            }
            Bundle bundle3 = bundle == null ? new Bundle() : bundle;
            if (bundle3.size() == 6 && (bundle3.get("session") instanceof String) && (bundle3.get("sequence") instanceof Long) && (bundle3.get("observer") instanceof Boolean) && (bundle3.get("connection") instanceof Integer) && (bundle3.get("lamp") instanceof Integer) && (bundle3.get("gear") instanceof Integer)) {
                bundle2.putBoolean("accepted", STATE.publish(callingPid, bundle3.getString("session"), bundle3.getLong("sequence"), bundle3.getBoolean("observer"), bundle3.getInt("connection"), bundle3.getInt("lamp"), bundle3.getInt("gear"), jElapsedRealtime));
                return bundle2;
            }
            throw new IllegalArgumentException("Invalid status snapshot");
        }
        if (!TurnCameraStatusPolicy.allowRead(callingUid, i, 1000)) {
            throw new SecurityException("Status caller not allowed");
        }
        TurnCameraStatusState.Snapshot snapshot = STATE.snapshot(SystemClock.elapsedRealtime());
        Bundle bundle4 = new Bundle();
        bundle4.putBoolean("fresh", snapshot.fresh);
        bundle4.putBoolean("hookReady", snapshot.fresh);
        bundle4.putBoolean("observerAdded", snapshot.observerAdded);
        bundle4.putBoolean("lampCallbackSeen", snapshot.lampSeen);
        bundle4.putBoolean("connectionSeen", snapshot.connectionSeen);
        bundle4.putBoolean("connected", snapshot.connected);
        bundle4.putBoolean("lampCallbackFault", snapshot.lampFault);
        bundle4.putBoolean("gearCallbackSeen", snapshot.gearSeen);
        bundle4.putBoolean("gearCallbackFault", snapshot.gearFault);
        bundle4.putLong("ageMs", snapshot.ageMs);
        return bundle4;
    }

    private static String hex(byte[] bArr) {
        char[] charArray = "0123456789abcdef".toCharArray();
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = i * 2;
            byte b = bArr[i];
            cArr[i2] = charArray[(b & 255) >>> 4];
            cArr[i2 + 1] = charArray[b & 15];
        }
        return new String(cArr);
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return "vnd.android.cursor.item/vnd.p5home.turncamera-status";
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
