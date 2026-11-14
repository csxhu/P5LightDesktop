package com.local.p5home;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.security.keystore.KeyGenParameterSpec;
import android.util.Base64;
import java.nio.charset.StandardCharsets;
import java.security.KeyStore;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;

/* loaded from: classes.dex */
public final class ConfigStore {
    private static final String ALIAS = "p5home.ark.api.v1";
    public static final Uri EVENTS = Uri.parse("content://com.local.p5home.bridge/events");

    static SharedPreferences prefs(Context context) {
        return context.createDeviceProtectedStorageContext().getSharedPreferences("home", 0);
    }

    private static SharedPreferences secretPrefs(Context context) {
        return context.getSharedPreferences("credentials", 0);
    }

    public static AppConfig load(Context context) {
        SharedPreferences sharedPreferencesPrefs = prefs(context);
        AppConfig appConfig = new AppConfig();
        appConfig.voiceEnabled = sharedPreferencesPrefs.getBoolean("voiceEnabled", false);
        appConfig.doubaoEnabled = sharedPreferencesPrefs.getBoolean("doubaoEnabled", false);
        appConfig.autoLaunchNav = sharedPreferencesPrefs.getBoolean("autoLaunchNav", false);
        appConfig.restoreAfterWake = sharedPreferencesPrefs.getBoolean("restoreAfterWake", true);
        appConfig.musicProvider = sharedPreferencesPrefs.getString("musicProvider", appConfig.musicProvider);
        appConfig.navPackage = sharedPreferencesPrefs.getString("navPackage", appConfig.navPackage);
        appConfig.endpoint = sharedPreferencesPrefs.getString("endpoint", appConfig.endpoint);
        appConfig.modelId = sharedPreferencesPrefs.getString("modelId", "");
        appConfig.prefix = sharedPreferencesPrefs.getString("prefix", appConfig.prefix);
        appConfig.apiProtocol = sharedPreferencesPrefs.getString("apiProtocol", appConfig.apiProtocol);
        appConfig.modelWakeEnabled = sharedPreferencesPrefs.getBoolean("modelWakeEnabled", false);
        appConfig.modelWakeWords = sharedPreferencesPrefs.getString("modelWakeWords", appConfig.modelWakeWords);
        return appConfig;
    }

    public static void save(Context context, AppConfig appConfig) {
        if (appConfig == null) {
            throw new IllegalArgumentException("设置为空");
        }
        String strValidateEndpoint = validateEndpoint(appConfig.endpoint);
        String strTrim = trim(appConfig.modelId);
        String strTrim2 = trim(appConfig.prefix);
        String strTrim3 = trim(appConfig.navPackage);
        String strProtocol = ConfigPolicy.protocol(appConfig.apiProtocol);
        String strTrim4 = trim(appConfig.modelWakeWords);
        if (appConfig.modelWakeEnabled || !strTrim4.isEmpty()) {
            WakeWordPolicy.parse(strTrim4);
        }
        if (strTrim.length() > 200 || strTrim.indexOf(10) >= 0 || strTrim.indexOf(13) >= 0) {
            throw new IllegalArgumentException("模型 ID 格式不正确");
        }
        if (strTrim2.isEmpty() || strTrim2.length() > 20 || strTrim2.indexOf(10) >= 0 || strTrim2.indexOf(13) >= 0) {
            throw new IllegalArgumentException("触发词需为 1—20 个字符");
        }
        if (!strTrim3.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+")) {
            throw new IllegalArgumentException("导航包名不正确");
        }
        if (!MusicPolicy.provider(appConfig.musicProvider)) {
            throw new IllegalArgumentException("音乐应用设置无效");
        }
        String string = prefs(context).getString("navPackage", new AppConfig().navPackage);
        bindLegacyKey(context);
        if (!prefs(context).edit().putBoolean("voiceEnabled", appConfig.voiceEnabled).putBoolean("doubaoEnabled", appConfig.doubaoEnabled).putBoolean("autoLaunchNav", appConfig.autoLaunchNav).putBoolean("restoreAfterWake", appConfig.restoreAfterWake).putString("musicProvider", appConfig.musicProvider).putString("navPackage", strTrim3).putString("endpoint", strValidateEndpoint).putString("modelId", strTrim).putString("prefix", strTrim2).putString("apiProtocol", strProtocol).putBoolean("modelWakeEnabled", appConfig.modelWakeEnabled).putString("modelWakeWords", strTrim4).commit()) {
            throw new IllegalStateException("设置保存失败");
        }
        if (!strTrim3.equals(string)) {
            Navigator.clearSession();
        }
        context.getContentResolver().notifyChange(EVENTS, null);
    }

    static String validateEndpoint(String str) {
        return ConfigPolicy.endpoint(str);
    }

    private static String trim(String str) {
        return str == null ? "" : str.trim();
    }

    private static synchronized void bindLegacyKey(Context context) {
        try {
            SharedPreferences sharedPreferencesSecretPrefs = secretPrefs(context);
            if (!sharedPreferencesSecretPrefs.getString("ciphertext", "").isEmpty() && !sharedPreferencesSecretPrefs.contains("origin") && !sharedPreferencesSecretPrefs.edit().putString("origin", ConfigPolicy.origin(load(context).endpoint)).commit()) {
                throw new IllegalStateException("旧密钥绑定未完成");
            }
        } catch (IllegalStateException e) {
            throw e;
        } catch (Exception e2) {
        }
    }

    public static synchronized boolean hasApiKey(Context context) {
        boolean z;
        z = false;
        try {
            bindLegacyKey(context);
            if (!secretPrefs(context).getString("ciphertext", "").isEmpty()) {
                if (ConfigPolicy.origin(load(context).endpoint).equals(secretPrefs(context).getString("origin", ""))) {
                    z = true;
                }
            }
        } catch (Exception e) {
        }
        return z;
    }

    private static SecretKey key() throws Exception {
        KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
        keyStore.load(null);
        if (!keyStore.containsAlias(ALIAS)) {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
            keyGenerator.init(new KeyGenParameterSpec.Builder(ALIAS, 3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").build());
            keyGenerator.generateKey();
        }
        return (SecretKey) keyStore.getKey(ALIAS, null);
    }

    public static void storeApiKey(Context context, String str) {
        storeApiKey(context, str, load(context).endpoint);
    }

    static synchronized void storeApiKey(Context context, String str, String str2) {
        String strTrim = trim(str);
        if (strTrim.isEmpty() || strTrim.length() > 4096 || strTrim.indexOf(10) >= 0 || strTrim.indexOf(13) >= 0) {
            throw new IllegalArgumentException("API Key 格式不正确");
        }
        try {
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(1, key());
            byte[] bArrDoFinal = cipher.doFinal(strTrim.getBytes(StandardCharsets.UTF_8));
            Cipher cipher2 = Cipher.getInstance("AES/GCM/NoPadding");
            cipher2.init(2, key(), new GCMParameterSpec(128, cipher.getIV()));
            if (!MessageDigest.isEqual(strTrim.getBytes(StandardCharsets.UTF_8), cipher2.doFinal(bArrDoFinal))) {
                throw new Exception();
            }
            String strEncodeToString = Base64.encodeToString(cipher.getIV(), 2);
            if (!secretPrefs(context).edit().putString("iv", strEncodeToString).putString("ciphertext", Base64.encodeToString(bArrDoFinal, 2)).putString("origin", ConfigPolicy.origin(str2)).commit()) {
                throw new Exception();
            }
            context.getContentResolver().notifyChange(EVENTS, null);
        } catch (Exception e) {
            throw new IllegalStateException("密钥加密保存失败，请确认设备已解锁");
        }
    }

    static String apiKey(Context context) throws Exception {
        return apiKey(context, load(context).endpoint);
    }

    static synchronized String apiKey(Context context, String str) throws Exception {
        String string;
        Cipher cipher;
        bindLegacyKey(context);
        if (!ConfigPolicy.origin(str).equals(secretPrefs(context).getString("origin", ""))) {
            throw new IllegalStateException("当前接口尚未保存 API Key，请在接口配置中填写");
        }
        string = secretPrefs(context).getString("ciphertext", "");
        String string2 = secretPrefs(context).getString("iv", "");
        if (string.isEmpty() || string2.isEmpty()) {
            throw new IllegalStateException("尚未保存 API Key");
        }
        cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(2, key(), new GCMParameterSpec(128, Base64.decode(string2, 2)));
        return new String(cipher.doFinal(Base64.decode(string, 2)), StandardCharsets.UTF_8);
    }

    public static synchronized void clearApiKey(Context context) {
        if (!secretPrefs(context).edit().clear().commit()) {
            throw new IllegalStateException("密钥清除失败");
        }
        context.getContentResolver().notifyChange(EVENTS, null);
    }

    private ConfigStore() {
    }
}
