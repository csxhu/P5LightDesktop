package com.local.p5home;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
final class OemSpeechIdentity {
    private static final String APK = "f7756bb993aef082611c4bb4e951bca7b4f712789c095212787e799478e41b5e";
    private static final String CERT = "162fb40e0725bcfcc0932a4d6bcd9606973b6443ebe1d2fa84ae735867286ee7";
    private static final String DEX = "6874b8b87a91b0657069ddc878564b8d552ebb9478685ce43a8cb8307325533a";
    static final String PACKAGE = "com.xiaopeng.carspeechservice";

    static boolean trusted(Context context, int i) throws PackageManager.NameNotFoundException {
        String[] packagesForUid;
        Signature[] signatureArr;
        if (context == null || i <= 0) {
            return false;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(PACKAGE, 64);
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            if (applicationInfo == null || !applicationInfo.enabled || applicationInfo.uid != i || (applicationInfo.flags & 129) == 0 || (packagesForUid = context.getPackageManager().getPackagesForUid(i)) == null || packagesForUid.length != 1 || !PACKAGE.equals(packagesForUid[0]) || (signatureArr = packageInfo.signatures) == null || signatureArr.length != 1 || signatureArr[0] == null) {
                return false;
            }
            return CERT.equals(hex(MessageDigest.getInstance("SHA-256").digest(signatureArr[0].toByteArray())));
        } catch (Exception | LinkageError e) {
            return false;
        }
    }

    static boolean knownCode(Context context) throws NoSuchAlgorithmException, IOException {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getPackageInfo(PACKAGE, 0).applicationInfo;
            if (applicationInfo != null && applicationInfo.sourceDir != null) {
                File file = new File(applicationInfo.sourceDir);
                if (file.isFile() && file.canRead() && file.length() > 0 && file.length() <= 268435456) {
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        hash(fileInputStream, messageDigest, 268435456L);
                        fileInputStream.close();
                        if (APK.equals(hex(messageDigest.digest()))) {
                            return true;
                        }
                        ZipFile zipFile = new ZipFile(file);
                        try {
                            Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                            ZipEntry zipEntry = null;
                            while (enumerationEntries.hasMoreElements()) {
                                ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                                if (zipEntryNextElement.getName().matches("classes[0-9]*\\.dex")) {
                                    if (zipEntry == null && "classes.dex".equals(zipEntryNextElement.getName())) {
                                        zipEntry = zipEntryNextElement;
                                    } else {
                                        zipFile.close();
                                        return false;
                                    }
                                }
                            }
                            if (zipEntry != null && zipEntry.getSize() > 0 && zipEntry.getSize() <= 134217728) {
                                messageDigest.reset();
                                InputStream inputStream = zipFile.getInputStream(zipEntry);
                                try {
                                    hash(inputStream, messageDigest, 134217728L);
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    boolean zEquals = DEX.equals(hex(messageDigest.digest()));
                                    zipFile.close();
                                    return zEquals;
                                } finally {
                                }
                            }
                            zipFile.close();
                            return false;
                        } catch (Throwable th) {
                            try {
                                zipFile.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        throw th3;
                    }
                }
                return false;
            }
            return false;
        } catch (Exception | LinkageError e) {
            return false;
        }
    }

    private static void hash(InputStream inputStream, MessageDigest messageDigest, long j) throws IOException {
        byte[] bArr = new byte[32768];
        long j2 = 0;
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return;
            }
            j2 += i;
            if (j2 > j) {
                throw new IOException("code too large");
            }
            messageDigest.update(bArr, 0, i);
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

    private OemSpeechIdentity() {
    }
}
