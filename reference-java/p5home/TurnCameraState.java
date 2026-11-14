package com.local.p5home;

/* loaded from: classes.dex */
final class TurnCameraState {

    enum Value {
        ON,
        OFF,
        MISSING,
        INVALID,
        UNREADABLE
    }

    static Value parse(String str) {
        return str == null ? Value.MISSING : "1".equals(str) ? Value.ON : "0".equals(str) ? Value.OFF : Value.INVALID;
    }

    static boolean matches(Value value, boolean z) {
        if (z) {
            if (value == Value.ON) {
                return true;
            }
        } else if (value == Value.OFF) {
            return true;
        }
        return false;
    }

    /* renamed from: com.local.p5home.TurnCameraState$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$local$g3home$TurnCameraState$Value;

        static {
            int[] iArr = new int[Value.values().length];
            $SwitchMap$com$local$g3home$TurnCameraState$Value = iArr;
            try {
                iArr[Value.ON.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$local$g3home$TurnCameraState$Value[Value.OFF.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$local$g3home$TurnCameraState$Value[Value.MISSING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$local$g3home$TurnCameraState$Value[Value.INVALID.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    static String describe(Value value) {
        switch (AnonymousClass1.$SwitchMap$com$local$g3home$TurnCameraState$Value[value.ordinal()]) {
            case 1:
                return "原车开关：开启（1）";
            case Ui.DARK /* 2 */:
                return "原车开关：关闭（0）";
            case 3:
                return "原车开关：尚未设置（原车按关闭处理）";
            case 4:
                return "原车开关：值异常，无法确认开启状态";
            default:
                return "原车开关：读取失败，无法确认状态";
        }
    }

    private TurnCameraState() {
    }
}
