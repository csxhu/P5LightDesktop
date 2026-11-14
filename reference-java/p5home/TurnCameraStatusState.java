package com.local.p5home;

/* loaded from: classes.dex */
final class TurnCameraStatusState {
    static final int FAULT = 2;
    static final long MAX_HEARTBEAT_AGE_MS = 20000;
    static final int RECEIVED = 1;
    static final int UNSEEN = 0;
    private int connection;
    private int gear;
    private int lamp;
    private boolean observer;
    private int pid;
    private long lastAt = -1;
    private long sequence = -1;
    private String session = "";

    TurnCameraStatusState() {
    }

    static final class Snapshot {
        final long ageMs;
        final boolean connected;
        final boolean connectionSeen;
        final boolean fresh;
        final boolean gearFault;
        final boolean gearSeen;
        final boolean lampFault;
        final boolean lampSeen;
        final boolean observerAdded;

        Snapshot(boolean z, boolean z2, int i, int i2, int i3, long j) {
            this.fresh = z;
            boolean z3 = false;
            this.observerAdded = z && z2;
            this.connectionSeen = z && i != 0;
            this.connected = z && i == 1;
            this.lampSeen = z && i2 != 0;
            this.lampFault = z && i2 == 2;
            this.gearSeen = z && i3 != 0;
            if (z && i3 == 2) {
                z3 = true;
            }
            this.gearFault = z3;
            this.ageMs = j;
        }
    }

    synchronized boolean begin(int i, String str, long j) {
        if (i > 0) {
            if (validToken(str) && j >= 0) {
                this.pid = i;
                this.session = str;
                this.lastAt = j;
                this.sequence = -1L;
                this.observer = false;
                this.gear = 0;
                this.lamp = 0;
                this.connection = 0;
                return true;
            }
        }
        return false;
    }

    synchronized boolean publish(int i, String str, long j, boolean z, int i2, int i3, int i4, long j2) {
        if (i > 0) {
            if (i == this.pid && validToken(str) && this.session.equals(str) && j > this.sequence && j2 >= this.lastAt && valid(i2) && valid(i3) && valid(i4) && ((z || i3 == 0) && ((!this.observer || z) && ((this.connection == 0 || i2 != 0) && ((this.lamp == 0 || i3 != 0) && (this.gear == 0 || i4 != 0)))))) {
                this.sequence = j;
                this.observer = z;
                this.connection = i2;
                this.lamp = i3;
                this.gear = i4;
                this.lastAt = j2;
                return true;
            }
        }
        return false;
    }

    synchronized Snapshot snapshot(long j) {
        long j2;
        long j3 = this.lastAt;
        j2 = (j3 < 0 || j < j3) ? -1L : j - j3;
        return new Snapshot(this.sequence >= 0 && j2 >= 0 && j2 <= MAX_HEARTBEAT_AGE_MS, this.observer, this.connection, this.lamp, this.gear, j2);
    }

    private static boolean valid(int i) {
        return i == 0 || i == 1 || i == 2;
    }

    private static boolean validToken(String str) {
        return str != null && str.matches("[0-9a-f]{32}");
    }
}
