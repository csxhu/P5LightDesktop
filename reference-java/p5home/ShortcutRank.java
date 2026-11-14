package com.local.p5home;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class ShortcutRank {
    static List<String> order(Collection<String> collection, final Map<String, Integer> map) {
        ArrayList arrayList = new ArrayList(new LinkedHashSet(collection));
        Collections.sort(arrayList, new Comparator() { // from class: com.local.p5home.ShortcutRank$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                Map map2 = map;
                return Integer.compare(((Integer) map2.getOrDefault((String) obj2, 0)).intValue(), ((Integer) map2.getOrDefault((String) obj, 0)).intValue());
            }
        });
        return arrayList;
    }

    private ShortcutRank() {
    }
}
