package com.local.p5home;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes.dex */
public final class NavTrace {
    private static final Pattern EVENT = Pattern.compile("(?:(?:native|command)://)?navi\\.[A-Za-z]+(?:\\.[A-Za-z]+)*");
    private static final int MAX_DEPTH = 32;
    private static final int MAX_INPUT = 16384;
    private static final int MAX_ITEMS = 8;
    private static final int MAX_OUTPUT = 2048;
    private static final String PREFIX = "{\"items\":[";
    private static final String SUFFIX = "]}";
    private final Object LOCK = new Object();
    private final ArrayDeque<String> RING = new ArrayDeque<>();
    private int itemChars;

    public void observe(String str, String str2, String str3, String str4) throws JSONException {
        if (!point(str) || !outcome(str4) || str2 == null || str2.length() > 100 || !EVENT.matcher(str2).matches()) {
            return;
        }
        try {
            JSONObject jSONObjectPut = new JSONObject().put("point", str).put("event", str2).put("outcome", str4);
            JSONObject jSONObjectObject = object(str3);
            if (jSONObjectObject == null) {
                jSONObjectPut.put("shape", "BAD_JSON");
            } else {
                Object objOpt = jSONObjectObject.opt("poi");
                jSONObjectPut.put("shape", "OK").put("poi", (objOpt == null || objOpt == JSONObject.NULL) ? "NONE" : objOpt instanceof JSONObject ? "OBJECT" : objOpt instanceof String ? "STRING" : "OTHER").put("num", ordinal(jSONObjectObject.opt("num"))).put("numType", numberType(jSONObjectObject.opt("num"))).put("naviType", integer(jSONObjectObject.opt("naviType"), 0, 9, -1)).put("ntType", numberType(jSONObjectObject.opt("naviType"))).put("routeSelectRef", integer(jSONObjectObject.opt("routeSelectRef"), 0, 11, -1)).put("refType", numberType(jSONObjectObject.opt("routeSelectRef"))).put("pref", preference(jSONObjectObject.opt("pref"))).put("type", type(jSONObjectObject.opt("type")));
            }
            String string = jSONObjectPut.toString();
            if (string == null || string.length() + PREFIX.length() + SUFFIX.length() > MAX_OUTPUT) {
                return;
            }
            synchronized (this.LOCK) {
                this.RING.addLast(string);
                this.itemChars += string.length();
                while (true) {
                    if (this.RING.size() <= MAX_ITEMS && length() <= MAX_OUTPUT) {
                    }
                    this.itemChars -= this.RING.removeFirst().length();
                }
            }
        } catch (Exception e) {
        }
    }

    public String snapshot() {
        String string;
        synchronized (this.LOCK) {
            StringBuilder sbAppend = new StringBuilder(length()).append(PREFIX);
            Iterator<String> it = this.RING.iterator();
            boolean z = true;
            while (it.hasNext()) {
                String next = it.next();
                if (!z) {
                    sbAppend.append(',');
                }
                sbAppend.append(next);
                z = false;
            }
            string = sbAppend.append(SUFFIX).toString();
        }
        return string;
    }

    private int length() {
        return PREFIX.length() + SUFFIX.length() + this.itemChars + Math.max(0, this.RING.size() - 1);
    }

    private static boolean point(String str) {
        return "BUS".equals(str) || "QUERY".equals(str) || "RESULT".equals(str);
    }

    private static boolean outcome(String str) {
        return "PASS".equals(str) || "ACK".equals(str) || "REPLY".equals(str) || "TIMEOUT".equals(str) || "ERROR".equals(str);
    }

    private static String numberType(Object obj) {
        return (obj == null || obj == JSONObject.NULL) ? "NONE" : obj instanceof Number ? "NUMBER" : obj instanceof String ? "STRING" : "OTHER";
    }

    private static int ordinal(Object obj) throws NumberFormatException {
        if (!(obj instanceof String)) {
            return integer(obj, 1, 10, 0);
        }
        String strTrim = ((String) obj).trim();
        if (strTrim.length() > 12) {
            return 0;
        }
        try {
            long j = Long.parseLong(strTrim);
            if (j < 1 || j > 10) {
                return 0;
            }
            return (int) j;
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    private static int integer(Object obj, int i, int i2, int i3) {
        if (!(obj instanceof Integer) && !(obj instanceof Long)) {
            return i3;
        }
        long jLongValue = ((Number) obj).longValue();
        return (jLongValue < ((long) i) || jLongValue > ((long) i2)) ? i3 : (int) jLongValue;
    }

    private static String preference(Object obj) {
        if (obj == null || obj == JSONObject.NULL) {
            return "EMPTY";
        }
        if (!(obj instanceof String)) {
            return "OTHER";
        }
        String strTrim = ((String) obj).trim();
        if (strTrim.isEmpty()) {
            return "EMPTY";
        }
        return "默认".equals(strTrim) ? "DEFAULT" : "OTHER";
    }

    private static String type(Object obj) {
        if (obj == null || obj == JSONObject.NULL) {
            return "EMPTY";
        }
        if (!(obj instanceof String)) {
            return "OTHER";
        }
        String strTrim = ((String) obj).trim();
        if (strTrim.isEmpty()) {
            return "EMPTY";
        }
        return "waypoint".equals(strTrim) ? "WAYPOINT" : "OTHER";
    }

    private static JSONObject object(String str) throws JSONException {
        if (str == null || str.length() > MAX_INPUT) {
            return null;
        }
        boolean z = false;
        int i = 0;
        boolean z2 = false;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (z) {
                if (z2) {
                    z2 = false;
                } else if (cCharAt == '\\') {
                    z2 = true;
                } else if (cCharAt == '\"') {
                    z = false;
                }
            } else if (cCharAt == '\"') {
                z = true;
            } else if (cCharAt == '{' || cCharAt == '[') {
                i++;
                if (i > MAX_DEPTH) {
                    return null;
                }
            } else if ((cCharAt == '}' || cCharAt == ']') && i - 1 < 0) {
                return null;
            }
        }
        if (z || i != 0) {
            return null;
        }
        try {
            JSONTokener jSONTokener = new JSONTokener(str);
            Object objNextValue = jSONTokener.nextValue();
            if ((objNextValue instanceof JSONObject) && jSONTokener.nextClean() == 0) {
                return (JSONObject) objNextValue;
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    NavTrace() {
    }
}
