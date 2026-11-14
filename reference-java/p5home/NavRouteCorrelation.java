package com.local.p5home;

import java.security.SecureRandom;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
final class NavRouteCorrelation {
    private static final int LIMIT = 3;
    private long issued;
    private int next;
    private final LinkedHashMap<Integer, Long> pending;

    NavRouteCorrelation() {
        this(new SecureRandom().nextInt(Integer.MAX_VALUE) + 1);
    }

    NavRouteCorrelation(int i) {
        this.pending = new LinkedHashMap<>();
        if (i <= 0) {
            throw new IllegalArgumentException("invalid_first_id");
        }
        this.next = i;
    }

    synchronized int begin(long j, long j2) {
        if (j < 0 || j2 <= j) {
            throw new IllegalArgumentException("invalid_route_deadline");
        }
        prune(j);
        if (this.pending.size() < LIMIT) {
            long j3 = this.issued;
            if (j3 < 2147483647L) {
                int i = this.next;
                this.next = i == Integer.MAX_VALUE ? 1 : i + 1;
                this.issued = j3 + 1;
                this.pending.put(Integer.valueOf(i), Long.valueOf(j2));
                return i;
            }
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized boolean matches(int r4, long r5) {
        /*
            r3 = this;
            monitor-enter(r3)
            java.util.LinkedHashMap<java.lang.Integer, java.lang.Long> r0 = r3.pending     // Catch: java.lang.Throwable -> L24
            java.lang.Integer r1 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L24
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> L24
            java.lang.Long r0 = (java.lang.Long) r0     // Catch: java.lang.Throwable -> L24
            if (r4 <= 0) goto L21
            if (r0 == 0) goto L21
            r1 = 0
            int r4 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r4 < 0) goto L21
            long r0 = r0.longValue()     // Catch: java.lang.Throwable -> L24
            int r4 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r4 >= 0) goto L21
            r4 = 1
            goto L22
        L21:
            r4 = 0
        L22:
            monitor-exit(r3)
            return r4
        L24:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.NavRouteCorrelation.matches(int, long):boolean");
    }

    synchronized boolean expire(int i, long j) {
        Long l = this.pending.get(Integer.valueOf(i));
        if (l != null && j >= l.longValue()) {
            prune(j);
            return this.pending.isEmpty();
        }
        return false;
    }

    synchronized long discard(int i, long j) {
        if (this.pending.remove(Integer.valueOf(i)) == null) {
            return -1L;
        }
        prune(j);
        long jLongValue = 0;
        for (Long l : this.pending.values()) {
            if (l.longValue() > jLongValue) {
                jLongValue = l.longValue();
            }
        }
        return jLongValue;
    }

    synchronized void cancel() {
        this.pending.clear();
    }

    private void prune(long j) {
        Iterator<Map.Entry<Integer, Long>> it = this.pending.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getValue().longValue() <= j) {
                it.remove();
            }
        }
    }
}
