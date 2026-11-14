package com.local.p5home;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.local.p5home.DeviceActions;
import com.local.p5home.MusicRouter;
import com.local.p5home.Navigator;
import com.local.p5home.Ui;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class SettingsActivity extends Activity {
    private Ui.PanelDialog apiDialog;
    private String apiEndpoint;
    private TextView apiKeyStatus;
    private String apiModel;
    private String apiPrefix;
    private String apiProtocolDraft;
    private TextView arkStatus;
    private Ui.Toggle autoNav;
    private boolean binding;
    private boolean busy;
    private TextView continuous;
    private boolean dead;
    private Ui.Toggle doubao;
    private EditText endpoint;
    private AppConfig form;
    private TextView hookStatus;
    private EditText key;
    private Ui.PanelDialog managementDialog;
    private EditText model;
    private TextView musicValue;
    private TextView navValue;
    private TextView operation;
    private EditText prefix;
    private Ui.Toggle restoreWake;
    private boolean resumed;
    private TextView rootStatus;
    private TextView rootSummary;
    private Ui.Toggle voice;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final ExecutorService storeWorker = Executors.newSingleThreadExecutor();
    private final List<View> controls = new ArrayList();
    private int theme = -1;
    private String rootResult = "首次设置默认桌面需要 Root";
    private final Runnable tick = new Runnable() { // from class: com.local.p5home.SettingsActivity.1
        @Override // java.lang.Runnable
        public void run() {
            if (SettingsActivity.this.dead || !SettingsActivity.this.resumed) {
                return;
            }
            SettingsActivity.this.updateStatus();
            SettingsActivity.this.main.postDelayed(this, 2000L);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    interface Success {
        void run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface ToggleChange {
        void change(boolean z);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.form = ConfigStore.load(this);
        if (bundle != null) {
            this.apiEndpoint = bundle.getString("api_endpoint");
            this.apiModel = bundle.getString("api_model");
            this.apiPrefix = bundle.getString("api_prefix");
            this.apiProtocolDraft = bundle.getString("api_protocol");
        }
        build();
        if (bundle == null || !bundle.getBoolean("api_open", false)) {
            return;
        }
        this.main.post(new SettingsActivity$$ExternalSyntheticLambda13(this));
    }

    @Override // android.app.Activity
    public void onPause() {
        this.resumed = false;
        this.main.removeCallbacks(this.tick);
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.resumed = true;
        if (this.theme != Ui.themeSignature(this)) {
            build();
        }
        this.main.removeCallbacks(this.tick);
        this.main.post(this.tick);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.dead = true;
        this.main.removeCallbacksAndMessages(null);
        Ui.PanelDialog panelDialog = this.apiDialog;
        if (panelDialog != null) {
            panelDialog.dismiss();
        }
        Ui.PanelDialog panelDialog2 = this.managementDialog;
        if (panelDialog2 != null) {
            panelDialog2.dismiss();
        }
        this.storeWorker.shutdownNow();
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Ui.PanelDialog panelDialog = this.apiDialog;
        boolean z = panelDialog != null && panelDialog.isShowing();
        if (z) {
            captureApiDraft();
        }
        bundle.putBoolean("api_open", z);
        bundle.putString("api_endpoint", this.apiEndpoint);
        bundle.putString("api_model", this.apiModel);
        bundle.putString("api_prefix", this.apiPrefix);
        bundle.putString("api_protocol", this.apiProtocolDraft);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        EditText editText;
        Ui.PanelDialog panelDialog = this.apiDialog;
        boolean z = panelDialog != null && panelDialog.isShowing();
        boolean z2 = z && (editText = this.key) != null && editText.length() > 0;
        if (z) {
            captureApiDraft();
            this.apiDialog.dismiss();
        }
        Ui.PanelDialog panelDialog2 = this.managementDialog;
        if (panelDialog2 != null) {
            panelDialog2.dismiss();
        }
        super.onConfigurationChanged(configuration);
        build();
        if (z) {
            apiSettings();
            if (z2) {
                note("未保存的密钥输入已清空，请重新粘贴。");
            }
        }
    }

    private void captureApiDraft() {
        EditText editText = this.endpoint;
        if (editText != null) {
            this.apiEndpoint = editText.getText().toString();
            this.apiModel = this.model.getText().toString();
            this.apiPrefix = this.prefix.getText().toString();
        }
    }

    private void build() {
        Ui.install(this);
        this.theme = Ui.themeSignature(this);
        this.controls.clear();
        this.restoreWake = null;
        this.autoNav = null;
        this.doubao = null;
        this.voice = null;
        this.rootStatus = null;
        Ui.Palette paletteColors = Ui.colors(this);
        ScrollView scrollView = new ScrollView(this);
        scrollView.setBackgroundColor(paletteColors.bg);
        LinearLayout linearLayoutCol = Ui.col(this);
        linearLayoutCol.setPadding(Ui.s(this, 44.0f), Ui.s(this, 36.0f), Ui.s(this, 44.0f), Ui.s(this, 36.0f));
        scrollView.addView(linearLayoutCol);
        setContentView(scrollView);
        LinearLayout linearLayoutRow = Ui.row(this);
        linearLayoutRow.addView(Ui.iconButton(this, "back", "返回桌面", new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.returnHome();
            }
        }));
        Ui.side(this, linearLayoutRow, 30);
        linearLayoutRow.addView(Ui.title(this, "设置", 52), new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayoutCol.addView(linearLayoutRow);
        Ui.gap(this, linearLayoutCol, 36);
        LinearLayout linearLayoutSection = section(linearLayoutCol, "导航与语音");
        TextView textViewText = Ui.text(this, "", 30, paletteColors.muted);
        this.navValue = textViewText;
        this.controls.add(entry(linearLayoutSection, "nav", "默认导航", "选择处理导航请求的应用", textViewText, new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.chooseNavigation();
            }
        }));
        Ui.line(this, linearLayoutSection);
        TextView textViewText2 = Ui.text(this, "", 30, paletteColors.muted);
        this.musicValue = textViewText2;
        this.controls.add(entry(linearLayoutSection, "music", "默认音乐", "小P点歌直接交给所选应用播放", textViewText2, new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.chooseMusic();
            }
        }));
        Ui.line(this, linearLayoutSection);
        this.voice = toggle(linearLayoutSection, "mic", "小P语音转接", "导航和点歌按默认应用处理；保留小P连续监听", this.form.voiceEnabled, new ToggleChange() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda31
            @Override // com.local.p5home.SettingsActivity.ToggleChange
            public final void change(boolean z) {
                this.f$0.m77lambda$build$0$comlocalg3homeSettingsActivity(z);
            }
        });
        Ui.line(this, linearLayoutSection);
        this.doubao = toggle(linearLayoutSection, "chat", "豆包问答", "触发词提问，使用已配置的大模型服务", this.form.doubaoEnabled, new ToggleChange() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda32
            @Override // com.local.p5home.SettingsActivity.ToggleChange
            public final void change(boolean z) {
                this.f$0.m78lambda$build$1$comlocalg3homeSettingsActivity(z);
            }
        });
        Ui.line(this, linearLayoutSection);
        this.controls.add(entry(linearLayoutSection, "mic", "自定义唤醒词", "你好小P用原车 · 自定义词用大模型", null, new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.wakeSettings();
            }
        }));
        TextView textViewText3 = Ui.text(this, "", 27, paletteColors.muted);
        this.continuous = textViewText3;
        textViewText3.setPadding(Ui.s(this, 4.0f), Ui.s(this, 22.0f), Ui.s(this, 4.0f), 0);
        linearLayoutSection.addView(this.continuous);
        Ui.gap(this, linearLayoutCol, 26);
        LinearLayout linearLayoutSection2 = section(linearLayoutCol, "账号与服务");
        LinearLayout linearLayoutRow2 = Ui.row(this);
        linearLayoutRow2.addView(Ui.icon(this, "cloud", paletteColors.accent, 72));
        Ui.side(this, linearLayoutRow2, 22);
        LinearLayout linearLayoutCol2 = Ui.col(this);
        linearLayoutCol2.addView(Ui.title(this, "大模型服务", 36));
        Ui.gap(this, linearLayoutCol2, 12);
        TextView textViewText4 = Ui.text(this, "", 28, paletteColors.muted);
        this.arkStatus = textViewText4;
        linearLayoutCol2.addView(textViewText4);
        linearLayoutRow2.addView(linearLayoutCol2, new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayoutSection2.addView(linearLayoutRow2);
        Ui.gap(this, linearLayoutSection2, 26);
        Button button = Ui.button(this, "接口配置", false, new SettingsActivity$$ExternalSyntheticLambda13(this));
        Button button2 = Ui.button(this, "测试播报", false, new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.testSpeech();
            }
        });
        this.controls.add(button);
        this.controls.add(button2);
        Ui.buttons(this, linearLayoutSection2, button, button2);
        Ui.gap(this, linearLayoutCol, 26);
        LinearLayout linearLayoutSection3 = section(linearLayoutCol, "系统管理");
        this.rootSummary = Ui.text(this, "", 28, paletteColors.muted);
        this.controls.add(entry(linearLayoutSection3, "apps", "桌面管理", "默认桌面、自动导航与热点、原车回退", null, new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.desktopSettings();
            }
        }));
        linearLayoutSection3.addView(this.rootSummary);
        Ui.line(this, linearLayoutSection3);
        this.controls.add(entry(linearLayoutSection3, "apps", "桌面快捷应用", "自定义位置或自动显示高频应用", null, new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.shortcutSettings();
            }
        }));
        Ui.gap(this, linearLayoutSection3, 18);
        Ui.line(this, linearLayoutSection3);
        this.controls.add(entry(linearLayoutSection3, "apps", "顶部栏应用", "独立开关 · 六个快捷入口", null, new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.topBarSettings();
            }
        }));
        Ui.line(this, linearLayoutSection3);
        this.controls.add(entry(linearLayoutSection3, "car", "转向侧摄", "原车转向灯影像开关与状态", null, new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.turnCameraSettings();
            }
        }));
        Ui.line(this, linearLayoutSection3);
        this.controls.add(entry(linearLayoutSection3, "car", "仪表与车辆接口", "车辆数据、仪表推送与手动测试", null, new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.vehicleBridge();
            }
        }));
        Ui.line(this, linearLayoutSection3);
        this.controls.add(entry(linearLayoutSection3, "settings", "车机功能与研究", "工具入口、原厂接口与验证进展", null, new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.vehicleLab();
            }
        }));
        Ui.line(this, linearLayoutSection3);
        this.controls.add(entry(linearLayoutSection3, "moon", "外观模式", Ui.themeLabel(this), null, new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.appearance();
            }
        }));
        Ui.line(this, linearLayoutSection3);
        TextView textViewText5 = Ui.text(this, "", 28, paletteColors.muted);
        this.hookStatus = textViewText5;
        this.controls.add(entry(linearLayoutSection3, "settings", "小P接入状态", "LSPosed 与原车语音实际状态", textViewText5, new SettingsActivity$$ExternalSyntheticLambda22(this)));
        Ui.gap(this, linearLayoutCol, 24);
        TextView textViewText6 = Ui.text(this, "", 27, paletteColors.muted);
        this.operation = textViewText6;
        textViewText6.setVisibility(8);
        linearLayoutCol.addView(this.operation);
        bind();
        updateStatus();
        updateBusy();
    }

    /* renamed from: lambda$build$0$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m77lambda$build$0$comlocalg3homeSettingsActivity(boolean z) {
        this.form.voiceEnabled = z;
        saveConfig(copy(this.form), "", null);
    }

    /* renamed from: lambda$build$1$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m78lambda$build$1$comlocalg3homeSettingsActivity(boolean z) {
        this.form.doubaoEnabled = z;
        saveConfig(copy(this.form), "", null);
    }

    private LinearLayout section(LinearLayout linearLayout, String str) {
        LinearLayout linearLayoutPanel = Ui.panel(this);
        linearLayoutPanel.addView(Ui.text(this, str, 30, Ui.colors(this).muted));
        Ui.gap(this, linearLayoutPanel, 22);
        linearLayout.addView(linearLayoutPanel, new LinearLayout.LayoutParams(-1, -2));
        return linearLayoutPanel;
    }

    private View entry(LinearLayout linearLayout, String str, String str2, String str3, TextView textView, final Runnable runnable) {
        LinearLayout linearLayoutRow = Ui.row(this);
        linearLayoutRow.setPadding(0, Ui.s(this, 18.0f), 0, Ui.s(this, 18.0f));
        linearLayoutRow.setMinimumHeight(Ui.s(this, 124.0f));
        linearLayoutRow.addView(Ui.icon(this, str, Ui.colors(this).text, 58));
        Ui.side(this, linearLayoutRow, 24);
        LinearLayout linearLayoutCol = Ui.col(this);
        linearLayoutCol.addView(Ui.title(this, str2, 34));
        if (str3 != null && !str3.isEmpty()) {
            Ui.gap(this, linearLayoutCol, 12);
            linearLayoutCol.addView(Ui.text(this, str3, 27, Ui.colors(this).muted));
        }
        linearLayoutRow.addView(linearLayoutCol, new LinearLayout.LayoutParams(0, -2, 1.0f));
        if (textView != null) {
            textView.setMaxLines(2);
            textView.setMaxWidth(Ui.s(this, 280.0f));
            linearLayoutRow.addView(textView);
            Ui.side(this, linearLayoutRow, 12);
        }
        linearLayoutRow.addView(Ui.icon(this, "chevron", Ui.colors(this).muted, 36));
        linearLayoutRow.setFocusable(true);
        linearLayoutRow.setClickable(true);
        linearLayoutRow.setContentDescription(str2);
        linearLayoutRow.setOnClickListener(new View.OnClickListener() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable.run();
            }
        });
        linearLayout.addView(linearLayoutRow, new LinearLayout.LayoutParams(-1, -2));
        return linearLayoutRow;
    }

    private Ui.Toggle toggle(LinearLayout linearLayout, String str, String str2, String str3, boolean z, final ToggleChange toggleChange) {
        LinearLayout linearLayoutRow = Ui.row(this);
        linearLayoutRow.setMinimumHeight(Ui.s(this, 136.0f));
        linearLayoutRow.setPadding(0, Ui.s(this, 18.0f), 0, Ui.s(this, 18.0f));
        linearLayoutRow.addView(Ui.icon(this, str, Ui.colors(this).text, 58));
        Ui.side(this, linearLayoutRow, 24);
        LinearLayout linearLayoutCol = Ui.col(this);
        linearLayoutCol.addView(Ui.title(this, str2, 34));
        Ui.gap(this, linearLayoutCol, 12);
        linearLayoutCol.addView(Ui.text(this, str3, 27, Ui.colors(this).muted));
        linearLayoutRow.addView(linearLayoutCol, new LinearLayout.LayoutParams(0, -2, 1.0f));
        Ui.Toggle toggle = new Ui.Toggle(this);
        toggle.setContentDescription(str2);
        toggle.setChecked(z);
        toggle.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda43
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                this.f$0.m98lambda$toggle$3$comlocalg3homeSettingsActivity(toggleChange, compoundButton, z2);
            }
        });
        this.controls.add(toggle);
        linearLayoutRow.addView(toggle);
        linearLayout.addView(linearLayoutRow, new LinearLayout.LayoutParams(-1, -2));
        return toggle;
    }

    /* renamed from: lambda$toggle$3$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m98lambda$toggle$3$comlocalg3homeSettingsActivity(ToggleChange toggleChange, CompoundButton compoundButton, boolean z) {
        if (this.binding || this.busy) {
            return;
        }
        toggleChange.change(z);
    }

    private void bind() {
        this.binding = true;
        Ui.Toggle toggle = this.voice;
        if (toggle != null) {
            toggle.setChecked(this.form.voiceEnabled);
        }
        Ui.Toggle toggle2 = this.doubao;
        if (toggle2 != null) {
            toggle2.setChecked(this.form.doubaoEnabled);
        }
        Ui.Toggle toggle3 = this.autoNav;
        if (toggle3 != null) {
            toggle3.setChecked(this.form.autoLaunchNav);
        }
        Ui.Toggle toggle4 = this.restoreWake;
        if (toggle4 != null) {
            toggle4.setChecked(this.form.restoreAfterWake);
        }
        this.binding = false;
        TextView textView = this.musicValue;
        if (textView != null) {
            textView.setText(MusicRouter.label(this, this.form.musicProvider));
        }
        TextView textView2 = this.navValue;
        if (textView2 != null) {
            try {
                textView2.setText(Navigator.label(this, this.form.navPackage));
            } catch (RuntimeException e) {
                this.navValue.setText(this.form.navPackage);
            }
        }
    }

    private void updateBusy() {
        Iterator<View> it = this.controls.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else {
                it.next().setEnabled(true ^ this.busy);
            }
        }
        Ui.Toggle toggle = this.restoreWake;
        if (toggle != null) {
            toggle.setEnabled(!this.busy && this.form.autoLaunchNav);
        }
    }

    private void note(String str) {
        TextView textView = this.operation;
        if (textView != null) {
            textView.setText(str);
            this.operation.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shortcutSettings() {
        try {
            Ui.launch(this, new Intent(this, (Class<?>) (DeviceActions.isDefaultHome(this) ? HomeEntry.class : HomeActivity.class)).putExtra("shortcut_settings", true).addFlags(872415232));
            finish();
        } catch (RuntimeException e) {
            Ui.show(this, "快捷应用设置未打开", Ui.error(e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void turnCameraSettings() {
        try {
            Ui.launch(this, new Intent(this, (Class<?>) TurnCameraSettingsActivity.class));
        } catch (RuntimeException e) {
            Ui.show(this, "转向侧摄设置未打开", Ui.error(e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vehicleBridge() {
        try {
            Ui.launch(this, new Intent(this, (Class<?>) VehicleBridgeActivity.class));
        } catch (RuntimeException e) {
            Ui.show(this, "车辆接口页面未打开", Ui.error(e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vehicleLab() {
        try {
            Ui.launch(this, new Intent(this, (Class<?>) VehicleLabActivity.class));
        } catch (RuntimeException e) {
            Ui.show(this, "车机功能页未打开", Ui.error(e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void topBarSettings() {
        try {
            Ui.launch(this, new Intent(this, (Class<?>) TopBarSettingsActivity.class));
        } catch (RuntimeException e) {
            Ui.show(this, "顶部栏设置未打开", Ui.error(e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void returnHome() {
        try {
            Ui.launch(this, new Intent(this, (Class<?>) (DeviceActions.isDefaultHome(this) ? HomeEntry.class : HomeActivity.class)).addFlags(872415232));
            finish();
        } catch (RuntimeException e) {
            Ui.show(this, "桌面未打开", Ui.error(e));
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        returnHome();
    }

    private static AppConfig copy(AppConfig appConfig) {
        AppConfig appConfig2 = new AppConfig();
        appConfig2.voiceEnabled = appConfig.voiceEnabled;
        appConfig2.doubaoEnabled = appConfig.doubaoEnabled;
        appConfig2.autoLaunchNav = appConfig.autoLaunchNav;
        appConfig2.restoreAfterWake = appConfig.restoreAfterWake;
        appConfig2.navPackage = appConfig.navPackage;
        appConfig2.musicProvider = appConfig.musicProvider;
        appConfig2.endpoint = appConfig.endpoint;
        appConfig2.modelId = appConfig.modelId;
        appConfig2.prefix = appConfig.prefix;
        appConfig2.apiProtocol = appConfig.apiProtocol;
        appConfig2.modelWakeEnabled = appConfig.modelWakeEnabled;
        appConfig2.modelWakeWords = appConfig.modelWakeWords;
        return appConfig2;
    }

    private void saveConfig(final AppConfig appConfig, final String str, final Success success) {
        if (this.busy) {
            return;
        }
        this.busy = true;
        updateBusy();
        note("正在保存设置…");
        this.storeWorker.execute(new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m95lambda$saveConfig$5$comlocalg3homeSettingsActivity(appConfig, str, success);
            }
        });
    }

    /* renamed from: lambda$saveConfig$4$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m94lambda$saveConfig$4$comlocalg3homeSettingsActivity(boolean z, AppConfig appConfig, String str, Success success) {
        if (this.dead || isDestroyed()) {
            return;
        }
        this.busy = false;
        if (!z) {
            appConfig = ConfigStore.load(this);
        }
        this.form = appConfig;
        bind();
        updateBusy();
        updateStatus();
        if (str != null) {
            note(str);
            Ui.show(this, "保存未完成", str);
        } else {
            note("设置已保存");
            if (success != null) {
                success.run();
            }
        }
    }

    /* renamed from: lambda$saveConfig$5$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m95lambda$saveConfig$5$comlocalg3homeSettingsActivity(final AppConfig appConfig, String str, final Success success) {
        String str2;
        boolean z = false;
        try {
            ConfigStore.save(getApplicationContext(), appConfig);
            z = true;
            if (!str.isEmpty()) {
                ConfigStore.storeApiKey(getApplicationContext(), str, appConfig.endpoint);
            }
            str2 = null;
        } catch (Exception e) {
            str2 = (z ? "设置已保存，密钥保存未完成：" : "保存未完成：") + safeError(e, str);
        }
        final String str3 = str2;
        final boolean z2 = z;
        this.main.post(new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m94lambda$saveConfig$4$comlocalg3homeSettingsActivity(z2, appConfig, str3, success);
            }
        });
    }

    private String safeError(Throwable th, String str) {
        String strError = Ui.error(th);
        return (str == null || str.isEmpty()) ? strError : strError.replace(str, "[密钥已隐藏]");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void chooseMusic() {
        if (this.busy) {
            return;
        }
        LinearLayout linearLayoutCol = Ui.col(this);
        final Ui.PanelDialog[] panelDialogArr = new Ui.PanelDialog[1];
        linearLayoutCol.addView(Ui.text(this, "选择后，小P点歌将打开所选应用并请求播放。歌曲是否可播取决于应用登录、网络和版权。", 27, Ui.colors(this).muted));
        Ui.gap(this, linearLayoutCol, 18);
        for (final MusicRouter.Provider provider : MusicRouter.providers(this)) {
            boolean z = provider.supported;
            LinearLayout linearLayoutRow = Ui.row(this);
            linearLayoutRow.setPadding(Ui.s(this, 12.0f), Ui.s(this, 22.0f), Ui.s(this, 12.0f), Ui.s(this, 22.0f));
            ImageView imageView = new ImageView(this);
            try {
                imageView.setImageDrawable(getPackageManager().getApplicationIcon(provider.pkg));
            } catch (Exception e) {
                imageView.setImageDrawable(new Ui.Symbol("music", Ui.colors(this).accent));
            }
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            linearLayoutRow.addView(imageView, new LinearLayout.LayoutParams(Ui.s(this, 66.0f), Ui.s(this, 66.0f)));
            Ui.side(this, linearLayoutRow, 22);
            LinearLayout linearLayoutCol2 = Ui.col(this);
            linearLayoutCol2.addView(Ui.title(this, (provider.id.equals(this.form.musicProvider) ? "✓  " : "") + provider.label, 32));
            Ui.gap(this, linearLayoutCol2, 10);
            linearLayoutCol2.addView(Ui.text(this, "system".equals(provider.id) ? "保留原车音乐处理方式" : !provider.installed ? "未安装" : "qishui".equals(provider.id) ? MusicRouter.available(this, "qishui") ? "桥接已接入 · 支持直接点歌" : "待激活：勾选 LSPosed 作用域并打开汽水" : z ? "已安装 · 支持直接点歌" : "当前版本未提供可用的直接点歌入口", 25, Ui.colors(this).muted));
            linearLayoutRow.addView(linearLayoutCol2, new LinearLayout.LayoutParams(0, -2, 1.0f));
            linearLayoutRow.setAlpha(z ? 1.0f : 0.5f);
            linearLayoutRow.setFocusable(z);
            if (z) {
                linearLayoutRow.setOnClickListener(new View.OnClickListener() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda44
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.m81lambda$chooseMusic$6$comlocalg3homeSettingsActivity(panelDialogArr, provider, view);
                    }
                });
            }
            linearLayoutCol.addView(linearLayoutRow, new LinearLayout.LayoutParams(-1, -2));
            Ui.line(this, linearLayoutCol);
        }
        Ui.PanelDialog panelDialogCreate = Ui.dialog(this).setIcon("music").setTitle("默认音乐").setView(linearLayoutCol).setNegativeButton("关闭", null).create();
        panelDialogArr[0] = panelDialogCreate;
        panelDialogCreate.show();
    }

    /* renamed from: lambda$chooseMusic$6$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m81lambda$chooseMusic$6$comlocalg3homeSettingsActivity(Ui.PanelDialog[] panelDialogArr, MusicRouter.Provider provider, View view) {
        panelDialogArr[0].dismiss();
        AppConfig appConfigCopy = copy(this.form);
        appConfigCopy.musicProvider = provider.id;
        saveConfig(appConfigCopy, "", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void chooseNavigation() {
        if (this.busy) {
            return;
        }
        try {
            List<Navigator.Provider> listProviders = Navigator.providers(this);
            LinearLayout linearLayoutCol = Ui.col(this);
            final Ui.PanelDialog[] panelDialogArr = new Ui.PanelDialog[1];
            for (final Navigator.Provider provider : listProviders) {
                LinearLayout linearLayoutCol2 = Ui.col(this);
                linearLayoutCol2.setPadding(Ui.s(this, 18.0f), Ui.s(this, 24.0f), Ui.s(this, 18.0f), Ui.s(this, 24.0f));
                linearLayoutCol2.addView(Ui.title(this, (provider.packageName.equals(this.form.navPackage) ? "✓  " : "") + provider.label, 34));
                Ui.gap(this, linearLayoutCol2, 12);
                linearLayoutCol2.addView(Ui.text(this, !provider.installed ? "未安装" : provider.voiceSupported ? "已安装 · 支持小P语音转接" : "已安装 · 手动打开", 28, Ui.colors(this).muted));
                linearLayoutCol2.setMinimumHeight(Ui.s(this, 132.0f));
                linearLayoutCol2.setFocusable(provider.installed);
                linearLayoutCol2.setAlpha(provider.installed ? 1.0f : 0.55f);
                if (provider.installed) {
                    linearLayoutCol2.setOnClickListener(new View.OnClickListener() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda37
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.m83lambda$chooseNavigation$8$comlocalg3homeSettingsActivity(panelDialogArr, provider, view);
                        }
                    });
                }
                linearLayoutCol.addView(linearLayoutCol2, new LinearLayout.LayoutParams(-1, -2));
                Ui.line(this, linearLayoutCol);
            }
            Ui.PanelDialog panelDialogCreate = Ui.dialog(this).setTitle("选择默认导航").setView(linearLayoutCol).setNegativeButton("关闭", null).create();
            panelDialogArr[0] = panelDialogCreate;
            panelDialogCreate.show();
        } catch (RuntimeException e) {
            Ui.show(this, "导航列表未读取", Ui.error(e));
        }
    }

    /* renamed from: lambda$chooseNavigation$7$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m82lambda$chooseNavigation$7$comlocalg3homeSettingsActivity(Navigator.Provider provider, DialogInterface dialogInterface, int i) {
        AppConfig appConfigCopy = copy(this.form);
        appConfigCopy.navPackage = provider.packageName;
        saveConfig(appConfigCopy, "", null);
    }

    /* renamed from: lambda$chooseNavigation$8$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m83lambda$chooseNavigation$8$comlocalg3homeSettingsActivity(Ui.PanelDialog[] panelDialogArr, final Navigator.Provider provider, View view) {
        panelDialogArr[0].dismiss();
        if (provider.packageName.equals(this.form.navPackage)) {
            return;
        }
        Ui.dialog(this).setIcon("nav").setTitle("切换默认导航").setMessage("将导航请求转交给" + provider.label + "。\n切换偏好不会结束已有路线。").setNegativeButton("取消", null).setPositiveButton("确认切换", new DialogInterface.OnClickListener() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda11
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m82lambda$chooseNavigation$7$comlocalg3homeSettingsActivity(provider, dialogInterface, i);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void appearance() {
        LinearLayout linearLayoutCol = Ui.col(this);
        final Ui.PanelDialog[] panelDialogArr = new Ui.PanelDialog[1];
        String[] strArr = {"跟随系统", "浅色 · 白天", "深色 · 夜间"};
        final int i = 0;
        while (i < 3) {
            linearLayoutCol.addView(Ui.button(this, (Ui.themeMode(this) == i ? "✓  " : "") + strArr[i], false, new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m76lambda$appearance$9$comlocalg3homeSettingsActivity(i, panelDialogArr);
                }
            }), new LinearLayout.LayoutParams(-1, -2));
            Ui.gap(this, linearLayoutCol, 18);
            i++;
        }
        Ui.PanelDialog panelDialogCreate = Ui.dialog(this).setIcon("moon").setTitle("外观模式").setMessage("原车主题未同步时，可以手动选择白天或夜间。").setView(linearLayoutCol).setNegativeButton("取消", null).create();
        panelDialogArr[0] = panelDialogCreate;
        panelDialogCreate.show();
    }

    /* renamed from: lambda$appearance$9$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m76lambda$appearance$9$comlocalg3homeSettingsActivity(int i, Ui.PanelDialog[] panelDialogArr) {
        Ui.setThemeMode(this, i);
        panelDialogArr[0].dismiss();
        build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void apiSettings() {
        if (this.busy) {
            return;
        }
        LinearLayout linearLayoutCol = Ui.col(this);
        if (this.apiProtocolDraft == null) {
            this.apiProtocolDraft = this.form.apiProtocol;
        }
        final String[] strArr = {"ark", "openai", "responses"};
        final String[] strArr2 = {"火山方舟 · 自动适配", "OpenAI 兼容 · Chat Completions", "OpenAI · Responses"};
        linearLayoutCol.addView(Ui.text(this, "接口格式", 28, Ui.colors(this).muted));
        Ui.gap(this, linearLayoutCol, 14);
        int i = 3;
        final Button[] buttonArr = new Button[3];
        int i2 = 0;
        while (true) {
            String str = "";
            if (i2 >= i) {
                break;
            }
            StringBuilder sb = new StringBuilder();
            if (strArr[i2].equals(this.apiProtocolDraft)) {
                str = "✓  ";
            }
            final int i3 = i2;
            Button button = Ui.button(this, sb.append(str).append(strArr2[i2]).toString(), false, new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m72lambda$apiSettings$10$comlocalg3homeSettingsActivity(strArr, i3, buttonArr, strArr2);
                }
            });
            buttonArr[i2] = button;
            linearLayoutCol.addView(button, new LinearLayout.LayoutParams(-1, -2));
            Ui.gap(this, linearLayoutCol, 12);
            i2++;
            i = 3;
        }
        linearLayoutCol.addView(Ui.text(this, "地址填写服务商的 HTTPS 基础地址，例如 https://api.openai.com/v1；也支持完整接口路径。切换服务器后需填写对应密钥。", 26, Ui.colors(this).muted));
        Ui.gap(this, linearLayoutCol, 20);
        String str2 = this.apiEndpoint;
        if (str2 == null) {
            str2 = this.form.endpoint;
        }
        EditText editTextInput = Ui.input(this, "HTTPS API 基础地址", str2, false);
        this.endpoint = editTextInput;
        editTextInput.setInputType(17);
        String str3 = this.apiModel;
        if (str3 == null) {
            str3 = this.form.modelId;
        }
        this.model = Ui.input(this, "模型 ID / 推理接入点", str3, false);
        String str4 = this.apiPrefix;
        if (str4 == null) {
            str4 = this.form.prefix;
        }
        this.prefix = Ui.input(this, "例如：问豆包", str4, false);
        EditText editTextInput2 = Ui.input(this, "留空保留当前服务器密钥", "", false);
        this.key = editTextInput2;
        editTextInput2.setInputType(524417);
        this.key.setTransformationMethod(PasswordTransformationMethod.getInstance());
        this.key.setSaveEnabled(false);
        this.key.setImportantForAutofill(8);
        this.key.setImeOptions(16777216);
        Ui.field(this, linearLayoutCol, "API Endpoint", this.endpoint);
        Ui.field(this, linearLayoutCol, "模型 ID", this.model);
        Ui.field(this, linearLayoutCol, "原车语音提问触发词", this.prefix);
        Ui.field(this, linearLayoutCol, "API Key · 不回显", this.key);
        TextView textViewText = Ui.text(this, "", 27, Ui.colors(this).muted);
        this.apiKeyStatus = textViewText;
        linearLayoutCol.addView(textViewText);
        Ui.gap(this, linearLayoutCol, 24);
        Button button2 = Ui.button(this, "保存并测试连接", false, new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m73lambda$apiSettings$11$comlocalg3homeSettingsActivity();
            }
        });
        Button button3 = Ui.button(this, "清除已保存密钥", false, new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.clearKey();
            }
        });
        linearLayoutCol.addView(button2, new LinearLayout.LayoutParams(-1, -2));
        Ui.gap(this, linearLayoutCol, 18);
        linearLayoutCol.addView(button3, new LinearLayout.LayoutParams(-1, -2));
        final Ui.PanelDialog panelDialogCreate = Ui.dialog(this).setTitle("大模型接口").setView(linearLayoutCol).setNegativeButton("取消", null).setPositiveButton("保存设置", null).create();
        this.apiDialog = panelDialogCreate;
        final EditText editText = this.key;
        final ArrayList arrayList = new ArrayList(Arrays.asList(this.endpoint, this.model, this.prefix, this.key, button2, button3, panelDialogCreate.getButton(-1), panelDialogCreate.getButton(-2)));
        arrayList.addAll(Arrays.asList(buttonArr));
        this.controls.addAll(arrayList);
        panelDialogCreate.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m74lambda$apiSettings$12$comlocalg3homeSettingsActivity(view);
            }
        });
        panelDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.m75lambda$apiSettings$13$comlocalg3homeSettingsActivity(editText, arrayList, panelDialogCreate, dialogInterface);
            }
        });
        updateStatus();
        panelDialogCreate.show();
    }

    /* renamed from: lambda$apiSettings$10$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m72lambda$apiSettings$10$comlocalg3homeSettingsActivity(String[] strArr, int i, Button[] buttonArr, String[] strArr2) {
        this.apiProtocolDraft = strArr[i];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            buttonArr[i2].setText((strArr[i2].equals(this.apiProtocolDraft) ? "✓  " : "") + strArr2[i2]);
        }
    }

    /* renamed from: lambda$apiSettings$11$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m73lambda$apiSettings$11$comlocalg3homeSettingsActivity() {
        saveApi(true);
    }

    /* renamed from: lambda$apiSettings$12$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m74lambda$apiSettings$12$comlocalg3homeSettingsActivity(View view) {
        saveApi(false);
    }

    /* renamed from: lambda$apiSettings$13$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m75lambda$apiSettings$13$comlocalg3homeSettingsActivity(EditText editText, List list, Ui.PanelDialog panelDialog, DialogInterface dialogInterface) {
        editText.setText("");
        this.controls.removeAll(list);
        if (this.apiDialog == panelDialog) {
            this.apiDialog = null;
            this.key = null;
            this.prefix = null;
            this.model = null;
            this.endpoint = null;
            this.apiKeyStatus = null;
        }
    }

    static /* synthetic */ void lambda$wakeSettings$14(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wakeSettings() {
        if (this.busy) {
            return;
        }
        LinearLayout linearLayoutCol = Ui.col(this);
        final Ui.Toggle toggle = toggle(linearLayoutCol, "mic", "启用自定义唤醒", "你好小P继续使用原车语音", this.form.modelWakeEnabled, new ToggleChange() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda40
            @Override // com.local.p5home.SettingsActivity.ToggleChange
            public final void change(boolean z) {
                SettingsActivity.lambda$wakeSettings$14(z);
            }
        });
        final EditText editTextInput = Ui.input(this, "豆包豆包\n小爱同学", this.form.modelWakeWords, true);
        editTextInput.setMinLines(3);
        Ui.field(this, linearLayoutCol, "大模型唤醒词", editTextInput);
        linearLayoutCol.addView(Ui.text(this, "每行一个词，最多4个词，每词4—8个汉字。豆包豆包、小爱同学可直接填写；其它词请用 中文|pin yin 格式提供拼音（不带声调）。命中自定义词后可直接提问，无需再说“问豆包”。原车唤醒词会保留，识别效果取决于原车语音引擎。", 26, Ui.colors(this).muted));
        linearLayoutCol.addView(Ui.text(this, "引擎状态：" + wakeLabel(Ui.bridge(this).getString("wakeCode", "")), 26, Ui.colors(this).muted));
        final Ui.PanelDialog panelDialogCreate = Ui.dialog(this).setTitle("自定义唤醒词").setView(linearLayoutCol).setNegativeButton("取消", null).setPositiveButton("保存设置", null).create();
        final ArrayList arrayList = new ArrayList(Arrays.asList(toggle, editTextInput, panelDialogCreate.getButton(-1), panelDialogCreate.getButton(-2)));
        this.controls.addAll(arrayList);
        panelDialogCreate.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda41
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m99lambda$wakeSettings$15$comlocalg3homeSettingsActivity(toggle, editTextInput, panelDialogCreate, view);
            }
        });
        panelDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda42
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.m100lambda$wakeSettings$16$comlocalg3homeSettingsActivity(arrayList, dialogInterface);
            }
        });
        panelDialogCreate.show();
    }

    /* renamed from: lambda$wakeSettings$15$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m99lambda$wakeSettings$15$comlocalg3homeSettingsActivity(Ui.Toggle toggle, EditText editText, final Ui.PanelDialog panelDialog, View view) {
        AppConfig appConfigCopy = copy(this.form);
        appConfigCopy.modelWakeEnabled = toggle.isChecked();
        appConfigCopy.modelWakeWords = editText.getText().toString();
        Objects.requireNonNull(panelDialog);
        saveConfig(appConfigCopy, "", new Success() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda3
            @Override // com.local.p5home.SettingsActivity.Success
            public final void run() {
                panelDialog.dismiss();
            }
        });
    }

    /* renamed from: lambda$wakeSettings$16$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m100lambda$wakeSettings$16$comlocalg3homeSettingsActivity(List list, DialogInterface dialogInterface) {
        this.controls.removeAll(list);
    }

    private static String wakeLabel(String str) {
        return "WAKE_WORDS_DISPATCHED".equals(str) ? "已提交原车引擎，需实际呼叫验证" : "WAKE_WORDS_HIT".equals(str) ? "已收到自定义唤醒词命中" : "WAKE_WORDS_DISABLED".equals(str) ? "未启用或问答服务未就绪" : "WAKE_WORDS_CONFLICT".equals(str) ? "部分词与原厂已有词冲突，请修改" : "WAKE_WORDS_CONFIG_INVALID".equals(str) ? "唤醒词配置无效，请核对拼音" : "等待原车引擎就绪，请在接入状态查看";
    }

    private void saveApi(final boolean z) {
        if (this.busy || this.endpoint == null) {
            return;
        }
        AppConfig appConfigCopy = copy(this.form);
        appConfigCopy.endpoint = this.endpoint.getText().toString().trim();
        appConfigCopy.modelId = this.model.getText().toString().trim();
        appConfigCopy.prefix = this.prefix.getText().toString().trim();
        appConfigCopy.apiProtocol = this.apiProtocolDraft;
        saveConfig(appConfigCopy, this.key.getText().toString().trim(), new Success() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda0
            @Override // com.local.p5home.SettingsActivity.Success
            public final void run() {
                this.f$0.m93lambda$saveApi$17$comlocalg3homeSettingsActivity(z);
            }
        });
    }

    /* renamed from: lambda$saveApi$17$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m93lambda$saveApi$17$comlocalg3homeSettingsActivity(boolean z) {
        this.apiProtocolDraft = null;
        this.apiPrefix = null;
        this.apiModel = null;
        this.apiEndpoint = null;
        EditText editText = this.key;
        if (editText != null) {
            editText.setText("");
        }
        if (z) {
            testConnection();
            return;
        }
        Ui.PanelDialog panelDialog = this.apiDialog;
        if (panelDialog != null) {
            panelDialog.dismiss();
        }
    }

    private void testConnection() {
        String strIncomplete = incomplete(this.form);
        if (!strIncomplete.isEmpty()) {
            Ui.show(this, "接口配置未完成", "请补齐" + strIncomplete + "后再测试。当前设置已保存。");
            return;
        }
        try {
            AssistantService.testConnection(this);
            note("连接测试已提交，等待接口返回。");
            Ui.PanelDialog panelDialog = this.apiDialog;
            if (panelDialog != null) {
                panelDialog.dismiss();
            }
            showStatus();
        } catch (RuntimeException e) {
            Ui.show(this, "连接测试未开始", Ui.error(e));
        }
    }

    private String incomplete(AppConfig appConfig) {
        boolean zHasApiKey;
        String str = (appConfig.modelId == null || appConfig.modelId.trim().isEmpty()) ? "模型 ID" : "";
        try {
            zHasApiKey = ConfigStore.hasApiKey(this);
        } catch (RuntimeException e) {
            zHasApiKey = false;
        }
        if (zHasApiKey) {
            return str;
        }
        return str + (str.isEmpty() ? "" : "、") + "API Key";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearKey() {
        if (this.busy) {
            return;
        }
        Ui.dialog(this).setTitle("清除 API Key").setMessage("删除已加密保存的密钥后，豆包问答将等待重新配置。其他未保存输入不会自动提交。").setNegativeButton("取消", null).setPositiveButton("清除密钥", new DialogInterface.OnClickListener() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda39
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m86lambda$clearKey$20$comlocalg3homeSettingsActivity(dialogInterface, i);
            }
        }).show();
    }

    /* renamed from: lambda$clearKey$18$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m84lambda$clearKey$18$comlocalg3homeSettingsActivity(String str) {
        if (this.dead || isDestroyed()) {
            return;
        }
        this.busy = false;
        updateBusy();
        if (str == null) {
            EditText editText = this.key;
            if (editText != null) {
                editText.setText("");
            }
            note("已清除保存的密钥");
        } else {
            Ui.show(this, "清除未完成", str);
        }
        updateStatus();
    }

    /* renamed from: lambda$clearKey$19$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m85lambda$clearKey$19$comlocalg3homeSettingsActivity() {
        final String strError;
        try {
            ConfigStore.clearApiKey(getApplicationContext());
            strError = null;
        } catch (Exception e) {
            strError = Ui.error(e);
        }
        this.main.post(new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda45
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m84lambda$clearKey$18$comlocalg3homeSettingsActivity(strError);
            }
        });
    }

    /* renamed from: lambda$clearKey$20$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m86lambda$clearKey$20$comlocalg3homeSettingsActivity(DialogInterface dialogInterface, int i) {
        this.busy = true;
        updateBusy();
        this.storeWorker.execute(new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m85lambda$clearKey$19$comlocalg3homeSettingsActivity();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void testSpeech() {
        try {
            AssistantService.testSpeech(this);
            note("已提交系统播报测试，播放结果以引擎回执为准。");
        } catch (RuntimeException e) {
            Ui.show(this, "播报测试未开始", Ui.error(e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void desktopSettings() {
        if (this.busy) {
            return;
        }
        LinearLayout linearLayoutCol = Ui.col(this);
        TextView textViewText = Ui.text(this, this.rootResult, 29, Ui.colors(this).muted);
        this.rootStatus = textViewText;
        linearLayoutCol.addView(textViewText);
        Ui.gap(this, linearLayoutCol, 24);
        Button button = Ui.button(this, "检测 / 申请 Root", false, new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.checkRoot();
            }
        });
        linearLayoutCol.addView(button, new LinearLayout.LayoutParams(-1, -2));
        Ui.gap(this, linearLayoutCol, 18);
        Button button2 = Ui.button(this, "设为默认桌面", true, new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m88lambda$desktopSettings$21$comlocalg3homeSettingsActivity();
            }
        });
        Button button3 = Ui.button(this, "恢复原车桌面", false, new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m89lambda$desktopSettings$22$comlocalg3homeSettingsActivity();
            }
        });
        Ui.buttons(this, linearLayoutCol, button2, button3);
        Ui.gap(this, linearLayoutCol, 16);
        Ui.line(this, linearLayoutCol);
        final Ui.Toggle manualHotspot = toggle(linearLayoutCol, "wifi", "车机 Wi-Fi 热点", "手动开启或关闭热点", HotspotController.isEnabled(this), new ToggleChange() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda42
            @Override
            public void change(boolean enabled) {
                HotspotController.setEnabled(SettingsActivity.this, enabled);
            }
        });
        linearLayoutCol.addView(Ui.text(this, HotspotController.getCredentials(this), 27, Ui.colors(this).muted));
        final Ui.Toggle autoHotspot = toggle(linearLayoutCol, "wifi", "进入桌面时打开车机 Wi-Fi 热点", "进入轻量桌面时自动开启", ConfigStore.prefs(this).getBoolean("autoWifiHotspot", false), new ToggleChange() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda41
            @Override
            public void change(boolean enabled) {
                ConfigStore.prefs(SettingsActivity.this).edit().putBoolean("autoWifiHotspot", enabled).apply();
            }
        });
        this.autoNav = toggle(linearLayoutCol, "nav", "自动打开导航", "进入轻量桌面时打开默认地图", this.form.autoLaunchNav, new ToggleChange() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda18
            @Override // com.local.p5home.SettingsActivity.ToggleChange
            public final void change(boolean z) {
                this.f$0.m90lambda$desktopSettings$23$comlocalg3homeSettingsActivity(z);
            }
        });
        this.restoreWake = toggle(linearLayoutCol, "moon", "唤醒后恢复导航", "仅桌面位于前台时恢复", this.form.restoreAfterWake, new ToggleChange() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda19
            @Override // com.local.p5home.SettingsActivity.ToggleChange
            public final void change(boolean z) {
                this.f$0.m91lambda$desktopSettings$24$comlocalg3homeSettingsActivity(z);
            }
        });
        linearLayoutCol.addView(Ui.text(this, "原车地图入口只打开地图，不改变默认桌面。", 27, Ui.colors(this).muted));
        final ArrayList arrayList = new ArrayList(Arrays.asList(button, button2, button3, manualHotspot, autoHotspot, this.autoNav, this.restoreWake));
        this.controls.addAll(Arrays.asList(button, button2, button3));
        final Ui.PanelDialog panelDialogCreate = Ui.dialog(this).setTitle("桌面管理").setView(linearLayoutCol).setNegativeButton("关闭", null).create();
        this.managementDialog = panelDialogCreate;
        panelDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda20
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.m92lambda$desktopSettings$25$comlocalg3homeSettingsActivity(arrayList, panelDialogCreate, dialogInterface);
            }
        });
        updateBusy();
        updateStatus();
        panelDialogCreate.show();
    }

    /* renamed from: lambda$desktopSettings$21$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m88lambda$desktopSettings$21$comlocalg3homeSettingsActivity() {
        confirmHome(false);
    }

    /* renamed from: lambda$desktopSettings$22$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m89lambda$desktopSettings$22$comlocalg3homeSettingsActivity() {
        confirmHome(true);
    }

    /* renamed from: lambda$desktopSettings$23$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m90lambda$desktopSettings$23$comlocalg3homeSettingsActivity(boolean z) {
        this.form.autoLaunchNav = z;
        saveConfig(copy(this.form), "", null);
    }

    /* renamed from: lambda$desktopSettings$24$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m91lambda$desktopSettings$24$comlocalg3homeSettingsActivity(boolean z) {
        this.form.restoreAfterWake = z;
        saveConfig(copy(this.form), "", null);
    }

    /* renamed from: lambda$desktopSettings$25$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m92lambda$desktopSettings$25$comlocalg3homeSettingsActivity(List list, Ui.PanelDialog panelDialog, DialogInterface dialogInterface) {
        this.controls.removeAll(list);
        if (this.managementDialog == panelDialog) {
            this.managementDialog = null;
            this.rootStatus = null;
            this.restoreWake = null;
            this.autoNav = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showStatus() {
        StringBuilder sbAppend;
        Bundle bundleBridge = Ui.bridge(this);
        String str = "原车语音：" + (bundleBridge.getBoolean("hookReady", false) ? "已收到有效心跳" : "未就绪 / 心跳已失效") + "\n系统播报：" + (bundleBridge.getBoolean("speechOutputReady", false) ? "已就绪" : "未就绪") + "\n导航转接：" + (bundleBridge.getBoolean("navHook", false) ? "已接入" : "未就绪") + "\n地点与路线选择：高德页面内语音选择\n对话收尾：" + (bundleBridge.getBoolean("sessionHook", false) ? "已接入" : "未就绪") + "\n\n" + bundleBridge.getString("hookMessage", "");
        long j = bundleBridge.getLong("hookLastSeen", 0L);
        if (j > 0) {
            str = str + "\n最近心跳：" + new SimpleDateFormat("MM-dd HH:mm:ss", Locale.CHINA).format(new Date(j));
        }
        String string = str + "\n\n最近请求：" + Ui.requestLabel(bundleBridge.getString("requestState", ""));
        String string2 = bundleBridge.getString("lastError", "");
        String string3 = bundleBridge.getString("lastAnswer", "");
        if (string2.isEmpty()) {
            if (!string3.isEmpty()) {
                sbAppend = new StringBuilder().append(string).append("\n").append(Ui.limited(string3, 1200));
            }
            LinearLayout linearLayoutCol = Ui.col(this);
            linearLayoutCol.addView(Ui.text(this, string, 29, Ui.colors(this).text));
            Ui.gap(this, linearLayoutCol, 26);
            linearLayoutCol.addView(Ui.button(this, "打开 LSPosed 管理器", false, new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m96lambda$showStatus$26$comlocalg3homeSettingsActivity();
                }
            }), new LinearLayout.LayoutParams(-1, -2));
            Ui.gap(this, linearLayoutCol, 22);
            linearLayoutCol.addView(Ui.text(this, "启用本模块，作用域选择原车语音服务，再重启语音进程。安装应用不代表已接入。", 27, Ui.colors(this).muted));
            Ui.dialog(this).setTitle("实际接入状态").setView(linearLayoutCol).setNegativeButton("关闭", null).setPositiveButton("刷新状态", new DialogInterface.OnClickListener() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.m97lambda$showStatus$27$comlocalg3homeSettingsActivity(dialogInterface, i);
                }
            }).show();
        }
        sbAppend = new StringBuilder().append(string).append("\n").append(Ui.limited(string2, 900));
        string = sbAppend.toString();
        LinearLayout linearLayoutCol2 = Ui.col(this);
        linearLayoutCol2.addView(Ui.text(this, string, 29, Ui.colors(this).text));
        Ui.gap(this, linearLayoutCol2, 26);
        linearLayoutCol2.addView(Ui.button(this, "打开 LSPosed 管理器", false, new Runnable() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m96lambda$showStatus$26$comlocalg3homeSettingsActivity();
            }
        }), new LinearLayout.LayoutParams(-1, -2));
        Ui.gap(this, linearLayoutCol2, 22);
        linearLayoutCol2.addView(Ui.text(this, "启用本模块，作用域选择原车语音服务，再重启语音进程。安装应用不代表已接入。", 27, Ui.colors(this).muted));
        Ui.dialog(this).setTitle("实际接入状态").setView(linearLayoutCol2).setNegativeButton("关闭", null).setPositiveButton("刷新状态", new DialogInterface.OnClickListener() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m97lambda$showStatus$27$comlocalg3homeSettingsActivity(dialogInterface, i);
            }
        }).show();
    }

    /* renamed from: lambda$showStatus$26$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m96lambda$showStatus$26$comlocalg3homeSettingsActivity() {
        try {
            DeviceActions.openLsposed(this);
        } catch (RuntimeException e) {
            Ui.show(this, "LSPosed 未打开", Ui.error(e));
        }
    }

    /* renamed from: lambda$showStatus$27$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m97lambda$showStatus$27$comlocalg3homeSettingsActivity(DialogInterface dialogInterface, int i) {
        this.main.post(new SettingsActivity$$ExternalSyntheticLambda22(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStatus() {
        String str;
        if (this.dead || this.arkStatus == null) {
            return;
        }
        Bundle bundleBridge = Ui.bridge(this);
        boolean z = bundleBridge.getBoolean("hookReady", false);
        this.hookStatus.setText(z ? "已接入" : "待接入");
        this.hookStatus.setTextColor(z ? Ui.colors(this).accent : Ui.colors(this).muted);
        TextView textView = this.continuous;
        if (bundleBridge.getBoolean("continuousSupported", false)) {
            str = "连续对话：跟随原车 · " + (bundleBridge.getBoolean("continuousEnabled", false) ? "已开启" : "未开启");
        } else {
            str = "连续对话：跟随原车 · 状态未就绪";
        }
        textView.setText(str);
        String strIncomplete = incomplete(this.form);
        this.arkStatus.setText(strIncomplete.isEmpty() ? "● 已配置 · 结果请查看接入状态" : "待配置 · 缺少" + strIncomplete);
        this.arkStatus.setTextColor(strIncomplete.isEmpty() ? Ui.colors(this).accent : Ui.colors(this).muted);
        if (!this.busy) {
            String string = bundleBridge.getString("rootState", "");
            String string2 = bundleBridge.getString("rootError", "");
            if (!string2.isEmpty()) {
                this.rootResult = string2;
            } else if (!string.isEmpty()) {
                this.rootResult = string;
            }
        }
        this.rootSummary.setText(Ui.limited(this.rootResult, 110));
        TextView textView2 = this.rootStatus;
        if (textView2 != null) {
            textView2.setText(this.rootResult);
        }
        if (this.apiKeyStatus != null) {
            this.apiKeyStatus.setText(ConfigStore.hasApiKey(this) ? "密钥已加密保存。留空保持当前服务器密钥，内容不回显。" : "当前服务器尚未配置密钥。输入后保存，内容不会回显。");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkRoot() {
        if (this.busy) {
            return;
        }
        this.busy = true;
        this.rootResult = "正在等待 Root 授权…";
        TextView textView = this.rootStatus;
        if (textView != null) {
            textView.setText("正在等待 Root 授权…");
        }
        updateBusy();
        try {
            DeviceActions.checkRoot(this, new DeviceActions.Callback() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda47
                @Override // com.local.p5home.DeviceActions.Callback
                public final void done(boolean z, String str) {
                    this.f$0.m80lambda$checkRoot$28$comlocalg3homeSettingsActivity(z, str);
                }
            });
        } catch (RuntimeException e) {
            this.busy = false;
            this.rootResult = "Root 检测未完成：" + Ui.error(e);
            updateBusy();
            updateStatus();
        }
    }

    /* renamed from: lambda$checkRoot$28$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m80lambda$checkRoot$28$comlocalg3homeSettingsActivity(boolean z, String str) {
        if (this.dead || isDestroyed()) {
            return;
        }
        this.busy = false;
        if (str == null) {
            str = z ? "Root 已验证" : "Root 未完成授权";
        }
        this.rootResult = str;
        updateBusy();
        updateStatus();
    }

    private void confirmHome(final boolean z) {
        if (this.busy) {
            return;
        }
        Ui.dialog(this).setIcon("apps").setTitle(z ? "恢复原车桌面" : "设为默认桌面").setMessage("请确认已停车，且暂时不依赖导航。\n\n" + (z ? "将恢复原车默认桌面，并停用轻量桌面自动启动。" : "需要 Root 授权。将停止旧 G3 桌面与语音模块，设置轻量桌面。") + "\n切换时桌面与系统栏可能短暂重载。").setNegativeButton("取消", null).setPositiveButton("已停车，执行", new DialogInterface.OnClickListener() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda38
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m87lambda$confirmHome$29$comlocalg3homeSettingsActivity(z, dialogInterface, i);
            }
        }).show();
    }

    /* renamed from: lambda$confirmHome$29$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m87lambda$confirmHome$29$comlocalg3homeSettingsActivity(boolean z, DialogInterface dialogInterface, int i) {
        changeHome(z);
    }

    private void changeHome(boolean z) {
        if (this.busy) {
            return;
        }
        this.busy = true;
        String str = z ? "正在恢复原车桌面…" : "正在设置默认桌面…";
        this.rootResult = str;
        TextView textView = this.rootStatus;
        if (textView != null) {
            textView.setText(str);
        }
        updateBusy();
        DeviceActions.Callback callback = new DeviceActions.Callback() { // from class: com.local.p5home.SettingsActivity$$ExternalSyntheticLambda14
            @Override // com.local.p5home.DeviceActions.Callback
            public final void done(boolean z2, String str2) {
                this.f$0.m79lambda$changeHome$30$comlocalg3homeSettingsActivity(z2, str2);
            }
        };
        try {
            if (z) {
                DeviceActions.restoreOemHome(this, callback);
            } else {
                DeviceActions.setDefaultHome(this, callback);
            }
        } catch (RuntimeException e) {
            this.busy = false;
            this.rootResult = "桌面操作未完成：" + Ui.error(e);
            updateBusy();
            updateStatus();
            Ui.show(this, "桌面操作未完成", this.rootResult);
        }
    }

    /* renamed from: lambda$changeHome$30$com-local-g3home-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m79lambda$changeHome$30$comlocalg3homeSettingsActivity(boolean z, String str) {
        if (this.dead || isDestroyed()) {
            return;
        }
        this.busy = false;
        if (str == null) {
            str = z ? "桌面设置已确认" : "桌面操作未完成";
        }
        this.rootResult = str;
        if (z) {
            this.form = ConfigStore.load(this);
        }
        bind();
        updateBusy();
        updateStatus();
        note(this.rootResult);
        if (z) {
            return;
        }
        Ui.show(this, "桌面操作未完成", this.rootResult);
    }
}
