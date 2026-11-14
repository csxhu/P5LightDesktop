package com.local.p5home;

/* loaded from: classes.dex */
public final class TopBarSlot {
    public static final int SLOT_COUNT = 6;
    public final String activityName;
    public final int index;
    public final String label;
    public final String packageName;
    public static final String[] NAMES = {"地图", "音乐", "蓝牙电话", "相机", "设置", "应用列表"};
    static final String[] IDS = {"img_app_map", "img_app_music", "img_app_phone", "img_app_camera", "img_app_setting", "img_app_list"};

    public TopBarSlot(int i, String str, String str2, String str3) {
        if (i < 0 || i >= 6) {
            throw new IllegalArgumentException("Invalid slot");
        }
        this.index = i;
        String strClean = clean(str);
        this.packageName = strClean;
        String strClean2 = clean(str2);
        this.activityName = strClean2;
        this.label = display(str3);
        if (!strClean.isEmpty() && (!validPackage(strClean) || !validActivity(strClean2))) {
            throw new IllegalArgumentException("Invalid launcher component");
        }
        if (strClean.isEmpty() && !strClean2.isEmpty()) {
            throw new IllegalArgumentException("Missing package");
        }
    }

    public boolean isCustom() {
        return !this.packageName.isEmpty();
    }

    public String displayLabel() {
        return isCustom() ? this.label.isEmpty() ? this.packageName : this.label : "原车默认 · " + NAMES[this.index];
    }

    static TopBarSlot original(int i) {
        return new TopBarSlot(i, "", "", "");
    }

    static String clean(String str) {
        return str == null ? "" : str.trim();
    }

    static boolean validPackage(String str) {
        return str.length() <= 200 && str.matches("[A-Za-z_][A-Za-z0-9_]*(\\.[A-Za-z_][A-Za-z0-9_]*)+");
    }

    static boolean validActivity(String str) {
        return str.length() > 0 && str.length() <= 300 && str.matches("\\.?[A-Za-z_$][A-Za-z0-9_.$]*");
    }

    static String display(String str) {
        String strClean = clean(str);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < strClean.length() && sb.length() < 80; i++) {
            char cCharAt = strClean.charAt(i);
            if (!Character.isISOControl(cCharAt) && cCharAt != 8238 && cCharAt != 8237 && cCharAt != 8294 && cCharAt != 8295 && cCharAt != 8296 && cCharAt != 8297) {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }
}
