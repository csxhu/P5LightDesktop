package com.local.p5home;

import java.security.SecureRandom;

/* loaded from: classes.dex */
final class NavCorrelation {
    private String event;
    private int id;
    private long issued;
    private int next;
    private long until;

    NavCorrelation() {
        this(new SecureRandom().nextInt(Integer.MAX_VALUE) + 1);
    }

    NavCorrelation(int i) {
        this.event = "";
        if (i <= 0) {
            throw new IllegalArgumentException("invalid_first_id");
        }
        this.next = i;
    }

    synchronized int begin(String str, long j) {
        if (j > 0 && str != null) {
            if (!str.isEmpty()) {
                long j2 = this.issued;
                if (j2 >= 2147483647L) {
                    return 0;
                }
                int i = this.next;
                this.next = i == Integer.MAX_VALUE ? 1 : i + 1;
                this.issued = j2 + 1;
                this.id = i;
                this.until = j;
                this.event = str;
                return i;
            }
        }
        throw new IllegalArgumentException("invalid_search_request");
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x000d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized boolean waiting(long r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            int r0 = r2.id     // Catch: java.lang.Throwable -> L10
            if (r0 == 0) goto Ld
            long r0 = r2.until     // Catch: java.lang.Throwable -> L10
            int r3 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r3 >= 0) goto Ld
            r3 = 1
            goto Le
        Ld:
            r3 = 0
        Le:
            monitor-exit(r2)
            return r3
        L10:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.NavCorrelation.waiting(long):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized boolean matches(int r2, long r3) {
        /*
            r1 = this;
            monitor-enter(r1)
            if (r2 <= 0) goto L12
            int r0 = r1.id     // Catch: java.lang.Throwable -> Lf
            if (r2 != r0) goto L12
            boolean r2 = r1.waiting(r3)     // Catch: java.lang.Throwable -> Lf
            if (r2 == 0) goto L12
            r2 = 1
            goto L13
        Lf:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        L12:
            r2 = 0
        L13:
            monitor-exit(r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.NavCorrelation.matches(int, long):boolean");
    }

    synchronized String take(int i, long j) {
        if (!matches(i, j)) {
            return null;
        }
        String str = this.event;
        cancel();
        return str;
    }

    synchronized boolean expire(int i, long j) {
        int i2 = this.id;
        if (i2 != 0 && i == i2 && j >= this.until) {
            cancel();
            return true;
        }
        return false;
    }

    synchronized boolean cancelIfCurrent(int i) {
        if (i > 0) {
            if (i == this.id) {
                cancel();
                return true;
            }
        }
        return false;
    }

    synchronized void cancel() {
        this.id = 0;
        this.until = 0L;
        this.event = "";
    }
}
