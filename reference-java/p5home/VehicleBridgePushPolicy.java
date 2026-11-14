package com.local.p5home;

/* loaded from: classes.dex */
final class VehicleBridgePushPolicy {
    static final long DATA_TTL_MS = 2500;
    static final long MIN_SEND_MS = 1000;
    static final long OWN_NAV_MS = 30000;

    static int icmIcon(int i) {
        switch (i) {
            case Ui.DARK /* 2 */:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case TopBarSlot.SLOT_COUNT /* 6 */:
                return 5;
            case 7:
                return 6;
            case 8:
                return 7;
            case 9:
            case 10:
            case 13:
            default:
                return -1;
            case 11:
                return 9;
            case 12:
                return 10;
            case 14:
                return 11;
            case 15:
                return 12;
            case 16:
                return 13;
        }
    }

    static boolean navigation(String str, String str2, int i, int i2, int i3, int i4) {
        return text(str) && text(str2) && i >= 0 && i <= 50000000 && i2 >= 0 && i2 <= 604800 && i3 >= 0 && i3 <= 50000000 && i4 >= 1 && i4 <= 13;
    }

    static boolean text(String str) {
        return str != null && str.length() <= 160 && str.indexOf(0) < 0;
    }

    static boolean stablePlayback(int i) {
        return i == 1 || i == 2 || i == 3;
    }

    static final class Event {
        final long created;
        final long deadline;
        final long epoch;
        final String fingerprint;
        final Object value;

        Event(long j, String str, Object obj, long j2) {
            this.epoch = j;
            this.fingerprint = str;
            this.value = obj;
            this.created = j2;
            this.deadline = j2 + VehicleBridgePushPolicy.DATA_TTL_MS;
        }
    }

    static boolean owns(long j, long j2) {
        return j >= 0 && j2 >= j && j2 - j < OWN_NAV_MS;
    }

    static final class Slot {
        private long epoch;
        private Event pending;
        private String submitted = "";
        private long sentAt = -1;

        Slot() {
        }

        void reset(long j) {
            this.epoch = j;
            this.pending = null;
            this.submitted = "";
            this.sentAt = -1L;
        }

        boolean offer(long j, String str, Object obj, long j2) {
            if (j != this.epoch || str == null || str.isEmpty()) {
                return false;
            }
            if (str.equals(this.submitted)) {
                this.pending = null;
                return false;
            }
            Event event = this.pending;
            if (event != null && str.equals(event.fingerprint) && j2 >= this.pending.created && j2 < this.pending.deadline) {
                return false;
            }
            this.pending = new Event(j, str, obj, j2);
            return true;
        }

        Event take(long j, long j2) {
            Event event = this.pending;
            if (event == null) {
                return null;
            }
            if (j != this.epoch || event.epoch != j || j2 < this.pending.created || j2 >= this.pending.deadline) {
                this.pending = null;
                return null;
            }
            long j3 = this.sentAt;
            if (j3 >= 0 && j2 >= j3 && j2 - j3 < VehicleBridgePushPolicy.MIN_SEND_MS) {
                return null;
            }
            Event event2 = this.pending;
            this.pending = null;
            return event2;
        }

        void submitted(Event event, long j) {
            if (event.epoch == this.epoch) {
                this.submitted = event.fingerprint;
                this.sentAt = j;
            }
        }

        boolean hasPending() {
            return this.pending != null;
        }
    }

    private VehicleBridgePushPolicy() {
    }
}
