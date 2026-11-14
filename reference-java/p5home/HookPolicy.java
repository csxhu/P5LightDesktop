package com.local.p5home;

import java.security.MessageDigest;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
final class HookPolicy {
    static final String OEM = "com.xiaopeng.montecarlo";
    private static final Pattern DESTINATION = Pattern.compile("^(?:(?:请|麻烦)(?:你)?\\s*)?(?:(?:帮我|我要|我想)\\s*)?导航\\s*(?:到|去|至)\\s*(.+)$");
    private static final Pattern ORDINAL = Pattern.compile("(?:选择|选)?(?:第([1-9]|10|[一二两三四五六七八九十])(?:个(?:地点|目的地|方案|路线|线路)?|条(?:路线|线路)?)|方案([1-9]|10|[一二两三四五六七八九十]))");

    interface Submit {
        boolean send() throws Exception;
    }

    static final class Config {
        final long at;
        final boolean hasApi;
        final String nav;
        final boolean navAvailable;
        final long navEpoch;
        final int navPoiCount;
        final int navRouteCount;
        final String navStage;
        final boolean oemMapAvailable;
        final String prefix;
        final boolean qa;
        final boolean speechOutputReady;
        final boolean voice;

        Config(boolean z, boolean z2, boolean z3, String str, String str2, long j) {
            this(z, z2, z3, str, str2, j, false);
        }

        Config(boolean z, boolean z2, boolean z3, String str, String str2, long j, boolean z4) {
            this(z, z2, z3, str, str2, j, z4, true, false, "idle", -1L, 0, 0);
        }

        Config(boolean z, boolean z2, boolean z3, String str, String str2, long j, boolean z4, boolean z5, boolean z6, String str3, long j2, int i, int i2) {
            this.voice = z;
            this.qa = z2;
            this.hasApi = z3;
            this.prefix = str == null ? "" : str.trim();
            this.nav = str2 == null ? "" : str2;
            this.at = j;
            this.speechOutputReady = z4;
            this.navAvailable = z5;
            this.oemMapAvailable = z6;
            this.navStage = str3 == null ? "idle" : str3;
            this.navEpoch = j2;
            this.navPoiCount = i;
            this.navRouteCount = i2;
        }

        static Config disabled(long j) {
            return new Config(false, false, false, "", "", j);
        }

        boolean active(long j) {
            if (this.voice) {
                long j2 = this.at;
                if (j >= j2 && j - j2 <= 15000) {
                    return true;
                }
            }
            return false;
        }

        boolean nativeNav() {
            return this.nav.isEmpty() || "com.xiaopeng.montecarlo".equals(this.nav) || "native".equals(this.nav) || "oem".equals(this.nav);
        }
    }

    static final class Candidate {
        final String event;
        final int index;
        final String kind;
        final long navEpoch;
        final String text;

        Candidate(String str, String str2, String str3) {
            this(str, str2, str3, 0);
        }

        Candidate(String str, String str2, String str3, int i) {
            this(str, str2, str3, i, -1L);
        }

        Candidate(String str, String str2, String str3, int i, long j) {
            this.kind = str;
            this.text = str2;
            this.event = str3;
            this.index = i;
            this.navEpoch = j;
        }
    }

    static Candidate finalText(Config config, String str, boolean z, boolean z2, long j) {
        return finalText(config, str, z, z2, j, false);
    }

    static Candidate finalText(Config config, String str, boolean z, boolean z2, long j, boolean z3) {
        if (config == null || !config.active(j) || !z || z2 || !plain(str, 1000)) {
            return null;
        }
        String strTrim = str.trim().replaceFirst("[，。！？!?,]+$", "").trim();
        if (!config.prefix.isEmpty() && config.prefix.length() <= 32 && strTrim.startsWith(config.prefix)) {
            if (!config.qa || !config.hasApi) {
                return null;
            }
            String strTrim2 = strTrim.substring(config.prefix.length()).replaceFirst("^[\\s，,:：。]+", "").trim();
            if (plain(strTrim2, 1000)) {
                return new Candidate("qa", strTrim2, "");
            }
            return null;
        }
        if (strTrim.matches("退出|退出语音|再见|不用了|退下")) {
            return null;
        }
        Candidate candidateNavigationText = navigationText(config, strTrim);
        if (candidateNavigationText != null) {
            return candidateNavigationText;
        }
        if (z3 && config.qa && config.hasApi) {
            return new Candidate("qa", strTrim, "");
        }
        return null;
    }

    private static Candidate navigationText(Config config, String str) {
        if (config.nativeNav() || !config.navAvailable) {
            return null;
        }
        if (str.matches("(?:结束|停止|退出|取消|关闭)(?:当前)?导航[吧了]?")) {
            return new Candidate("nav", "stop", "command://navi.control.close", 0, config.navEpoch);
        }
        Matcher matcher = DESTINATION.matcher(str);
        boolean z = true;
        if (matcher.matches()) {
            String strTrim = matcher.group(1).replaceFirst("^[\\s，,:：。]+", "").trim();
            if (plain(strTrim, 120) && !strTrim.matches(".*(?:然后|并且|顺便|同时).*")) {
                return new Candidate("nav", strTrim, "g3.asr.navigate");
            }
        }
        if (!Navigator.AMAP_AUTO.equals(config.nav) || config.navEpoch < 0) {
            return null;
        }
        boolean z2 = "poi_list".equals(config.navStage) && config.navPoiCount > 0;
        boolean z3 = "route_list".equals(config.navStage) && config.navRouteCount > 0;
        Matcher matcher2 = ORDINAL.matcher(str);
        if (matcher2.matches() && (z2 || z3)) {
            int iNumber = number(matcher2.group(1) == null ? matcher2.group(2) : matcher2.group(1));
            if (!str.contains("路线") && !str.contains("线路") && !str.contains("方案") && !str.contains("条")) {
                z = false;
            }
            if (z2 && !z && iNumber <= config.navPoiCount) {
                return new Candidate("nav", "select_poi", "g3.asr.nav.control", iNumber, config.navEpoch);
            }
            if (z3 && iNumber <= config.navRouteCount && iNumber <= 3) {
                return new Candidate("nav", "select_route", "g3.asr.nav.control", iNumber, config.navEpoch);
            }
        }
        if (z3 && str.matches("(?:开始|开始导航|开始出发|出发)")) {
            return new Candidate("nav", "start", "g3.asr.nav.control", 0, config.navEpoch);
        }
        return null;
    }

    static boolean mightControl(String str) {
        if (str == null || str.length() > 24) {
            return false;
        }
        String strTrim = str.trim();
        return ORDINAL.matcher(strTrim).matches() || strTrim.matches("开始(?:导航)?|取消(?:导航|路线)?");
    }

    private static int number(String str) {
        if ("10".equals(str) || "十".equals(str)) {
            return 10;
        }
        if ("两".equals(str)) {
            return 2;
        }
        int iIndexOf = "一二三四五六七八九".indexOf(str);
        return iIndexOf >= 0 ? iIndexOf + 1 : Integer.parseInt(str);
    }

    static String navigationEvent(Config config, String str, String str2, long j) {
        if (config == null || !config.active(j) || config.nativeNav() || !config.navAvailable || str == null || str.length() > 120 || str2 == null || str2.length() > 16384) {
            return null;
        }
        String strCanonicalNavigation = canonicalNavigation(str);
        if ("command://navi.route.select".equals(strCanonicalNavigation) || "native://navi.select.route.count".equals(strCanonicalNavigation) || "command://navi.confirm.ok".equals(strCanonicalNavigation) || "command://navi.confirm.cancel".equals(strCanonicalNavigation)) {
            return null;
        }
        return strCanonicalNavigation;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.lang.String canonicalNavigation(java.lang.String r10) {
        /*
            r0 = 0
            if (r10 != 0) goto L4
            return r0
        L4:
            int r1 = r10.hashCode()
            java.lang.String r2 = "native://navi.poi.search"
            java.lang.String r3 = "command://navi.confirm.cancel"
            java.lang.String r4 = "command://navi.confirm.ok"
            java.lang.String r5 = "command://navi.route.select"
            java.lang.String r6 = "native://navi.navigating.get"
            java.lang.String r7 = "native://navi.select.route.count"
            java.lang.String r8 = "command://navi.control.start"
            java.lang.String r9 = "command://navi.control.close"
            switch(r1) {
                case -2136970098: goto Lb2;
                case -2121968904: goto Laa;
                case -1361583363: goto La1;
                case -1169768037: goto L99;
                case -1156319586: goto L8f;
                case -1151012688: goto L84;
                case -629123846: goto L7b;
                case -463743293: goto L72;
                case -60216351: goto L69;
                case 455938324: goto L5f;
                case 603259273: goto L54;
                case 1021336338: goto L48;
                case 1255072401: goto L3f;
                case 1707168223: goto L34;
                case 1722169417: goto L29;
                case 1814879872: goto L1d;
                default: goto L1b;
            }
        L1b:
            goto Lba
        L1d:
            java.lang.String r1 = "navi.select.route.count"
            boolean r10 = r10.equals(r1)
            if (r10 == 0) goto L1b
            r10 = 10
            goto Lbb
        L29:
            java.lang.String r1 = "navi.control.start"
            boolean r10 = r10.equals(r1)
            if (r10 == 0) goto L1b
            r10 = 2
            goto Lbb
        L34:
            java.lang.String r1 = "navi.control.close"
            boolean r10 = r10.equals(r1)
            if (r10 == 0) goto L1b
            r10 = 4
            goto Lbb
        L3f:
            boolean r10 = r10.equals(r2)
            if (r10 == 0) goto L1b
            r10 = 1
            goto Lbb
        L48:
            java.lang.String r1 = "navi.confirm.ok"
            boolean r10 = r10.equals(r1)
            if (r10 == 0) goto L1b
            r10 = 12
            goto Lbb
        L54:
            java.lang.String r1 = "navi.route.select"
            boolean r10 = r10.equals(r1)
            if (r10 == 0) goto L1b
            r10 = 8
            goto Lbb
        L5f:
            java.lang.String r1 = "navi.poi.search"
            boolean r10 = r10.equals(r1)
            if (r10 == 0) goto L1b
            r10 = 0
            goto Lbb
        L69:
            boolean r10 = r10.equals(r3)
            if (r10 == 0) goto L1b
            r10 = 15
            goto Lbb
        L72:
            boolean r10 = r10.equals(r4)
            if (r10 == 0) goto L1b
            r10 = 13
            goto Lbb
        L7b:
            boolean r10 = r10.equals(r5)
            if (r10 == 0) goto L1b
            r10 = 9
            goto Lbb
        L84:
            java.lang.String r1 = "navi.confirm.cancel"
            boolean r10 = r10.equals(r1)
            if (r10 == 0) goto L1b
            r10 = 14
            goto Lbb
        L8f:
            java.lang.String r1 = "navi.navigating.get"
            boolean r10 = r10.equals(r1)
            if (r10 == 0) goto L1b
            r10 = 6
            goto Lbb
        L99:
            boolean r10 = r10.equals(r6)
            if (r10 == 0) goto L1b
            r10 = 7
            goto Lbb
        La1:
            boolean r10 = r10.equals(r7)
            if (r10 == 0) goto L1b
            r10 = 11
            goto Lbb
        Laa:
            boolean r10 = r10.equals(r8)
            if (r10 == 0) goto L1b
            r10 = 3
            goto Lbb
        Lb2:
            boolean r10 = r10.equals(r9)
            if (r10 == 0) goto L1b
            r10 = 5
            goto Lbb
        Lba:
            r10 = -1
        Lbb:
            switch(r10) {
                case 0: goto Lc6;
                case 1: goto Lc6;
                case 2: goto Lc5;
                case 3: goto Lc5;
                case 4: goto Lc4;
                case 5: goto Lc4;
                case 6: goto Lc3;
                case 7: goto Lc3;
                case 8: goto Lc2;
                case 9: goto Lc2;
                case 10: goto Lc1;
                case 11: goto Lc1;
                case 12: goto Lc0;
                case 13: goto Lc0;
                case 14: goto Lbf;
                case 15: goto Lbf;
                default: goto Lbe;
            }
        Lbe:
            return r0
        Lbf:
            return r3
        Lc0:
            return r4
        Lc1:
            return r7
        Lc2:
            return r5
        Lc3:
            return r6
        Lc4:
            return r9
        Lc5:
            return r8
        Lc6:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.HookPolicy.canonicalNavigation(java.lang.String):java.lang.String");
    }

    static boolean plain(String str, int i) {
        if (str == null || str.trim().isEmpty() || str.length() > i) {
            return false;
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if ((cCharAt < ' ' && cCharAt != '\n' && cCharAt != '\t') || cCharAt == 127) {
                return false;
            }
        }
        return true;
    }

    static boolean safeId(String str) {
        return str != null && str.matches("[A-Za-z0-9._-]{1,100}");
    }

    static boolean replyEnvelope(String str, String str2, String str3, String str4, String str5) {
        if (!safeId(str)) {
            return false;
        }
        if ("session_end".equals(str2) || "turn_complete".equals(str2) || "turn_started".equals(str2)) {
            if (str3 != null && !str3.isEmpty()) {
                return false;
            }
            if (str4 == null || str4.isEmpty()) {
                return str5 == null || str5.isEmpty();
            }
            return false;
        }
        if ("transcript".equals(str2)) {
            if (!plain(str3, 1200)) {
                return false;
            }
            if (str4 == null || str4.isEmpty()) {
                return str5 == null || str5.isEmpty();
            }
            return false;
        }
        if ("speech".equals(str2) || "notice".equals(str2)) {
            return plain(str3, 1200);
        }
        if (str5 == null || str5.length() > 16384) {
            return false;
        }
        if ("result".equals(str2)) {
            return "native://navi.poi.search".equals(str4) || "native://navi.nearby.search".equals(str4);
        }
        if ("support".equals(str2)) {
            return "native://navi.navigating.get".equals(str4) || "native://navi.select.route.count".equals(str4);
        }
        return false;
    }

    static boolean replyEnabled(Config config, String str, long j) {
        if ("notice".equals(str) || "session_end".equals(str) || "turn_complete".equals(str) || "turn_started".equals(str) || "transcript".equals(str)) {
            return true;
        }
        if (config == null || !config.active(j)) {
            return false;
        }
        return "speech".equals(str) ? config.qa && config.hasApi : ("result".equals(str) || "support".equals(str)) && !config.nativeNav();
    }

    static boolean searchReplyOwned(Config config, long j, long j2) {
        return config != null && config.active(j2) && !config.nativeNav() && config.navAvailable && j >= 0 && config.navEpoch == j && ("searching".equals(config.navStage) || "poi_list".equals(config.navStage));
    }

    static boolean routeReplyOwned(Config config, long j, long j2) {
        return config != null && config.active(j2) && !config.nativeNav() && config.navAvailable && j >= 0 && config.navEpoch == j && "route_list".equals(config.navStage) && config.navRouteCount > 0;
    }

    static String digest(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(str.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder();
            for (byte b : bArrDigest) {
                sb.append(String.format(Locale.ROOT, "%02x", Integer.valueOf(b & 255)));
            }
            return sb.toString();
        } catch (Exception e) {
            throw new IllegalStateException("digest_unavailable");
        }
    }

    static final class Accepted {
        private final LinkedHashMap<String, Long> seen = new LinkedHashMap<>();

        Accepted() {
        }

        synchronized boolean submit(String str, long j, long j2, Submit submit) {
            Iterator<Map.Entry<String, Long>> it = this.seen.entrySet().iterator();
            while (it.hasNext()) {
                if (it.next().getValue().longValue() < j) {
                    it.remove();
                }
            }
            if (this.seen.containsKey(str)) {
                return true;
            }
            try {
                if (!submit.send()) {
                    return false;
                }
                if (this.seen.size() >= 64) {
                    LinkedHashMap<String, Long> linkedHashMap = this.seen;
                    linkedHashMap.remove(linkedHashMap.keySet().iterator().next());
                }
                this.seen.put(str, Long.valueOf(j + j2));
                return true;
            } catch (Exception e) {
                return false;
            }
        }
    }

    static final class Replies {
        private final LinkedHashMap<String, String> states = new LinkedHashMap<>();

        Replies() {
        }

        synchronized String state(String str) {
            return this.states.get(str);
        }

        synchronized boolean begin(String str) {
            String key;
            if (this.states.containsKey(str)) {
                return false;
            }
            if (this.states.size() >= 64) {
                Iterator<Map.Entry<String, String>> it = this.states.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        key = null;
                        break;
                    }
                    Map.Entry<String, String> next = it.next();
                    if (!"pending".equals(next.getValue())) {
                        key = next.getKey();
                        break;
                    }
                }
                if (key == null) {
                    return false;
                }
                this.states.remove(key);
            }
            this.states.put(str, "pending");
            return true;
        }

        synchronized void finish(String str, boolean z) {
            if (this.states.containsKey(str)) {
                this.states.put(str, z ? "dispatched" : "failed");
            }
        }
    }

    private HookPolicy() {
    }
}
