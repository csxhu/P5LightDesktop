package com.local.p5home;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class MusicPolicy {
    static boolean provider(String str) {
        return "system".equals(str) || "netease".equals(str) || "qq".equals(str) || "kugou".equals(str) || "qishui".equals(str);
    }

    static final class Song {
        final String album;
        final String artist;
        final String title;

        Song(String str, String str2, String str3) {
            this.title = str;
            this.artist = str2;
            this.album = str3;
        }

        String query() {
            return (this.title + " " + this.artist + (this.title.isEmpty() ? " " + this.album : "")).trim();
        }

        String json() {
            try {
                return new JSONObject().put("title", this.title).put("artist", this.artist).put("album", this.album).toString();
            } catch (Exception e) {
                throw new IllegalArgumentException("歌曲信息无效");
            }
        }
    }

    static Song song(String str) {
        if (str != null) {
            try {
                if (str.length() <= 4096) {
                    JSONObject jSONObject = new JSONObject(str);
                    String strValue = value(jSONObject, "title");
                    String strValue2 = value(jSONObject, "artist");
                    String strValue3 = value(jSONObject, "album");
                    if (strValue != null && strValue2 != null && strValue3 != null && (!strValue.isEmpty() || !strValue2.isEmpty())) {
                        return new Song(strValue, strValue2, strValue3);
                    }
                    return null;
                }
            } catch (Exception e) {
                return null;
            }
        }
        return null;
    }

    static Song fromAsr(String str) {
        if (str == null || str.length() > 240) {
            return null;
        }
        Matcher matcher = Pattern.compile("^(?:请)?(?:帮我播放|给我播放|我想听|我要听|播放|放一首|放首|来一首)(.+)$").matcher(str.trim().replaceFirst("[。！!？?]+$", ""));
        if (!matcher.matches()) {
            return null;
        }
        String strTrim = matcher.group(1).trim().replaceFirst("^(?:一首|歌曲|音乐)[：: ]*", "").replaceFirst("(?:这首歌|这首歌曲)$", "").trim();
        if (strTrim.isEmpty() || strTrim.length() > 160 || strTrim.matches("(?s).*(?:然后|并且|顺便|导航|车窗|空调|视频|蓝牙|收音机|电台|本地|U盘).*") || strTrim.matches("(?:音乐|歌曲|一首歌|歌|一下|继续|暂停|停止|下一首|上一首|收藏|我的收藏|随机|全部|列表)")) {
            return null;
        }
        return song(new Song(strTrim, "", "").json());
    }

    private static String value(JSONObject jSONObject, String str) {
        Object objOpt = jSONObject.opt(str);
        if (objOpt == null || objOpt == JSONObject.NULL) {
            return "";
        }
        if (!(objOpt instanceof String)) {
            return null;
        }
        String strTrim = ((String) objOpt).trim();
        if (strTrim.length() > 160 || strTrim.matches("(?s).*[\\p{Cntrl}].*")) {
            return null;
        }
        return strTrim;
    }

    private MusicPolicy() {
    }
}
