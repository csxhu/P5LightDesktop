package com.local.p5home;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.util.Log;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.lang.reflect.Method;
import java.util.concurrent.TimeUnit;

/** Reads and controls the vehicle Wi-Fi hotspot. */
public final class HotspotController {
    private static final String TAG = "P5Hotspot";

    /** Returns the configured Soft AP name and password for the desktop manager. */
    public static String getCredentials(Context context) {
        try {
            WifiManager wifi = (WifiManager) context.getApplicationContext().getSystemService(Context.WIFI_SERVICE);
            Method configuration = WifiManager.class.getDeclaredMethod("getWifiApConfiguration");
            configuration.setAccessible(true);
            Object value = configuration.invoke(wifi);
            if (!(value instanceof android.net.wifi.WifiConfiguration)) {
                return readRootCredentials(context);
            }
            android.net.wifi.WifiConfiguration config = (android.net.wifi.WifiConfiguration) value;
            String ssid = cleanCredential(config.SSID);
            String password = cleanCredential(config.preSharedKey);
            if (ssid.isEmpty()) {
                return readRootCredentials(context);
            }
            return "热点名称：" + ssid + "\n热点密码：" + (password.isEmpty() ? "无密码" : password);
        } catch (Throwable error) {
            Log.i(TAG, "Unable to read Soft AP credentials", error);
            return readRootCredentials(context);
        }
    }

    private static String readRootCredentials(Context context) {
        String result = runRootCommand(context.getApplicationContext(), "credentials");
        if (result == null || !result.startsWith("SSID=")) {
            Log.w(TAG, "Unable to read hotspot credentials as root: " + result);
            return "热点名称和密码：暂不可读取";
        }
        String ssid = "";
        String password = "";
        for (String line : result.split("\\n")) {
            if (line.startsWith("SSID=")) ssid = cleanCredential(line.substring(5));
            else if (line.startsWith("PASSWORD=")) password = cleanCredential(line.substring(9));
        }
        if (ssid.isEmpty()) return "热点名称和密码：暂不可读取";
        return "热点名称：" + ssid + "\n热点密码：" + (password.isEmpty() ? "无密码" : password);
    }

    private static String cleanCredential(String value) {
        if (value == null || value.equals("<unknown ssid>")) {
            return "";
        }
        String result = value.trim();
        if (result.length() >= 2 && result.charAt(0) == '"' && result.charAt(result.length() - 1) == '"') {
            result = result.substring(1, result.length() - 1);
        }
        return result;
    }

    public static boolean isEnabled(Context context) {
        try {
            WifiManager wifi = (WifiManager) context.getApplicationContext().getSystemService(Context.WIFI_SERVICE);
            Method stateMethod = WifiManager.class.getDeclaredMethod("getWifiApState");
            stateMethod.setAccessible(true);
            Object value = stateMethod.invoke(wifi);
            if (value instanceof Integer) {
                int apState = (Integer) value;
                return apState == 12 || apState == 13;
            }
        } catch (Throwable error) {
            Log.i(TAG, "Unable to read Soft AP state", error);
        }
        String result = runRootCommand(context.getApplicationContext(), "state");
        if (result != null && result.startsWith("STATE=")) {
            try {
                int apState = Integer.parseInt(result.substring(6).trim());
                return apState == 12 || apState == 13;
            } catch (NumberFormatException error) {
                Log.w(TAG, "Invalid root Soft AP state: " + result, error);
            }
        } else {
            Log.w(TAG, "Unable to read Soft AP state as root: " + result);
        }
        return false;
    }

    public static void enableIfRequested(final Context context) {
        if (!context.createDeviceProtectedStorageContext().getSharedPreferences("home", Context.MODE_PRIVATE)
                .getBoolean("autoWifiHotspot", false)) {
            return;
        }
        setEnabled(context, true);
    }

    public static void setEnabled(final Context context, final boolean enabled) {
        context.createDeviceProtectedStorageContext().getSharedPreferences("home", Context.MODE_PRIVATE)
                .edit().putBoolean("manualWifiHotspot", enabled).apply();
        new Thread(new Runnable() {
            @Override
            public void run() {
                applyEnabled(context.getApplicationContext(), enabled);
            }
        }, "p5-hotspot").start();
    }

    private static void applyEnabled(Context context, boolean enabled) {
        String result = runRootCommand(context, enabled ? "enable" : "disable");
        if (result == null || !result.startsWith("OK")) {
            Log.e(TAG, "Root Wi-Fi hotspot request failed: " + result);
        } else {
            Log.i(TAG, "Root Wi-Fi hotspot request accepted: " + result);
        }
    }

    private static String runRootCommand(Context context, String action) {
        Process process = null;
        try {
            String apk = context.getApplicationContext().getPackageCodePath();
            String classpath = "CLASSPATH='" + apk.replace("'", "'\\''") + "' app_process /system/bin "
                    + HotspotRootCommand.class.getName() + " " + action;
            process = new ProcessBuilder("su", "-c", classpath).redirectErrorStream(true).start();
            StringBuilder output = new StringBuilder();
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            long deadline = System.currentTimeMillis() + 12000;
            while (System.currentTimeMillis() < deadline && process.isAlive()) {
                while (reader.ready()) {
                    String line = reader.readLine();
                    if (line != null) output.append(line).append('\n');
                }
                Thread.sleep(50);
            }
            if (!process.waitFor(1, TimeUnit.SECONDS)) {
                process.destroy();
                return "TIMEOUT " + output;
            }
            while (reader.ready()) {
                String line = reader.readLine();
                if (line != null) output.append(line).append('\n');
            }
            if (process.exitValue() != 0) return "EXIT=" + process.exitValue() + " " + output;
            return output.toString().trim();
        } catch (Throwable error) {
            Log.e(TAG, "Root app_process command failed", error);
            if (process != null) process.destroy();
            return "ERROR " + error;
        }
    }

    private HotspotController() {
    }
}
