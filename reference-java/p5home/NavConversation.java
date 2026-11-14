package com.local.p5home;

import com.local.p5home.NavProtocol;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class NavConversation {
    private static final long TTL = 120000;
    private long epoch;
    private int poiCount;
    private JSONArray pois;
    private int routeCount;
    private String stage = "idle";
    private NavProtocol.Poi target;
    private long until;
    private boolean visiblePlan;

    NavConversation() {
    }

    synchronized long search(long j) {
        clear();
        this.stage = "searching";
        this.until = j + TTL;
        return this.epoch;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized boolean active(long r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            java.lang.String r0 = "idle"
            java.lang.String r1 = r2.stage     // Catch: java.lang.Throwable -> L16
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L16
            if (r0 != 0) goto L13
            long r0 = r2.until     // Catch: java.lang.Throwable -> L16
            int r3 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r3 >= 0) goto L13
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
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.NavConversation.active(long):boolean");
    }

    synchronized String stage(long j) {
        return active(j) ? this.stage : "idle";
    }

    synchronized long epoch() {
        return this.epoch;
    }

    synchronized boolean retire(long j) {
        if (j != this.epoch) {
            return false;
        }
        clear();
        return true;
    }

    synchronized void clear() {
        this.epoch++;
        this.stage = "idle";
        this.until = 0L;
        this.pois = null;
        this.poiCount = 0;
        this.routeCount = 0;
        this.visiblePlan = false;
        this.target = null;
    }

    synchronized void candidates(String str, long j) throws JSONException {
        if (active(j) && ("searching".equals(this.stage) || "poi_list".equals(this.stage))) {
            JSONArray jSONArray = new JSONObject(str).getJSONArray("content");
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                jSONArray2.put(new JSONObject(jSONArray.getJSONObject(i).getJSONObject("extra").getString("navi")));
            }
            this.pois = jSONArray2;
            int length = jSONArray2.length();
            this.poiCount = length;
            this.stage = length > 0 ? "poi_list" : "searching";
        }
    }

    synchronized boolean visibleList(int i, boolean z, boolean z2, long j) {
        if (!active(j)) {
            return false;
        }
        if (z2) {
            clear();
            return false;
        }
        if (z) {
            if (!"poi_list".equals(this.stage) && !"searching".equals(this.stage)) {
                if ("route_loading".equals(this.stage)) {
                    this.visiblePlan = true;
                }
            }
            plan(null, j);
            this.visiblePlan = true;
            return true;
        }
        if (("searching".equals(this.stage) || "poi_list".equals(this.stage)) && i >= 1 && i <= 10 && this.pois == null) {
            this.poiCount = i;
            this.stage = "poi_list";
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized boolean canPoi(int r2, long r3) {
        /*
            r1 = this;
            monitor-enter(r1)
            java.lang.String r0 = "poi_list"
            java.lang.String r3 = r1.stage(r3)     // Catch: java.lang.Throwable -> L18
            boolean r3 = r0.equals(r3)     // Catch: java.lang.Throwable -> L18
            if (r3 == 0) goto L15
            r3 = 1
            if (r2 < r3) goto L15
            int r4 = r1.poiCount     // Catch: java.lang.Throwable -> L18
            if (r2 > r4) goto L15
            goto L16
        L15:
            r3 = 0
        L16:
            monitor-exit(r1)
            return r3
        L18:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.NavConversation.canPoi(int, long):boolean");
    }

    synchronized NavProtocol.Poi poi(int i, long j) throws JSONException {
        if (canPoi(i, j) && this.pois != null) {
            return NavProtocol.selected(new JSONObject().put("poi", this.pois.getJSONObject(i - 1)));
        }
        return null;
    }

    synchronized long plan(NavProtocol.Poi poi, long j) {
        long j2;
        j2 = this.epoch + 1;
        this.epoch = j2;
        this.stage = "route_loading";
        this.until = j + TTL;
        this.target = poi;
        this.pois = null;
        this.poiCount = 0;
        this.routeCount = 0;
        this.visiblePlan = false;
        return j2;
    }

    synchronized boolean routes(NavProtocol.Routes routes, boolean z, long j) {
        if (active(j) && "route_loading".equals(this.stage)) {
            NavProtocol.Poi poi = this.target;
            if (poi != null) {
                if (!routes.matches(poi)) {
                    return false;
                }
            } else if (!this.visiblePlan) {
                return false;
            }
            this.routeCount = routes.count;
            this.stage = "route_list";
            this.until = j + TTL;
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized boolean canRoute(int r2, long r3) {
        /*
            r1 = this;
            monitor-enter(r1)
            java.lang.String r0 = "route_list"
            java.lang.String r3 = r1.stage(r3)     // Catch: java.lang.Throwable -> L1b
            boolean r3 = r0.equals(r3)     // Catch: java.lang.Throwable -> L1b
            if (r3 == 0) goto L18
            r3 = 1
            if (r2 < r3) goto L18
            int r4 = r1.routeCount     // Catch: java.lang.Throwable -> L1b
            if (r2 > r4) goto L18
            r4 = 3
            if (r2 > r4) goto L18
            goto L19
        L18:
            r3 = 0
        L19:
            monitor-exit(r1)
            return r3
        L1b:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.NavConversation.canRoute(int, long):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized boolean canStart(long r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            java.lang.String r0 = "route_list"
            java.lang.String r2 = r1.stage(r2)     // Catch: java.lang.Throwable -> L16
            boolean r2 = r0.equals(r2)     // Catch: java.lang.Throwable -> L16
            if (r2 == 0) goto L13
            int r2 = r1.routeCount     // Catch: java.lang.Throwable -> L16
            if (r2 <= 0) goto L13
            r2 = 1
            goto L14
        L13:
            r2 = 0
        L14:
            monitor-exit(r1)
            return r2
        L16:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.NavConversation.canStart(long):boolean");
    }

    synchronized int poiCount(long j) {
        return "poi_list".equals(stage(j)) ? this.poiCount : 0;
    }

    synchronized int routeCount(long j) {
        return "route_list".equals(stage(j)) ? this.routeCount : 0;
    }

    synchronized void selectedRoute(long j) {
        if (canStart(j)) {
            this.until = j + TTL;
        }
    }

    synchronized void starting(long j) {
        this.stage = "navigation_pending";
        this.until = j + TTL;
        this.pois = null;
        this.poiCount = 0;
        this.routeCount = 0;
    }
}
