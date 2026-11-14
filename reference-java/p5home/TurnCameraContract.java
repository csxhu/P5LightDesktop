package com.local.p5home;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes.dex */
final class TurnCameraContract {
    static final String AVM = "com.xiaopeng.drivingimageassist.carapi.event.AVMEvent";
    static final String BCM = "com.xiaopeng.drivingimageassist.carapi.event.BCMEvent";
    static final String INTELLIGENT = "com.xiaopeng.drivingimageassist.carapi.event.IntellIgentEvent";
    static final long MAX_SAMPLE_AGE_MS = 1000;
    static final String MCU = "com.xiaopeng.drivingimageassist.carapi.event.MCUEvent";
    static final String VCU = "com.xiaopeng.drivingimageassist.carapi.event.VCUEvent";

    static boolean expectedEvents(List<String> list) {
        if (list == null || (list.size() != 4 && list.size() != 5)) {
            return false;
        }
        HashSet hashSet = new HashSet();
        for (String str : list) {
            if (str == null || !hashSet.add(str)) {
                return false;
            }
        }
        if (hashSet.contains(INTELLIGENT) && hashSet.contains(VCU) && hashSet.contains(MCU) && hashSet.contains(AVM)) {
            return hashSet.size() == 4 || (hashSet.size() == 5 && hashSet.contains(BCM));
        }
        return false;
    }

    static boolean validSpeed(float f) {
        return (Float.isNaN(f) || Float.isInfinite(f) || f < 0.0f) ? false : true;
    }

    static boolean permitGear(boolean z, int i) {
        return z && (i == 1 || i == 2 || i == 4);
    }

    static boolean permitSpeed(boolean z, float f, float f2, long j, long j2) {
        return z && validSpeed(f) && validSpeed(f2) && f <= 10.0f && f2 <= 10.0f && j >= 0 && j2 >= j && j2 - j <= MAX_SAMPLE_AGE_MS;
    }

    static List<Object> appendObserver(List<?> list, Class<?> cls, Constructor<?> constructor, Method method, Method method2) {
        if (list == null || cls == null || constructor == null || method == null || method2 == null) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (obj != null && cls.isInstance(obj)) {
                    arrayList.add(obj.getClass().getName());
                }
                return null;
            }
            if (expectedEvents(arrayList) && !arrayList.contains(BCM)) {
                Object objNewInstance = constructor.newInstance(new Object[0]);
                if (cls.isInstance(objNewInstance) && BCM.equals(objNewInstance.getClass().getName()) && "xp_bcm".equals(method.invoke(objNewInstance, new Object[0]))) {
                    Object objInvoke = method2.invoke(objNewInstance, new Object[0]);
                    if (!(objInvoke instanceof List)) {
                        return null;
                    }
                    List list2 = (List) objInvoke;
                    if (list2.size() == 1) {
                        Integer num = 557915328;
                        if (num.equals(list2.get(0))) {
                            ArrayList arrayList2 = new ArrayList(list);
                            arrayList2.add(objNewInstance);
                            return arrayList2;
                        }
                    }
                    return null;
                }
                return null;
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    private TurnCameraContract() {
    }
}
