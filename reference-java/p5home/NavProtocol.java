package com.local.p5home;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class NavProtocol {
    static final String ASR = "g3.asr.navigate";
    static final String CONTROL = "g3.asr.nav.control";
    static final int POI_OPERATE_PREVIEW = 1;
    static final String SEARCH = "native://navi.poi.search";
    static final String START = "command://navi.control.start";
    static final String STOP = "command://navi.control.close";
    static final String STATE = "native://navi.navigating.get";
    static final String CANCEL = "command://navi.search.close";
    static final String CONFIRM_CANCEL = "command://navi.confirm.cancel";
    static final String CONFIRM = "command://navi.confirm.ok";
    static final String ROUTE_SELECT = "command://navi.route.select";
    static final String ROUTE_COUNT = "native://navi.select.route.count";
    private static final Set<String> EVENTS = new HashSet(Arrays.asList(SEARCH, START, STOP, STATE, CANCEL, CONFIRM_CANCEL, CONFIRM, ROUTE_SELECT, ROUTE_COUNT));

    private NavProtocol() {
    }

    static String event(String str) {
        if (ASR.equals(str) || CONTROL.equals(str)) {
            return str;
        }
        if (str == null || str.length() > 120) {
            return "";
        }
        Set<String> set = EVENTS;
        if (set.contains(str)) {
            return str;
        }
        if (str.indexOf("://") < 0) {
            for (String str2 : set) {
                if (str2.substring(str2.indexOf("://") + 3).equals(str)) {
                    return str2;
                }
            }
        }
        return "";
    }

    static JSONObject object(String str) throws JSONException {
        if (str == null || str.trim().isEmpty()) {
            return new JSONObject();
        }
        if (str.length() > 16384) {
            throw new JSONException("payload_too_large");
        }
        return new JSONObject(str);
    }

    static String text(Object obj, int i) {
        if (!(obj instanceof String)) {
            return "";
        }
        String strTrim = ((String) obj).trim();
        if (strTrim.isEmpty() || strTrim.length() > i) {
            return "";
        }
        for (int i2 = 0; i2 < strTrim.length(); i2++) {
            if (Character.isISOControl(strTrim.charAt(i2))) {
                return "";
            }
        }
        return strTrim;
    }

    static String searchText(JSONObject jSONObject) {
        String strText = text(jSONObject.opt("destinationTarget"), 120);
        if (strText.isEmpty()) {
            strText = text(jSONObject.opt("destinationName"), 120);
        }
        if (strText.isEmpty()) {
            return "";
        }
        return text(text(jSONObject.opt("destinationPrefix"), 120) + strText, 120);
    }

    static String asrText(JSONObject jSONObject) {
        String strText = text(jSONObject.opt("query"), 120);
        if (!strText.isEmpty()) {
            return strText;
        }
        String strText2 = text(jSONObject.opt("text"), 180);
        String[] strArr = {"请导航到", "请导航去", "导航到", "导航去"};
        for (int i = 0; i < 4; i++) {
            String str = strArr[i];
            if (strText2.startsWith(str)) {
                String strTrim = strText2.substring(str.length()).replaceAll("[。！!？?]+$", "").trim();
                return (strTrim.contains("然后") || strTrim.contains("并且") || strTrim.contains("顺便") || strTrim.contains("打开车") || strTrim.contains("关闭车")) ? "" : text(strTrim, 120);
            }
        }
        return "";
    }

    static final class Poi {
        final boolean direct;
        final double entryLatitude;
        final double entryLongitude;
        final String id;
        final double latitude;
        final double longitude;
        final String name;

        Poi(String str, String str2, double d, double d2, double d3, double d4, boolean z) {
            this.name = str;
            this.id = str2;
            this.latitude = d;
            this.longitude = d2;
            this.entryLatitude = d3;
            this.entryLongitude = d4;
            this.direct = z;
        }
    }

    static Poi selected(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectObject;
        double dNumber;
        Object objOpt = jSONObject.opt("poi");
        if (objOpt instanceof JSONObject) {
            jSONObjectObject = (JSONObject) objOpt;
        } else {
            jSONObjectObject = objOpt instanceof String ? object((String) objOpt) : null;
        }
        if (jSONObjectObject == null) {
            return null;
        }
        String strText = text(jSONObjectObject.opt("name"), 120);
        if (strText.isEmpty()) {
            strText = text(jSONObjectObject.opt("dst_name"), 120);
        }
        String str = strText;
        if (str.isEmpty()) {
            return null;
        }
        double dNumber2 = number(jSONObjectObject.opt("naviLat"));
        double dNumber3 = number(jSONObjectObject.opt("naviLon"));
        String strText2 = text(jSONObjectObject.opt("source"), 80);
        boolean zEquals = "G3_AMAP_SEARCH".equals(strText2);
        if (zEquals) {
            dNumber2 = number(jSONObjectObject.opt("latitude"));
            dNumber3 = number(jSONObjectObject.opt("longitude"));
        }
        double d = dNumber3;
        String strText3 = text(jSONObject.opt("type"), 30);
        String strText4 = text(jSONObject.opt("pref"), 80);
        boolean z = true;
        if (!(!"waypoint".equals(strText3) && (!jSONObject.has("pref") || (jSONObject.opt("pref") instanceof String)) && ((!jSONObject.has("type") || (jSONObject.opt("type") instanceof String)) && ((!jSONObject.has("naviType") || zero(jSONObject.opt("naviType"))) && ((!jSONObject.has("routeSelectRef") || zero(jSONObject.opt("routeSelectRef"))) && (strText4.isEmpty() || "默认".equals(strText4)))))) || !pair(dNumber2, d) || (!zEquals && !"AICloud_AMAP".equals(strText2))) {
            z = false;
        }
        JSONObject jSONObjectOptJSONObject = jSONObjectObject.optJSONObject("entrLocation");
        String strText5 = text(jSONObjectObject.opt("poiId"), 256);
        double dNumber4 = jSONObjectOptJSONObject == null ? Double.NaN : number(jSONObjectOptJSONObject.opt("latitude"));
        if (jSONObjectOptJSONObject != null) {
            dNumber = number(jSONObjectOptJSONObject.opt("longitude"));
        } else {
            dNumber = Double.NaN;
        }
        return new Poi(str, strText5, dNumber2, d, dNumber4, dNumber, z);
    }

    static boolean zero(Object obj) {
        return (obj instanceof Number) && ((Number) obj).doubleValue() == 0.0d;
    }

    static int ordinal(JSONObject jSONObject, String str) {
        Object objOpt = jSONObject.opt(str);
        if (objOpt instanceof String) {
            String str2 = (String) objOpt;
            if (str2.matches("[1-9]|10")) {
                return Integer.parseInt(str2);
            }
            return 0;
        }
        if (!(objOpt instanceof Number)) {
            return 0;
        }
        double dDoubleValue = ((Number) objOpt).doubleValue();
        if (dDoubleValue < 1.0d || dDoubleValue > 10.0d) {
            return 0;
        }
        int i = (int) dDoubleValue;
        if (dDoubleValue == i) {
            return i;
        }
        return 0;
    }

    static int visiblePoiChoice(int i) {
        if (i < 1 || i > 10) {
            throw new IllegalArgumentException("invalid_visible_poi_ordinal");
        }
        return i - 1;
    }

    static double number(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        return Double.NaN;
    }

    static boolean pair(double d, double d2) {
        return Double.isFinite(d) && Double.isFinite(d2) && d >= -90.0d && d <= 90.0d && d2 >= -180.0d && d2 <= 180.0d && !(d == 0.0d && d2 == 0.0d);
    }

    static String support(boolean z) throws JSONException {
        return new JSONObject().put("type", "custom").put("duiWidget", "custom").put("status", z ? "1" : "0").put("tts", "").toString();
    }

    static final class Routes {
        final double arriveLatitude;
        final double arriveLongitude;
        final int count;
        final String id;
        final double latitude;
        final double longitude;

        Routes(int i, double d, double d2, double d3, double d4, String str) {
            this.count = i;
            this.latitude = d;
            this.longitude = d2;
            this.arriveLatitude = d3;
            this.arriveLongitude = d4;
            this.id = str;
        }

        boolean matches(Poi poi) {
            return (this.id.isEmpty() || poi.id.isEmpty()) ? NavProtocol.near(this.latitude, this.longitude, poi.latitude, poi.longitude) || NavProtocol.near(this.arriveLatitude, this.arriveLongitude, poi.latitude, poi.longitude) || NavProtocol.near(this.latitude, this.longitude, poi.entryLatitude, poi.entryLongitude) || NavProtocol.near(this.arriveLatitude, this.arriveLongitude, poi.entryLatitude, poi.entryLongitude) : this.id.equals(poi.id);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean near(double d, double d2, double d3, double d4) {
        return pair(d, d2) && pair(d3, d4) && Math.abs(d - d3) <= 1.0E-4d && Math.abs(d2 - d4) <= 1.0E-4d;
    }

    static Routes routes(String str) throws JSONException {
        if (str == null || str.length() > 65536) {
            throw new JSONException("invalid_route_info");
        }
        JSONObject jSONObject = new JSONObject(str);
        Object objOpt = jSONObject.opt("pathNum");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("path_info");
        if (objOpt instanceof Number) {
            Number number = (Number) objOpt;
            if (number.doubleValue() == number.intValue() && number.intValue() >= 1 && number.intValue() <= 20 && jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() == number.intValue()) {
                double dRouteNumber = routeNumber(jSONObject.opt("ToPoiLatitude"));
                double dRouteNumber2 = routeNumber(jSONObject.opt("ToPoiLongitude"));
                double dRouteNumber3 = routeNumber(jSONObject.opt("ArrivePoiLatitude"));
                double dRouteNumber4 = routeNumber(jSONObject.opt("ArrivePoiLongitude"));
                if (pair(dRouteNumber, dRouteNumber2) || pair(dRouteNumber3, dRouteNumber4)) {
                    return new Routes(Math.min(3, number.intValue()), dRouteNumber, dRouteNumber2, dRouteNumber3, dRouteNumber4, text(jSONObject.opt("endPoiid"), 256));
                }
                throw new JSONException("route_destination_missing");
            }
        }
        throw new JSONException("route_count_not_observed");
    }

    private static double routeNumber(Object obj) {
        if (obj instanceof Number) {
            return number(obj);
        }
        if (!(obj instanceof String) || ((String) obj).length() > 32) {
            return Double.NaN;
        }
        try {
            return Double.parseDouble((String) obj);
        } catch (NumberFormatException e) {
            return Double.NaN;
        }
    }

    static String list(String str) throws JSONException {
        if (str == null || str.length() > 65536) {
            throw new JSONException("result_too_large");
        }
        JSONArray jSONArray = new JSONArray(str);
        JSONArray jSONArray2 = new JSONArray();
        if (jSONArray.length() > 50) {
            throw new JSONException("result_count_invalid");
        }
        int i = 0;
        while (i < jSONArray.length() && jSONArray2.length() < 5) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            String strText = text(jSONObject.opt("name"), 120);
            double dNumber = number(jSONObject.opt("latitude"));
            JSONArray jSONArray3 = jSONArray;
            int i2 = i;
            double dNumber2 = number(jSONObject.opt("longitude"));
            if (strText.isEmpty() || !pair(dNumber, dNumber2)) {
                throw new JSONException("invalid_poi");
            }
            JSONArray jSONArray4 = jSONArray2;
            JSONObject jSONObjectPut = new JSONObject().put("name", strText).put("dst_name", strText).put("poiId", text(jSONObject.opt("poiid"), 256)).put("address", text(jSONObject.opt("address"), 256)).put("latitude", dNumber).put("longitude", dNumber2).put("naviLat", dNumber).put("naviLon", dNumber2).put("source", "G3_AMAP_SEARCH");
            double dNumber3 = number(jSONObject.opt("entry_latitude"));
            double dNumber4 = number(jSONObject.opt("entry_longitude"));
            if (pair(dNumber3, dNumber4)) {
                jSONObjectPut.put("entrLocation", new JSONObject().put("latitude", dNumber3).put("longitude", dNumber4));
            }
            jSONArray4.put(new JSONObject().put("type", "content").put("duiWidget", "content").put("title", strText).put("subTitle", text(jSONObject.opt("address"), 256)).put("extra", new JSONObject().put("navi", jSONObjectPut.toString())));
            i = i2 + 1;
            jSONArray2 = jSONArray4;
            jSONArray = jSONArray3;
        }
        JSONArray jSONArray5 = jSONArray2;
        return new JSONObject().put("type", "list").put("duiWidget", "list").put("extra", new JSONObject().put("extraType", "navi").put("title", "请选择地点")).put("count", jSONArray5.length()).put("content", jSONArray5).toString();
    }
}
