package com.local.p5home;

import android.app.Activity;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.local.g3bridge.sdk.G3Bridge;
import com.local.p5home.Ui;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class VehicleBridgeActivity extends Activity {
    private static final int AUTHORIZE = 4301;
    private TextView autoStatus;
    private boolean binding;
    private G3Bridge bridge;
    private TextView connection;
    private LinearLayout controls;
    private TextView dataText;
    private boolean dead;
    private TextView logText;
    private Button musicPause;
    private Button musicTest;
    private Button navClear;
    private Button navTest;
    private Ui.PanelDialog readDialog;
    private long readGeneration;
    private boolean resumed;
    private TextView sampleStatus;
    private G3Bridge.Subscription subscription;
    private int theme;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final ExecutorService worker = Executors.newSingleThreadExecutor();
    private final AtomicBoolean reading = new AtomicBoolean();
    private final LinkedHashMap<String, String> pending = new LinkedHashMap<>();
    private final ArrayDeque<String> history = new ArrayDeque<>();
    private final ArrayList<Ui.PanelDialog> dialogs = new ArrayList<>();
    private Bundle hello = new Bundle();
    private Bundle snapshot = new Bundle();
    private Bundle capabilities = new Bundle();
    private String connectionError = "正在检查本地桥接模块…";
    private final Runnable tick = new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity.1
        @Override // java.lang.Runnable
        public void run() {
            if (VehicleBridgeActivity.this.dead || !VehicleBridgeActivity.this.resumed) {
                return;
            }
            VehicleBridgeActivity.this.refresh();
            VehicleBridgeActivity.this.main.postDelayed(this, 2000L);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    interface Change {
        void change(boolean z);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.bridge = new G3Bridge(getApplicationContext());
        build();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.resumed = true;
        if (this.theme != Ui.themeSignature(this)) {
            build();
        }
        subscribe();
        this.main.removeCallbacks(this.tick);
        this.main.post(this.tick);
    }

    @Override // android.app.Activity
    public void onPause() {
        this.resumed = false;
        this.main.removeCallbacks(this.tick);
        unsubscribe();
        cancelRead();
        super.onPause();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.dead = true;
        this.main.removeCallbacksAndMessages(null);
        unsubscribe();
        closeDialogs();
        this.worker.shutdownNow();
        super.onDestroy();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        closeDialogs();
        build();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == AUTHORIZE) {
            refresh();
        }
    }

    private void subscribe() {
        if (this.subscription != null) {
            return;
        }
        try {
            this.subscription = this.bridge.observe(this.main, new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m203lambda$subscribe$0$comlocalg3homeVehicleBridgeActivity();
                }
            });
        } catch (RuntimeException e) {
            this.connectionError = "数据订阅未建立：" + Ui.error(e);
            render();
        }
    }

    /* renamed from: lambda$subscribe$0$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m203lambda$subscribe$0$comlocalg3homeVehicleBridgeActivity() {
        if (!this.resumed || this.dead) {
            return;
        }
        refresh();
    }

    private void unsubscribe() {
        G3Bridge.Subscription subscription = this.subscription;
        if (subscription != null) {
            try {
                subscription.close();
            } catch (RuntimeException e) {
            }
            this.subscription = null;
        }
    }

    private void closeDialogs() {
        cancelRead();
        Iterator it = new ArrayList(this.dialogs).iterator();
        while (it.hasNext()) {
            ((Ui.PanelDialog) it.next()).dismiss();
        }
        this.dialogs.clear();
    }

    private void show(final Ui.PanelDialog panelDialog) {
        this.dialogs.add(panelDialog);
        panelDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda37
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.m199lambda$show$1$comlocalg3homeVehicleBridgeActivity(panelDialog, dialogInterface);
            }
        });
        panelDialog.show();
    }

    /* renamed from: lambda$show$1$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m199lambda$show$1$comlocalg3homeVehicleBridgeActivity(Ui.PanelDialog panelDialog, DialogInterface dialogInterface) {
        this.dialogs.remove(panelDialog);
    }

    private void build() {
        Ui.install(this);
        this.theme = Ui.themeSignature(this);
        Ui.Palette paletteColors = Ui.colors(this);
        ScrollView scrollView = new ScrollView(this);
        scrollView.setFillViewport(true);
        scrollView.setBackgroundColor(paletteColors.bg);
        LinearLayout linearLayoutCol = Ui.col(this);
        linearLayoutCol.setPadding(Ui.s(this, 44.0f), Ui.s(this, 36.0f), Ui.s(this, 44.0f), Ui.s(this, 36.0f));
        scrollView.addView(linearLayoutCol);
        setContentView(scrollView);
        LinearLayout linearLayoutRow = Ui.row(this);
        linearLayoutRow.addView(Ui.iconButton(this, "back", "返回设置", new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.finish();
            }
        }));
        Ui.side(this, linearLayoutRow, 26);
        linearLayoutRow.addView(Ui.title(this, "仪表与车辆接口", 46), new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayoutCol.addView(linearLayoutRow);
        Ui.gap(this, linearLayoutCol, 28);
        LinearLayout linearLayoutCard = card(linearLayoutCol, "连接与授权");
        TextView textViewText = Ui.text(this, "", 28, paletteColors.text);
        this.connection = textViewText;
        linearLayoutCard.addView(textViewText);
        Ui.gap(this, linearLayoutCard, 20);
        Ui.buttons(this, linearLayoutCard, Ui.button(this, "连接 / 申请授权", true, new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.authorize();
            }
        }), Ui.button(this, "打开桥接模块设置", false, new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.openModule();
            }
        }));
        linearLayoutCard.addView(Ui.text(this, "需安装 G3车辆接口，并在 LSPosed 为它勾选 CarService。客户端授权、模块就绪和单项能力分别检测；仅安装 APK 不代表接口已接入。", 26, paletteColors.muted));
        LinearLayout linearLayoutCard2 = card(linearLayoutCol, "仪表自动推送");
        linearLayoutCard2.addView(Ui.text(this, "开启后仅发送实际导航或播放会话提供的信息。没有可用数据时保持等待；手动测试内容不会变成自动推送来源。", 27, paletteColors.muted));
        Ui.gap(this, linearLayoutCard2, 16);
        toggle(linearLayoutCard2, "导航信息推送", VehicleBridgeClient.navEnabled(this), new Change() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda20
            @Override // com.local.p5home.VehicleBridgeActivity.Change
            public final void change(boolean z) {
                this.f$0.m176lambda$build$2$comlocalg3homeVehicleBridgeActivity(z);
            }
        });
        toggle(linearLayoutCard2, "音乐信息推送", VehicleBridgeClient.musicEnabled(this), new Change() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda21
            @Override // com.local.p5home.VehicleBridgeActivity.Change
            public final void change(boolean z) {
                this.f$0.m177lambda$build$3$comlocalg3homeVehicleBridgeActivity(z);
            }
        });
        TextView textViewText2 = Ui.text(this, "", 26, paletteColors.muted);
        this.autoStatus = textViewText2;
        linearLayoutCard2.addView(textViewText2);
        Ui.gap(this, linearLayoutCard2, 16);
        linearLayoutCard2.addView(Ui.button(this, "允许读取正在播放的音乐", false, new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m178lambda$build$4$comlocalg3homeVehicleBridgeActivity();
            }
        }), new LinearLayout.LayoutParams(-1, -2));
        LinearLayout linearLayoutCard3 = card(linearLayoutCol, "仪表与车况数据");
        TextView textViewText3 = Ui.text(this, "", 27, paletteColors.muted);
        this.sampleStatus = textViewText3;
        linearLayoutCard3.addView(textViewText3);
        Ui.gap(this, linearLayoutCard3, 18);
        TextView textViewText4 = Ui.text(this, "尚无有效数据", 28, paletteColors.text);
        this.dataText = textViewText4;
        textViewText4.setTextIsSelectable(true);
        linearLayoutCard3.addView(this.dataText);
        Ui.gap(this, linearLayoutCard3, 20);
        linearLayoutCard3.addView(Ui.button(this, "刷新数据与能力", false, new VehicleBridgeActivity$$ExternalSyntheticLambda5(this)), new LinearLayout.LayoutParams(-1, -2));
        Ui.gap(this, linearLayoutCard3, 14);
        linearLayoutCard3.addView(Ui.button(this, "全部接口目录 / 单项读取", false, new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m179lambda$build$5$comlocalg3homeVehicleBridgeActivity();
            }
        }), new LinearLayout.LayoutParams(-1, -2));
        LinearLayout linearLayoutCard4 = card(linearLayoutCol, "手动仪表测试");
        linearLayoutCard4.addView(Ui.text(this, "测试会向仪表提交你填写的内容。原厂显示接口没有已确认的显示回执，已提交不能当作实际显示成功。", 27, paletteColors.muted));
        Ui.gap(this, linearLayoutCard4, 18);
        this.navTest = Ui.button(this, "编辑导航测试", false, new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.navigationForm();
            }
        });
        Button button = Ui.button(this, "清除导航显示", false, new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.clearNavigation();
            }
        });
        this.navClear = button;
        Ui.buttons(this, linearLayoutCard4, this.navTest, button);
        this.musicTest = Ui.button(this, "编辑音乐测试", false, new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m180lambda$build$6$comlocalg3homeVehicleBridgeActivity();
            }
        });
        Button button2 = Ui.button(this, "音乐暂停状态测试", false, new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m181lambda$build$7$comlocalg3homeVehicleBridgeActivity();
            }
        });
        this.musicPause = button2;
        Ui.buttons(this, linearLayoutCard4, this.musicTest, button2);
        LinearLayout linearLayoutCard5 = card(linearLayoutCol, "车辆控制与摄像头");
        linearLayoutCard5.addView(Ui.text(this, "只显示模块当前返回的具名能力。控制测试提交前会确认参数；可执行性及停车、范围和画面互斥条件由车辆接口模块校验。", 27, paletteColors.muted));
        Ui.gap(this, linearLayoutCard5, 16);
        LinearLayout linearLayoutCol2 = Ui.col(this);
        this.controls = linearLayoutCol2;
        linearLayoutCard5.addView(linearLayoutCol2);
        LinearLayout linearLayoutCard6 = card(linearLayoutCol, "本页操作记录");
        TextView textViewText5 = Ui.text(this, "尚未提交测试", 27, paletteColors.muted);
        this.logText = textViewText5;
        textViewText5.setTextIsSelectable(true);
        linearLayoutCard6.addView(this.logText);
        Ui.gap(this, linearLayoutCard6, 18);
        linearLayoutCard6.addView(Ui.button(this, "清除本页记录", false, new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m182lambda$build$8$comlocalg3homeVehicleBridgeActivity();
            }
        }), new LinearLayout.LayoutParams(-1, -2));
        render();
    }

    /* renamed from: lambda$build$2$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m176lambda$build$2$comlocalg3homeVehicleBridgeActivity(boolean z) {
        VehicleBridgeClient.setNavEnabled(this, z);
        render();
    }

    /* renamed from: lambda$build$3$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m177lambda$build$3$comlocalg3homeVehicleBridgeActivity(boolean z) {
        VehicleBridgeClient.setMusicEnabled(this, z);
        render();
    }

    /* renamed from: lambda$build$4$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m178lambda$build$4$comlocalg3homeVehicleBridgeActivity() {
        try {
            VehicleBridgeClient.openMusicAccess(this);
        } catch (RuntimeException e) {
            Ui.show(this, "音乐读取授权未打开", Ui.error(e));
        }
    }

    /* renamed from: lambda$build$5$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m179lambda$build$5$comlocalg3homeVehicleBridgeActivity() {
        catalogPage(0);
    }

    /* renamed from: lambda$build$6$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m180lambda$build$6$comlocalg3homeVehicleBridgeActivity() {
        musicForm(true);
    }

    /* renamed from: lambda$build$7$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m181lambda$build$7$comlocalg3homeVehicleBridgeActivity() {
        musicForm(false);
    }

    /* renamed from: lambda$build$8$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m182lambda$build$8$comlocalg3homeVehicleBridgeActivity() {
        this.history.clear();
        renderLog();
    }

    private LinearLayout card(LinearLayout linearLayout, String str) {
        return Ui.card(this, linearLayout, str, null);
    }

    private void toggle(LinearLayout linearLayout, String str, boolean z, final Change change) {
        LinearLayout linearLayoutRow = Ui.row(this);
        linearLayoutRow.setMinimumHeight(Ui.s(this, 112.0f));
        linearLayoutRow.addView(Ui.title(this, str, 32), new LinearLayout.LayoutParams(0, -2, 1.0f));
        Ui.Toggle toggle = new Ui.Toggle(this);
        toggle.setContentDescription(str);
        this.binding = true;
        toggle.setChecked(z);
        this.binding = false;
        toggle.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda11
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                this.f$0.m204lambda$toggle$9$comlocalg3homeVehicleBridgeActivity(change, compoundButton, z2);
            }
        });
        linearLayoutRow.addView(toggle);
        linearLayout.addView(linearLayoutRow);
    }

    /* renamed from: lambda$toggle$9$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m204lambda$toggle$9$comlocalg3homeVehicleBridgeActivity(Change change, CompoundButton compoundButton, boolean z) {
        if (this.binding) {
            return;
        }
        change.change(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void authorize() {
        try {
            G3Bridge.requestAuthorization(this, AUTHORIZE);
        } catch (RuntimeException e) {
            Ui.show(this, "车辆接口授权未打开", "请先安装并启用 G3车辆接口。\n" + Ui.error(e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openModule() {
        try {
            Ui.launch(this, new Intent().setComponent(new ComponentName(G3Bridge.MODULE_PACKAGE, "com.local.g3bridge.SettingsActivity")));
        } catch (RuntimeException e) {
            Ui.show(this, "车辆接口模块未打开", "请先安装 G3车辆接口。\n" + Ui.error(e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refresh() {
        if (this.dead || !this.reading.compareAndSet(false, true)) {
            return;
        }
        work(new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m196lambda$refresh$11$comlocalg3homeVehicleBridgeActivity();
            }
        });
    }

    /* renamed from: lambda$refresh$11$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m196lambda$refresh$11$comlocalg3homeVehicleBridgeActivity() {
        final Bundle bundleData;
        String string;
        StringBuilder sbAppend;
        final String str;
        Bundle bundle;
        G3Bridge.Response responseHello = this.bridge.hello();
        final Bundle bundleData2 = responseHello.data();
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = new Bundle();
        if (!responseHello.ok()) {
            str = responseHello.code() + " · " + responseHello.message();
            bundleData = bundle2;
            bundle = bundle3;
        } else if (bundleData2.getBoolean("authorized", false)) {
            G3Bridge.Response responseCapabilities = this.bridge.capabilities();
            G3Bridge.Response responseSnapshot = this.bridge.snapshot();
            Bundle bundleData3 = responseCapabilities.data();
            bundleData = responseSnapshot.data();
            if (!responseCapabilities.ok()) {
                sbAppend = new StringBuilder().append(responseCapabilities.code()).append(" · ").append(responseCapabilities.message());
            } else if (responseSnapshot.ok()) {
                string = "";
                str = string;
                bundle = bundleData3;
            } else {
                sbAppend = new StringBuilder().append(responseSnapshot.code()).append(" · ").append(responseSnapshot.message());
            }
            string = sbAppend.toString();
            str = string;
            bundle = bundleData3;
        } else {
            str = "桥接模块已安装 · 尚未授予轻桌面访问权限";
            bundleData = bundle2;
            bundle = bundle3;
        }
        final ArrayList arrayList = new ArrayList();
        Iterator it = new ArrayList(this.pending.entrySet()).iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            G3Bridge.CommandResult commandResultCommand = this.bridge.command((String) entry.getKey());
            arrayList.add(((String) entry.getValue()) + " · " + resultLabel(commandResultCommand));
            if (!commandResultCommand.pending()) {
                this.pending.remove(entry.getKey());
            }
        }
        final Bundle bundle4 = bundle;
        this.main.post(new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m195lambda$refresh$10$comlocalg3homeVehicleBridgeActivity(bundleData2, bundleData, bundle4, str, arrayList);
            }
        });
    }

    /* renamed from: lambda$refresh$10$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m195lambda$refresh$10$comlocalg3homeVehicleBridgeActivity(Bundle bundle, Bundle bundle2, Bundle bundle3, String str, ArrayList arrayList) {
        this.reading.set(false);
        if (this.dead) {
            return;
        }
        this.hello = bundle;
        this.snapshot = bundle2;
        this.capabilities = bundle3;
        this.connectionError = str;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            appendLog((String) it.next());
        }
        if (this.resumed) {
            render();
        }
    }

    private void work(final Runnable runnable) {
        try {
            this.worker.execute(new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda32
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m207lambda$work$13$comlocalg3homeVehicleBridgeActivity(runnable);
                }
            });
        } catch (RejectedExecutionException e) {
            this.reading.set(false);
        }
    }

    /* renamed from: lambda$work$12$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m206lambda$work$12$comlocalg3homeVehicleBridgeActivity(RuntimeException runtimeException) {
        this.reading.set(false);
        if (this.dead) {
            return;
        }
        String str = "桥接请求未完成：" + Ui.error(runtimeException);
        this.connectionError = str;
        appendLog(str);
        if (this.resumed) {
            render();
        }
    }

    /* renamed from: lambda$work$13$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m207lambda$work$13$comlocalg3homeVehicleBridgeActivity(Runnable runnable) {
        try {
            runnable.run();
        } catch (RuntimeException e) {
            this.main.post(new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m206lambda$work$12$comlocalg3homeVehicleBridgeActivity(e);
                }
            });
        }
    }

    private void render() {
        if (this.connection == null) {
            return;
        }
        boolean z = this.hello.getBoolean("authorized", false);
        this.connection.setText(!this.connectionError.isEmpty() ? this.connectionError : !z ? "尚未授权" : !this.snapshot.getBoolean("enabled", false) ? "已授权 · 车辆接口总开关关闭" : !this.snapshot.getBoolean("connected", false) ? "已授权 · 原厂服务未连接" : !this.snapshot.getBoolean("ready", false) ? "已连接 · 原厂接口未就绪" : "已授权 · 原厂服务已就绪");
        if (z && !this.hello.getBoolean("writeAuthorized", false)) {
            this.connection.append("\n当前为只读授权；需要推送或控制时请重新申请读写授权");
        }
        this.sampleStatus.setText(this.snapshot.getString("diagnostic", z ? "等待原厂状态" : "授权后读取真实数据"));
        ArrayList parcelableArrayList = this.snapshot.getParcelableArrayList("properties");
        StringBuilder sb = new StringBuilder();
        if (parcelableArrayList != null) {
            Iterator it = parcelableArrayList.iterator();
            while (it.hasNext()) {
                Bundle bundle = (Bundle) it.next();
                if (sb.length() > 0) {
                    sb.append("\n\n");
                }
                sb.append(formatProperty(bundle));
            }
        }
        this.dataText.setText(sb.length() == 0 ? "尚无仪表或车况数据" : sb.toString());
        this.navTest.setEnabled(commandAvailable(G3Bridge.CLUSTER_NAVIGATION));
        this.navClear.setEnabled(commandAvailable(G3Bridge.CLUSTER_NAVIGATION));
        this.musicTest.setEnabled(commandAvailable(G3Bridge.CLUSTER_MUSIC));
        this.musicPause.setEnabled(commandAvailable(G3Bridge.CLUSTER_MUSIC));
        this.autoStatus.setText("导航：" + (VehicleBridgeClient.navEnabled(this) ? "偏好已开启" : "关闭") + " · " + commandReason(G3Bridge.CLUSTER_NAVIGATION) + "\n音乐：" + (VehicleBridgeClient.musicEnabled(this) ? "偏好已开启" : "关闭") + " · " + commandReason(G3Bridge.CLUSTER_MUSIC) + "\n" + VehicleBridgeClient.status(this));
        renderControls();
        renderLog();
    }

    private ArrayList<Bundle> commands() {
        ArrayList<Bundle> parcelableArrayList = this.capabilities.getParcelableArrayList("commands");
        return parcelableArrayList == null ? new ArrayList<>() : parcelableArrayList;
    }

    private Bundle command(String str) {
        Iterator<Bundle> it = commands().iterator();
        while (it.hasNext()) {
            Bundle next = it.next();
            if (str.equals(next.getString("key"))) {
                return next;
            }
        }
        return null;
    }

    private boolean commandAvailable(String str) {
        Bundle bundleCommand = command(str);
        return this.hello.getBoolean("writeAuthorized", false) && bundleCommand != null && bundleCommand.getBoolean("available", false);
    }

    private String commandReason(String str) {
        if (this.hello.getBoolean("authorized", false) && !this.hello.getBoolean("writeAuthorized", false)) {
            return "等待读写授权";
        }
        Bundle bundleCommand = command(str);
        return bundleCommand == null ? "等待能力检查" : bundleCommand.getBoolean("available", false) ? "接口可提交，等待实际来源" : bundleCommand.getString("reason", "能力尚未接入");
    }

    private void renderControls() {
        LinearLayout linearLayout = this.controls;
        if (linearLayout == null) {
            return;
        }
        linearLayout.removeAllViews();
        Iterator<Bundle> it = commands().iterator();
        int i = 0;
        while (it.hasNext()) {
            Bundle next = it.next();
            final String string = next.getString("key", "");
            if (!string.startsWith("cluster.")) {
                i++;
                String string2 = next.getString("type", "");
                String strPropertyLabel = propertyLabel(string);
                this.controls.addView(Ui.text(this, strPropertyLabel + "\n" + string + " · " + (next.getBoolean("available", false) ? "可提交" : next.getString("reason", "未就绪")), 27, Ui.colors(this).muted));
                if (Arrays.asList(G3Bridge.CAMERA_LEFT, G3Bridge.CAMERA_RIGHT, G3Bridge.CAMERA_CLOSE).contains(string)) {
                    final String str = G3Bridge.CAMERA_LEFT.equals(string) ? "左侧停车预览 · 5秒" : G3Bridge.CAMERA_RIGHT.equals(string) ? "右侧停车预览 · 5秒" : "关闭本模块预览";
                    Button button = Ui.button(this, str, false, new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda33
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m197lambda$renderControls$14$comlocalg3homeVehicleBridgeActivity(string, str);
                        }
                    });
                    button.setEnabled(this.hello.getBoolean("writeAuthorized", false) && next.getBoolean("available", false));
                    this.controls.addView(button, new LinearLayout.LayoutParams(-1, -2));
                    Ui.gap(this, this.controls, 14);
                } else if (G3Bridge.WINDOWS_POSITION.equals(string) && "float_array".equals(string2)) {
                    Button button2 = Ui.button(this, "测试四窗位置", false, new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda34
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.windowsForm();
                        }
                    });
                    button2.setEnabled(this.hello.getBoolean("writeAuthorized", false) && next.getBoolean("available", false));
                    this.controls.addView(button2, new LinearLayout.LayoutParams(-1, -2));
                    Ui.gap(this, this.controls, 14);
                } else if (Arrays.asList("int", "float", "double", "boolean", "bool").contains(string2)) {
                    final Bundle bundle = new Bundle(next);
                    Button button3 = Ui.button(this, "测试 " + strPropertyLabel, false, new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda35
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m198lambda$renderControls$15$comlocalg3homeVehicleBridgeActivity(bundle);
                        }
                    });
                    button3.setEnabled(this.hello.getBoolean("writeAuthorized", false) && next.getBoolean("available", false));
                    this.controls.addView(button3, new LinearLayout.LayoutParams(-1, -2));
                    Ui.gap(this, this.controls, 14);
                } else {
                    this.controls.addView(Ui.text(this, "该能力的参数编辑尚未接入本页。", 25, Ui.colors(this).muted));
                }
                Ui.line(this, this.controls);
            }
        }
        if (i == 0) {
            this.controls.addView(Ui.text(this, "等待模块返回车辆控制与影像能力。", 27, Ui.colors(this).muted));
        }
    }

    /* renamed from: lambda$renderControls$14$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m197lambda$renderControls$14$comlocalg3homeVehicleBridgeActivity(String str, String str2) {
        confirm(str, G3Bridge.payload(new Bundle()), "向原车影像接口提交：" + str2 + "。\n由模块检查停车、画面占用和本模块预览归属。");
    }

    private void catalogPage(final int i) {
        work(new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m186lambda$catalogPage$19$comlocalg3homeVehicleBridgeActivity(i);
            }
        });
    }

    /* renamed from: lambda$catalogPage$18$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m185lambda$catalogPage$18$comlocalg3homeVehicleBridgeActivity(G3Bridge.Response response, int i) {
        final int size;
        if (this.dead || !this.resumed) {
            return;
        }
        if (!response.ok()) {
            Ui.show(this, "接口目录未读取", response.code() + " · " + response.message());
            return;
        }
        LinearLayout linearLayoutCol = Ui.col(this);
        ArrayList<Bundle> arrayListProperties = response.properties();
        Bundle bundleData = response.data();
        linearLayoutCol.addView(Ui.text(this, "只读取接口声明；点选单项才读取它的当前状态。原厂目录可能按调用身份过滤。", 26, Ui.colors(this).muted));
        Iterator<Bundle> it = arrayListProperties.iterator();
        while (true) {
            size = -1;
            if (!it.hasNext()) {
                break;
            }
            Bundle next = it.next();
            final String string = next.getString("key", "");
            linearLayoutCol.addView(Ui.title(this, propertyLabel(string), 30));
            boolean z = false;
            linearLayoutCol.addView(Ui.text(this, string + "\n类型：" + next.getString("type", "未知") + " · 单位：" + next.getString("unit", "oem_raw") + "\n读取：" + (next.getBoolean("readable", false) ? "已声明" : "未公开") + " · 写入配置：" + (next.getBoolean("writable", false) ? "原厂可写，仍需具名命令支持" : "未公开"), 25, Ui.colors(this).muted));
            Button button = Ui.button(this, "读取这一项", false, new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m183lambda$catalogPage$16$comlocalg3homeVehicleBridgeActivity(string);
                }
            });
            if (next.getBoolean("readable", false) && !string.isEmpty()) {
                z = true;
            }
            button.setEnabled(z);
            linearLayoutCol.addView(button, new LinearLayout.LayoutParams(-1, -2));
            Ui.gap(this, linearLayoutCol, 20);
            Ui.line(this, linearLayoutCol);
        }
        if (arrayListProperties.isEmpty()) {
            linearLayoutCol.addView(Ui.text(this, "当前页没有接口声明", 27, Ui.colors(this).muted));
        }
        if (bundleData.containsKey("nextOffset")) {
            size = bundleData.getInt("nextOffset", -1);
        } else if (arrayListProperties.size() == 30) {
            size = i + arrayListProperties.size();
        }
        Ui.PanelBuilder negativeButton = Ui.dialog(this).setTitle("接口目录 · 从第 " + (i + 1) + " 项开始").setView(linearLayoutCol).setNegativeButton("关闭", null);
        if (size > i) {
            negativeButton.setPositiveButton("下一页", new DialogInterface.OnClickListener() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda4
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    this.f$0.m184lambda$catalogPage$17$comlocalg3homeVehicleBridgeActivity(size, dialogInterface, i2);
                }
            });
        }
        show(negativeButton.create());
    }

    /* renamed from: lambda$catalogPage$19$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m186lambda$catalogPage$19$comlocalg3homeVehicleBridgeActivity(final int i) {
        final G3Bridge.Response responseCatalog = this.bridge.catalog(i, 30);
        this.main.post(new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m185lambda$catalogPage$18$comlocalg3homeVehicleBridgeActivity(responseCatalog, i);
            }
        });
    }

    /* renamed from: lambda$catalogPage$17$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m184lambda$catalogPage$17$comlocalg3homeVehicleBridgeActivity(int i, DialogInterface dialogInterface, int i2) {
        catalogPage(i);
    }

    private void cancelRead() {
        this.readGeneration++;
        Ui.PanelDialog panelDialog = this.readDialog;
        this.readDialog = null;
        if (panelDialog != null) {
            panelDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: readProperty, reason: merged with bridge method [inline-methods] */
    public void m183lambda$catalogPage$16$comlocalg3homeVehicleBridgeActivity(String str) {
        cancelRead();
        final long j = this.readGeneration;
        long jElapsedRealtime = 5000 + SystemClock.elapsedRealtime();
        final Ui.PanelDialog panelDialogCreate = Ui.dialog(this).setTitle("读取单项状态").setMessage(str + "\n正在等待模块返回，最多5秒。取消或离开本页会停止后续查询。").setNegativeButton("取消", null).create();
        this.readDialog = panelDialogCreate;
        show(panelDialogCreate);
        panelDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda36
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.m194lambda$readProperty$20$comlocalg3homeVehicleBridgeActivity(panelDialogCreate, j, dialogInterface);
            }
        });
        m191lambda$queryProperty$21$comlocalg3homeVehicleBridgeActivity(str, j, jElapsedRealtime);
    }

    /* renamed from: lambda$readProperty$20$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m194lambda$readProperty$20$comlocalg3homeVehicleBridgeActivity(Ui.PanelDialog panelDialog, long j, DialogInterface dialogInterface) {
        this.dialogs.remove(panelDialog);
        long j2 = this.readGeneration;
        if (j2 == j) {
            this.readGeneration = j2 + 1;
        }
        if (this.readDialog == panelDialog) {
            this.readDialog = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: queryProperty, reason: merged with bridge method [inline-methods] */
    public void m191lambda$queryProperty$21$comlocalg3homeVehicleBridgeActivity(final String str, final long j, final long j2) {
        if (!this.dead && this.resumed && j == this.readGeneration) {
            work(new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m193lambda$queryProperty$23$comlocalg3homeVehicleBridgeActivity(str, j, j2);
                }
            });
        }
    }

    /* renamed from: lambda$queryProperty$22$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m192lambda$queryProperty$22$comlocalg3homeVehicleBridgeActivity(final long j, G3Bridge.Response response, final long j2, final String str, Bundle bundle) {
        if (!this.dead && this.resumed && j == this.readGeneration) {
            if ("PENDING".equals(response.code()) && SystemClock.elapsedRealtime() < j2) {
                this.main.postDelayed(new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda29
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m191lambda$queryProperty$21$comlocalg3homeVehicleBridgeActivity(str, j, j2);
                    }
                }, 500L);
                return;
            }
            cancelRead();
            if (response.ok()) {
                show(Ui.dialog(this).setTitle("单项读取 · " + propertyLabel(str)).setMessage(bundle == null ? "接口未返回属性值，不能推断为0或关闭。" : formatProperty(bundle)).setPositiveButton("关闭", null).create());
            } else {
                show(Ui.dialog(this).setTitle("单项读取未完成").setMessage("PENDING".equals(response.code()) ? "模块尚未在5秒内返回该项状态，不能推断为0或关闭。" : response.code() + " · " + response.message()).setPositiveButton("关闭", null).create());
            }
        }
    }

    /* renamed from: lambda$queryProperty$23$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m193lambda$queryProperty$23$comlocalg3homeVehicleBridgeActivity(final String str, final long j, final long j2) {
        final G3Bridge.Response response = this.bridge.read(str);
        Bundle bundle = response.data().getBundle("property");
        if (bundle == null && !response.properties().isEmpty()) {
            bundle = response.properties().get(0);
        }
        final Bundle bundle2 = bundle;
        this.main.post(new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m192lambda$queryProperty$22$comlocalg3homeVehicleBridgeActivity(j, response, j2, str, bundle2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void navigationForm() {
        LinearLayout linearLayoutCol = Ui.col(this);
        linearLayoutCol.addView(Ui.text(this, "以下是手动测试内容，不是当前路线。图标编号仅用于验证原厂显示，不代表已确认的转向含义。", 26, Ui.colors(this).muted));
        final EditText editTextField = field(linearLayoutCol, "当前道路", "仪表测试", false);
        final EditText editTextField2 = field(linearLayoutCol, "下一道路", "下一道路测试", false);
        final EditText editTextField3 = field(linearLayoutCol, "路线剩余距离（米）", "1000", true);
        final EditText editTextField4 = field(linearLayoutCol, "路线剩余时间（秒）", "300", true);
        final EditText editTextField5 = field(linearLayoutCol, "下一转弯距离（米）", "200", true);
        final EditText editTextField6 = field(linearLayoutCol, "原厂图标编号（1–13，8仅测试编号）", "8", true);
        final Ui.PanelDialog panelDialogCreate = Ui.dialog(this).setTitle("手动导航测试").setView(linearLayoutCol).setNegativeButton("取消", null).setPositiveButton("检查并提交", null).create();
        panelDialogCreate.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m190lambda$navigationForm$24$comlocalg3homeVehicleBridgeActivity(editTextField, editTextField2, editTextField3, editTextField4, editTextField5, editTextField6, panelDialogCreate, view);
            }
        });
        show(panelDialogCreate);
    }

    /* renamed from: lambda$navigationForm$24$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m190lambda$navigationForm$24$comlocalg3homeVehicleBridgeActivity(EditText editText, EditText editText2, EditText editText3, EditText editText4, EditText editText5, EditText editText6, Ui.PanelDialog panelDialog, View view) {
        try {
            Bundle bundle = new Bundle();
            bundle.putBoolean("active", true);
            bundle.putString("currentRoad", text(editText, 160));
            bundle.putString("nextRoad", text(editText2, 160));
            bundle.putInt("remainingMeters", integer(editText3, 0, 50000000));
            bundle.putInt("remainingSeconds", integer(editText4, 0, 604800));
            bundle.putInt("turnMeters", integer(editText5, 0, 50000000));
            bundle.putInt("icmIcon", integer(editText6, 1, 13));
            panelDialog.dismiss();
            confirm(G3Bridge.CLUSTER_NAVIGATION, G3Bridge.payload(bundle), "向仪表提交上述手动导航内容。请观察原厂仪表；此测试不会启动地图路线。 ");
        } catch (IllegalArgumentException e) {
            Ui.show(this, "请检查测试参数", e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearNavigation() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("active", false);
        confirm(G3Bridge.CLUSTER_NAVIGATION, G3Bridge.payload(bundle), "向原厂仪表提交导航显示清除请求。当前地图路线不会由此测试结束。");
    }

    private void musicForm(final boolean z) {
        LinearLayout linearLayoutCol = Ui.col(this);
        linearLayoutCol.addView(Ui.text(this, "仅测试仪表上的标题、歌手与播放状态；不会播放或暂停实际音乐。进度固定0，来源0代表普通音乐。", 26, Ui.colors(this).muted));
        final EditText editTextField = field(linearLayoutCol, "曲名", "仪表音乐测试", false);
        final EditText editTextField2 = field(linearLayoutCol, "歌手", "G3轻桌面", false);
        final EditText editTextField3 = field(linearLayoutCol, "原厂媒体来源（0–6）", "0", true);
        final Ui.PanelDialog panelDialogCreate = Ui.dialog(this).setTitle(z ? "手动音乐显示测试" : "手动暂停显示测试").setView(linearLayoutCol).setNegativeButton("取消", null).setPositiveButton("检查并提交", null).create();
        panelDialogCreate.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m189lambda$musicForm$25$comlocalg3homeVehicleBridgeActivity(editTextField, editTextField2, z, editTextField3, panelDialogCreate, view);
            }
        });
        show(panelDialogCreate);
    }

    /* renamed from: lambda$musicForm$25$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m189lambda$musicForm$25$comlocalg3homeVehicleBridgeActivity(EditText editText, EditText editText2, boolean z, EditText editText3, Ui.PanelDialog panelDialog, View view) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString("title", text(editText, 160));
            bundle.putString("artist", text(editText2, 160));
            bundle.putBoolean("playing", z);
            bundle.putInt("oemSource", integer(editText3, 0, 6));
            bundle.putInt("durationMs", 0);
            bundle.putInt("positionMs", 0);
            panelDialog.dismiss();
            confirm(G3Bridge.CLUSTER_MUSIC, G3Bridge.payload(bundle), "向仪表提交上述手动音乐信息及" + (z ? "播放" : "暂停") + "显示状态。");
        } catch (IllegalArgumentException e) {
            Ui.show(this, "请检查测试参数", e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void windowsForm() {
        LinearLayout linearLayoutCol = Ui.col(this);
        linearLayoutCol.addView(Ui.text(this, "四项全部填写，0为全开、100为全闭。此接口不使用255表示保持；提交前请核对四个目标位置。", 26, Ui.colors(this).muted));
        final EditText[] editTextArr = {field(linearLayoutCol, "左前车窗（0–100）", "", true), field(linearLayoutCol, "右前车窗（0–100）", "", true), field(linearLayoutCol, "左后车窗（0–100）", "", true), field(linearLayoutCol, "右后车窗（0–100）", "", true)};
        final Ui.PanelDialog panelDialogCreate = Ui.dialog(this).setTitle("四窗位置测试").setView(linearLayoutCol).setNegativeButton("取消", null).setPositiveButton("检查并提交", null).create();
        panelDialogCreate.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws NumberFormatException {
                this.f$0.m205lambda$windowsForm$26$comlocalg3homeVehicleBridgeActivity(editTextArr, panelDialogCreate, view);
            }
        });
        show(panelDialogCreate);
    }

    /* renamed from: lambda$windowsForm$26$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m205lambda$windowsForm$26$comlocalg3homeVehicleBridgeActivity(EditText[] editTextArr, Ui.PanelDialog panelDialog, View view) throws NumberFormatException {
        try {
            float[] fArr = new float[4];
            for (int i = 0; i < 4; i++) {
                float f = Float.parseFloat(editTextArr[i].getText().toString().trim());
                fArr[i] = f;
                if (Float.isFinite(f)) {
                    float f2 = fArr[i];
                    if (f2 >= 0.0f && f2 <= 100.0f) {
                    }
                }
                throw new IllegalArgumentException("四个车窗均须填写0至100之间的有限数字");
            }
            panelDialog.dismiss();
            confirm(G3Bridge.WINDOWS_POSITION, G3Bridge.floatArrayValue(fArr), "将设置四窗位置（左前、右前、左后、右后）：\n" + Arrays.toString(fArr) + "\n0全开，100全闭。请确认车窗附近没有夹碰风险。");
        } catch (RuntimeException e) {
            Ui.show(this, "请检查四窗参数", e instanceof NumberFormatException ? "请填写四个有效数字" : e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: controlForm, reason: merged with bridge method [inline-methods] */
    public void m198lambda$renderControls$15$comlocalg3homeVehicleBridgeActivity(final Bundle bundle) {
        final String string = bundle.getString("key", "");
        final String string2 = bundle.getString("type", "");
        LinearLayout linearLayoutCol = Ui.col(this);
        String str = hasRange(bundle) ? "原厂范围：" + bundle.getDouble("min") + " — " + bundle.getDouble("max") : "范围与执行条件由模块校验";
        int[] intArray = bundle.getIntArray("enumValues");
        if (intArray != null && intArray.length > 0) {
            str = str + "\n允许值：" + Arrays.toString(intArray);
        }
        linearLayoutCol.addView(Ui.text(this, string + "\n" + str, 27, Ui.colors(this).muted));
        final EditText editTextField = field(linearLayoutCol, ("boolean".equals(string2) || "bool".equals(string2)) ? "值（0关闭／1开启）" : "目标值", "", true);
        final Ui.PanelDialog panelDialogCreate = Ui.dialog(this).setTitle("测试 " + propertyLabel(string)).setView(linearLayoutCol).setNegativeButton("取消", null).setPositiveButton("检查并提交", null).create();
        panelDialogCreate.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda31
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws NumberFormatException {
                this.f$0.m188lambda$controlForm$27$comlocalg3homeVehicleBridgeActivity(editTextField, bundle, string2, panelDialogCreate, string, view);
            }
        });
        show(panelDialogCreate);
    }

    /* renamed from: lambda$controlForm$27$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m188lambda$controlForm$27$comlocalg3homeVehicleBridgeActivity(EditText editText, Bundle bundle, String str, Ui.PanelDialog panelDialog, String str2, View view) throws NumberFormatException {
        try {
            Bundle bundle2 = new Bundle();
            double d = Double.parseDouble(editText.getText().toString().trim());
            if (!Double.isFinite(d)) {
                throw new IllegalArgumentException("请输入有限数字");
            }
            if (hasRange(bundle) && (d < bundle.getDouble("min") || d > bundle.getDouble("max"))) {
                throw new IllegalArgumentException("目标值超出原厂配置范围");
            }
            if ("int".equals(str)) {
                if (d != Math.rint(d) || d < -2.147483648E9d || d > 2.147483647E9d) {
                    throw new IllegalArgumentException("请输入整数");
                }
                bundle2.putInt("valueInt", (int) d);
            } else if ("boolean".equals(str) || "bool".equals(str)) {
                if (d != 0.0d && d != 1.0d) {
                    throw new IllegalArgumentException("开关只支持0或1");
                }
                bundle2.putBoolean("valueBoolean", d == 1.0d);
            } else if ("float".equals(str)) {
                float f = (float) d;
                if (!Float.isFinite(f)) {
                    throw new IllegalArgumentException("数字过大");
                }
                bundle2.putFloat("valueFloat", f);
            } else {
                bundle2.putDouble("valueDouble", d);
            }
            panelDialog.dismiss();
            confirm(str2, bundle2, "将改变车辆当前状态：\n" + propertyLabel(str2) + " = " + d + "\n模块会核对本车能力、执行条件与真实回读。");
        } catch (RuntimeException e) {
            Ui.show(this, "请检查控制参数", e instanceof NumberFormatException ? "请输入有效数字" : e.getMessage());
        }
    }

    private static boolean hasRange(Bundle bundle) {
        return bundle.containsKey("min") && bundle.containsKey("max") && Double.isFinite(bundle.getDouble("min")) && Double.isFinite(bundle.getDouble("max")) && bundle.getDouble("min") < bundle.getDouble("max");
    }

    private EditText field(LinearLayout linearLayout, String str, String str2, boolean z) {
        EditText editTextInput = Ui.input(this, str, str2, false);
        if (z) {
            editTextInput.setInputType(12290);
        }
        Ui.field(this, linearLayout, str, editTextInput);
        return editTextInput;
    }

    private static int integer(EditText editText, int i, int i2) throws NumberFormatException {
        try {
            int i3 = Integer.parseInt(editText.getText().toString().trim());
            if (i3 < i || i3 > i2) {
                throw new IllegalArgumentException("数字必须在 " + i + " 至 " + i2 + " 范围内");
            }
            return i3;
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("请输入范围内的整数");
        }
    }

    private static String text(EditText editText, int i) {
        String strTrim = editText.getText().toString().trim();
        if (strTrim.length() > i || strTrim.indexOf(0) >= 0) {
            throw new IllegalArgumentException("文本过长或包含无效字符");
        }
        return strTrim;
    }

    private void confirm(final String str, final Bundle bundle, String str2) {
        show(Ui.dialog(this).setTitle("确认提交测试").setMessage(str2 + "\n\n命令：" + str).setNegativeButton("取消", null).setPositiveButton("确认提交", new DialogInterface.OnClickListener() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda10
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m187lambda$confirm$28$comlocalg3homeVehicleBridgeActivity(str, bundle, dialogInterface, i);
            }
        }).create());
    }

    /* renamed from: lambda$confirm$28$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m187lambda$confirm$28$comlocalg3homeVehicleBridgeActivity(String str, Bundle bundle, DialogInterface dialogInterface, int i) {
        submit(str, bundle);
    }

    private void submit(final String str, final Bundle bundle) {
        if (this.dead) {
            return;
        }
        work(new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m202lambda$submit$31$comlocalg3homeVehicleBridgeActivity(str, bundle);
            }
        });
    }

    /* renamed from: lambda$submit$29$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m200lambda$submit$29$comlocalg3homeVehicleBridgeActivity(String str, G3Bridge.Response response) {
        if (this.dead) {
            return;
        }
        appendLog(str + " · 未提交：" + (response.ok() ? "当前能力不可用" : response.code() + " " + response.message()));
        renderLog();
    }

    /* renamed from: lambda$submit$30$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m201lambda$submit$30$comlocalg3homeVehicleBridgeActivity(String str, G3Bridge.CommandResult commandResult) {
        if (this.dead) {
            return;
        }
        appendLog(str + " · " + resultLabel(commandResult));
        renderLog();
        if (this.resumed) {
            this.main.postDelayed(new VehicleBridgeActivity$$ExternalSyntheticLambda5(this), 3500L);
        }
    }

    /* renamed from: lambda$submit$31$com-local-g3home-VehicleBridgeActivity, reason: not valid java name */
    /* synthetic */ void m202lambda$submit$31$comlocalg3homeVehicleBridgeActivity(final String str, Bundle bundle) {
        final G3Bridge.Response responseCapabilities = this.bridge.capabilities();
        if (!responseCapabilities.ok() || !responseCapabilities.supportsCommand(str)) {
            this.main.post(new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m200lambda$submit$29$comlocalg3homeVehicleBridgeActivity(str, responseCapabilities);
                }
            });
            return;
        }
        final G3Bridge.CommandResult commandResultExecute = this.bridge.execute(str, bundle, 3000L);
        if (commandResultExecute.pending() && !commandResultExecute.commandId().isEmpty() && this.pending.size() < 16) {
            this.pending.put(commandResultExecute.commandId(), str);
        }
        this.main.post(new Runnable() { // from class: com.local.p5home.VehicleBridgeActivity$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m201lambda$submit$30$comlocalg3homeVehicleBridgeActivity(str, commandResultExecute);
            }
        });
    }

    private static String resultLabel(G3Bridge.CommandResult commandResult) {
        String strName = commandResult.state().name();
        return (commandResult.confirmed() ? "新HAL回读匹配（非硬件ACK）" : commandResult.pending() ? "SUBMITTED".equals(strName) ? "已提交，等待反馈" : "已排队，尚未确认" : "EXPIRED".equals(strName) ? "有效期内未获确认（不代表一定未执行）" : "未确认 / " + strName) + " · " + commandResult.code() + " · " + commandResult.message();
    }

    private void appendLog(String str) {
        if (this.history.isEmpty() || !str.equals(this.history.peekLast())) {
            this.history.addLast(str);
            while (this.history.size() > 12) {
                this.history.removeFirst();
            }
        }
    }

    private void renderLog() {
        if (this.logText == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.history.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (sb.length() > 0) {
                sb.append("\n\n");
            }
            sb.append(next);
        }
        this.logText.setText(sb.length() == 0 ? "尚未提交测试" : sb.toString());
    }

    static String formatProperty(Bundle bundle) {
        StringBuilder sb;
        String str;
        String string;
        String string2 = bundle.getString("key", "");
        String strPropertyLabel = propertyLabel(string2);
        String string3 = bundle.getString("unit", "");
        String str2 = bundle.getLong("sourceAgeMs", -1L) < 0 ? "来源时间未知" : "来源 " + (bundle.getLong("sourceAgeMs") / 1000) + " 秒前";
        String string4 = bundle.getString("timestampSemantics", "");
        boolean z = "read_time".equals(string4) || "getter_read_time".equals(string4);
        boolean zAvailableEvent = availableEvent(bundle);
        if (zAvailableEvent) {
            str2 = "HAL回调 " + (bundle.getLong("eventAgeMs", 0L) / 1000) + " 秒前；ECU采样时刻未知";
        } else if (z) {
            str2 = "读取时间独立记录；ECU采样时刻未知";
        }
        String strValue = value(bundle);
        boolean z2 = bundle.getBoolean("available", false);
        boolean z3 = z2 && bundle.getBoolean("valid", false) && bundle.getBoolean("freshSource", false) && bundle.getLong("sourceAgeMs", -1L) >= 0;
        if (!z2) {
            string = "— · 不可用";
        } else if (strValue == null) {
            string = "— · 值缺失";
        } else if (z3) {
            string = strValue;
        } else {
            if (zAvailableEvent) {
                sb = new StringBuilder();
                str = "HAL事件值 ";
            } else if (z) {
                sb = new StringBuilder();
                str = "读取值 ";
            } else {
                sb = new StringBuilder();
                str = "缓存值 ";
            }
            string = sb.append(str).append(strValue).toString();
        }
        if (z2 && strValue != null && !string3.isEmpty()) {
            StringBuilder sbAppend = new StringBuilder().append(string).append(" ");
            if ("oem_raw".equals(string3)) {
                string3 = "（原始单位未确认）";
            }
            string = sbAppend.append(string3).toString();
        }
        return strPropertyLabel + " · " + string2 + "\n" + string + "\n" + (z3 ? "有效样本" : zAvailableEvent ? "近期HAL事件；不代表传感器心跳" : z ? "读取完成；源采样时刻未确认" : "非实时 / 状态未确认") + " · " + str2 + " · 类型 " + bundle.getString("type", "未知");
    }

    private static boolean availableEvent(Bundle bundle) {
        return bundle.getBoolean("available", false) && bundle.getBoolean("freshEvent", false) && bundle.getLong("eventAgeMs", -1L) >= 0;
    }

    private static String value(Bundle bundle) {
        Object obj = bundle.get("valueInt");
        if (obj instanceof Integer) {
            return obj.toString();
        }
        Object obj2 = bundle.get("valueFloat");
        if ((obj2 instanceof Float) && Float.isFinite(((Float) obj2).floatValue())) {
            return obj2.toString();
        }
        Object obj3 = bundle.get("valueDouble");
        if ((obj3 instanceof Double) && Double.isFinite(((Double) obj3).doubleValue())) {
            return obj3.toString();
        }
        Object obj4 = bundle.get("valueLong");
        if (obj4 instanceof Long) {
            return obj4.toString();
        }
        Object obj5 = bundle.get("valueBoolean");
        if (obj5 instanceof Boolean) {
            return ((Boolean) obj5).booleanValue() ? "开启" : "关闭";
        }
        Object obj6 = bundle.get("valueString");
        if (obj6 instanceof String) {
            return Ui.limited((String) obj6, 180);
        }
        Object obj7 = bundle.get("valueIntArray");
        if (obj7 instanceof int[]) {
            return array((int[]) obj7);
        }
        Object obj8 = bundle.get("valueDoubleArray");
        if (obj8 instanceof double[]) {
            return array((double[]) obj8);
        }
        Object obj9 = bundle.get("valueFloatArray");
        if (obj9 instanceof float[]) {
            return array((float[]) obj9);
        }
        Object obj10 = bundle.get("valueLongArray");
        if (obj10 instanceof long[]) {
            return array((long[]) obj10);
        }
        Object obj11 = bundle.get("valueByteArray");
        if (obj11 instanceof byte[]) {
            return "字节数据（" + ((byte[]) obj11).length + "字节）";
        }
        return null;
    }

    private static String array(int[] iArr) {
        return Arrays.toString(Arrays.copyOf(iArr, Math.min(16, iArr.length))) + (iArr.length > 16 ? "…共" + iArr.length + "项" : "");
    }

    private static String array(long[] jArr) {
        return Arrays.toString(Arrays.copyOf(jArr, Math.min(16, jArr.length))) + (jArr.length > 16 ? "…共" + jArr.length + "项" : "");
    }

    private static String array(float[] fArr) {
        return Arrays.toString(Arrays.copyOf(fArr, Math.min(16, fArr.length))) + (fArr.length > 16 ? "…共" + fArr.length + "项" : "");
    }

    private static String array(double[] dArr) {
        return Arrays.toString(Arrays.copyOf(dArr, Math.min(16, dArr.length))) + (dArr.length > 16 ? "…共" + dArr.length + "项" : "");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:47:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.lang.String propertyLabel(java.lang.String r1) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.VehicleBridgeActivity.propertyLabel(java.lang.String):java.lang.String");
    }
}
