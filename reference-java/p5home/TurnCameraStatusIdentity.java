package com.local.p5home;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import java.security.MessageDigest;

/* loaded from: classes.dex */
final class TurnCameraStatusIdentity {
    static final String CERT = "162fb40e0725bcfcc0932a4d6bcd9606973b6443ebe1d2fa84ae735867286ee7";
    static final String PACKAGE = "com.xiaopeng.drivingimageassist";

    static synchronized boolean verified(Context context, int i) {
        if (context == null || i <= 0) {
            return false;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(PACKAGE, 134217728);
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            if (applicationInfo != null && applicationInfo.enabled && applicationInfo.uid == i && (applicationInfo.flags & 129) != 0 && packageInfo.signingInfo != null && !packageInfo.signingInfo.hasMultipleSigners()) {
                String[] packagesForUid = packageManager.getPackagesForUid(i);
                if (packagesForUid != null && packagesForUid.length == 1 && PACKAGE.equals(packagesForUid[0])) {
                    Signature[] apkContentsSigners = packageInfo.signingInfo.getApkContentsSigners();
                    if (apkContentsSigners != null && apkContentsSigners.length == 1) {
                        if (CERT.equals(hex(MessageDigest.getInstance("SHA-256").digest(apkContentsSigners[0].toByteArray())))) {
                            return true;
                        }
                    }
                    return false;
                }
                return false;
            }
            return false;
        } catch (Exception e) {
            return false;
        } catch (LinkageError e2) {
            return false;
        }
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

    private TurnCameraStatusIdentity() {
    }
}
