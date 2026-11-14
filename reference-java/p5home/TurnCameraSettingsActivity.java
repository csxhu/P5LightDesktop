package com.local.p5home;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.provider.Settings;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.local.p5home.TurnCameraControl;
import com.local.p5home.TurnCameraState;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class TurnCameraSettingsActivity extends Activity {
    private static final String KEY = "turn_assistant_sw";
    private static final String OWNER = "com.xiaopeng.drivingimageassist";
    private TextView authorityText;
    private Button authorize;
    private TextView automaticStatus;
    private boolean busy;
    private boolean checked;
    private boolean dead;
    private Button disable;
    private Button enable;
    private TextView integrationText;
    private TextView nativeResult;
    private Button refresh;
    private TextView resultText;
    private boolean resumed;
    private Button rootDisable;
    private Button rootEnable;
    private TextView serviceText;
    private int theme;
    private TextView valueText;
    private final ExecutorService worker = Executors.newSingleThreadExecutor();
    private final Handler main = new Handler(Looper.getMainLooper());
    private String autoCapability = "unknown";
    private String nativeBuild = "";
    private final List<Button> nativeButtons = new ArrayList();
    private String nativeMessage = "检查原车接入后，可在停车时短时预览左右画面。";
    private String result = "";
    private final Runnable statusTick = new Runnable() { // from class: com.local.p5home.TurnCameraSettingsActivity.1
        @Override // java.lang.Runnable
        public void run() {
            if (TurnCameraSettingsActivity.this.dead || !TurnCameraSettingsActivity.this.resumed) {
                return;
            }
            TurnCameraSettingsActivity.this.refresh();
            TurnCameraSettingsActivity.this.main.postDelayed(this, 5000L);
        }
    };

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        build();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.resumed = true;
        if (this.theme != Ui.themeSignature(this)) {
            build();
        }
        this.main.removeCallbacks(this.statusTick);
        this.main.post(this.statusTick);
        if (this.checked) {
            return;
        }
        this.checked = true;
        m163x5c4489bb("probe");
    }

    @Override // android.app.Activity
    public void onPause() {
        this.resumed = false;
        this.main.removeCallbacks(this.statusTick);
        super.onPause();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        build();
        refresh();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.dead = true;
        this.main.removeCallbacks(this.statusTick);
        this.worker.shutdownNow();
        super.onDestroy();
    }

    private void build() {
        Ui.install(this);
        this.theme = Ui.themeSignature(this);
        this.nativeButtons.clear();
        ScrollView scrollView = new ScrollView(this);
        scrollView.setFillViewport(true);
        scrollView.setBackgroundColor(Ui.colors(this).bg);
        LinearLayout linearLayoutCol = Ui.col(this);
        linearLayoutCol.setPadding(Ui.s(this, 44.0f), Ui.s(this, 36.0f), Ui.s(this, 44.0f), Ui.s(this, 36.0f));
        scrollView.addView(linearLayoutCol);
        setContentView(scrollView);
        LinearLayout linearLayoutRow = Ui.row(this);
        linearLayoutRow.addView(Ui.iconButton(this, "back", "返回设置", new Runnable() { // from class: com.local.p5home.TurnCameraSettingsActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.finish();
            }
        }));
        Ui.side(this, linearLayoutRow, 26);
        linearLayoutRow.addView(Ui.title(this, "转向侧摄", 46), new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayoutCol.addView(linearLayoutRow);
        Ui.gap(this, linearLayoutCol, 32);
        LinearLayout linearLayoutPanel = Ui.panel(this);
        linearLayoutPanel.addView(Ui.title(this, "原车转向影像", 36));
        Ui.gap(this, linearLayoutPanel, 18);
        TextView textViewText = Ui.text(this, "", 28, Ui.colors(this).muted);
        this.automaticStatus = textViewText;
        linearLayoutPanel.addView(textViewText);
        Ui.gap(this, linearLayoutPanel, 12);
        TextView textViewText2 = Ui.text(this, "正在读取原车开关…", 28, Ui.colors(this).muted);
        this.valueText = textViewText2;
        linearLayoutPanel.addView(textViewText2);
        Ui.gap(this, linearLayoutPanel, 12);
        TextView textViewText3 = Ui.text(this, "正在检查原车影像应用…", 27, Ui.colors(this).muted);
        this.serviceText = textViewText3;
        linearLayoutPanel.addView(textViewText3);
        Ui.gap(this, linearLayoutPanel, 12);
        TextView textViewText4 = Ui.text(this, "正在读取模块接入状态…", 27, Ui.colors(this).muted);
        this.integrationText = textViewText4;
        linearLayoutPanel.addView(textViewText4);
        Ui.gap(this, linearLayoutPanel, 12);
        TextView textViewText5 = Ui.text(this, "", 27, Ui.colors(this).muted);
        this.authorityText = textViewText5;
        linearLayoutPanel.addView(textViewText5);
        Ui.gap(this, linearLayoutPanel, 24);
        this.enable = Ui.button(this, "开启原车功能", true, new Runnable() { // from class: com.local.p5home.TurnCameraSettingsActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m157lambda$build$0$comlocalg3homeTurnCameraSettingsActivity();
            }
        });
        Button button = Ui.button(this, "关闭原车功能", false, new Runnable() { // from class: com.local.p5home.TurnCameraSettingsActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m158lambda$build$1$comlocalg3homeTurnCameraSettingsActivity();
            }
        });
        this.disable = button;
        Ui.buttons(this, linearLayoutPanel, this.enable, button);
        this.authorize = Ui.button(this, "授权修改系统设置", false, new Runnable() { // from class: com.local.p5home.TurnCameraSettingsActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.openAuthorization();
            }
        });
        Button button2 = Ui.button(this, "刷新状态", false, new Runnable() { // from class: com.local.p5home.TurnCameraSettingsActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.refresh();
            }
        });
        this.refresh = button2;
        Ui.buttons(this, linearLayoutPanel, this.authorize, button2);
        this.rootEnable = Ui.button(this, "使用 Root 开启", false, new Runnable() { // from class: com.local.p5home.TurnCameraSettingsActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m159lambda$build$2$comlocalg3homeTurnCameraSettingsActivity();
            }
        });
        Button button3 = Ui.button(this, "使用 Root 关闭", false, new Runnable() { // from class: com.local.p5home.TurnCameraSettingsActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m160lambda$build$3$comlocalg3homeTurnCameraSettingsActivity();
            }
        });
        this.rootDisable = button3;
        Ui.buttons(this, linearLayoutPanel, this.rootEnable, button3);
        TextView textViewText6 = Ui.text(this, this.result, 26, Ui.colors(this).muted);
        this.resultText = textViewText6;
        linearLayoutPanel.addView(textViewText6);
        linearLayoutCol.addView(linearLayoutPanel, new LinearLayout.LayoutParams(-1, -2));
        Ui.gap(this, linearLayoutCol, 26);
        LinearLayout linearLayoutPanel2 = Ui.panel(this);
        linearLayoutPanel2.addView(Ui.title(this, "原车进程接入", 36));
        Ui.gap(this, linearLayoutPanel2, 18);
        linearLayoutPanel2.addView(Ui.text(this, "使用原车事件订阅和相机显示，不需要电脑保持 ADB 连接。预览仅在 P 挡、车速为 0、原车影像就绪且没有其他画面占用时提交，最长 5 秒。", 27, Ui.colors(this).muted));
        Ui.gap(this, linearLayoutPanel2, 22);
        Ui.buttons(this, linearLayoutPanel2, nativeButton("检查接入", "probe"), nativeButton("重新挂接转向事件", "repair"));
        Ui.buttons(this, linearLayoutPanel2, nativeButton("左侧预览 · 5秒", "left"), nativeButton("右侧预览 · 5秒", "right"));
        Ui.buttons(this, linearLayoutPanel2, nativeButton("关闭本模块预览", "close"), nativeButton("Root 启动原车进程", "start"));
        TextView textViewText7 = Ui.text(this, this.nativeMessage, 26, Ui.colors(this).muted);
        this.nativeResult = textViewText7;
        linearLayoutPanel2.addView(textViewText7);
        linearLayoutCol.addView(linearLayoutPanel2, new LinearLayout.LayoutParams(-1, -2));
        Ui.gap(this, linearLayoutCol, 26);
        LinearLayout linearLayoutPanel3 = Ui.panel(this);
        linearLayoutPanel3.addView(Ui.title(this, "使用条件", 34));
        Ui.gap(this, linearLayoutPanel3, 18);
        linearLayoutPanel3.addView(Ui.text(this, "自动转向影像沿用原车低速阈值（原始值 10）及非倒挡条件，倒挡、原车相机和辅助画面按原车规则互斥。模块补充 Q5 缺少的转向事件订阅，并拒绝异常速度和未知档位。\n\n手动预览复用 G3 原车显示控制器与相机参数；不会照搬其他车型模式或扫描其他摄像头。开关保存、事件挂接和预览请求分别显示结果，它们均不能代替实车确认画面及数据正确性。", 27, Ui.colors(this).muted));
        Ui.gap(this, linearLayoutPanel3, 18);
        linearLayoutPanel3.addView(Ui.text(this, "Q5 接入：需在 LSPosed 为 G3轻桌面启用驾驶影像辅助作用域，并重新加载原车影像进程。接入和回调状态不代表实际画面已经显示。", 27, Ui.colors(this).muted));
        Ui.gap(this, linearLayoutPanel3, 18);
        linearLayoutPanel3.addView(Ui.button(this, "打开 LSPosed 管理器", false, new Runnable() { // from class: com.local.p5home.TurnCameraSettingsActivity$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m161lambda$build$4$comlocalg3homeTurnCameraSettingsActivity();
            }
        }), new LinearLayout.LayoutParams(-1, -2));
        linearLayoutCol.addView(linearLayoutPanel3, new LinearLayout.LayoutParams(-1, -2));
        setBusy(this.busy);
    }

    /* renamed from: lambda$build$0$com-local-g3home-TurnCameraSettingsActivity, reason: not valid java name */
    /* synthetic */ void m157lambda$build$0$comlocalg3homeTurnCameraSettingsActivity() {
        confirm(false, true);
    }

    /* renamed from: lambda$build$1$com-local-g3home-TurnCameraSettingsActivity, reason: not valid java name */
    /* synthetic */ void m158lambda$build$1$comlocalg3homeTurnCameraSettingsActivity() {
        confirm(false, false);
    }

    /* renamed from: lambda$build$2$com-local-g3home-TurnCameraSettingsActivity, reason: not valid java name */
    /* synthetic */ void m159lambda$build$2$comlocalg3homeTurnCameraSettingsActivity() {
        confirm(true, true);
    }

    /* renamed from: lambda$build$3$com-local-g3home-TurnCameraSettingsActivity, reason: not valid java name */
    /* synthetic */ void m160lambda$build$3$comlocalg3homeTurnCameraSettingsActivity() {
        confirm(true, false);
    }

    /* renamed from: lambda$build$4$com-local-g3home-TurnCameraSettingsActivity, reason: not valid java name */
    /* synthetic */ void m161lambda$build$4$comlocalg3homeTurnCameraSettingsActivity() {
        DeviceActions.openLsposed(this);
    }

    private TurnCameraState.Value readValue() {
        try {
            return TurnCameraState.parse(Settings.System.getString(getContentResolver(), KEY));
        } catch (RuntimeException e) {
            return TurnCameraState.Value.UNREADABLE;
        }
    }

    private boolean canWrite() {
        try {
            return Settings.System.canWrite(this);
        } catch (RuntimeException e) {
            return false;
        }
    }

    private String ownerStatus() {
        try {
            return getPackageManager().getApplicationInfo(OWNER, 0).enabled ? "原车影像应用：已安装并启用；运行和画面状态未确认" : "原车影像应用：已停用，开关不能证明功能生效";
        } catch (PackageManager.NameNotFoundException e) {
            return "未找到原车影像应用，开关不能证明功能生效";
        } catch (RuntimeException e2) {
            return "无法检查原车影像应用，功能状态未确认";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refresh() {
        if (this.dead || this.valueText == null) {
            return;
        }
        this.automaticStatus.setText("not_exposed".equals(this.autoCapability) ? "自动联动：原车接口未公开所需转向灯状态，当前待适配；可单独使用停车预览" : "available".equals(this.autoCapability) ? "自动联动：转向属性已公开，仍需收到真实回调" : "自动联动：转向输入尚未确认");
        this.automaticStatus.setTextColor("not_exposed".equals(this.autoCapability) ? Ui.colors(this).warning : Ui.colors(this).muted);
        this.valueText.setText(TurnCameraState.describe(readValue()));
        this.serviceText.setText(ownerStatus());
        this.integrationText.setText(integrationStatus());
        boolean zCanWrite = canWrite();
        this.authorityText.setText(zCanWrite ? "系统设置权限：已授权" : "系统设置权限：未授权；可授权或手动选择 Root 操作");
        this.enable.setEnabled((this.busy || "not_exposed".equals(this.autoCapability)) ? false : true);
        this.authorize.setEnabled((this.busy || zCanWrite) ? false : true);
        this.rootEnable.setEnabled((this.busy || zCanWrite || "not_exposed".equals(this.autoCapability)) ? false : true);
        this.rootDisable.setEnabled((this.busy || zCanWrite) ? false : true);
        this.resultText.setText(this.result);
    }

    private String integrationStatus() {
        try {
            return describeIntegration(getContentResolver().call(TurnCameraStatusClient.URI, "status", (String) null, (Bundle) null));
        } catch (RuntimeException e) {
            return "模块接入：状态读取不可用";
        }
    }

    static String describeIntegration(Bundle bundle) {
        if (bundle == null || !bundle.getBoolean("hookReady", false)) {
            return "模块接入：未收到有效心跳，请检查作用域和影像进程";
        }
        String str = !bundle.getBoolean("connectionSeen", false) ? "未收到连接状态" : bundle.getBoolean("connected", false) ? "收到连接回调" : "收到断开回调";
        String str2 = "已收到回调";
        String str3 = bundle.getBoolean("lampCallbackFault", false) ? "回调异常" : bundle.getBoolean("lampCallbackSeen", false) ? "已收到回调" : "未收到回调";
        if (bundle.getBoolean("gearCallbackFault", false)) {
            str2 = "回调异常";
        } else if (!bundle.getBoolean("gearCallbackSeen", false)) {
            str2 = "未收到回调";
        }
        return "模块接入：已收到心跳 · " + (bundle.getBoolean("observerAdded", false) ? "事件对象已加入" : "事件对象未确认") + "\n" + str + " · 转向灯" + str3 + " · 档位" + str2;
    }

    private void setBusy(boolean z) {
        this.busy = z;
        Button button = this.enable;
        if (button == null) {
            return;
        }
        button.setEnabled((z || "not_exposed".equals(this.autoCapability)) ? false : true);
        this.disable.setEnabled(!z);
        this.refresh.setEnabled(!z);
        boolean zCanWrite = canWrite();
        this.authorize.setEnabled((z || zCanWrite) ? false : true);
        this.rootEnable.setEnabled((z || zCanWrite || "not_exposed".equals(this.autoCapability)) ? false : true);
        this.rootDisable.setEnabled((z || zCanWrite) ? false : true);
        for (Button button2 : this.nativeButtons) {
            button2.setEnabled((z || ("repair".equals(button2.getTag()) && "not_exposed".equals(this.autoCapability))) ? false : true);
        }
    }

    private Button nativeButton(String str, final String str2) {
        Button button = Ui.button(this, str, false, new Runnable() { // from class: com.local.p5home.TurnCameraSettingsActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m163x5c4489bb(str2);
            }
        });
        button.setTag(str2);
        this.nativeButtons.add(button);
        return button;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: nativeOperation, reason: merged with bridge method [inline-methods] */
    public void m163x5c4489bb(final String str) {
        if (this.busy) {
            return;
        }
        setBusy(true);
        this.nativeMessage = "正在请求原车组件…";
        TextView textView = this.nativeResult;
        if (textView != null) {
            textView.setText("正在请求原车组件…");
        }
        this.worker.execute(new Runnable() { // from class: com.local.p5home.TurnCameraSettingsActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m165x75a4904a(str);
            }
        });
    }

    /* renamed from: lambda$nativeOperation$7$com-local-g3home-TurnCameraSettingsActivity, reason: not valid java name */
    /* synthetic */ void m165x75a4904a(final String str) {
        final TurnCameraControl.Result resultStartNative = "start".equals(str) ? TurnCameraControl.startNative(getApplicationContext()) : TurnCameraControl.request(getApplicationContext(), str);
        this.main.post(new Runnable() { // from class: com.local.p5home.TurnCameraSettingsActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m164xdb03cdc9(resultStartNative, str);
            }
        });
    }

    /* renamed from: lambda$nativeOperation$6$com-local-g3home-TurnCameraSettingsActivity, reason: not valid java name */
    /* synthetic */ void m164xdb03cdc9(TurnCameraControl.Result result, String str) {
        if (this.dead) {
            return;
        }
        this.nativeMessage = result.message;
        if ("probe".equals(str) || "start".equals(str)) {
            this.autoCapability = result.autoCapability;
            this.nativeBuild = result.nativeBuild;
            if (result.accepted && !"turn-20261028-d".equals(this.nativeBuild)) {
                this.nativeMessage += "；影像进程尚未加载本次版本，停车后需重新加载";
            }
        }
        TextView textView = this.nativeResult;
        if (textView != null) {
            textView.setText(this.nativeMessage);
        }
        setBusy(false);
        refresh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAuthorization() {
        try {
            startActivity(new Intent("android.settings.action.MANAGE_WRITE_SETTINGS", Uri.parse("package:" + getPackageName())));
        } catch (ActivityNotFoundException | SecurityException e) {
            this.result = "系统未提供授权页面；可手动选择 Root 操作。";
            refresh();
        }
    }

    private void confirm(final boolean z, final boolean z2) {
        if (this.busy) {
            return;
        }
        if (z || canWrite()) {
            Ui.dialog(this).setTitle(z2 ? "开启原车转向影像" : "关闭原车转向影像").setMessage((z ? "将通过 Root 写入原车设置。" : "将写入原车系统设置。") + "\n开关状态会在写入后重新读取；实际显示仍受原车条件限制。").setNegativeButton("取消", null).setPositiveButton("确认", new DialogInterface.OnClickListener() { // from class: com.local.p5home.TurnCameraSettingsActivity$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.m162lambda$confirm$8$comlocalg3homeTurnCameraSettingsActivity(z, z2, dialogInterface, i);
                }
            }).show();
        } else {
            this.result = "尚未获得修改系统设置权限，请授权或选择 Root 操作。";
            refresh();
        }
    }

    /* renamed from: lambda$confirm$8$com-local-g3home-TurnCameraSettingsActivity, reason: not valid java name */
    /* synthetic */ void m162lambda$confirm$8$comlocalg3homeTurnCameraSettingsActivity(boolean z, boolean z2, DialogInterface dialogInterface, int i) {
        write(z, z2);
    }

    private void write(boolean z, final boolean z2) {
        boolean zPutInt;
        if (this.busy) {
            return;
        }
        int i = 1;
        setBusy(true);
        this.result = "正在写入并核对原车开关…";
        refresh();
        if (!z) {
            try {
                ContentResolver contentResolver = getContentResolver();
                if (!z2) {
                    i = 0;
                }
                zPutInt = Settings.System.putInt(contentResolver, KEY, i);
            } catch (RuntimeException e) {
                zPutInt = false;
            }
            finishWrite(zPutInt, z2, false);
            return;
        }
        final int iMyUid = Process.myUid() / 100000;
        this.worker.execute(new Runnable() { // from class: com.local.p5home.TurnCameraSettingsActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m166lambda$write$10$comlocalg3homeTurnCameraSettingsActivity(iMyUid, z2);
            }
        });
    }

    /* renamed from: lambda$write$10$com-local-g3home-TurnCameraSettingsActivity, reason: not valid java name */
    /* synthetic */ void m166lambda$write$10$comlocalg3homeTurnCameraSettingsActivity(int i, final boolean z) {
        final boolean z2 = false;
        Process processStart = null;
        try {
            try {
                processStart = new ProcessBuilder("su", "-c", "settings --user " + i + " put system " + KEY + " " + (z ? "1" : "0")).redirectErrorStream(true).start();
                processStart.getOutputStream().close();
                if (processStart.waitFor(20L, TimeUnit.SECONDS)) {
                    if (processStart.exitValue() == 0) {
                        z2 = true;
                    }
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                if (processStart != null) {
                }
            } catch (Exception e2) {
                if (processStart != null) {
                }
            }
            this.main.post(new Runnable() { // from class: com.local.p5home.TurnCameraSettingsActivity$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m167lambda$write$9$comlocalg3homeTurnCameraSettingsActivity(z2, z);
                }
            });
        } finally {
            if (processStart != null) {
                processStart.destroy();
            }
        }
    }

    /* renamed from: lambda$write$9$com-local-g3home-TurnCameraSettingsActivity, reason: not valid java name */
    /* synthetic */ void m167lambda$write$9$comlocalg3homeTurnCameraSettingsActivity(boolean z, boolean z2) {
        if (this.dead) {
            return;
        }
        finishWrite(z, z2, true);
    }

    private void finishWrite(boolean z, boolean z2, boolean z3) {
        TurnCameraState.Value value = readValue();
        if (z && TurnCameraState.matches(value, z2)) {
            this.result = "设置已写入并回读确认；原车影像能否显示仍取决于使用条件。";
        } else {
            this.result = (z3 ? "Root 操作未确认。" : "写入未确认。") + "请查看当前开关状态，检查权限后重试。";
        }
        setBusy(false);
        refresh();
    }
}
