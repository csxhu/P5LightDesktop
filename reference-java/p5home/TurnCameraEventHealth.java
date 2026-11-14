package com.local.p5home;

/* loaded from: classes.dex */
final class TurnCameraEventHealth {
    static final int AVAILABLE = 0;
    private boolean connected;
    private long connectionEpoch;
    private int gear;
    private boolean gearAvailable;
    private boolean lampAvailable;
    private Object ownedObserver;

    TurnCameraEventHealth() {
    }

    synchronized boolean bindObserver(Object obj) {
        if (obj != null) {
            if (this.ownedObserver == null) {
                this.ownedObserver = obj;
                this.lampAvailable = false;
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized boolean owns(java.lang.Object r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            if (r2 == 0) goto Lc
            java.lang.Object r0 = r1.ownedObserver     // Catch: java.lang.Throwable -> L9
            if (r2 != r0) goto Lc
            r2 = 1
            goto Ld
        L9:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        Lc:
            r2 = 0
        Ld:
            monitor-exit(r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.TurnCameraEventHealth.owns(java.lang.Object):boolean");
    }

    synchronized boolean hasObserver() {
        return this.ownedObserver != null;
    }

    synchronized Object observer() {
        return this.ownedObserver;
    }

    synchronized void connected() {
        this.connectionEpoch++;
        this.connected = true;
        this.lampAvailable = false;
        this.gearAvailable = false;
    }

    synchronized void disconnected() {
        this.connectionEpoch++;
        this.connected = false;
        this.lampAvailable = false;
        this.gearAvailable = false;
    }

    synchronized long epoch() {
        return this.connected ? this.connectionEpoch : -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized boolean current(long r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            boolean r0 = r2.connected     // Catch: java.lang.Throwable -> L16
            if (r0 == 0) goto L13
            r0 = 0
            int r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r0 < 0) goto L13
            long r0 = r2.connectionEpoch     // Catch: java.lang.Throwable -> L16
            int r3 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r3 != 0) goto L13
            r3 = 1
            goto L14
        L13:
            r3 = 0
        L14:
            monitor-exit(r2)
            return r3
        L16:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.TurnCameraEventHealth.current(long):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x000d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized boolean permitLamp(long r1) {
        /*
            r0 = this;
            monitor-enter(r0)
            boolean r1 = r0.current(r1)     // Catch: java.lang.Throwable -> L10
            if (r1 == 0) goto Ld
            boolean r1 = r0.lampAvailable     // Catch: java.lang.Throwable -> L10
            if (r1 == 0) goto Ld
            r1 = 1
            goto Le
        Ld:
            r1 = 0
        Le:
            monitor-exit(r0)
            return r1
        L10:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.TurnCameraEventHealth.permitLamp(long):boolean");
    }

    synchronized boolean lamp(int i, int i2, Object obj) {
        Integer num;
        if (this.connected && i == 0 && i2 == 0 && (obj instanceof Integer[])) {
            Integer[] numArr = (Integer[]) obj;
            if (numArr.length >= 2 && (num = numArr[0]) != null && numArr[1] != null && bit(num) && bit(numArr[1])) {
                this.lampAvailable = true;
                return true;
            }
            this.lampAvailable = false;
            return false;
        }
        this.lampAvailable = false;
        return false;
    }

    synchronized void lampError() {
        this.lampAvailable = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x000b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized boolean lampAvailable() {
        /*
            r1 = this;
            monitor-enter(r1)
            boolean r0 = r1.connected     // Catch: java.lang.Throwable -> Le
            if (r0 == 0) goto Lb
            boolean r0 = r1.lampAvailable     // Catch: java.lang.Throwable -> Le
            if (r0 == 0) goto Lb
            r0 = 1
            goto Lc
        Lb:
            r0 = 0
        Lc:
            monitor-exit(r1)
            return r0
        Le:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.TurnCameraEventHealth.lampAvailable():boolean");
    }

    synchronized boolean gear(int i, int i2, Object obj) {
        if (this.connected && i == 0 && i2 == 0 && (obj instanceof Integer)) {
            int iIntValue = ((Integer) obj).intValue();
            if (iIntValue >= 1 && iIntValue <= 4) {
                this.gear = iIntValue;
                this.gearAvailable = true;
                return true;
            }
            this.gearAvailable = false;
            return false;
        }
        this.gearAvailable = false;
        return false;
    }

    synchronized void gearError() {
        this.gearAvailable = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized boolean permitGear(int r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            boolean r0 = r1.connected     // Catch: java.lang.Throwable -> L18
            if (r0 == 0) goto L15
            boolean r0 = r1.gearAvailable     // Catch: java.lang.Throwable -> L18
            if (r0 == 0) goto L15
            int r0 = r1.gear     // Catch: java.lang.Throwable -> L18
            if (r0 != r2) goto L15
            r0 = 1
            boolean r2 = com.local.p5home.TurnCameraContract.permitGear(r0, r2)     // Catch: java.lang.Throwable -> L18
            if (r2 == 0) goto L15
            goto L16
        L15:
            r0 = 0
        L16:
            monitor-exit(r1)
            return r0
        L18:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.TurnCameraEventHealth.permitGear(int):boolean");
    }

    private static boolean bit(Integer num) {
        return num.intValue() == 0 || num.intValue() == 1;
    }
}
