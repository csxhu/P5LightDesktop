package com.local.p5home;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;

/* loaded from: classes.dex */
public final class TopBarProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    private int systemUid() {
        try {
            return getContext().getPackageManager().getApplicationInfo("com.android.systemui", 0).uid;
        } catch (Exception e) {
            return -1;
        }
    }

    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, Bundle bundle) {
        boolean zMigrateLegacyOnce;
        if (!TopBarAccess.allowed(Binder.getCallingUid(), getContext().getApplicationInfo().uid, systemUid(), str)) {
            throw new SecurityException("Top bar caller not allowed");
        }
        if ("get_config".equals(str)) {
            return TopBarStore.config(getContext());
        }
        if ("status".equals(str)) {
            return TopBarStore.localStatus(getContext());
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        Bundle bundle2 = new Bundle();
        if ("heartbeat".equals(str)) {
            TopBarStore.recordHeartbeat(bundle);
            return bundle2;
        }
        if ("set_enabled".equals(str)) {
            if (!(bundle.get("enabled") instanceof Boolean)) {
                throw new IllegalArgumentException("Boolean enabled required");
            }
            zMigrateLegacyOnce = TopBarStore.setEnabled(getContext(), bundle.getBoolean("enabled"));
        } else if ("set_slot".equals(str)) {
            zMigrateLegacyOnce = TopBarStore.setSlot(getContext(), index(str2), bundle.getString("pkg", ""), bundle.getString("act", ""), bundle.getString("label", ""));
        } else if ("reset_slot".equals(str)) {
            zMigrateLegacyOnce = TopBarStore.resetSlot(getContext(), index(str2));
        } else if ("reset_all".equals(str)) {
            zMigrateLegacyOnce = TopBarStore.resetAll(getContext());
        } else {
            zMigrateLegacyOnce = "migrate_legacy".equals(str) ? TopBarStore.migrateLegacyOnce(getContext()) : false;
        }
        bundle2.putBoolean("success", zMigrateLegacyOnce);
        return bundle2;
    }

    private static int index(String str) {
        if (str == null || !str.matches("[0-5]")) {
            throw new IllegalArgumentException("Invalid slot");
        }
        return Integer.parseInt(str);
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return "vnd.android.cursor.item/vnd.p5home.topbar";
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
