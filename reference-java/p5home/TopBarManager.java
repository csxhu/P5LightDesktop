package com.local.p5home;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.local.p5home.TopBarStore;
import de.robv.android.xposed.XposedHelpers;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
final class TopBarManager {
    static final String BUILD = "topbar-20261028-c";
    private static final TopBarManager INSTANCE = new TopBarManager();
    private Context context;
    private long generation;
    private boolean observing;
    private boolean polling;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final ExecutorService worker = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.local.p5home.TopBarManager$$ExternalSyntheticLambda5
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return TopBarManager.lambda$new$0(runnable);
        }
    });
    private final List<Root> roots = new ArrayList();
    private TopBarStore.Snapshot current = TopBarStore.disabled();
    private String code = "WAITING_FOR_LAYOUT";

    TopBarManager() {
    }

    static /* synthetic */ Thread lambda$new$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "G3TopBar");
        thread.setDaemon(true);
        return thread;
    }

    static TopBarManager get() {
        return INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class Root {
        ViewTreeObserver drawTree;
        final Object owner;
        long requestedBounds;
        final View view;
        final List<TopBarBinding> bindings = new ArrayList();
        long requestedRevision = Long.MIN_VALUE;
        final ViewTreeObserver.OnPreDrawListener drawing = new ViewTreeObserver.OnPreDrawListener() { // from class: com.local.p5home.TopBarManager$Root$$ExternalSyntheticLambda0
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                return this.f$0.m126lambda$new$0$comlocalg3homeTopBarManager$Root();
            }
        };
        final View.OnLayoutChangeListener layout = new View.OnLayoutChangeListener() { // from class: com.local.p5home.TopBarManager$Root$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                this.f$0.m127lambda$new$1$comlocalg3homeTopBarManager$Root(view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        };
        final View.OnAttachStateChangeListener attachment = new View.OnAttachStateChangeListener() { // from class: com.local.p5home.TopBarManager.Root.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                Root.this.observeDraw();
                TopBarManager.this.refresh(false);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                Root.this.stopDraw();
                Iterator<TopBarBinding> it = Root.this.bindings.iterator();
                while (it.hasNext()) {
                    it.next().restore();
                }
                TopBarManager.this.report();
            }
        };

        /* renamed from: lambda$new$0$com-local-g3home-TopBarManager$Root, reason: not valid java name */
        /* synthetic */ boolean m126lambda$new$0$comlocalg3homeTopBarManager$Root() {
            TopBarManager.this.repairBeforeDraw(this);
            return true;
        }

        /* renamed from: lambda$new$1$com-local-g3home-TopBarManager$Root, reason: not valid java name */
        /* synthetic */ void m127lambda$new$1$comlocalg3homeTopBarManager$Root(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            if (i3 - i == i7 - i5 && i4 - i2 == i8 - i6 && !TopBarManager.this.needsBounds(this)) {
                return;
            }
            TopBarManager.this.refresh(false);
        }

        Root(Object obj, View view) {
            this.owner = obj;
            this.view = view;
        }

        void observeDraw() {
            ViewTreeObserver viewTreeObserver = this.view.getViewTreeObserver();
            if (viewTreeObserver == this.drawTree && viewTreeObserver.isAlive()) {
                return;
            }
            stopDraw();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.drawing);
                viewTreeObserver.addOnPreDrawListener(this.drawing);
                this.drawTree = viewTreeObserver;
            }
        }

        void stopDraw() {
            ViewTreeObserver viewTreeObserver = this.drawTree;
            if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                this.drawTree.removeOnPreDrawListener(this.drawing);
            }
            this.drawTree = null;
        }

        void dispose() {
            stopDraw();
            Iterator<TopBarBinding> it = this.bindings.iterator();
            while (it.hasNext()) {
                it.next().restore();
            }
            this.view.removeOnLayoutChangeListener(this.layout);
            this.view.removeOnAttachStateChangeListener(this.attachment);
        }
    }

    void beforeInit(final Object obj) {
        onMain(new Runnable() { // from class: com.local.p5home.TopBarManager$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m121lambda$beforeInit$1$comlocalg3homeTopBarManager(obj);
            }
        });
    }

    /* renamed from: lambda$beforeInit$1$com-local-g3home-TopBarManager, reason: not valid java name */
    /* synthetic */ void m121lambda$beforeInit$1$comlocalg3homeTopBarManager(Object obj) {
        for (int size = this.roots.size() - 1; size >= 0; size--) {
            if (this.roots.get(size).owner == obj) {
                this.roots.remove(size).dispose();
            }
        }
        this.generation++;
    }

    void attach(final Object obj) {
        onMain(new Runnable() { // from class: com.local.p5home.TopBarManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m120lambda$attach$2$comlocalg3homeTopBarManager(obj);
            }
        });
    }

    private void onMain(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            this.main.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: attachMain, reason: merged with bridge method [inline-methods] */
    public void m120lambda$attach$2$comlocalg3homeTopBarManager(Object obj) {
        int i;
        try {
            View view = (View) XposedHelpers.getObjectField(obj, "mRootView");
            Context context = (Context) XposedHelpers.getObjectField(obj, "mContext");
            if (view != null && context != null) {
                Iterator<Root> it = this.roots.iterator();
                while (it.hasNext()) {
                    if (it.next().view == view) {
                        refresh(true);
                        return;
                    }
                }
                this.context = context.getApplicationContext() == null ? context : context.getApplicationContext();
                Root root = new Root(obj, view);
                int identifier = context.getResources().getIdentifier("app_icon", "id", "com.android.systemui");
                for (int i2 = 0; i2 < 6; i2 = i + 1) {
                    int identifier2 = context.getResources().getIdentifier(TopBarSlot.IDS[i2], "id", "com.android.systemui");
                    View viewFindViewById = identifier2 == 0 ? null : view.findViewById(identifier2);
                    View viewFindViewById2 = (viewFindViewById == null || identifier == 0) ? null : viewFindViewById.findViewById(identifier);
                    if (viewFindViewById == null) {
                        i = i2;
                    } else if (viewFindViewById2 instanceof ImageView) {
                        try {
                            Object objectField = XposedHelpers.getObjectField(viewFindViewById, "mListenerInfo");
                            i = i2;
                            try {
                                root.bindings.add(new TopBarBinding(i2, viewFindViewById, (ImageView) viewFindViewById2, objectField == null ? null : (View.OnClickListener) XposedHelpers.getObjectField(objectField, "mOnClickListener"), objectField != null ? (View.OnLongClickListener) XposedHelpers.getObjectField(objectField, "mOnLongClickListener") : null));
                            } catch (Throwable th) {
                                TopBarHook.log("LISTENER_SNAPSHOT_UNAVAILABLE");
                            }
                        } catch (Throwable th2) {
                            i = i2;
                        }
                    } else {
                        i = i2;
                    }
                }
                if (this.roots.size() >= 4) {
                    this.roots.remove(0).dispose();
                }
                this.roots.add(root);
                view.addOnLayoutChangeListener(root.layout);
                view.addOnAttachStateChangeListener(root.attachment);
                root.observeDraw();
                if (!this.observing) {
                    this.context.getContentResolver().registerContentObserver(TopBarStore.URI, true, new ContentObserver(this.main) { // from class: com.local.p5home.TopBarManager.1
                        @Override // android.database.ContentObserver
                        public void onChange(boolean z) {
                            TopBarManager.this.refresh(true);
                        }

                        @Override // android.database.ContentObserver
                        public void onChange(boolean z, Uri uri) {
                            TopBarManager.this.refresh(true);
                        }
                    });
                    this.observing = true;
                }
                if (!this.polling) {
                    this.polling = true;
                    this.main.postDelayed(new Runnable() { // from class: com.local.p5home.TopBarManager.2
                        @Override // java.lang.Runnable
                        public void run() {
                            TopBarManager.this.refresh(false);
                            TopBarManager.this.main.postDelayed(this, 5000L);
                        }
                    }, 5000L);
                }
                refresh(true);
            }
        } catch (Throwable th3) {
            restoreAll();
            this.code = "ATTACH_UNAVAILABLE";
            TopBarHook.log("ATTACH_UNAVAILABLE");
            report();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean needsBounds(Root root) {
        if (!this.current.enabled) {
            return false;
        }
        for (TopBarBinding topBarBinding : root.bindings) {
            if (this.current.slots[topBarBinding.index].isCustom() && (topBarBinding.applied == null || topBarBinding.side(density()) != topBarBinding.applied.getIntrinsicWidth())) {
                return true;
            }
        }
        return false;
    }

    private long boundsKey(Root root) {
        float fDensity = density();
        long jSide = 0;
        for (TopBarBinding topBarBinding : root.bindings) {
            if (this.current.slots[topBarBinding.index].isCustom()) {
                jSide |= (topBarBinding.side(fDensity) + 1) << (topBarBinding.index * 8);
            }
        }
        return jSide;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void repairBeforeDraw(Root root) {
        if (!this.current.valid || !this.current.enabled || !root.view.isAttachedToWindow() || !root.view.isShown()) {
            return;
        }
        try {
            for (TopBarBinding topBarBinding : root.bindings) {
                if (this.current.slots[topBarBinding.index].isCustom()) {
                    topBarBinding.repair();
                }
            }
            long jBoundsKey = boundsKey(root);
            if (needsBounds(root)) {
                if (root.requestedRevision != this.current.revision || root.requestedBounds != jBoundsKey) {
                    root.requestedRevision = this.current.revision;
                    root.requestedBounds = jBoundsKey;
                    refresh(false);
                }
            }
        } catch (Throwable th) {
            TopBarHook.log("ICON_REPAIR_UNAVAILABLE");
        }
    }

    private float density() {
        Context context = this.context;
        if (context == null) {
            return 1.0f;
        }
        return context.getResources().getDisplayMetrics().density;
    }

    private void restoreAll() {
        Iterator<Root> it = this.roots.iterator();
        while (it.hasNext()) {
            Iterator<TopBarBinding> it2 = it.next().bindings.iterator();
            while (it2.hasNext()) {
                it2.next().restore();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refresh(boolean z) {
        if (this.context == null) {
            return;
        }
        final long j = this.generation + 1;
        this.generation = j;
        if (z) {
            this.current = TopBarStore.disabled();
            restoreAll();
            this.code = "CHECKING_CONFIG";
        }
        final Context context = this.context;
        this.worker.execute(new Runnable() { // from class: com.local.p5home.TopBarManager$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m125lambda$refresh$4$comlocalg3homeTopBarManager(context, j);
            }
        });
    }

    /* renamed from: lambda$refresh$4$com-local-g3home-TopBarManager, reason: not valid java name */
    /* synthetic */ void m125lambda$refresh$4$comlocalg3homeTopBarManager(final Context context, final long j) {
        final TopBarStore.Snapshot snapshotFetch = TopBarStore.fetch(context);
        this.main.post(new Runnable() { // from class: com.local.p5home.TopBarManager$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m124lambda$refresh$3$comlocalg3homeTopBarManager(context, snapshotFetch, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: accept, reason: merged with bridge method [inline-methods] */
    public void m124lambda$refresh$3$comlocalg3homeTopBarManager(final Context context, final TopBarStore.Snapshot snapshot, final long j) {
        if (j != this.generation) {
            return;
        }
        if (!snapshot.valid || !snapshot.enabled) {
            this.current = snapshot;
            restoreAll();
            this.code = snapshot.valid ? "DISABLED" : "CONFIG_UNAVAILABLE";
            report();
            return;
        }
        if (!this.current.valid || this.current.revision != snapshot.revision) {
            restoreAll();
        }
        this.current = snapshot;
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        for (Root root : this.roots) {
            root.requestedRevision = snapshot.revision;
            root.requestedBounds = boundsKey(root);
            for (TopBarBinding topBarBinding : root.bindings) {
                TopBarSlot topBarSlot = snapshot.slots[topBarBinding.index];
                if (topBarSlot.isCustom()) {
                    int iSide = topBarBinding.side(density());
                    if (iSide <= 0) {
                        topBarBinding.restore();
                    } else if (topBarBinding.installed && topBarBinding.applied != null && topBarBinding.applied.getIntrinsicWidth() == iSide) {
                        topBarBinding.repair();
                    } else {
                        arrayList.add(topBarBinding);
                        arrayList2.add(Integer.valueOf(iSide));
                    }
                } else {
                    apply(topBarBinding, topBarSlot, null);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            this.worker.execute(new Runnable() { // from class: com.local.p5home.TopBarManager$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m117lambda$accept$6$comlocalg3homeTopBarManager(arrayList, snapshot, context, arrayList2, j);
                }
            });
        } else {
            this.code = "READY";
            report();
        }
    }

    /* renamed from: lambda$accept$6$com-local-g3home-TopBarManager, reason: not valid java name */
    /* synthetic */ void m117lambda$accept$6$comlocalg3homeTopBarManager(final List list, final TopBarStore.Snapshot snapshot, Context context, final List list2, final long j) {
        int size = list.size();
        final Drawable[] drawableArr = new Drawable[size];
        for (int i = 0; i < size; i++) {
            try {
                TopBarSlot topBarSlot = snapshot.slots[((TopBarBinding) list.get(i)).index];
                if (TopBarStore.launcher(context, topBarSlot.index, topBarSlot.packageName, topBarSlot.activityName, topBarSlot.label) != null) {
                    drawableArr[i] = TopBarIcon.render(context.getPackageManager().getActivityIcon(new ComponentName(topBarSlot.packageName, topBarSlot.activityName)), ((Integer) list2.get(i)).intValue());
                }
            } catch (Exception e) {
            } catch (LinkageError e2) {
            }
        }
        this.main.post(new Runnable() { // from class: com.local.p5home.TopBarManager$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m116lambda$accept$5$comlocalg3homeTopBarManager(j, snapshot, drawableArr, list, list2);
            }
        });
    }

    /* renamed from: lambda$accept$5$com-local-g3home-TopBarManager, reason: not valid java name */
    /* synthetic */ void m116lambda$accept$5$comlocalg3homeTopBarManager(long j, TopBarStore.Snapshot snapshot, Drawable[] drawableArr, List list, List list2) {
        if (j != this.generation || !this.current.enabled || this.current.revision != snapshot.revision) {
            return;
        }
        boolean z = false;
        for (int i = 0; i < drawableArr.length; i++) {
            TopBarBinding topBarBinding = (TopBarBinding) list.get(i);
            if (drawableArr[i] == null) {
                topBarBinding.restore();
                z = true;
            } else if (topBarBinding.side(density()) == ((Integer) list2.get(i)).intValue()) {
                apply(topBarBinding, snapshot.slots[topBarBinding.index], drawableArr[i]);
            }
        }
        this.code = z ? "APP_UNAVAILABLE" : "READY";
        report();
    }

    private void apply(final TopBarBinding topBarBinding, TopBarSlot topBarSlot, Drawable drawable) {
        if (topBarSlot.isCustom() && drawable == null) {
            topBarBinding.restore();
            return;
        }
        topBarBinding.installed = true;
        if (drawable != null) {
            topBarBinding.installIcon(drawable);
        }
        topBarBinding.container.setOnClickListener(new View.OnClickListener() { // from class: com.local.p5home.TopBarManager$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m118lambda$apply$7$comlocalg3homeTopBarManager(topBarBinding, view);
            }
        });
        topBarBinding.container.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.local.p5home.TopBarManager$$ExternalSyntheticLambda3
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.m119lambda$apply$8$comlocalg3homeTopBarManager(topBarBinding, view);
            }
        });
        topBarBinding.container.setContentDescription(topBarSlot.displayLabel() + "，长按设置顶部快捷入口");
    }

    /* renamed from: lambda$apply$7$com-local-g3home-TopBarManager, reason: not valid java name */
    /* synthetic */ void m118lambda$apply$7$comlocalg3homeTopBarManager(TopBarBinding topBarBinding, View view) {
        TopBarStore.Snapshot snapshot = this.current;
        if (!snapshot.valid || !snapshot.enabled || !topBarBinding.installed || !snapshot.slots[topBarBinding.index].isCustom() || topBarBinding.applied == null) {
            if (topBarBinding.click != null) {
                topBarBinding.click.onClick(view);
                return;
            }
            return;
        }
        launch(snapshot.slots[topBarBinding.index], snapshot.revision);
    }

    /* renamed from: lambda$apply$8$com-local-g3home-TopBarManager, reason: not valid java name */
    /* synthetic */ boolean m119lambda$apply$8$comlocalg3homeTopBarManager(TopBarBinding topBarBinding, View view) {
        if (!this.current.valid || !this.current.enabled || !topBarBinding.installed) {
            return topBarBinding.longClick != null && topBarBinding.longClick.onLongClick(view);
        }
        try {
            this.context.startActivity(new Intent().setComponent(new ComponentName(TopBarStore.PACKAGE, "com.local.p5home.TopBarSettingsActivity")).addFlags(268435456).putExtra(TopBarSettingsActivity.EXTRA_SLOT, topBarBinding.index).putExtra("from_topbar", true));
            return true;
        } catch (RuntimeException e) {
            TopBarHook.log("PICKER_UNAVAILABLE");
            return topBarBinding.longClick != null && topBarBinding.longClick.onLongClick(view);
        }
    }

    private void launch(final TopBarSlot topBarSlot, final long j) {
        final Context context = this.context;
        this.worker.execute(new Runnable() { // from class: com.local.p5home.TopBarManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() throws PackageManager.NameNotFoundException {
                this.f$0.m122lambda$launch$10$comlocalg3homeTopBarManager(context, topBarSlot, j);
            }
        });
    }

    /* renamed from: lambda$launch$10$com-local-g3home-TopBarManager, reason: not valid java name */
    /* synthetic */ void m122lambda$launch$10$comlocalg3homeTopBarManager(final Context context, final TopBarSlot topBarSlot, final long j) throws PackageManager.NameNotFoundException {
        final TopBarSlot topBarSlotLauncher = TopBarStore.launcher(context, topBarSlot.index, topBarSlot.packageName, topBarSlot.activityName, topBarSlot.label);
        this.main.post(new Runnable() { // from class: com.local.p5home.TopBarManager$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m123lambda$launch$9$comlocalg3homeTopBarManager(j, topBarSlotLauncher, topBarSlot, context);
            }
        });
    }

    /* renamed from: lambda$launch$9$com-local-g3home-TopBarManager, reason: not valid java name */
    /* synthetic */ void m123lambda$launch$9$comlocalg3homeTopBarManager(long j, TopBarSlot topBarSlot, TopBarSlot topBarSlot2, Context context) {
        if (!this.current.enabled || !this.current.valid || this.current.revision != j) {
            return;
        }
        if (topBarSlot != null) {
            try {
                context.startActivity(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setComponent(new ComponentName(topBarSlot.packageName, topBarSlot.activityName)).addFlags(270532608));
                return;
            } catch (RuntimeException e) {
                this.code = "LAUNCH_UNAVAILABLE";
                report();
                return;
            }
        }
        Iterator<Root> it = this.roots.iterator();
        while (it.hasNext()) {
            for (TopBarBinding topBarBinding : it.next().bindings) {
                if (topBarBinding.index == topBarSlot2.index) {
                    topBarBinding.restore();
                }
            }
        }
        this.code = "APP_UNAVAILABLE";
        report();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void report() {
        Bundle bundle;
        int[] iArr;
        int i;
        int i2;
        int i3;
        int i4;
        Bundle bundle2;
        int iMax;
        int[] iArr2;
        boolean z;
        if (this.context == null) {
            return;
        }
        Bundle bundle3 = new Bundle();
        int[] iArr3 = new int[6];
        int[] iArr4 = new int[6];
        int[] iArr5 = new int[6];
        int[] iArr6 = new int[6];
        int[] iArr7 = new int[6];
        int[] iArr8 = new int[6];
        int[] iArr9 = new int[6];
        int[] iArr10 = new int[6];
        Root root = null;
        for (Root root2 : this.roots) {
            if (root2.view.isShown()) {
                root = root2;
            }
        }
        if (root == null && !this.roots.isEmpty()) {
            List<Root> list = this.roots;
            root = list.get(list.size() - 1);
        }
        if (root != null) {
            Iterator<TopBarBinding> it = root.bindings.iterator();
            int i5 = 0;
            i4 = 0;
            int i6 = 0;
            int i7 = 0;
            while (it.hasNext()) {
                TopBarBinding next = it.next();
                int i8 = next.index;
                Iterator<TopBarBinding> it2 = it;
                iArr3[i8] = next.icon.getWidth();
                iArr4[i8] = next.icon.getHeight();
                iArr5[i8] = Math.max(0, (iArr3[i8] - next.icon.getPaddingLeft()) - next.icon.getPaddingRight());
                iArr6[i8] = Math.max(0, (iArr4[i8] - next.icon.getPaddingTop()) - next.icon.getPaddingBottom());
                Drawable drawable = next.icon.getDrawable();
                if (drawable == null) {
                    iMax = 0;
                    bundle2 = bundle3;
                } else {
                    bundle2 = bundle3;
                    iMax = Math.max(0, drawable.getIntrinsicWidth());
                }
                iArr7[i8] = iMax;
                iArr8[i8] = drawable != null ? Math.max(0, drawable.getIntrinsicHeight()) : 0;
                if (drawable != null) {
                    RectF rectF = new RectF(drawable.getBounds());
                    next.icon.getImageMatrix().mapRect(rectF);
                    iArr2 = iArr8;
                    iArr9[i8] = Math.max(0, Math.round(rectF.width()));
                    iArr10[i8] = Math.max(0, Math.round(rectF.height()));
                } else {
                    iArr2 = iArr8;
                }
                if (root.view.isAttachedToWindow() && root.view.isShown() && next.icon.isShown() && iArr3[i8] > 0 && iArr4[i8] > 0) {
                    z = true;
                    i5 |= 1 << i8;
                    if (next.installed) {
                        i6++;
                    }
                    if (next.applied != null && drawable == next.applied) {
                        i4++;
                        if (iArr9[i8] > iArr5[i8] || iArr10[i8] > iArr6[i8]) {
                            i7++;
                        }
                    }
                } else {
                    z = true;
                }
                it = it2;
                bundle3 = bundle2;
                iArr8 = iArr2;
            }
            bundle = bundle3;
            iArr = iArr8;
            i3 = i5;
            i = i6;
            i2 = i7;
        } else {
            bundle = bundle3;
            iArr = iArr8;
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        }
        final Bundle bundle4 = bundle;
        bundle4.putString("loadedBuild", BUILD);
        bundle4.putInt("boundCount", Integer.bitCount(i3));
        bundle4.putInt("boundMask", i3);
        bundle4.putInt("appliedCount", i4);
        bundle4.putInt("interceptedCount", i);
        bundle4.putInt("overflowCount", i2);
        bundle4.putString("code", (!"READY".equals(this.code) || i3 == 63) ? this.code : "PARTIAL_LAYOUT");
        bundle4.putIntArray("iconWidths", iArr3);
        bundle4.putIntArray("iconHeights", iArr4);
        bundle4.putIntArray("availableWidths", iArr5);
        bundle4.putIntArray("availableHeights", iArr6);
        bundle4.putIntArray("drawableWidths", iArr7);
        bundle4.putIntArray("drawableHeights", iArr);
        bundle4.putIntArray("renderedWidths", iArr9);
        bundle4.putIntArray("renderedHeights", iArr10);
        final Context context = this.context;
        this.worker.execute(new Runnable() { // from class: com.local.p5home.TopBarManager$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                TopBarManager.lambda$report$11(context, bundle4);
            }
        });
    }

    static /* synthetic */ void lambda$report$11(Context context, Bundle bundle) {
        try {
            context.getContentResolver().call(TopBarStore.URI, "heartbeat", (String) null, bundle);
        } catch (RuntimeException e) {
            TopBarHook.log("STATUS_UNAVAILABLE");
        }
    }
}
