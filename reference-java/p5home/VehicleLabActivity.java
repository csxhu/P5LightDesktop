package com.local.p5home;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.local.p5home.Ui;

/* loaded from: classes.dex */
public final class VehicleLabActivity extends Activity {
    private static final String CATALOG = "com.local.xpcatalog";
    private static final long DIRECT_ENTRY_VERSION = 7;
    private static final String RESEARCH = "车机研究记录 · G3 / D20 Android 9\n原车转向影像开关：Settings.System turn_assistant_sw；开关不证明画面可用。\n转向候选：BCM_LRTURNLAMP_ACTIVE_ST 0x21411cc0；原厂影像进程是否可注册尚未验证。\n原车控读取同一属性；已分析的 Q5 配置默认不启用该转向监听，无法证明存在第二数据源。\nD20 HAL 配置中的 BCM_1 含左右转向开关和灯输出信号名，但尚未建立应用可读取的接口或数据时效。\n2026-10-27 只读快照：D20 信号有原厂处理标志，但四个候选的属性关联数均为 0；失联标志不能独立证明数据新鲜。\n档位：VCU_CURRENT_GEARLEV 0x21401205；车速：VCU_RAW_CAR_SPEED 0x21601225。getter 时间戳可能在读取时重写，不能证明源数据实时。\nCarService 的 CAN 故障通知与 Vehicle HAL 反复崩溃有关；没有通知不能证明底层 CAN 数据或车速实时。\nLCC：SCU_LCC_SW 0x2140260e 为开关，非 60/80 km/h 速度上限；真实上限写入接口未确认。\n盲区和后方横向来车：原厂车控 getBsdState / getRctaState 读取设置状态，并非实时告警；另有左右警告属性，是否支持和含义待验证。\n后方碰撞警告：原厂 CarService getScuRearCollisionWarning 读取 SCU_RCW_WARNING 0x2140267b；本车是否可用及含义待验证。\n仪表：getMileageTotal 可读取总里程，但异常时原厂返回 0；结果未经状态校验不能当作实时有效值。\n窄路影像：原车驾驶影像存在 NRA 场景及 AVM 工作条件；广播入口不等同转向侧摄，图像接入未验证。\n2026-10-27 system UID 配置查询：返回 BSD 开关、仪表总里程、AVM 工作和摄像头故障属性配置；未返回 RCW / RCTA 和左右告警。查询不包含属性值，未返回不证明不支持。\n原厂命令页：com.xiaopeng.devtools/.view.aftersales.CommonCmdActivity；打开和执行由应用库工具箱处理。\n维修模式：原厂页面和服务存在；启用可能退出车机账户，未验证车辆影响。\n结论来自指定固件的静态或只读观察，不能推断其他车型支持，也不代表实际功能已启用。";
    private static final String TARGET = "com.local.xpcatalog.LAUNCH_TARGET";
    private int theme;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        build();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.theme != Ui.themeSignature(this)) {
            build();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void build() {
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
        linearLayoutRow.addView(Ui.iconButton(this, "back", "返回设置", new Runnable() { // from class: com.local.p5home.VehicleLabActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.finish();
            }
        }));
        Ui.side(this, linearLayoutRow, 26);
        linearLayoutRow.addView(Ui.title(this, "车机功能与研究", 46), new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayoutCol.addView(linearLayoutRow);
        Ui.gap(this, linearLayoutCol, 28);
        LinearLayout linearLayoutCard = card(linearLayoutCol, "当前设备");
        linearLayoutCard.addView(Ui.text(this, "设备代号：" + safe(Build.DEVICE) + " · Android " + safe(Build.VERSION.RELEASE) + "\nUSB 调试：" + adbStatus() + "\n车机工具：" + catalogStatus(), 27, paletteColors.muted));
        linearLayoutCard.addView(Ui.text(this, "状态是本机读取结果；原厂接口说明基于指定 G3 固件的静态和只读研究。", 26, paletteColors.muted));
        LinearLayout linearLayoutCard2 = card(linearLayoutCol, "常用功能");
        linearLayoutCard2.addView(Ui.text(this, "应用管理、Root / Shizuku、原厂页面与 ADB 工具由车型应用库执行；打开页面不会自动执行命令。", 27, paletteColors.muted));
        Ui.gap(this, linearLayoutCard2, 18);
        Ui.buttons(this, linearLayoutCard2, button("应用管理", new Runnable() { // from class: com.local.p5home.VehicleLabActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m216lambda$build$0$comlocalg3homeVehicleLabActivity();
            }
        }), button("ADB 与命令", new Runnable() { // from class: com.local.p5home.VehicleLabActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m217lambda$build$1$comlocalg3homeVehicleLabActivity();
            }
        }));
        Ui.buttons(this, linearLayoutCard2, button("原厂页面与工具", new Runnable() { // from class: com.local.p5home.VehicleLabActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m218lambda$build$2$comlocalg3homeVehicleLabActivity();
            }
        }), button("转向侧摄设置", new Runnable() { // from class: com.local.p5home.VehicleLabActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.openCamera();
            }
        }));
        LinearLayout linearLayoutCard3 = card(linearLayoutCol, "仪表与车辆接口");
        linearLayoutCard3.addView(Ui.text(this, "轻桌面通过独立 G3车辆接口 SDK 读取车况，配置导航与音乐仪表推送，并记录手动测试回执。请先在该页检查授权、原厂服务和具体能力。", 27, paletteColors.muted));
        Ui.gap(this, linearLayoutCard3, 18);
        linearLayoutCard3.addView(button("打开仪表与车辆接口", new Runnable() { // from class: com.local.p5home.VehicleLabActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m219lambda$build$3$comlocalg3homeVehicleLabActivity();
            }
        }), new LinearLayout.LayoutParams(-1, -2));
        LinearLayout linearLayoutCard4 = card(linearLayoutCol, "转向影像 · 研究中");
        linearLayoutCard4.addView(Ui.text(this, "原厂存在左右影像场景和 turn_assistant_sw 开关。该车的转向灯候选属性尚未确认可注册；速度 getter 时间戳可能是读取时生成，不能证明车速数据实时。", 27, paletteColors.muted));
        detail(linearLayoutCard4, "转向向量 0x21411cc0 · 车速 0x21601225 · 档位 0x21401205");
        detail(linearLayoutCard4, "原车控也读取该向量；已分析的 Q5 配置默认不启用此监听，不能视为已找到备用信号。");
        detail(linearLayoutCard4, "D20 HAL 的 BCM_1 配置引用了左右转向灯开关和输出信号名；公开读取接口及信号时效尚未确认。");
        detail(linearLayoutCard4, "2026-10-27 只读快照：四个转向候选有原厂处理标志，属性关联数均为 0；失联标志不能证明数据实时。");
        detail(linearLayoutCard4, "CarService 的 CAN 故障通知用于报告 HAL 反复崩溃；没有故障通知不代表车速或转向数据实时。");
        LinearLayout linearLayoutCard5 = card(linearLayoutCol, "巡航与车道保持 · 待确认");
        linearLayoutCard5.addView(Ui.text(this, "已找到 LCC 开关、道路限速及超速提醒接口。尚未找到经验证的 60 / 80 km/h 巡航设速上限，暂不提供写入。", 27, paletteColors.muted));
        detail(linearLayoutCard5, "SCU_LCC_SW 0x2140260e 是开关；道路限速不等于巡航上限。");
        LinearLayout linearLayoutCard6 = card(linearLayoutCol, "盲区与后方来车 · 接口待验证");
        linearLayoutCard6.addView(Ui.text(this, "原厂车控提供盲区监测（BSD）和后方横向来车提醒（RCTA）的设置状态；后方碰撞（RCW）另有候选读取接口。接口存在不代表本车能读取，也不代表此处已经能提示后车。", 27, paletteColors.muted));
        detail(linearLayoutCard6, "设置：getBsdState / getRctaState · 候选告警：SCU_BSD / RCTA 左右属性 · SCU_RCW_WARNING 0x2140267b");
        detail(linearLayoutCard6, "2026-10-27 只读配置检查：系统 UID 收到 BSD 开关配置；未收到 RCTA / RCW 和左右告警配置。权限过滤与运行环境可能影响结果，不能据此判断硬件支持。");
        LinearLayout linearLayoutCard7 = card(linearLayoutCol, "窄路与全景影像 · 研究中");
        linearLayoutCard7.addView(Ui.text(this, "已定位原厂驾驶影像的 NRA 场景及全景系统的工作条件。NRA 快捷入口与左右转向场景并非同一事件；摄像头画面接入及车型支持仍需核实。", 27, paletteColors.muted));
        detail(linearLayoutCard7, "2026-10-27 只读配置检查：系统 UID 收到 AVM 工作状态和摄像头故障配置；未读取状态值。");
        LinearLayout linearLayoutCard8 = card(linearLayoutCol, "仪表与里程 · 接口待验证");
        linearLayoutCard8.addView(Ui.text(this, "原厂车控提供总里程及 A / B 里程读取。总里程读取失败时原厂可能返回 0；当前没有经过来源、状态与时效验证的实时仪表数据。", 27, paletteColors.muted));
        detail(linearLayoutCard8, "IcmController.getMileageTotal / getMileageA / getMileageB · ICM_TOTAL_ODOMETER");
        detail(linearLayoutCard8, "2026-10-27 只读配置检查：系统 UID 收到总里程属性配置；未读取里程值。");
        LinearLayout linearLayoutCard9 = card(linearLayoutCol, "原厂回调观察 · 默认关闭");
        linearLayoutCard9.addView(Ui.text(this, "只旁路观察原车应用自然产生的 ACC / LCC、BSD / RCTA / RCW、总里程和 AVM 工作状态回调，记录原始参数与接收时间；不会主动读取传感器、启动相机或改变原厂返回值。记录仅保存在内存。", 27, paletteColors.muted));
        Ui.gap(this, linearLayoutCard9, 14);
        linearLayoutCard9.addView(Ui.text(this, observationStatus(), 27, paletteColors.muted));
        Ui.gap(this, linearLayoutCard9, 14);
        linearLayoutCard9.addView(Ui.text(this, "需在 LSPosed 勾选车辆控制及驾驶影像辅助作用域，原车应用下次启动后才尝试接入；不自动重启。记录可能过期、缺失或受原厂异常回退影响，不能作为驾驶或告警依据。车辆控制应用与其他系统组件共享 UID，无法独立认证其每条报告。", 26, paletteColors.muted));
        Ui.gap(this, linearLayoutCard9, 18);
        final boolean zEnabled = VehicleObservationProvider.enabled(this);
        Button[] buttonArr = new Button[2];
        buttonArr[0] = button(zEnabled ? "关闭回调观察" : "开启回调观察", new Runnable() { // from class: com.local.p5home.VehicleLabActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m220lambda$build$4$comlocalg3homeVehicleLabActivity(zEnabled);
            }
        });
        buttonArr[1] = button("刷新观察记录", new Runnable() { // from class: com.local.p5home.VehicleLabActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.build();
            }
        });
        Ui.buttons(this, linearLayoutCard9, buttonArr);
        Ui.buttons(this, linearLayoutCard9, button("打开 LSPosed 管理器", new Runnable() { // from class: com.local.p5home.VehicleLabActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m221lambda$build$5$comlocalg3homeVehicleLabActivity();
            }
        }), button("清除观察记录", new Runnable() { // from class: com.local.p5home.VehicleLabActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.clearObservation();
            }
        }));
        LinearLayout linearLayoutCard10 = card(linearLayoutCol, "语音与导航");
        linearLayoutCard10.addView(Ui.text(this, "小P与豆包使用 LSPosed 接入；高德支持搜索及候选路线流程，实际路线结果仍以地图为准。输入框语音听写尚未确认。", 27, paletteColors.muted));
        Ui.gap(this, linearLayoutCard10, 18);
        linearLayoutCard10.addView(button("返回导航与语音设置", new Runnable() { // from class: com.local.p5home.VehicleLabActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.finish();
            }
        }), new LinearLayout.LayoutParams(-1, -2));
        LinearLayout linearLayoutCard11 = card(linearLayoutCol, "原厂维修与调试");
        linearLayoutCard11.addView(Ui.text(this, "原厂命令页和维修模式入口已定位。维修模式可能使车机账户退出，具体车辆影响尚未验证；进入及操作由原厂页面和工具箱处理。", 27, paletteColors.muted));
        detail(linearLayoutCard11, "命令页：com.xiaopeng.devtools/.view.aftersales.CommonCmdActivity");
        LinearLayout linearLayoutCard12 = card(linearLayoutCol, "开发记录");
        linearLayoutCard12.addView(Ui.text(this, "复制已发现的属性和边界，便于后续排查；不会复制密钥、账户或实时车况。", 27, paletteColors.muted));
        Ui.gap(this, linearLayoutCard12, 18);
        linearLayoutCard12.addView(button("复制研究摘要", new Runnable() { // from class: com.local.p5home.VehicleLabActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.copyResearch();
            }
        }), new LinearLayout.LayoutParams(-1, -2));
    }

    /* renamed from: lambda$build$0$com-local-g3home-VehicleLabActivity, reason: not valid java name */
    /* synthetic */ void m216lambda$build$0$comlocalg3homeVehicleLabActivity() {
        openCatalog("apps");
    }

    /* renamed from: lambda$build$1$com-local-g3home-VehicleLabActivity, reason: not valid java name */
    /* synthetic */ void m217lambda$build$1$comlocalg3homeVehicleLabActivity() {
        openCatalog("commands");
    }

    /* renamed from: lambda$build$2$com-local-g3home-VehicleLabActivity, reason: not valid java name */
    /* synthetic */ void m218lambda$build$2$comlocalg3homeVehicleLabActivity() {
        openCatalog("tools");
    }

    /* renamed from: lambda$build$3$com-local-g3home-VehicleLabActivity, reason: not valid java name */
    /* synthetic */ void m219lambda$build$3$comlocalg3homeVehicleLabActivity() {
        try {
            Ui.launch(this, new Intent(this, (Class<?>) VehicleBridgeActivity.class));
        } catch (RuntimeException e) {
            Ui.show(this, "车辆接口页面未打开", Ui.error(e));
        }
    }

    /* renamed from: lambda$build$4$com-local-g3home-VehicleLabActivity, reason: not valid java name */
    /* synthetic */ void m220lambda$build$4$comlocalg3homeVehicleLabActivity(boolean z) {
        setObservation(!z);
    }

    /* renamed from: lambda$build$5$com-local-g3home-VehicleLabActivity, reason: not valid java name */
    /* synthetic */ void m221lambda$build$5$comlocalg3homeVehicleLabActivity() {
        DeviceActions.openLsposed(this);
    }

    private LinearLayout card(LinearLayout linearLayout, String str) {
        LinearLayout linearLayoutPanel = Ui.panel(this);
        linearLayoutPanel.addView(Ui.title(this, str, 34));
        Ui.gap(this, linearLayoutPanel, 16);
        linearLayout.addView(linearLayoutPanel, new LinearLayout.LayoutParams(-1, -2));
        Ui.gap(this, linearLayout, 24);
        return linearLayoutPanel;
    }

    private void detail(LinearLayout linearLayout, String str) {
        Ui.gap(this, linearLayout, 14);
        TextView textViewText = Ui.text(this, str, 25, Ui.colors(this).muted);
        textViewText.setTextIsSelectable(true);
        linearLayout.addView(textViewText);
    }

    private Button button(String str, Runnable runnable) {
        return Ui.button(this, str, false, runnable);
    }

    private static String safe(String str) {
        return (str == null || str.isEmpty()) ? "未知" : str;
    }

    private String adbStatus() {
        try {
            String string = Settings.Global.getString(getContentResolver(), "adb_enabled");
            return "1".equals(string) ? "已开启" : "0".equals(string) ? "未开启" : "未知";
        } catch (RuntimeException e) {
            return "读取不可用";
        }
    }

    private PackageInfo catalog() {
        try {
            return getPackageManager().getPackageInfo(CATALOG, 0);
        } catch (PackageManager.NameNotFoundException | RuntimeException e) {
            return null;
        }
    }

    private String catalogStatus() {
        PackageInfo packageInfoCatalog = catalog();
        return (packageInfoCatalog == null || packageInfoCatalog.applicationInfo == null || !packageInfoCatalog.applicationInfo.enabled) ? "应用库未安装或不可用" : packageInfoCatalog.getLongVersionCode() >= DIRECT_ENTRY_VERSION ? "可直接打开工具页" : "应用库已安装 · 旧版需从设置进入工具箱";
    }

    private String observationStatus() {
        try {
            Bundle bundleCall = getContentResolver().call(VehicleObservationProvider.URI, "status", (String) null, (Bundle) null);
            if (bundleCall == null) {
                return "观察状态不可用";
            }
            if (!bundleCall.getBoolean("enabled")) {
                return "观察已关闭 · 无记录";
            }
            StringBuilder sb = new StringBuilder(bundleCall.getBoolean("ready") ? "车控：收到过接入报告" : "车控：未收到接入报告");
            sb.append(bundleCall.getBoolean("cameraReady") ? " · 影像：收到过接入报告" : " · 影像：未收到接入报告").append("（不能证明进程仍在运行）");
            String[] strArr = {"", "盲区设置原始参数", "后方横向来车设置原始参数", "总里程原始参数", "后方碰撞设置原始参数", "AVM 工作状态原始参数"};
            long j = bundleCall.getLong("now");
            for (int i = 1; i <= 5; i++) {
                appendObservation(sb, bundleCall, j, i, strArr[i]);
            }
            appendObservation(sb, bundleCall, j, 7, "ACC 回调原始参数");
            appendObservation(sb, bundleCall, j, 8, "LCC 回调首个参数");
            if (bundleCall.getLong("time8") > 0 && j >= bundleCall.getLong("time8")) {
                sb.append(" · 原厂转换标志：").append(bundleCall.getBoolean("lccConvert") ? "true" : "false");
            }
            return sb.toString();
        } catch (RuntimeException e) {
            return "观察状态不可用";
        }
    }

    private static void appendObservation(StringBuilder sb, Bundle bundle, long j, int i, String str) {
        String str2;
        long j2 = bundle.getLong("time" + i);
        sb.append("\n").append(str).append("：");
        if (j2 <= 0 || j < j2) {
            str2 = "尚无记录";
        } else {
            sb = sb.append(bundle.getDouble("value" + i)).append(" · ").append((j - j2) / 1000);
            str2 = " 秒前收到";
        }
        sb.append(str2);
    }

    private void setObservation(boolean z) {
        try {
            if (!VehicleObservationProvider.setEnabled(this, z)) {
                throw new IllegalStateException("设置保存失败");
            }
            build();
        } catch (RuntimeException e) {
            Ui.show(this, "设置未保存", Ui.error(e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearObservation() {
        try {
            VehicleObservationProvider.clearRecords();
            build();
        } catch (RuntimeException e) {
            Ui.show(this, "清除未完成", Ui.error(e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openCamera() {
        try {
            Ui.launch(this, new Intent(this, (Class<?>) TurnCameraSettingsActivity.class));
        } catch (RuntimeException e) {
            Ui.show(this, "转向侧摄设置未打开", Ui.error(e));
        }
    }

    private void openCatalog(String str) {
        PackageInfo packageInfoCatalog = catalog();
        final Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(CATALOG);
        if (packageInfoCatalog == null || packageInfoCatalog.applicationInfo == null || !packageInfoCatalog.applicationInfo.enabled || launchIntentForPackage == null) {
            Ui.show(this, "应用库不可用", "请先安装并启用车型应用库，再使用其工具箱与应用管理。");
        } else if (packageInfoCatalog.getLongVersionCode() < DIRECT_ENTRY_VERSION) {
            Ui.dialog(this).setTitle("需要新版应用库").setMessage("当前版本不支持直接进入。可以打开应用库，再从“设置”进入车机工具箱，或从首页打开应用管理。").setNegativeButton("取消", null).setPositiveButton("打开应用库", new DialogInterface.OnClickListener() { // from class: com.local.p5home.VehicleLabActivity$$ExternalSyntheticLambda11
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.m222lambda$openCatalog$6$comlocalg3homeVehicleLabActivity(launchIntentForPackage, dialogInterface, i);
                }
            }).show();
        } else {
            launchCatalog(launchIntentForPackage, str);
        }
    }

    /* renamed from: lambda$openCatalog$6$com-local-g3home-VehicleLabActivity, reason: not valid java name */
    /* synthetic */ void m222lambda$openCatalog$6$comlocalg3homeVehicleLabActivity(Intent intent, DialogInterface dialogInterface, int i) {
        launchCatalog(intent, null);
    }

    private void launchCatalog(Intent intent, String str) {
        if (str != null) {
            try {
                intent.putExtra(TARGET, str);
            } catch (RuntimeException e) {
                Ui.show(this, "应用库未打开", Ui.error(e));
                return;
            }
        }
        intent.addFlags(603979776);
        Ui.launch(this, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void copyResearch() {
        try {
            ClipboardManager clipboardManager = (ClipboardManager) getSystemService("clipboard");
            if (clipboardManager == null) {
                throw new IllegalStateException("剪贴板不可用");
            }
            clipboardManager.setPrimaryClip(ClipData.newPlainText("车机研究摘要", RESEARCH));
            Ui.show(this, "已复制", "研究摘要已复制，可粘贴到开发记录。 ");
        } catch (RuntimeException e) {
            Ui.show(this, "复制未完成", Ui.error(e));
        }
    }
}
