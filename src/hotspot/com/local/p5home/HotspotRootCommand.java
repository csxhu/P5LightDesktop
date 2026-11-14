package com.local.p5home;

import android.net.wifi.WifiConfiguration;
import java.lang.reflect.Method;

/** Calls the Wi-Fi binder directly from a short-lived root app_process. */
public final class HotspotRootCommand {
    public static void main(String[] args) {
        try {
            if (args == null || args.length != 1) throw new IllegalArgumentException("Expected state, enable, or disable");
            Object wifiService = wifiService();
            if ("state".equals(args[0])) {
                System.out.println("STATE=" + callState(wifiService));
                return;
            }
            if ("credentials".equals(args[0])) {
                printCredentials(wifiService);
                return;
            }
            boolean enabled = "enable".equals(args[0]);
            if (!enabled && !"disable".equals(args[0])) throw new IllegalArgumentException("Unknown action: " + args[0]);
            Object result = callSetEnabled(wifiService, enabled);
            int state = callState(wifiService);
            boolean alreadyInRequestedState = enabled ? state == 12 || state == 13 : state == 10 || state == 11;
            if (Boolean.FALSE.equals(result) && !alreadyInRequestedState) {
                throw new IllegalStateException("Wi-Fi service rejected the request; state=" + state);
            }
            System.out.println("OK requested=" + enabled + " state=" + state);
        } catch (Throwable error) {
            error.printStackTrace(System.err);
            System.exit(2);
        }
    }

    private static Object wifiService() throws Exception {
        Class<?> serviceManager = Class.forName("android.os.ServiceManager");
        Object binder = serviceManager.getDeclaredMethod("getService", String.class).invoke(null, "wifi");
        if (binder == null) throw new IllegalStateException("Wi-Fi binder is unavailable");
        Class<?> stub = Class.forName("android.net.wifi.IWifiManager$Stub");
        return stub.getDeclaredMethod("asInterface", Class.forName("android.os.IBinder")).invoke(null, binder);
    }

    private static int callState(Object wifiService) throws Exception {
        Method method = findMethod(wifiService.getClass(), "getWifiApEnabledState");
        return ((Integer) method.invoke(wifiService)).intValue();
    }

    private static void printCredentials(Object wifiService) throws Exception {
        Method method = findMethod(wifiService.getClass(), "getWifiApConfiguration");
        Object config = method.invoke(wifiService);
        if (config == null) throw new IllegalStateException("Wi-Fi hotspot configuration is unavailable");
        java.lang.reflect.Field ssidField = config.getClass().getField("SSID");
        java.lang.reflect.Field passwordField = config.getClass().getField("preSharedKey");
        System.out.println("SSID=" + clean((String) ssidField.get(config)));
        System.out.println("PASSWORD=" + clean((String) passwordField.get(config)));
    }

    private static String clean(String value) {
        if (value == null) return "";
        return value.replace("\n", "").replace("\r", "");
    }

    private static Object callSetEnabled(Object wifiService, boolean enabled) throws Exception {
        String methodName = enabled ? "startSoftAp" : "stopSoftAp";
        Method method;
        try {
            method = findMethod(wifiService.getClass(), methodName);
        } catch (NoSuchMethodException missingModernApi) {
            method = findMethod(wifiService.getClass(), "setWifiApEnabled");
        }
        Class<?>[] types = method.getParameterTypes();
        Object[] args = new Object[types.length];
        for (int i = 0; i < types.length; i++) {
            if (types[i] == Boolean.TYPE || types[i] == Boolean.class) {
                args[i] = Boolean.valueOf(enabled);
            } else if (types[i] == WifiConfiguration.class) {
                args[i] = null;
            } else if (types[i] == String.class) {
                args[i] = "com.local.p5home";
            } else {
                throw new IllegalStateException("Unsupported " + methodName + " parameter: " + types[i]);
            }
        }
        return method.invoke(wifiService, args);
    }

    private static Method findMethod(Class<?> type, String name) throws NoSuchMethodException {
        for (Class<?> current = type; current != null; current = current.getSuperclass()) {
            for (Method method : current.getDeclaredMethods()) {
                if (name.equals(method.getName())) {
                    method.setAccessible(true);
                    return method;
                }
            }
        }
        throw new NoSuchMethodException(name);
    }

    private HotspotRootCommand() { }
}
