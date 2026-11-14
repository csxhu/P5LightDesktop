package com.local.p5home;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLException;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ArkClient {
    private volatile HttpsURLConnection active;

    public static final class ApiException extends IOException {
        public ApiException(String str) {
            super(str);
        }
    }

    public void cancel() {
        HttpsURLConnection httpsURLConnection = this.active;
        if (httpsURLConnection != null) {
            httpsURLConnection.disconnect();
        }
    }

    public String ask(String str, String str2, String str3, String str4) throws Exception {
        return ask("ark", str, str2, str3, str4);
    }

    public String ask(String str, String str2, String str3, String str4, String str5) throws Exception {
        String str6;
        if (str3 == null || str3.trim().isEmpty()) {
            throw new ApiException("请先填写模型 ID 或推理接入点 ID");
        }
        if (str4 == null || str4.trim().isEmpty()) {
            throw new ApiException("请先保存 API Key");
        }
        if (str5 == null || str5.trim().isEmpty() || str5.length() > 1000) {
            throw new ApiException("问题需要 1—1000 个字符");
        }
        String strValidateEndpoint = ConfigStore.validateEndpoint(str2);
        ConfigPolicy.protocol(str);
        boolean z = "responses".equals(str) || ("ark".equals(str) && usesResponses(strValidateEndpoint, str3));
        if ((!z && strValidateEndpoint.endsWith("/responses")) || (z && strValidateEndpoint.endsWith("/chat/completions"))) {
            throw new ApiException("接口格式与完整地址不一致，请核对接口格式和地址");
        }
        if (strValidateEndpoint.endsWith("/chat/completions") || strValidateEndpoint.endsWith("/responses")) {
            str6 = strValidateEndpoint;
        } else {
            str6 = strValidateEndpoint + (z ? "/responses" : "/chat/completions");
        }
        JSONArray jSONArrayPut = new JSONArray().put(new JSONObject().put("role", "system").put("content", "你是车载语音问答助手。用简体中文简洁回答，优先给直接答案，通常不超过200字。不要声称已操作车辆或应用。")).put(new JSONObject().put("role", "user").put("content", str5.trim()));
        JSONObject jSONObjectPut = new JSONObject().put("model", str3.trim()).put("stream", false);
        if (z) {
            jSONObjectPut.put("input", jSONArrayPut).put("max_output_tokens", 600).put("store", false);
            if ("ark".equals(str) && str3.startsWith("doubao-seed-character-")) {
                jSONObjectPut.put("thinking", new JSONObject().put("type", "disabled"));
            }
        } else {
            jSONObjectPut.put("messages", jSONArrayPut).put("api.openai.com".equalsIgnoreCase(new URL(strValidateEndpoint).getHost()) ? "max_completion_tokens" : "max_tokens", 600);
        }
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(str6).openConnection();
        this.active = httpsURLConnection;
        try {
            try {
                httpsURLConnection.setInstanceFollowRedirects(false);
                httpsURLConnection.setConnectTimeout(12000);
                httpsURLConnection.setReadTimeout(45000);
                httpsURLConnection.setRequestMethod("POST");
                httpsURLConnection.setRequestProperty("Content-Type", "application/json; charset=utf-8");
                httpsURLConnection.setRequestProperty("Accept", "application/json");
                httpsURLConnection.setRequestProperty("Authorization", "Bearer " + str4.trim());
                httpsURLConnection.setDoOutput(true);
                byte[] bytes = jSONObjectPut.toString().getBytes(StandardCharsets.UTF_8);
                httpsURLConnection.setFixedLengthStreamingMode(bytes.length);
                OutputStream outputStream = httpsURLConnection.getOutputStream();
                try {
                    outputStream.write(bytes);
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpsURLConnection.getResponseCode();
                    if (responseCode != 200) {
                        String bounded = "";
                        try {
                            InputStream errorStream = httpsURLConnection.getErrorStream();
                            if (errorStream != null) {
                                bounded = readBounded(errorStream, 8192);
                            }
                        } catch (Exception e) {
                        }
                        String strHttpError = httpError(responseCode, bounded);
                        if (!"ark".equals(str)) {
                            strHttpError = strHttpError.replace("豆包", "模型").replace("火山方舟", "服务商控制台").replace("方舟限流配额", "服务商限流配额");
                        }
                        throw new ApiException(strHttpError);
                    }
                    String bounded2 = readBounded(httpsURLConnection.getInputStream(), 65536);
                    return z ? parseResponses(bounded2) : parseAnswer(bounded2);
                } catch (Throwable th) {
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (SocketTimeoutException e2) {
                throw new ApiException("豆包请求超时，请检查网络后重试");
            } catch (SSLException e3) {
                throw new ApiException("安全连接失败，请检查车机时间与证书");
            }
        } finally {
            this.active = null;
            httpsURLConnection.disconnect();
        }
    }

    static boolean usesResponses(String str, String str2) {
        if (str.endsWith("/responses")) {
            return true;
        }
        if (str.endsWith("/chat/completions")) {
            return false;
        }
        try {
            if ("ark.cn-beijing.volces.com".equalsIgnoreCase(new URL(str).getHost())) {
                if (str2.startsWith("doubao-seed-character-")) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    static String parseResponses(String str) throws Exception {
        JSONArray jSONArrayOptJSONArray;
        JSONObject jSONObject = new JSONObject(str);
        StringBuilder sb = new StringBuilder();
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("output");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i = 0; i < jSONArrayOptJSONArray2.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray2.optJSONObject(i);
                if (jSONObjectOptJSONObject != null && "message".equals(jSONObjectOptJSONObject.optString("type")) && (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("content")) != null) {
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                        JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i2);
                        if (jSONObjectOptJSONObject2 != null && "output_text".equals(jSONObjectOptJSONObject2.optString("type"))) {
                            sb.append(jSONObjectOptJSONObject2.optString("text"));
                        }
                    }
                }
            }
        }
        if (sb.length() == 0 && (jSONObject.opt("output_text") instanceof String)) {
            sb.append(jSONObject.optString("output_text"));
        }
        return cleanAnswer(sb.toString());
    }

    static String httpError(int i) {
        if (i == 401 || i == 403) {
            return "鉴权失败（" + i + "），请检查 API Key 和模型权限";
        }
        return i == 404 ? "接口或模型不可用（404），请检查模型开通、Key权限与接口类型" : i == 429 ? "请求受限或额度不足（429），请在火山方舟控制台检查" : (i < 300 || i >= 400) ? i == 400 ? "接口参数被拒绝（400），请核对模型 ID 与接口参数" : "豆包服务暂不可用（HTTP " + i + "）" : "接口返回重定向，未转发密钥；请填写最终 HTTPS 接口地址";
    }

    static String httpError(int i, String str) {
        if (i == 429) {
            try {
                JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject("error");
                String strOptString = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString("code", "") : "";
                if ("SetLimitExceeded".equals(strOptString)) {
                    return "模型或接入点达到用量上限（429），请在火山方舟调整用量上限或安心体验模式";
                }
                if (!"QuotaExceeded".equals(strOptString) && !"AccountQuotaExceeded".equals(strOptString)) {
                    if (!strOptString.contains("RateLimitExceeded") && !"RequestBurstTooFast".equals(strOptString)) {
                        if ("ServerOverloaded".equals(strOptString)) {
                            return "豆包模型服务暂时繁忙（429），请稍后重试";
                        }
                        if ("ModelLoadingError".equals(strOptString)) {
                            return "豆包模型服务暂时繁忙（429），请稍后重试";
                        }
                    }
                    return "豆包请求频率已受限（429），请稍后重试或调整方舟限流配额";
                }
                return "模型或账号配额不足（429），请在火山方舟检查模型开通与可用额度";
            } catch (Exception e) {
            }
        }
        return httpError(i);
    }

    static String readBounded(InputStream inputStream, int i) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int i2 = inputStream.read(bArr);
                    if (i2 == -1) {
                        String string = byteArrayOutputStream.toString("UTF-8");
                        byteArrayOutputStream.close();
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        return string;
                    }
                    if (Thread.currentThread().isInterrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (byteArrayOutputStream.size() + i2 > i) {
                        throw new IOException("响应过长");
                    }
                    byteArrayOutputStream.write(bArr, 0, i2);
                }
            } finally {
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static String parseAnswer(String str) throws Exception {
        String string;
        Object objOpt = new JSONObject(str).getJSONArray("choices").getJSONObject(0).getJSONObject("message").opt("content");
        if (objOpt instanceof String) {
            string = (String) objOpt;
        } else if (objOpt instanceof JSONArray) {
            StringBuilder sb = new StringBuilder();
            JSONArray jSONArray = (JSONArray) objOpt;
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null && "text".equals(jSONObjectOptJSONObject.optString("type"))) {
                    sb.append(jSONObjectOptJSONObject.optString("text"));
                }
            }
            string = sb.toString();
        } else {
            string = "";
        }
        return cleanAnswer(string);
    }

    private static String cleanAnswer(String str) throws ApiException {
        String strTrim = str.replaceAll("```[\\s\\S]*?```", " ").replaceAll("(?m)^\\s*#{1,6}\\s*", "").replace("**", "").trim();
        if (strTrim.isEmpty()) {
            throw new ApiException("模型未返回可播报的文字，请更换模型或重试");
        }
        return strTrim.length() > 1000 ? strTrim.substring(0, 1000) + "。" : strTrim;
    }
}
