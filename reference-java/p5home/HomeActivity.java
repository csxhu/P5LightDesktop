package com.local.p5home;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextClock;
import android.widget.TextView;
import com.local.p5home.HomeActivity;
import com.local.p5home.Navigator;
import com.local.p5home.OemVoiceWake;
import com.local.p5home.Ui;
import java.text.Collator;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public class HomeActivity extends Activity {
    private static final String OEM = "com.xiaopeng.montecarlo";
    private int appListRevision;
    private LinearLayout appsArea;
    private TextView assistantDetail;
    private TextView assistantState;
    private TextView date;
    private boolean dead;
    private int generation;
    private long lastAutoAt;
    private TextView navDetail;
    private TextView navName;
    private TextView operation;
    private boolean pendingHome;
    private boolean receiverRegistered;
    private boolean resumed;
    private LinearLayout root;
    private boolean shortcutManagerRequested;
    private boolean suppressNextResume;
    private int usageGeneration;
    private OemVoiceWake voiceWake;
    private boolean wakePending;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final ExecutorService appsWorker = Executors.newSingleThreadExecutor();
    private final List<AppItem> apps = new ArrayList();
    private final List<String> frequent = new ArrayList();
    private String renderedMusicProvider = "";
    private int theme = -1;
    private final Runnable tick = new Runnable() { // from class: com.local.p5home.HomeActivity.1
        @Override // java.lang.Runnable
        public void run() {
            if (HomeActivity.this.dead || !HomeActivity.this.resumed) {
                return;
            }
            HomeActivity.this.updateStatus();
            HomeActivity.this.main.postDelayed(this, 3000L);
        }
    };
    private final Runnable autoCheck = new Runnable() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda28
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.m32lambda$new$0$comlocalg3homeHomeActivity();
        }
    };
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.local.p5home.HomeActivity.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (Ui.THEME_ACTION.equals(action)) {
                if (HomeActivity.this.resumed) {
                    HomeActivity.this.build();
                }
            } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
                HomeActivity.this.wakePending = true;
            } else if ("android.intent.action.SCREEN_ON".equals(action) && HomeActivity.this.resumed) {
                HomeActivity.this.main.removeCallbacks(HomeActivity.this.autoCheck);
                HomeActivity.this.main.postDelayed(HomeActivity.this.autoCheck, 700L);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    static final class AppItem {
        final Drawable icon;
        final String label;
        final Intent launch;
        final String pkg;

        AppItem(String str, String str2, Intent intent, Drawable drawable) {
            this.pkg = str;
            this.label = str2;
            this.launch = intent;
            this.icon = drawable;
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.pendingHome = bundle == null && isHome(getIntent());
        boolean z = getIntent() != null && getIntent().getBooleanExtra("shortcut_settings", false);
        this.shortcutManagerRequested = z;
        if (z) {
            this.pendingHome = false;
            this.suppressNextResume = true;
            getIntent().removeExtra("shortcut_settings");
        }
        if (bundle != null) {
            this.lastAutoAt = bundle.getLong("last_auto_at", 0L);
        }
        build();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction(Ui.THEME_ACTION);
        try {
            registerReceiver(this.receiver, intentFilter);
            this.receiverRegistered = true;
        } catch (RuntimeException e) {
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        this.pendingHome = isHome(intent);
        if (intent != null && intent.getBooleanExtra("shortcut_settings", false)) {
            this.shortcutManagerRequested = true;
            this.pendingHome = false;
            this.suppressNextResume = true;
            intent.removeExtra("shortcut_settings");
        }
        updateStatus();
        if (this.resumed) {
            if (this.shortcutManagerRequested) {
                this.shortcutManagerRequested = false;
                this.main.post(new HomeActivity$$ExternalSyntheticLambda33(this));
            }
            this.main.removeCallbacks(this.autoCheck);
            this.main.postDelayed(this.autoCheck, 700L);
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.resumed = true;
        if (this.theme != Ui.themeSignature(this)) {
            build();
        }
        if (!this.renderedMusicProvider.equals(config().musicProvider)) {
            renderShortcuts();
        }
        if (ShortcutStore.automatic(this) && !this.apps.isEmpty()) {
            refreshUsage();
        }
        if (this.shortcutManagerRequested) {
            this.shortcutManagerRequested = false;
            this.main.post(new HomeActivity$$ExternalSyntheticLambda33(this));
        }
        this.main.removeCallbacks(this.tick);
        this.main.post(this.tick);
        if (!this.suppressNextResume) {
            this.main.removeCallbacks(this.autoCheck);
            this.main.postDelayed(this.autoCheck, 700L);
        } else {
            this.suppressNextResume = false;
            this.wakePending = false;
            this.pendingHome = false;
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        OemVoiceWake oemVoiceWake = this.voiceWake;
        if (oemVoiceWake != null) {
            oemVoiceWake.cancel();
        }
        this.resumed = false;
        this.main.removeCallbacks(this.tick);
        this.main.removeCallbacks(this.autoCheck);
        PowerManager powerManager = (PowerManager) getSystemService("power");
        if (powerManager != null && !powerManager.isInteractive()) {
            this.wakePending = true;
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        OemVoiceWake oemVoiceWake = this.voiceWake;
        if (oemVoiceWake != null) {
            oemVoiceWake.close();
        }
        this.dead = true;
        this.generation++;
        this.main.removeCallbacksAndMessages(null);
        this.appsWorker.shutdownNow();
        if (this.receiverRegistered) {
            try {
                unregisterReceiver(this.receiver);
            } catch (RuntimeException e) {
            }
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (DeviceActions.isDefaultHome(this)) {
            return;
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        build();
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putLong("last_auto_at", this.lastAutoAt);
    }

    private AppConfig config() {
        return ConfigStore.load(this);
    }

    private boolean isHome(Intent intent) {
        return intent != null && "android.intent.action.MAIN".equals(intent.getAction()) && intent.hasCategory("android.intent.category.HOME");
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
        this.root = linearLayoutCol;
        linearLayoutCol.setPadding(Ui.s(this, 44.0f), Ui.s(this, 42.0f), Ui.s(this, 44.0f), Ui.s(this, 38.0f));
        scrollView.addView(this.root);
        setContentView(scrollView);
        FrameLayout frameLayout = new FrameLayout(this);
        LinearLayout linearLayoutCol2 = Ui.col(this);
        TextClock textClock = new TextClock(this);
        textClock.setFormat24Hour("HH:mm");
        textClock.setFormat12Hour("HH:mm");
        textClock.setTextSize(Ui.scale(this) * 116.0f);
        textClock.setTextColor(paletteColors.text);
        textClock.setTypeface(Typeface.create("sans-serif", 1));
        textClock.setIncludeFontPadding(false);
        linearLayoutCol2.addView(textClock, new LinearLayout.LayoutParams(-1, -2));
        Ui.gap(this, linearLayoutCol2, 16);
        TextView textViewText = Ui.text(this, "", 32, paletteColors.muted);
        this.date = textViewText;
        linearLayoutCol2.addView(textViewText, new LinearLayout.LayoutParams(-1, -2));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, Ui.s(this, 208.0f), 51);
        layoutParams.rightMargin = Ui.s(this, 250.0f);
        frameLayout.addView(linearLayoutCol2, layoutParams);
        LinearLayout linearLayoutCol3 = Ui.col(this);
        linearLayoutCol3.setGravity(5);
        TextView textViewTitle = Ui.title(this, "G3", 64);
        textViewTitle.setTypeface(Typeface.create("sans-serif-medium", 2));
        linearLayoutCol3.addView(textViewTitle);
        Ui.gap(this, linearLayoutCol3, 12);
        linearLayoutCol3.addView(Ui.text(this, "轻装出发", 28, paletteColors.muted));
        frameLayout.addView(linearLayoutCol3, new FrameLayout.LayoutParams(Ui.s(this, 210.0f), -2, 53));
        this.root.addView(frameLayout, new LinearLayout.LayoutParams(-1, Ui.s(this, 208.0f)));
        Ui.gap(this, this.root, 28);
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setBackground(Ui.outline(this, paletteColors.card, 30));
        frameLayout2.setClipToOutline(true);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = 2;
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.nav_map_art_v1, options);
        if (bitmapDecodeResource != null) {
            ImageView imageView = new ImageView(this);
            imageView.setImageBitmap(bitmapDecodeResource);
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            imageView.setTranslationY(-Ui.s(this, 100.0f));
            imageView.setAlpha(paletteColors.dark ? 0.85f : 0.24f);
            imageView.setImportantForAccessibility(2);
            frameLayout2.addView(imageView, new FrameLayout.LayoutParams(-1, -1));
        } else {
            frameLayout2.addView(new Ui.MapArt(this), new FrameLayout.LayoutParams(-1, -1));
        }
        LinearLayout linearLayoutCol4 = Ui.col(this);
        linearLayoutCol4.setPadding(Ui.s(this, 42.0f), Ui.s(this, 38.0f), Ui.s(this, 42.0f), 0);
        TextView textViewTitle2 = Ui.title(this, "", 54);
        this.navName = textViewTitle2;
        textViewTitle2.setMaxLines(1);
        this.navName.setEllipsize(TextUtils.TruncateAt.END);
        linearLayoutCol4.addView(this.navName);
        Ui.gap(this, linearLayoutCol4, 14);
        linearLayoutCol4.addView(Ui.text(this, "准备出发", 40, paletteColors.text));
        Ui.gap(this, linearLayoutCol4, 18);
        TextView textViewText2 = Ui.text(this, "", 30, paletteColors.muted);
        this.navDetail = textViewText2;
        textViewText2.setMaxLines(1);
        linearLayoutCol4.addView(this.navDetail);
        frameLayout2.addView(linearLayoutCol4, new FrameLayout.LayoutParams(-1, -2, 48));
        LinearLayout linearLayoutCol5 = Ui.col(this);
        linearLayoutCol5.setPadding(Ui.s(this, 42.0f), 0, Ui.s(this, 42.0f), Ui.s(this, 26.0f));
        Ui.buttons(this, linearLayoutCol5, Ui.button(this, "打开导航", true, new Runnable() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m22lambda$build$1$comlocalg3homeHomeActivity();
            }
        }), Ui.button(this, "搜索目的地", false, new Runnable() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.search();
            }
        }));
        TextView textViewText3 = Ui.text(this, "原车地图  ›", 28, paletteColors.muted);
        textViewText3.setPadding(0, Ui.s(this, 20.0f), Ui.s(this, 30.0f), Ui.s(this, 16.0f));
        textViewText3.setMinHeight(Ui.s(this, 72.0f));
        textViewText3.setOnClickListener(new View.OnClickListener() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m23lambda$build$2$comlocalg3homeHomeActivity(view);
            }
        });
        textViewText3.setFocusable(true);
        linearLayoutCol5.addView(textViewText3);
        frameLayout2.addView(linearLayoutCol5, new FrameLayout.LayoutParams(-1, -2, 80));
        this.root.addView(frameLayout2, new LinearLayout.LayoutParams(-1, Ui.s(this, 540.0f)));
        Ui.gap(this, this.root, 28);
        LinearLayout linearLayoutCol6 = Ui.col(this);
        this.appsArea = linearLayoutCol6;
        this.root.addView(linearLayoutCol6, new LinearLayout.LayoutParams(-1, -2));
        renderShortcuts();
        Ui.gap(this, this.root, 28);
        LinearLayout linearLayoutPanel = Ui.panel(this);
        LinearLayout linearLayoutRow = Ui.row(this);
        ImageView imageView2 = new ImageView(this);
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        options2.inSampleSize = 4;
        Bitmap bitmapDecodeResource2 = BitmapFactory.decodeResource(getResources(), R.drawable.assistant_avatar_v1, options2);
        if (bitmapDecodeResource2 != null) {
            imageView2.setImageBitmap(bitmapDecodeResource2);
        } else {
            imageView2.setImageDrawable(new Ui.Symbol("chat", paletteColors.accent));
        }
        imageView2.setScaleType(ImageView.ScaleType.FIT_CENTER);
        linearLayoutRow.addView(imageView2, new LinearLayout.LayoutParams(Ui.s(this, 124.0f), Ui.s(this, 124.0f)));
        Ui.side(this, linearLayoutRow, 24);
        LinearLayout linearLayoutCol7 = Ui.col(this);
        linearLayoutCol7.addView(Ui.title(this, "小P · 豆包", 36));
        Ui.gap(this, linearLayoutCol7, 14);
        TextView textViewText4 = Ui.text(this, "", 28, paletteColors.muted);
        this.assistantState = textViewText4;
        textViewText4.setMaxLines(2);
        linearLayoutCol7.addView(this.assistantState);
        linearLayoutRow.addView(linearLayoutCol7, new LinearLayout.LayoutParams(0, -2, 1.0f));
        boolean z = getResources().getConfiguration().screenWidthDp < 700;
        LinearLayout linearLayoutRow2 = z ? Ui.row(this) : linearLayoutRow;
        linearLayoutRow2.addView(Ui.button(this, "问豆包", false, new Runnable() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.ask();
            }
        }), new LinearLayout.LayoutParams(z ? 0 : Ui.s(this, 216.0f), -2, z ? 1.0f : 0.0f));
        Ui.side(this, linearLayoutRow2, 20);
        linearLayoutRow2.addView(Ui.iconButton(this, "mic", "唤醒小P语音提问", new Runnable() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.voiceAsk();
            }
        }));
        Ui.side(this, linearLayoutRow2, 20);
        linearLayoutRow2.addView(Ui.iconButton(this, "settings", "设置", new Runnable() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.settings();
            }
        }));
        linearLayoutPanel.addView(linearLayoutRow, new LinearLayout.LayoutParams(-1, -2));
        if (z) {
            Ui.gap(this, linearLayoutPanel, 20);
            linearLayoutPanel.addView(linearLayoutRow2, new LinearLayout.LayoutParams(-1, -2));
        }
        Ui.gap(this, linearLayoutPanel, 22);
        TextView textViewText5 = Ui.text(this, "", 27, paletteColors.muted);
        this.assistantDetail = textViewText5;
        textViewText5.setMaxLines(2);
        linearLayoutPanel.addView(this.assistantDetail);
        this.root.addView(linearLayoutPanel, new LinearLayout.LayoutParams(-1, -2));
        Ui.gap(this, this.root, 24);
        TextView textViewText6 = Ui.text(this, "", 26, paletteColors.muted);
        this.operation = textViewText6;
        textViewText6.setVisibility(8);
        this.root.addView(this.operation);
        updateStatus();
        if (this.apps.isEmpty()) {
            loadApps();
        }
    }

    /* renamed from: lambda$build$1$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m22lambda$build$1$comlocalg3homeHomeActivity() {
        openNavigation(false);
    }

    /* renamed from: lambda$build$2$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m23lambda$build$2$comlocalg3homeHomeActivity(View view) {
        openOriginal();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStatus() {
        boolean zHasApiKey;
        if (this.dead || this.navName == null) {
            return;
        }
        try {
            AppConfig appConfigConfig = config();
            this.date.setText(new SimpleDateFormat("M月d日  EEEE", Locale.CHINA).format(new Date()));
            try {
                this.navName.setText(Navigator.label(this, appConfigConfig.navPackage));
            } catch (RuntimeException e) {
                this.navName.setText(appConfigConfig.navPackage);
            }
            this.navDetail.setText(appConfigConfig.autoLaunchNav ? appConfigConfig.restoreAfterWake ? "自动打开 · 唤醒恢复" : "进入桌面自动打开导航" : "选择目的地，让出行更从容");
            Bundle bundleBridge = Ui.bridge(this);
            try {
                zHasApiKey = ConfigStore.hasApiKey(this);
            } catch (RuntimeException e2) {
                zHasApiKey = false;
            }
            boolean z = (!zHasApiKey || appConfigConfig.modelId == null || appConfigConfig.modelId.trim().isEmpty()) ? false : true;
            boolean z2 = bundleBridge.getBoolean("hookReady", false);
            boolean z3 = bundleBridge.getBoolean("speechOutputReady", false);
            this.assistantState.setText(!appConfigConfig.doubaoEnabled ? "豆包问答已关闭" : !z ? "接口待配置" : (appConfigConfig.voiceEnabled && z2 && z3) ? "● 小P已接入 · 播报就绪" : z3 ? "● 可手动提问" : "系统播报待就绪");
            this.assistantState.setTextColor((appConfigConfig.doubaoEnabled && z && z3) ? Ui.colors(this).accent : Ui.colors(this).muted);
            String string = bundleBridge.getString("lastError", "");
            String string2 = bundleBridge.getString("lastAnswer", "");
            this.assistantDetail.setText(!string.isEmpty() ? Ui.limited(string, 90) : !string2.isEmpty() ? Ui.limited(string2, 90) : !appConfigConfig.doubaoEnabled ? "在设置中启用豆包问答" : !z ? "在设置中完成火山方舟接口配置" : appConfigConfig.voiceEnabled ? "触发词：" + appConfigConfig.prefix : "点击问豆包，输入你的问题");
            this.assistantDetail.setTextColor(string.isEmpty() ? Ui.colors(this).muted : Ui.colors(this).warning);
        } catch (RuntimeException e3) {
            notice("配置读取失败：" + Ui.error(e3));
        }
    }

    private void notice(String str) {
        TextView textView = this.operation;
        if (textView != null) {
            textView.setText(str);
            this.operation.setVisibility(0);
        }
    }

    static boolean shouldAutoLaunch(boolean z, boolean z2, boolean z3, boolean z4, long j, long j2) {
        return z3 && (z || (z2 && z4)) && (j <= 0 || j2 < j || j2 - j >= 60000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: maybeAutoLaunch, reason: merged with bridge method [inline-methods] */
    public void m32lambda$new$0$comlocalg3homeHomeActivity() {
        if (this.dead || !this.resumed) {
            return;
        }
        AppConfig appConfigConfig = config();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean zShouldAutoLaunch = shouldAutoLaunch(this.pendingHome, this.wakePending, appConfigConfig.autoLaunchNav, appConfigConfig.restoreAfterWake, this.lastAutoAt, jElapsedRealtime);
        if (this.pendingHome) {
            HotspotController.enableIfRequested(this);
        }
        this.wakePending = false;
        this.pendingHome = false;
        if (zShouldAutoLaunch) {
            this.lastAutoAt = jElapsedRealtime;
            openNavigation(true);
        }
    }

    private void openNavigation(boolean z) {
        this.suppressNextResume = true;
        try {
            Navigator.Result resultOpen = Navigator.open(this, config().navPackage);
            notice(resultOpen.message);
            if (resultOpen.accepted) {
                return;
            }
            this.suppressNextResume = false;
            if (z) {
                return;
            }
            Ui.show(this, "导航未打开", resultOpen.message);
        } catch (RuntimeException e) {
            this.suppressNextResume = false;
            notice("导航未打开：" + Ui.error(e));
            if (z) {
                return;
            }
            Ui.show(this, "导航未打开", Ui.error(e));
        }
    }

    private void openOriginal() {
        this.suppressNextResume = true;
        try {
            Navigator.Result resultOpen = Navigator.open(this, "com.xiaopeng.montecarlo");
            notice(resultOpen.message);
            if (resultOpen.accepted) {
                return;
            }
            this.suppressNextResume = false;
            Ui.show(this, "原车地图未打开", resultOpen.message);
        } catch (RuntimeException e) {
            this.suppressNextResume = false;
            Ui.show(this, "原车地图未打开", Ui.error(e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void settings() {
        this.suppressNextResume = true;
        try {
            Ui.launch(this, new Intent(this, (Class<?>) SettingsActivity.class).addFlags(268435456));
        } catch (RuntimeException e) {
            this.suppressNextResume = false;
            Ui.show(this, "设置未打开", Ui.error(e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void search() {
        final EditText editTextInput = Ui.input(this, "地点名称或地址", "", false);
        editTextInput.setFilters(new InputFilter[]{new InputFilter.LengthFilter(256)});
        LinearLayout linearLayoutCol = Ui.col(this);
        linearLayoutCol.addView(editTextInput, new LinearLayout.LayoutParams(-1, -2));
        Ui.gap(this, linearLayoutCol, 18);
        final TextView textViewText = Ui.text(this, "", 28, Ui.colors(this).warning);
        textViewText.setVisibility(8);
        linearLayoutCol.addView(textViewText);
        final Ui.PanelDialog panelDialogCreate = Ui.dialog(this).setIcon("nav").setTitle("搜索目的地").setView(linearLayoutCol).setNegativeButton("取消", null).setPositiveButton("发送到地图", null).create();
        panelDialogCreate.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m37lambda$search$3$comlocalg3homeHomeActivity(editTextInput, textViewText, panelDialogCreate, view);
            }
        });
        panelDialogCreate.show();
    }

    /* renamed from: lambda$search$3$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m37lambda$search$3$comlocalg3homeHomeActivity(EditText editText, TextView textView, Ui.PanelDialog panelDialog, View view) {
        String strTrim = editText.getText().toString().trim();
        if (strTrim.isEmpty()) {
            Ui.error(textView, "请输入目的地");
            return;
        }
        try {
            this.suppressNextResume = true;
            Navigator.Result resultSearch = Navigator.search(this, config().navPackage, strTrim);
            notice(resultSearch.message);
            if (resultSearch.accepted) {
                panelDialog.dismiss();
            } else {
                this.suppressNextResume = false;
                Ui.error(textView, resultSearch.message);
            }
        } catch (RuntimeException e) {
            this.suppressNextResume = false;
            Ui.error(textView, Ui.error(e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void voiceAsk() {
        if (this.voiceWake == null) {
            this.voiceWake = new OemVoiceWake(this);
        }
        notice("正在请求小P语音，请稍候…");
        this.voiceWake.start(new OemVoiceWake.Callback() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda0
            @Override // com.local.p5home.OemVoiceWake.Callback
            public final void onResult(boolean z, String str) {
                this.f$0.m42lambda$voiceAsk$4$comlocalg3homeHomeActivity(z, str);
            }
        });
    }

    /* renamed from: lambda$voiceAsk$4$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m42lambda$voiceAsk$4$comlocalg3homeHomeActivity(boolean z, String str) {
        if (this.dead || !this.resumed) {
            return;
        }
        notice(str);
        if (z) {
            return;
        }
        Ui.show(this, "小P语音请求未确认", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ask() {
        AppConfig appConfigConfig = config();
        boolean zHasApiKey = ConfigStore.hasApiKey(this);
        if (!appConfigConfig.doubaoEnabled || !zHasApiKey || appConfigConfig.modelId == null || appConfigConfig.modelId.trim().isEmpty()) {
            Ui.dialog(this).setIcon("chat").setTitle("完成豆包配置").setMessage("在设置中开启豆包问答，并保存模型 ID 与 API Key。").setPositiveButton("打开设置", new DialogInterface.OnClickListener() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda8
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.m17lambda$ask$5$comlocalg3homeHomeActivity(dialogInterface, i);
                }
            }).setNegativeButton("取消", null).show();
            return;
        }
        final EditText editTextInput = Ui.input(this, "想问豆包什么？", "", true);
        editTextInput.setMinLines(3);
        editTextInput.setFilters(new InputFilter[]{new InputFilter.LengthFilter(1000)});
        LinearLayout linearLayoutCol = Ui.col(this);
        linearLayoutCol.addView(editTextInput, new LinearLayout.LayoutParams(-1, -2));
        Ui.gap(this, linearLayoutCol, 18);
        final TextView textViewText = Ui.text(this, "", 28, Ui.colors(this).warning);
        textViewText.setVisibility(8);
        linearLayoutCol.addView(textViewText);
        final Ui.PanelDialog panelDialogCreate = Ui.dialog(this).setIcon("chat").setTitle("问豆包").setView(linearLayoutCol).setNegativeButton("取消", null).setPositiveButton("发送问题", null).create();
        linearLayoutCol.addView(Ui.button(this, "唤醒小P语音提问", false, new Runnable() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m19lambda$ask$7$comlocalg3homeHomeActivity(textViewText, panelDialogCreate);
            }
        }), new LinearLayout.LayoutParams(-1, -2));
        Ui.gap(this, linearLayoutCol, 12);
        linearLayoutCol.addView(Ui.text(this, "唤醒后请说“" + appConfigConfig.prefix + "”和问题；也可以直接输入文字。", 26, Ui.colors(this).muted));
        panelDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda10
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.m20lambda$ask$8$comlocalg3homeHomeActivity(dialogInterface);
            }
        });
        panelDialogCreate.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m21lambda$ask$9$comlocalg3homeHomeActivity(editTextInput, textViewText, panelDialogCreate, view);
            }
        });
        panelDialogCreate.show();
    }

    /* renamed from: lambda$ask$5$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m17lambda$ask$5$comlocalg3homeHomeActivity(DialogInterface dialogInterface, int i) {
        settings();
    }

    /* renamed from: lambda$ask$6$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m18lambda$ask$6$comlocalg3homeHomeActivity(Ui.PanelDialog panelDialog, TextView textView, boolean z, String str) {
        if (this.dead || !panelDialog.isShowing()) {
            return;
        }
        if (!z) {
            Ui.error(textView, str);
        } else {
            notice(str);
            panelDialog.dismiss();
        }
    }

    /* renamed from: lambda$ask$7$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m19lambda$ask$7$comlocalg3homeHomeActivity(final TextView textView, final Ui.PanelDialog panelDialog) {
        if (this.voiceWake == null) {
            this.voiceWake = new OemVoiceWake(this);
        }
        Ui.error(textView, "正在请求小P语音，请稍候…");
        this.voiceWake.start(new OemVoiceWake.Callback() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda19
            @Override // com.local.p5home.OemVoiceWake.Callback
            public final void onResult(boolean z, String str) {
                this.f$0.m18lambda$ask$6$comlocalg3homeHomeActivity(panelDialog, textView, z, str);
            }
        });
    }

    /* renamed from: lambda$ask$8$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m20lambda$ask$8$comlocalg3homeHomeActivity(DialogInterface dialogInterface) {
        OemVoiceWake oemVoiceWake = this.voiceWake;
        if (oemVoiceWake != null) {
            oemVoiceWake.cancel();
        }
    }

    /* renamed from: lambda$ask$9$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m21lambda$ask$9$comlocalg3homeHomeActivity(EditText editText, TextView textView, Ui.PanelDialog panelDialog, View view) {
        String strTrim = editText.getText().toString().trim();
        if (strTrim.isEmpty()) {
            Ui.error(textView, "请输入问题");
            return;
        }
        try {
            AssistantService.ask(this, strTrim);
            notice("已提交问题。");
            panelDialog.dismiss();
            updateStatus();
        } catch (RuntimeException e) {
            Ui.error(textView, Ui.error(e));
        }
    }

    private AppItem app(String... strArr) {
        for (String str : strArr) {
            for (AppItem appItem : this.apps) {
                if (appItem.pkg.equals(str)) {
                    return appItem;
                }
            }
        }
        return null;
    }

    private AppItem shortcutApp(String str) {
        return "@music".equals(str) ? app(MusicRouter.packageName(this, config().musicProvider), "com.xiaopeng.musicradio", "com.xiaopeng.music") : "@phone".equals(str) ? app("com.xiaopeng.btphone") : "@vehicle".equals(str) ? app("com.xiaopeng.car.settings") : app(str);
    }

    private String[] shortcutValues() {
        if (!ShortcutStore.automatic(this)) {
            return new String[]{ShortcutStore.slot(this, 0), ShortcutStore.slot(this, 1), ShortcutStore.slot(this, 2), ShortcutStore.slot(this, 3)};
        }
        String[] strArr = new String[4];
        int i = 0;
        for (String str : this.frequent) {
            if (i == 3) {
                break;
            }
            strArr[i] = str;
            i++;
        }
        for (int i2 = 0; i2 < 3 && i < 3; i2++) {
            String strSlot = ShortcutStore.slot(this, i2);
            AppItem appItemShortcutApp = shortcutApp(strSlot);
            if (appItemShortcutApp != null) {
                strSlot = appItemShortcutApp.pkg;
            }
            boolean z = false;
            for (int i3 = 0; i3 < i; i3++) {
                if (strArr[i3].equals(strSlot)) {
                    z = true;
                }
            }
            if (!z) {
                strArr[i] = strSlot;
                i++;
            }
        }
        while (i < 3) {
            strArr[i] = "@empty" + i;
            i++;
        }
        strArr[3] = "@apps";
        return strArr;
    }

    private void renderShortcuts() {
        if (this.appsArea == null) {
            return;
        }
        this.renderedMusicProvider = config().musicProvider;
        this.appsArea.removeAllViews();
        int i = getResources().getConfiguration().screenWidthDp < 600 ? 2 : 4;
        String[] strArrShortcutValues = shortcutValues();
        LinearLayout linearLayoutRow = null;
        int i2 = 0;
        for (int i3 = 4; i2 < i3; i3 = 4) {
            if (i2 % i == 0) {
                if (i2 > 0) {
                    Ui.gap(this, this.appsArea, 24);
                }
                linearLayoutRow = Ui.row(this);
                this.appsArea.addView(linearLayoutRow, new LinearLayout.LayoutParams(-1, -2));
            }
            final String str = strArrShortcutValues[i2];
            final AppItem appItemShortcutApp = shortcutApp(str);
            String str2 = "@apps".equals(str) ? "应用" : "@vehicle".equals(str) ? "车辆设置" : appItemShortcutApp != null ? appItemShortcutApp.label : "@music".equals(str) ? "音乐" : "@phone".equals(str) ? "电话" : "应用不可用";
            String str3 = "@apps".equals(str) ? "apps" : "@vehicle".equals(str) ? "car" : "@phone".equals(str) ? "phone" : "music";
            LinearLayout linearLayoutCol = Ui.col(this);
            linearLayoutCol.setGravity(17);
            linearLayoutCol.setPadding(Ui.s(this, 10.0f), Ui.s(this, 10.0f), Ui.s(this, 10.0f), Ui.s(this, 12.0f));
            ImageView imageView = new ImageView(this);
            imageView.setImageDrawable(appItemShortcutApp == null ? new Ui.Symbol(str3, Ui.colors(this).accent) : appItemShortcutApp.icon);
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            linearLayoutCol.addView(imageView, new LinearLayout.LayoutParams(Ui.s(this, 128.0f), Ui.s(this, 128.0f)));
            Ui.gap(this, linearLayoutCol, 20);
            TextView textViewText = Ui.text(this, str2, 32, Ui.colors(this).text);
            textViewText.setGravity(17);
            textViewText.setMaxLines(1);
            textViewText.setEllipsize(TextUtils.TruncateAt.END);
            linearLayoutCol.addView(textViewText, new LinearLayout.LayoutParams(-1, -2));
            linearLayoutCol.setContentDescription(str2 + "，长按设置快捷应用");
            linearLayoutCol.setFocusable(true);
            linearLayoutCol.setClickable(true);
            linearLayoutCol.setOnClickListener(new View.OnClickListener() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda31
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m35lambda$renderShortcuts$10$comlocalg3homeHomeActivity(str, appItemShortcutApp, view);
                }
            });
            linearLayoutCol.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda32
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return this.f$0.m36lambda$renderShortcuts$11$comlocalg3homeHomeActivity(view);
                }
            });
            linearLayoutRow.addView(linearLayoutCol, new LinearLayout.LayoutParams(0, -2, 1.0f));
            i2++;
        }
    }

    /* renamed from: lambda$renderShortcuts$10$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m35lambda$renderShortcuts$10$comlocalg3homeHomeActivity(String str, AppItem appItem, View view) {
        if ("@vehicle".equals(str)) {
            openVehicleSettings();
            return;
        }
        if ("@apps".equals(str)) {
            allApps();
        } else if (appItem != null) {
            launch(appItem);
        } else {
            Ui.show(this, "应用不可用", "长按快捷入口选择已安装应用。");
        }
    }

    /* renamed from: lambda$renderShortcuts$11$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ boolean m36lambda$renderShortcuts$11$comlocalg3homeHomeActivity(View view) {
        shortcutSettings();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shortcutSettings() {
        if (this.dead || isFinishing()) {
            return;
        }
        LinearLayout linearLayoutCol = Ui.col(this);
        final Ui.PanelDialog[] panelDialogArr = new Ui.PanelDialog[1];
        linearLayoutCol.addView(Ui.text(this, ShortcutStore.automatic(this) ? ShortcutStore.usageAccess(this) ? "优先使用近 7 天系统记录，缺失时使用桌面记录" : "按轻桌面打开次数排序 · 可开启系统使用记录" : "自定义 4 个快捷位置 · 长按入口也可设置", 28, Ui.colors(this).muted));
        Ui.gap(this, linearLayoutCol, 18);
        linearLayoutCol.addView(Ui.button(this, ShortcutStore.automatic(this) ? "切换为自定义" : "自动显示高频应用", false, new Runnable() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m38lambda$shortcutSettings$12$comlocalg3homeHomeActivity(panelDialogArr);
            }
        }), new LinearLayout.LayoutParams(-1, -2));
        Ui.gap(this, linearLayoutCol, 16);
        if (ShortcutStore.automatic(this)) {
            linearLayoutCol.addView(Ui.button(this, "系统使用记录权限", false, new Runnable() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m39lambda$shortcutSettings$13$comlocalg3homeHomeActivity(panelDialogArr);
                }
            }), new LinearLayout.LayoutParams(-1, -2));
        } else {
            final int i = 0;
            while (i < 4) {
                String strSlot = ShortcutStore.slot(this, i);
                AppItem appItemShortcutApp = shortcutApp(strSlot);
                if ("@apps".equals(strSlot)) {
                    strSlot = "应用列表";
                } else if ("@vehicle".equals(strSlot)) {
                    strSlot = "车辆设置";
                } else if (appItemShortcutApp != null) {
                    strSlot = appItemShortcutApp.label;
                }
                int i2 = i + 1;
                linearLayoutCol.addView(Ui.button(this, "位置 " + i2 + " · " + strSlot, false, new Runnable() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m40lambda$shortcutSettings$14$comlocalg3homeHomeActivity(panelDialogArr, i);
                    }
                }), new LinearLayout.LayoutParams(-1, -2));
                Ui.gap(this, linearLayoutCol, 12);
                i = i2;
            }
        }
        Ui.gap(this, linearLayoutCol, 16);
        linearLayoutCol.addView(Ui.button(this, "恢复默认位置", false, new Runnable() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m41lambda$shortcutSettings$15$comlocalg3homeHomeActivity(panelDialogArr);
            }
        }), new LinearLayout.LayoutParams(-1, -2));
        Ui.PanelDialog panelDialogCreate = Ui.dialog(this).setTitle("桌面快捷应用").setView(linearLayoutCol).setNegativeButton("关闭", null).create();
        panelDialogArr[0] = panelDialogCreate;
        panelDialogCreate.show();
    }

    /* renamed from: lambda$shortcutSettings$12$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m38lambda$shortcutSettings$12$comlocalg3homeHomeActivity(Ui.PanelDialog[] panelDialogArr) {
        ShortcutStore.automatic(this, !ShortcutStore.automatic(this));
        panelDialogArr[0].dismiss();
        if (ShortcutStore.automatic(this)) {
            refreshUsage();
        }
        renderShortcuts();
        shortcutSettings();
    }

    /* renamed from: lambda$shortcutSettings$13$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m39lambda$shortcutSettings$13$comlocalg3homeHomeActivity(Ui.PanelDialog[] panelDialogArr) {
        panelDialogArr[0].dismiss();
        this.suppressNextResume = true;
        try {
            Ui.launch(this, new Intent("android.settings.USAGE_ACCESS_SETTINGS"));
        } catch (RuntimeException e) {
            this.suppressNextResume = false;
            Ui.show(this, "未能打开使用记录设置", Ui.error(e));
        }
    }

    /* renamed from: lambda$shortcutSettings$14$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m40lambda$shortcutSettings$14$comlocalg3homeHomeActivity(Ui.PanelDialog[] panelDialogArr, int i) {
        panelDialogArr[0].dismiss();
        m24lambda$chooseShortcut$16$comlocalg3homeHomeActivity(i);
    }

    /* renamed from: lambda$shortcutSettings$15$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m41lambda$shortcutSettings$15$comlocalg3homeHomeActivity(Ui.PanelDialog[] panelDialogArr) {
        ShortcutStore.restore(this);
        panelDialogArr[0].dismiss();
        renderShortcuts();
        shortcutSettings();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: chooseShortcut, reason: merged with bridge method [inline-methods] */
    public void m24lambda$chooseShortcut$16$comlocalg3homeHomeActivity(final int i) {
        LinearLayout linearLayoutCol = Ui.col(this);
        final Ui.PanelDialog[] panelDialogArr = new Ui.PanelDialog[1];
        linearLayoutCol.addView(Ui.button(this, "刷新应用列表", false, new Runnable() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m25lambda$chooseShortcut$17$comlocalg3homeHomeActivity(panelDialogArr, i);
            }
        }), new LinearLayout.LayoutParams(-1, -2));
        Ui.gap(this, linearLayoutCol, 12);
        String[][] strArr = {new String[]{"@apps", "应用列表"}, new String[]{"@vehicle", "车辆设置"}};
        for (int i2 = 0; i2 < 2; i2++) {
            String[] strArr2 = strArr[i2];
            final String str = strArr2[0];
            linearLayoutCol.addView(Ui.button(this, strArr2[1], false, new Runnable() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m26lambda$chooseShortcut$18$comlocalg3homeHomeActivity(i, str, panelDialogArr);
                }
            }), new LinearLayout.LayoutParams(-1, -2));
            Ui.gap(this, linearLayoutCol, 12);
        }
        for (final AppItem appItem : this.apps) {
            LinearLayout linearLayoutRow = Ui.row(this);
            linearLayoutRow.setPadding(Ui.s(this, 12.0f), Ui.s(this, 16.0f), Ui.s(this, 12.0f), Ui.s(this, 16.0f));
            ImageView imageView = new ImageView(this);
            imageView.setImageDrawable(appItem.icon);
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            linearLayoutRow.addView(imageView, new LinearLayout.LayoutParams(Ui.s(this, 70.0f), Ui.s(this, 70.0f)));
            Ui.side(this, linearLayoutRow, 20);
            linearLayoutRow.addView(Ui.text(this, appItem.label, 30, Ui.colors(this).text), new LinearLayout.LayoutParams(0, -2, 1.0f));
            linearLayoutRow.setFocusable(true);
            linearLayoutRow.setOnClickListener(new View.OnClickListener() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda14
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m27lambda$chooseShortcut$19$comlocalg3homeHomeActivity(i, appItem, panelDialogArr, view);
                }
            });
            linearLayoutCol.addView(linearLayoutRow);
            Ui.line(this, linearLayoutCol);
        }
        Ui.PanelDialog panelDialogCreate = Ui.dialog(this).setTitle("选择快捷应用 · " + (i + 1)).setView(linearLayoutCol).setNegativeButton("返回", new DialogInterface.OnClickListener() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda15
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                this.f$0.m28lambda$chooseShortcut$20$comlocalg3homeHomeActivity(dialogInterface, i3);
            }
        }).create();
        panelDialogArr[0] = panelDialogCreate;
        panelDialogCreate.show();
    }

    /* renamed from: lambda$chooseShortcut$17$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m25lambda$chooseShortcut$17$comlocalg3homeHomeActivity(Ui.PanelDialog[] panelDialogArr, final int i) {
        panelDialogArr[0].dismiss();
        notice("正在刷新应用列表…");
        loadApps(new Runnable() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m24lambda$chooseShortcut$16$comlocalg3homeHomeActivity(i);
            }
        });
    }

    /* renamed from: lambda$chooseShortcut$18$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m26lambda$chooseShortcut$18$comlocalg3homeHomeActivity(int i, String str, Ui.PanelDialog[] panelDialogArr) {
        ShortcutStore.setSlot(this, i, str);
        panelDialogArr[0].dismiss();
        renderShortcuts();
        shortcutSettings();
    }

    /* renamed from: lambda$chooseShortcut$19$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m27lambda$chooseShortcut$19$comlocalg3homeHomeActivity(int i, AppItem appItem, Ui.PanelDialog[] panelDialogArr, View view) {
        ShortcutStore.setSlot(this, i, appItem.pkg);
        panelDialogArr[0].dismiss();
        renderShortcuts();
        shortcutSettings();
    }

    /* renamed from: lambda$chooseShortcut$20$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m28lambda$chooseShortcut$20$comlocalg3homeHomeActivity(DialogInterface dialogInterface, int i) {
        this.main.post(new HomeActivity$$ExternalSyntheticLambda33(this));
    }

    private void openVehicleSettings() {
        this.suppressNextResume = true;
        try {
            DeviceActions.openOemSettings(this);
        } catch (RuntimeException e) {
            this.suppressNextResume = false;
            Ui.show(this, "车辆设置未打开", Ui.error(e));
        }
    }

    private void refreshUsage() {
        if (this.apps.isEmpty()) {
            loadApps();
            return;
        }
        final int i = this.usageGeneration + 1;
        this.usageGeneration = i;
        final int i2 = this.generation;
        final int i3 = this.appListRevision;
        final ArrayList arrayList = new ArrayList();
        Iterator<AppItem> it = this.apps.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().pkg);
        }
        this.appsWorker.execute(new Runnable() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m34lambda$refreshUsage$22$comlocalg3homeHomeActivity(arrayList, i, i2, i3);
            }
        });
    }

    /* renamed from: lambda$refreshUsage$22$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m34lambda$refreshUsage$22$comlocalg3homeHomeActivity(List list, final int i, final int i2, final int i3) {
        Map<String, Integer> mapCounts = ShortcutStore.counts(this);
        final ArrayList arrayList = new ArrayList();
        for (String str : ShortcutRank.order(list, mapCounts)) {
            if (mapCounts.getOrDefault(str, 0).intValue() > 0) {
                arrayList.add(str);
            }
        }
        this.main.post(new Runnable() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m33lambda$refreshUsage$21$comlocalg3homeHomeActivity(i, i2, i3, arrayList);
            }
        });
    }

    /* renamed from: lambda$refreshUsage$21$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m33lambda$refreshUsage$21$comlocalg3homeHomeActivity(int i, int i2, int i3, List list) {
        if (!this.dead && i == this.usageGeneration && i2 == this.generation && i3 == this.appListRevision && ShortcutStore.automatic(this)) {
            this.frequent.clear();
            this.frequent.addAll(list);
            renderShortcuts();
        }
    }

    private void loadApps() {
        loadApps(null);
    }

    private void loadApps(final Runnable runnable) {
        final int i = this.generation + 1;
        this.generation = i;
        this.appsWorker.execute(new Runnable() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m31lambda$loadApps$26$comlocalg3homeHomeActivity(i, runnable);
            }
        });
    }

    /* renamed from: lambda$loadApps$24$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m29lambda$loadApps$24$comlocalg3homeHomeActivity(int i, RuntimeException runtimeException, Runnable runnable) {
        if (this.dead || i != this.generation) {
            return;
        }
        notice("应用列表读取未完成：" + Ui.error(runtimeException));
        if (ShortcutStore.automatic(this) && !this.apps.isEmpty()) {
            refreshUsage();
        }
        if (runnable == null || !this.resumed || isFinishing()) {
            return;
        }
        runnable.run();
        Ui.show(this, "应用列表读取未完成", "已保留上次加载的应用和图标。" + Ui.error(runtimeException));
    }

    /* renamed from: lambda$loadApps$25$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m30lambda$loadApps$25$comlocalg3homeHomeActivity(int i, List list, Map map, boolean z, Runnable runnable) {
        if (this.dead || i != this.generation) {
            return;
        }
        this.apps.clear();
        this.apps.addAll(list);
        this.appListRevision++;
        this.frequent.clear();
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((AppItem) it.next()).pkg);
        }
        for (String str : ShortcutRank.order(arrayList, map)) {
            if (((Integer) map.getOrDefault(str, 0)).intValue() > 0) {
                this.frequent.add(str);
            }
        }
        renderShortcuts();
        if (ShortcutStore.automatic(this) && !z) {
            refreshUsage();
        }
        if (runnable == null || !this.resumed || isFinishing()) {
            return;
        }
        runnable.run();
    }

    /* renamed from: lambda$loadApps$26$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m31lambda$loadApps$26$comlocalg3homeHomeActivity(final int i, final Runnable runnable) {
        Intent launchIntentForPackage;
        Drawable defaultActivityIcon;
        final ArrayList arrayList = new ArrayList();
        final boolean zAutomatic = ShortcutStore.automatic(this);
        final Map<String, Integer> mapCounts = zAutomatic ? ShortcutStore.counts(this) : Collections.emptyMap();
        try {
            PackageManager packageManager = getPackageManager();
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER"), 0);
            HashSet hashSet = new HashSet();
            for (ResolveInfo resolveInfo : listQueryIntentActivities) {
                if (Thread.currentThread().isInterrupted()) {
                    return;
                }
                String str = resolveInfo.activityInfo.packageName;
                if (!str.equals(getPackageName()) && hashSet.add(str) && (launchIntentForPackage = packageManager.getLaunchIntentForPackage(str)) != null) {
                    try {
                        defaultActivityIcon = resolveInfo.loadIcon(packageManager);
                    } catch (RuntimeException e) {
                        defaultActivityIcon = packageManager.getDefaultActivityIcon();
                    }
                    arrayList.add(new AppItem(str, String.valueOf(resolveInfo.loadLabel(packageManager)), launchIntentForPackage, defaultActivityIcon));
                }
            }
            final Collator collator = Collator.getInstance(Locale.CHINA);
            Collections.sort(arrayList, new Comparator() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda5
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return collator.compare(((HomeActivity.AppItem) obj).label, ((HomeActivity.AppItem) obj2).label);
                }
            });
            this.main.post(new Runnable() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m30lambda$loadApps$25$comlocalg3homeHomeActivity(i, arrayList, mapCounts, zAutomatic, runnable);
                }
            });
        } catch (RuntimeException e2) {
            this.main.post(new Runnable() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m29lambda$loadApps$24$comlocalg3homeHomeActivity(i, e2, runnable);
                }
            });
        }
    }

    private void launch(AppItem appItem) {
        this.suppressNextResume = true;
        try {
            Ui.launch(this, new Intent(appItem.launch));
            ShortcutStore.record(this, appItem.pkg);
            notice("已请求打开 " + appItem.label);
        } catch (RuntimeException e) {
            this.suppressNextResume = false;
            Ui.show(this, "应用未打开", Ui.error(e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void allApps() {
        LinearLayout linearLayoutCol = Ui.col(this);
        if (this.apps.isEmpty()) {
            linearLayoutCol.addView(Ui.text(this, "暂无可启动应用，点击刷新重新读取。", 30, Ui.colors(this).muted));
        }
        final Ui.PanelDialog[] panelDialogArr = new Ui.PanelDialog[1];
        for (final AppItem appItem : this.apps) {
            LinearLayout linearLayoutRow = Ui.row(this);
            linearLayoutRow.setPadding(Ui.s(this, 12.0f), Ui.s(this, 20.0f), Ui.s(this, 12.0f), Ui.s(this, 20.0f));
            ImageView imageView = new ImageView(this);
            imageView.setImageDrawable(appItem.icon);
            linearLayoutRow.addView(imageView, new LinearLayout.LayoutParams(Ui.s(this, 72.0f), Ui.s(this, 72.0f)));
            Ui.side(this, linearLayoutRow, 24);
            linearLayoutRow.addView(Ui.text(this, appItem.label, 32, Ui.colors(this).text), new LinearLayout.LayoutParams(0, -2, 1.0f));
            linearLayoutRow.setMinimumHeight(Ui.s(this, 116.0f));
            linearLayoutRow.setFocusable(true);
            linearLayoutRow.setOnClickListener(new View.OnClickListener() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda16
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m15lambda$allApps$27$comlocalg3homeHomeActivity(panelDialogArr, appItem, view);
                }
            });
            linearLayoutCol.addView(linearLayoutRow, new LinearLayout.LayoutParams(-1, -2));
            Ui.line(this, linearLayoutCol);
        }
        Ui.PanelDialog panelDialogCreate = Ui.dialog(this).setTitle("应用").setView(linearLayoutCol).setNegativeButton("关闭", null).setPositiveButton("刷新列表", new DialogInterface.OnClickListener() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda17
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m16lambda$allApps$28$comlocalg3homeHomeActivity(dialogInterface, i);
            }
        }).create();
        panelDialogArr[0] = panelDialogCreate;
        panelDialogCreate.show();
    }

    /* renamed from: lambda$allApps$27$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m15lambda$allApps$27$comlocalg3homeHomeActivity(Ui.PanelDialog[] panelDialogArr, AppItem appItem, View view) {
        panelDialogArr[0].dismiss();
        launch(appItem);
    }

    /* renamed from: lambda$allApps$28$com-local-g3home-HomeActivity, reason: not valid java name */
    /* synthetic */ void m16lambda$allApps$28$comlocalg3homeHomeActivity(DialogInterface dialogInterface, int i) {
        notice("正在刷新应用列表…");
        loadApps(new Runnable() { // from class: com.local.p5home.HomeActivity$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.allApps();
            }
        });
    }
}
