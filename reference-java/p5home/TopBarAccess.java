package com.local.p5home;

/* loaded from: classes.dex */
final class TopBarAccess {
    private TopBarAccess() {
    }

    static boolean allowed(int i, int i2, int i3, String str) {
        if (i == 0) {
            return "status".equals(str);
        }
        return (i != i2 || i2 <= 0) ? i > 0 && i == i3 && i3 != i2 && ("get_config".equals(str) || "status".equals(str) || "heartbeat".equals(str)) : "status".equals(str) || "get_config".equals(str) || "set_enabled".equals(str) || "set_slot".equals(str) || "reset_slot".equals(str) || "reset_all".equals(str) || "migrate_legacy".equals(str);
    }
}
