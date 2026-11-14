package com.local.p5home;

import java.net.URI;
import java.util.Locale;

/* loaded from: classes.dex */
final class ConfigPolicy {
    static String endpoint(String str) throws Exception {
        String strTrim = str == null ? "" : str.trim();
        while (strTrim.endsWith("/")) {
            strTrim = strTrim.substring(0, strTrim.length() - 1);
        }
        try {
            URI uri = new URI(strTrim);
            if (!"https".equalsIgnoreCase(uri.getScheme()) || uri.getHost() == null || uri.getUserInfo() != null || uri.getQuery() != null || uri.getFragment() != null || strTrim.length() > 500) {
                throw new Exception();
            }
            return strTrim;
        } catch (Exception e) {
            throw new IllegalArgumentException("接口地址需要有效 HTTPS 地址，不含账号、查询参数或片段");
        }
    }

    static String protocol(String str) {
        if ("ark".equals(str) || "openai".equals(str) || "responses".equals(str)) {
            return str;
        }
        throw new IllegalArgumentException("请选择支持的接口格式");
    }

    static String origin(String str) {
        try {
            URI uri = new URI(endpoint(str));
            int port = uri.getPort();
            return "https://" + uri.getHost().toLowerCase(Locale.ROOT) + ((port < 0 || port == 443) ? "" : ":" + port);
        } catch (Exception e) {
            throw new IllegalArgumentException("接口地址无效");
        }
    }

    private ConfigPolicy() {
    }
}
