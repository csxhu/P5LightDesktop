package com.local.p5home;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.local.p5home.NavProtocol;
import com.local.p5home.Navigator;
import org.json.JSONException;

/* loaded from: classes.dex */
final class NavAutoSession {
    private static Context application;
    private static Handler handler;
    private static long observedAt;
    private static boolean registered;
    private static volatile long routeReplyUntil;
    private static Navigator.ReplySink sink;
    private static long statusGeneration;
    private static long statusUntil;
    private static final Object LOCK = new Object();
    private static final NavCorrelation search = new NavCorrelation();
    private static final NavRouteCorrelation routeReply = new NavRouteCorrelation();
    private static final NavConversation conversation = new NavConversation();
    private static volatile long searchEpoch = -1;
    private static volatile long routeReplyEpoch = -1;
    private static String statusEvent = "";
    private static int observedState = -1;
    private static final BroadcastReceiver RECEIVER = new BroadcastReceiver() { // from class: com.local.p5home.NavAutoSession.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null && "AUTONAVI_STANDARD_BROADCAST_SEND".equals(intent.getAction()) && Navigator.verifiedAuto(context)) {
                try {
                    synchronized (NavAutoSession.LOCK) {
                        int intExtra = intent.getIntExtra("KEY_TYPE", -1);
                        if (intExtra == 10042) {
                            NavAutoSession.receiveSearch(intent);
                        } else if (intExtra == 10019) {
                            NavAutoSession.receiveState(intent);
                        } else if (intExtra == 12201) {
                            if (NavAutoSession.conversation.visibleList(intent.getIntExtra("EXTRA_POINUM", -1), intent.getBooleanExtra("EXTRA_PLAN_ROUTE", false), intent.getBooleanExtra("EXTRA_BACK", false), SystemClock.elapsedRealtime())) {
                                NavAutoSession.clearRouteQueries();
                                NavAutoSession.pollRoutes(context, NavAutoSession.conversation.epoch(), 0);
                            }
                        } else if (intExtra == 10056) {
                            NavAutoSession.receiveRoutes(context, intent);
                        }
                    }
                } catch (Exception e) {
                }
            }
        }
    };

    interface BridgeRead {
        Bundle get(long j, String str);
    }

    interface MapLaunch {
        Navigator.Result run();
    }

    private NavAutoSession() {
    }

    static void setSink(Context context, Navigator.ReplySink replySink) {
        synchronized (LOCK) {
            sink = replySink;
            if (context != null) {
                application = context.getApplicationContext();
            }
            if (replySink == null) {
                search.cancel();
                conversation.clear();
                clearRouteQueries();
                statusEvent = "";
                statusUntil = 0L;
                statusGeneration++;
            }
        }
    }

    static boolean hasSink() {
        boolean z;
        synchronized (LOCK) {
            z = sink != null;
        }
        return z;
    }

    static boolean hasSearch() {
        return search.waiting(SystemClock.elapsedRealtime());
    }

    static void cancelSearch() {
        search.cancel();
    }

    static long epoch() {
        return conversation.epoch();
    }

    static Bundle withSessionSnapshot(BridgeRead bridgeRead) {
        Bundle bundle;
        synchronized (LOCK) {
            NavConversation navConversation = conversation;
            bundle = bridgeRead.get(navConversation.epoch(), navConversation.stage(SystemClock.elapsedRealtime()));
        }
        return bundle;
    }

    static boolean retire(long j) {
        return resetIfCurrent(j) >= 0;
    }

    static long resetIfCurrent(long j) {
        synchronized (LOCK) {
            NavConversation navConversation = conversation;
            if (!navConversation.retire(j)) {
                return -1L;
            }
            search.cancel();
            clearRouteQueries();
            return navConversation.epoch();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void clearRouteQueries() {
        routeReply.cancel();
        routeReplyEpoch = -1L;
        routeReplyUntil = 0L;
    }

    static long beginUiSearch(Context context) {
        long jSearch;
        synchronized (LOCK) {
            ready(context);
            search.cancel();
            clearRouteQueries();
            jSearch = conversation.search(SystemClock.elapsedRealtime());
        }
        return jSearch;
    }

    static long beginUiSearch(Context context, long j) {
        long jBeginUiSearch;
        synchronized (LOCK) {
            jBeginUiSearch = conversation.epoch() == j ? beginUiSearch(context) : -1L;
        }
        return jBeginUiSearch;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0018 A[Catch: all -> 0x0020, TryCatch #0 {, blocks: (B:6:0x0009, B:8:0x0013, B:10:0x001e, B:9:0x0018), top: B:15:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static com.local.p5home.Navigator.Result launchIfCurrent(long r3, com.local.p5home.NavAutoSession.MapLaunch r5) {
        /*
            java.lang.Object r0 = com.local.p5home.NavAutoSession.LOCK
            monitor-enter(r0)
            r1 = 0
            int r1 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r1 < 0) goto L18
            com.local.p5home.NavConversation r1 = com.local.p5home.NavAutoSession.conversation     // Catch: java.lang.Throwable -> L20
            long r1 = r1.epoch()     // Catch: java.lang.Throwable -> L20
            int r3 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r3 != 0) goto L18
            com.local.p5home.Navigator$Result r3 = r5.run()     // Catch: java.lang.Throwable -> L20
            goto L1e
        L18:
            java.lang.String r3 = "导航请求已被后续搜索取代"
            com.local.p5home.Navigator$Result r3 = com.local.p5home.Navigator.no(r3)     // Catch: java.lang.Throwable -> L20
        L1e:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L20
            return r3
        L20:
            r3 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L20
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.NavAutoSession.launchIfCurrent(long, com.local.p5home.NavAutoSession$MapLaunch):com.local.p5home.Navigator$Result");
    }

    static void cancelConversation() {
        synchronized (LOCK) {
            cancelSearch();
            clearRouteQueries();
            conversation.clear();
        }
    }

    static Navigator.Result stopIfCurrent(Context context, long j) {
        synchronized (LOCK) {
            NavConversation navConversation = conversation;
            if (j != navConversation.epoch()) {
                return Navigator.no("导航会话已更新，请在地图内确认后再结束");
            }
            cancelConversation();
            long jEpoch = navConversation.epoch();
            try {
                context.sendBroadcast(Navigator.broadcast(10010));
                if (navConversation.epoch() != jEpoch) {
                    return Navigator.no("结束请求可能已发送，会话已更新，请在地图内确认");
                }
                navigationDispatched(context);
                return new Navigator.Result(true, "结束导航请求已发送；尚未确认停止", "pending", "", "", "");
            } catch (RuntimeException e) {
                return Navigator.no("结束请求未确认，请在地图内检查导航状态");
            }
        }
    }

    static Navigator.Result validateControl(String str, int i) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if ("select".equals(str)) {
            str = "poi_list".equals(conversation.stage(jElapsedRealtime)) ? "select_poi" : "select_route";
        }
        if ("select_poi".equals(str)) {
            if (conversation.canPoi(i, jElapsedRealtime)) {
                return new Navigator.Result(true, "可选择当前地点候选并请求路线预览", "ready", "", "", "");
            }
            return Navigator.no("没有新鲜且包含该序号的地点候选，请先搜索地点");
        }
        if ("select_route".equals(str) || "select_route_start".equals(str)) {
            if (conversation.canRoute(i, jElapsedRealtime)) {
                return new Navigator.Result(true, "可发送当前路线方案选择请求", "ready", "", "", "");
            }
            return Navigator.no("尚未取得包含该序号的路线方案；地点序号不能当路线序号");
        }
        if ("start".equals(str)) {
            if (conversation.canStart(jElapsedRealtime)) {
                return new Navigator.Result(true, "可发送当前路线的开始请求", "ready", "", "", "");
            }
            return Navigator.no("当前没有已读取的路线方案，请先选地点并等待路线预览");
        }
        if (!"cancel".equals(str)) {
            return Navigator.no("未知导航操作，保留原处理");
        }
        if (conversation.active(jElapsedRealtime)) {
            return new Navigator.Result(true, "可取消本次地图会话", "ready", "", "", "");
        }
        return Navigator.no("没有本应用持有的导航会话，不取消其它功能");
    }

    static Navigator.Result routeCount(String str, int i) throws JSONException {
        synchronized (LOCK) {
            NavConversation navConversation = conversation;
            int iRouteCount = navConversation.routeCount(SystemClock.elapsedRealtime());
            if (iRouteCount != 0 && i != 0) {
                return new Navigator.Result(true, "已读取本次路线方案数量", "observed", "support", str, NavProtocol.support(i <= iRouteCount && i <= 3), navConversation.epoch());
            }
            return Navigator.no("尚未取得可用于本次路线选择的方案数量");
        }
    }

    static Navigator.Result routeCount(String str, int i, long j) throws JSONException {
        synchronized (LOCK) {
            if (conversation.epoch() != j) {
                return Navigator.no("地图会话已更新，请根据当前候选重新选择");
            }
            return routeCount(str, i);
        }
    }

    static Navigator.Result control(Context context, String str, int i, long j) throws JSONException {
        synchronized (LOCK) {
            NavConversation navConversation = conversation;
            if (navConversation.epoch() != j) {
                return Navigator.no("地图会话已更新，请根据当前候选重新选择");
            }
            Navigator.Result resultValidateControl = validateControl(str, i);
            if (!resultValidateControl.accepted) {
                return resultValidateControl;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            String strStage = navConversation.stage(jElapsedRealtime);
            String str2 = "select".equals(str) ? "poi_list".equals(strStage) ? "select_poi" : "select_route" : str;
            if ("select_poi".equals(str2)) {
                NavProtocol.Poi poi = navConversation.poi(i, jElapsedRealtime);
                if (poi != null) {
                    return plan(context, poi);
                }
                clearRouteQueries();
                long jPlan = navConversation.plan(null, jElapsedRealtime);
                try {
                    context.sendBroadcast(Navigator.broadcast(12201).putExtra("EXTRA_CHOICE", NavProtocol.visiblePoiChoice(i)).putExtra("EXTRA_PAGE_OPERATETYPE", 1));
                    if (navConversation.epoch() == jPlan && "route_loading".equals(navConversation.stage(SystemClock.elapsedRealtime()))) {
                        pollRoutes(context, jPlan, 0);
                        return new Navigator.Result(true, "已发送当前高德列表第" + i + "项的去这里请求，等待地图算路回包", "pending", "", "", "");
                    }
                    return Navigator.no("地点请求已发送，会话已更新或过期，请在地图内确认");
                } catch (RuntimeException e) {
                    retireFailedPlan(jPlan);
                    return Navigator.no("未能发送地点选择请求，请在地图内操作");
                }
            }
            if ("select_route".equals(str2) || "select_route_start".equals(str2)) {
                boolean zEquals = "select_route_start".equals(str2);
                try {
                    context.sendBroadcast(Navigator.broadcast(10055).putExtra("EXTRA_CHANGE_ROAD", i).putExtra("EXTRA_START_NAVI", zEquals));
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                    if (navConversation.epoch() == j && navConversation.canRoute(i, jElapsedRealtime2)) {
                        if (zEquals) {
                            navConversation.starting(jElapsedRealtime2);
                            navigationDispatched(context);
                            return new Navigator.Result(true, "已发送选择方案" + i + "并开始导航的请求，等待高德确认", "pending", "", "", "");
                        }
                        navConversation.selectedRoute(jElapsedRealtime2);
                        return new Navigator.Result(true, "已发送选择方案" + i + "的请求；尚未开始导航", "pending", "", "", "");
                    }
                    return Navigator.no("上一路线请求已发送，会话已更新或过期，请在地图内确认");
                } catch (RuntimeException e2) {
                    retireFailedPlan(j);
                    return Navigator.no("路线选择请求未确认，请在地图内检查路线状态");
                }
            }
            if ("start".equals(str2)) {
                try {
                    context.sendBroadcast(Navigator.broadcast(10009));
                    long jElapsedRealtime3 = SystemClock.elapsedRealtime();
                    if (navConversation.epoch() == j && navConversation.canStart(jElapsedRealtime3)) {
                        navConversation.starting(jElapsedRealtime3);
                        navigationDispatched(context);
                        return new Navigator.Result(true, "开始当前路线的请求已发送，等待高德确认", "pending", "", "", "");
                    }
                    return Navigator.no("上一开始请求已发送，会话已更新或过期，请在地图内确认");
                } catch (RuntimeException e3) {
                    retireFailedPlan(j);
                    return Navigator.no("开始导航请求未确认，请在地图内检查路线状态");
                }
            }
            if ("route_loading".equals(strStage) || "route_list".equals(strStage) || "navigation_pending".equals(strStage)) {
                Navigator.Result resultStopIfCurrent = stopIfCurrent(context, j);
                if (resultStopIfCurrent.accepted) {
                    return new Navigator.Result(true, "已取消本次路线会话并发送结束请求，等待高德确认", "pending", "", "", "");
                }
                return resultStopIfCurrent;
            }
            cancelConversation();
            return new Navigator.Result(true, "已取消本次地点候选会话；未操作其它路线");
        }
    }

    static Navigator.Result planIfCurrent(Context context, NavProtocol.Poi poi, long j) {
        synchronized (LOCK) {
            if (j >= 0) {
                if (conversation.epoch() == j) {
                    return plan(context, poi);
                }
            }
            return Navigator.no("导航请求已被后续搜索取代");
        }
    }

    private static void retireFailedPlan(long j) {
        NavConversation navConversation = conversation;
        if (navConversation.epoch() == j) {
            clearRouteQueries();
            navConversation.retire(j);
        }
    }

    static Navigator.Result plan(Context context, NavProtocol.Poi poi) {
        synchronized (LOCK) {
            ready(context);
            cancelSearch();
            clearRouteQueries();
            NavConversation navConversation = conversation;
            long jPlan = navConversation.plan(poi, SystemClock.elapsedRealtime());
            Intent intentPutExtra = Navigator.broadcast(10007).putExtra("EXTRA_DLAT", poi.latitude).putExtra("EXTRA_DLON", poi.longitude).putExtra("EXTRA_DNAME", poi.name).putExtra("EXTRA_DEV", 0).putExtra("EXTRA_M", -1);
            if (!poi.id.isEmpty()) {
                intentPutExtra.putExtra("EXTRA_D_POI_ID", poi.id);
            }
            if (NavProtocol.pair(poi.entryLatitude, poi.entryLongitude)) {
                intentPutExtra.putExtra("ENTRY_LAT", poi.entryLatitude).putExtra("ENTRY_LON", poi.entryLongitude);
            }
            try {
                context.sendBroadcast(intentPutExtra);
                if (navConversation.epoch() == jPlan && "route_loading".equals(navConversation.stage(SystemClock.elapsedRealtime()))) {
                    pollRoutes(context, jPlan, 0);
                    return new Navigator.Result(true, "已请求路线预览；取得方案后可说方案编号开始，或选中后说开始导航", "pending", "", "", "");
                }
                return Navigator.no("路线请求已发送，会话已更新或过期，请在地图内确认");
            } catch (RuntimeException e) {
                retireFailedPlan(jPlan);
                return Navigator.no("未能发送路线预览请求，请在地图内操作");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void pollRoutes(final Context context, final long j, final int i) {
        handler.postDelayed(new Runnable() { // from class: com.local.p5home.NavAutoSession$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                NavAutoSession.lambda$pollRoutes$2(j, context, i);
            }
        }, i == 0 ? 1200L : 2000L);
    }

    static /* synthetic */ void lambda$pollRoutes$2(final long j, Context context, int i) {
        synchronized (LOCK) {
            NavConversation navConversation = conversation;
            if (navConversation.epoch() == j && "route_loading".equals(navConversation.stage(SystemClock.elapsedRealtime()))) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                long j2 = 5000 + jElapsedRealtime;
                final int iBegin = routeReply.begin(jElapsedRealtime, j2);
                if (iBegin == 0) {
                    emit("notice", "", "", "路线查询暂不可用，请在地图内确认");
                    return;
                }
                routeReplyUntil = j2;
                routeReplyEpoch = j;
                try {
                    context.sendBroadcast(Navigator.broadcast(10056).putExtra("EXTRA_TYPE", 0).putExtra("EXTRA_REQUESTCODE", iBegin));
                    if (i < 8) {
                        pollRoutes(context, j, i + 1);
                    } else {
                        handler.postDelayed(new Runnable() { // from class: com.local.p5home.NavAutoSession$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                NavAutoSession.lambda$pollRoutes$1(j, iBegin);
                            }
                        }, 5001L);
                    }
                } catch (RuntimeException e) {
                    if (j == conversation.epoch() && routeReplyEpoch == j) {
                        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                        final long jDiscard = routeReply.discard(iBegin, jElapsedRealtime2);
                        if (jDiscard < 0) {
                            return;
                        }
                        routeReplyUntil = jDiscard;
                        if (jDiscard == 0) {
                            clearRouteQueries();
                            emit("notice", "", "", "路线预览已请求，但无法读取路线方案");
                        } else {
                            handler.postDelayed(new Runnable() { // from class: com.local.p5home.NavAutoSession$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    NavAutoSession.lambda$pollRoutes$0(j, jDiscard);
                                }
                            }, Math.max(1L, (jDiscard - jElapsedRealtime2) + 1));
                        }
                    }
                }
            }
        }
    }

    static /* synthetic */ void lambda$pollRoutes$0(long j, long j2) {
        synchronized (LOCK) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            NavConversation navConversation = conversation;
            if (j == navConversation.epoch() && routeReplyEpoch == j && routeReplyUntil == j2 && jElapsedRealtime >= j2 && "route_loading".equals(navConversation.stage(jElapsedRealtime))) {
                clearRouteQueries();
                emit("notice", "", "", "尚未读取到与本次选择匹配的路线方案，请在高德界面确认");
            }
        }
    }

    static /* synthetic */ void lambda$pollRoutes$1(long j, int i) {
        synchronized (LOCK) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            NavConversation navConversation = conversation;
            if (j == navConversation.epoch() && "route_loading".equals(navConversation.stage(jElapsedRealtime)) && routeReply.expire(i, jElapsedRealtime)) {
                emit("notice", "", "", "尚未读取到与本次选择匹配的路线方案，请在高德界面确认");
            }
        }
    }

    private static void ready(Context context) {
        synchronized (LOCK) {
            if (application == null) {
                application = context.getApplicationContext();
            }
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            if (!registered) {
                IntentFilter intentFilter = new IntentFilter("AUTONAVI_STANDARD_BROADCAST_SEND");
                if (Build.VERSION.SDK_INT >= 33) {
                    application.registerReceiver(RECEIVER, intentFilter, 2);
                } else {
                    application.registerReceiver(RECEIVER, intentFilter);
                }
                registered = true;
            }
        }
    }

    static void search(Context context, String str, String str2, final long j) {
        synchronized (LOCK) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            NavConversation navConversation = conversation;
            String strStage = navConversation.stage(jElapsedRealtime);
            if (j >= 0 && j == navConversation.epoch() && ("searching".equals(strStage) || "poi_list".equals(strStage))) {
                try {
                    ready(context);
                    NavCorrelation navCorrelation = search;
                    final int iBegin = navCorrelation.begin(str2, SystemClock.elapsedRealtime() + 10000);
                    if (iBegin == 0) {
                        navCorrelation.cancel();
                        emit("notice", "", "", "搜索编号已用尽，请在地图内选择");
                        return;
                    }
                    searchEpoch = j;
                    try {
                        context.sendBroadcast(Navigator.broadcast(10023).putExtra("EXTRA_KEYWORD", str).putExtra("EXTRA_SEARCHTYPE", 0).putExtra("EXTRA_MAXCOUNT", 5).putExtra("EXTRA_DEV", 0).putExtra("EXTRA_REQUESTCODE", iBegin));
                        handler.postDelayed(new Runnable() { // from class: com.local.p5home.NavAutoSession$$ExternalSyntheticLambda5
                            @Override // java.lang.Runnable
                            public final void run() {
                                NavAutoSession.lambda$search$3(j, iBegin);
                            }
                        }, 10000L);
                    } catch (RuntimeException e) {
                        if (j == conversation.epoch() && search.cancelIfCurrent(iBegin)) {
                            emit("notice", "", "", "地图内搜索已打开；语音结果请求未发出");
                        }
                    }
                } catch (RuntimeException e2) {
                    emit("notice", "", "", "地图内搜索已打开；无法监听语音搜索结果");
                }
            }
        }
    }

    static /* synthetic */ void lambda$search$3(long j, int i) {
        synchronized (LOCK) {
            if (j == conversation.epoch() && search.expire(i, SystemClock.elapsedRealtime())) {
                emit("notice", "", "", "未收到能关联本次请求的地点列表，请在地图内选择；未回填推测结果");
            }
        }
    }

    static void navigationDispatched(final Context context) {
        NavConversation navConversation;
        final long jEpoch;
        Object obj = LOCK;
        synchronized (obj) {
            navConversation = conversation;
            jEpoch = navConversation.epoch();
            observedState = -1;
            observedAt = 0L;
        }
        try {
            ready(context);
            synchronized (obj) {
                if (navConversation.epoch() != jEpoch) {
                    return;
                }
                handler.postDelayed(new Runnable() { // from class: com.local.p5home.NavAutoSession$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        NavAutoSession.lambda$navigationDispatched$4(jEpoch, context);
                    }
                }, 700L);
            }
        } catch (RuntimeException e) {
            synchronized (LOCK) {
                if (conversation.epoch() == jEpoch) {
                    emit("notice", "", "", "请求已发送；无法监听地图状态，尚未确认结果");
                }
            }
        }
    }

    static /* synthetic */ void lambda$navigationDispatched$4(long j, Context context) {
        synchronized (LOCK) {
            if (conversation.epoch() == j) {
                requestState(context, "");
            }
        }
    }

    static Navigator.Result query(Context context, String str) throws JSONException {
        int i;
        synchronized (LOCK) {
            if (fresh() && ((i = observedState) == 8 || i == 9)) {
                return new Navigator.Result(true, "已读取近期高德状态；不证明任何特定目的地", "observed", "support", str, NavProtocol.support(i == 8));
            }
            ready(context);
            requestState(context, str);
            return new Navigator.Result(true, "已请求高德导航状态，等待回包", "pending", "", "", "");
        }
    }

    private static void requestState(Context context, String str) {
        final long j;
        synchronized (LOCK) {
            j = statusGeneration + 1;
            statusGeneration = j;
            statusUntil = SystemClock.elapsedRealtime() + 5000;
            if (!str.isEmpty() || statusEvent.isEmpty()) {
                statusEvent = str;
            }
        }
        boolean z = true;
        try {
            context.sendBroadcast(Navigator.broadcast(12404).putExtra("EXTRA_REQUEST_AUTO_STATE", 1));
            handler.postDelayed(new Runnable() { // from class: com.local.p5home.NavAutoSession$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    NavAutoSession.lambda$requestState$5(j);
                }
            }, 5100L);
        } catch (RuntimeException e) {
            synchronized (LOCK) {
                long j2 = statusGeneration;
                if (j != j2) {
                    z = false;
                }
                if (z) {
                    statusUntil = 0L;
                    statusEvent = "";
                    statusGeneration = j2 + 1;
                }
                if (z) {
                    emit("notice", "", "", "未能读取高德导航状态");
                }
            }
        }
    }

    static /* synthetic */ void lambda$requestState$5(long j) {
        synchronized (LOCK) {
            if (j == statusGeneration && statusUntil != 0 && SystemClock.elapsedRealtime() >= statusUntil) {
                statusUntil = 0L;
                statusGeneration++;
                if (statusEvent.isEmpty()) {
                    return;
                }
                statusEvent = "";
                emit("notice", "", "", "高德未返回可用状态；无法确认是否正在导航");
            }
        }
    }

    static Bundle snapshot() {
        int i;
        Bundle bundle = new Bundle();
        synchronized (LOCK) {
            boolean zFresh = fresh();
            bundle.putBoolean("observed", zFresh);
            boolean z = true;
            bundle.putBoolean("known", zFresh && ((i = observedState) == 8 || i == 9));
            if (zFresh) {
                bundle.putInt("protocolState", observedState);
                bundle.putBoolean("navigating", observedState == 8);
                if (observedState != 10) {
                    z = false;
                }
                bundle.putBoolean("simulated", z);
                bundle.putLong("ageMs", SystemClock.elapsedRealtime() - observedAt);
            }
            bundle.putString("source", "amap_protocol_broadcast");
            bundle.putBoolean("senderAuthenticated", false);
            bundle.putBoolean("destinationConfirmed", false);
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            NavConversation navConversation = conversation;
            bundle.putString("sessionStage", navConversation.stage(jElapsedRealtime));
            bundle.putLong("sessionEpoch", navConversation.epoch());
            bundle.putInt("poiCount", navConversation.poiCount(jElapsedRealtime));
            bundle.putInt("routeCount", navConversation.routeCount(jElapsedRealtime));
        }
        return bundle;
    }

    private static boolean fresh() {
        return observedAt > 0 && SystemClock.elapsedRealtime() - observedAt < 5000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void receiveSearch(Intent intent) throws JSONException {
        String strTake;
        if (intent.hasExtra("EXTRA_REQUESTCODE") && (strTake = search.take(intent.getIntExtra("EXTRA_REQUESTCODE", -1), SystemClock.elapsedRealtime())) != null) {
            long j = searchEpoch;
            NavConversation navConversation = conversation;
            if (j != navConversation.epoch()) {
                return;
            }
            if (intent.getIntExtra("SEARCH_RESULT_CODE", -1) != 0) {
                emit("notice", "", "", "地点搜索未返回普通结果，请在地图内处理城市选择或错误");
                return;
            }
            try {
                String list = NavProtocol.list(intent.getStringExtra("EXTRA_RESULT"));
                if (list.length() > 16000) {
                    emit("notice", "", "", "地点列表过长，请在地图内选择");
                } else {
                    navConversation.candidates(list, SystemClock.elapsedRealtime());
                    emit("result", strTake, list, "已返回与本次请求编号匹配的地点列表");
                }
            } catch (JSONException e) {
                emit("notice", "", "", "地点列表格式未匹配，请在地图内选择");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void receiveRoutes(Context context, Intent intent) throws JSONException {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime < routeReplyUntil) {
            long j = routeReplyEpoch;
            NavConversation navConversation = conversation;
            if (j != navConversation.epoch() || !"route_loading".equals(navConversation.stage(jElapsedRealtime))) {
                return;
            }
            boolean z = intent.hasExtra("EXTRA_REQUESTCODE") && routeReply.matches(intent.getIntExtra("EXTRA_REQUESTCODE", -1), jElapsedRealtime);
            if (!intent.hasExtra("EXTRA_REQUESTCODE") || z) {
                NavProtocol.Routes routes = NavProtocol.routes(intent.getStringExtra("EXTRA_ROAD_INFO"));
                if (navConversation.routes(routes, z, jElapsedRealtime)) {
                    clearRouteQueries();
                    emit("notice", "", "", "已读取" + routes.count + "条路线；自动出发倒计时跟随高德，可语音选择路线");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void receiveState(Intent intent) throws JSONException {
        int intExtra = intent.getIntExtra("EXTRA_STATE", -1);
        if (intExtra == 8 || intExtra == 9 || intExtra == 10) {
            synchronized (LOCK) {
                if (intExtra == 8 || intExtra == 10) {
                    NavConversation navConversation = conversation;
                    if ("route_list".equals(navConversation.stage(SystemClock.elapsedRealtime()))) {
                        navConversation.starting(SystemClock.elapsedRealtime());
                        clearRouteQueries();
                    }
                }
                if (statusUntil != 0 && SystemClock.elapsedRealtime() <= statusUntil) {
                    observedState = intExtra;
                    observedAt = SystemClock.elapsedRealtime();
                    String str = statusEvent;
                    statusEvent = "";
                    statusUntil = 0L;
                    statusGeneration++;
                    if (intExtra != 10) {
                        if (!str.isEmpty()) {
                            emit("support", str, NavProtocol.support(intExtra == 8), intExtra == 8 ? "观察到高德正在导航，未确认具体目的地" : "观察到高德当前未导航");
                            return;
                        } else {
                            emit("notice", "", "", intExtra == 8 ? "观察到高德正在导航，未确认具体目的地" : "观察到高德当前未导航");
                            return;
                        }
                    }
                    emit("notice", "", "", "观察到高德模拟导航；未确认真实导航或具体目的地");
                }
            }
        }
    }

    private static void emit(String str, String str2, String str3, String str4) {
        Navigator.ReplySink replySink;
        synchronized (LOCK) {
            replySink = sink;
        }
        if (replySink != null) {
            try {
                replySink.onReply(str, str2, str3, str4);
            } catch (RuntimeException e) {
            }
        }
    }
}
