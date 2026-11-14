package com.local.p5home;

/* loaded from: classes.dex */
final class TurnCameraPreviewPolicy {
    static final long PREVIEW_MS = 5000;
    static final long REQUEST_MS = 3000;
    private long deadline;
    private long generation;
    private long owner = -1;
    private int side;
    private long started;

    static boolean fresh(long j, long j2) {
        return j >= 0 && j2 >= j && j2 - j <= REQUEST_MS;
    }

    static boolean parked(boolean z, float f, int i, boolean z2, boolean z3, boolean z4) {
        return z && TurnCameraContract.validSpeed(f) && f == 0.0f && i == 4 && z2 && z3 && !z4;
    }

    synchronized void externalDisplay() {
        this.generation++;
        this.owner = -1L;
    }

    synchronized long generation() {
        return this.generation;
    }

    synchronized long begin(int i, long j) {
        long j2;
        j2 = this.generation + 1;
        this.generation = j2;
        this.owner = -1L;
        if (i == 2 || i == 3) {
            this.owner = j2;
            this.side = i;
            this.started = j;
            this.deadline = j + PREVIEW_MS;
        }
        return j2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized boolean owns(int r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            long r0 = r4.owner     // Catch: java.lang.Throwable -> L18
            long r2 = r4.generation     // Catch: java.lang.Throwable -> L18
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 != 0) goto L15
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L15
            int r0 = r4.side     // Catch: java.lang.Throwable -> L18
            if (r5 != r0) goto L15
            r5 = 1
            goto L16
        L15:
            r5 = 0
        L16:
            monitor-exit(r4)
            return r5
        L18:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.TurnCameraPreviewPolicy.owns(int):boolean");
    }

    synchronized boolean active(long j) {
        long j2;
        j2 = this.owner;
        return j2 == this.generation && j2 >= 0 && j2 == j;
    }

    synchronized boolean sameGeneration(long j) {
        return this.generation == j;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized boolean expired(long r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            long r0 = r4.owner     // Catch: java.lang.Throwable -> L20
            long r2 = r4.generation     // Catch: java.lang.Throwable -> L20
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 != 0) goto L1d
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L1d
            long r0 = r4.started     // Catch: java.lang.Throwable -> L20
            int r0 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r0 < 0) goto L1b
            long r0 = r4.deadline     // Catch: java.lang.Throwable -> L20
            int r5 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r5 < 0) goto L1d
        L1b:
            r5 = 1
            goto L1e
        L1d:
            r5 = 0
        L1e:
            monitor-exit(r4)
            return r5
        L20:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.TurnCameraPreviewPolicy.expired(long):boolean");
    }

    synchronized void release() {
        this.owner = -1L;
    }

    TurnCameraPreviewPolicy() {
    }
}
