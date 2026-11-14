package com.local.p5home;

import com.local.p5home.MusicPolicy;
import java.lang.reflect.Field;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class HookMusic {
    private final Field event;
    private final Class<?> eventType;
    private final Field events;
    private final Field params;
    private final Class<?> resultType;
    private final Field session;

    HookMusic(ClassLoader classLoader) throws Exception {
        Class<?> cls = Class.forName("com.xiaopeng.carspeechservice.bean.b.g", false, classLoader);
        this.resultType = cls;
        Class<?> cls2 = Class.forName("com.xiaopeng.carspeechservice.bean.b.g$a", false, classLoader);
        this.eventType = cls2;
        this.events = field(cls, "d", List.class);
        this.session = field(cls, "b", String.class);
        this.event = field(cls2, "b", String.class);
        this.params = field(cls2, "d", JSONObject.class);
    }

    String read(Object obj, String str) throws IllegalAccessException, IllegalArgumentException {
        MusicPolicy.Song song;
        try {
            if (this.resultType.isInstance(obj) && str != null && str.equals(this.session.get(obj))) {
                Object obj2 = this.events.get(obj);
                if ((obj2 instanceof List) && ((List) obj2).size() == 1) {
                    Object obj3 = ((List) obj2).get(0);
                    if (this.eventType.isInstance(obj3) && "native://music.search".equals(this.event.get(obj3))) {
                        Object obj4 = this.params.get(obj3);
                        if ((obj4 instanceof JSONObject) && (song = MusicPolicy.song(obj4.toString())) != null) {
                            return song.json();
                        }
                        return null;
                    }
                    return null;
                }
                return null;
            }
            return null;
        } catch (Exception | LinkageError e) {
            return null;
        }
    }

    private static Field field(Class<?> cls, String str, Class<?> cls2) throws Exception {
        Field declaredField = cls.getDeclaredField(str);
        if (declaredField.getType() != cls2) {
            throw new NoSuchFieldException("music_contract");
        }
        declaredField.setAccessible(true);
        return declaredField;
    }
}
