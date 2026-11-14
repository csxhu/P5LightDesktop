package com.local.p5home;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.local.p5home.TopBarStore;
import com.local.p5home.Ui;
import java.text.Collator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class TopBarSettingsActivity extends Activity {
    public static final String EXTRA_SLOT = "slot_index";
    private AppsAdapter adapter;
    private int appSequence;
    private boolean appsLoaded;
    private boolean appsLoading;
    private boolean binding;
    private boolean busy;
    private TextView configState;
    private Ui.PanelDialog confirmation;
    private volatile boolean dead;
    private Ui.Toggle enabled;
    private Button importButton;
    private ListView list;
    private TextView listState;
    private TextView operation;
    private boolean resumed;
    private TextView runtimeState;
    private EditText search;
    private TextView selectionState;
    private TopBarStore.Snapshot snapshot;
    private int stateSequence;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final ExecutorService worker = Executors.newSingleThreadExecutor();
    private final AtomicInteger generation = new AtomicInteger();
    private final List<View> controls = new ArrayList();
    private final List<AppChoice> apps = new ArrayList();
    private final List<AppChoice> filtered = new ArrayList();
    private final Map<String, Drawable> icons = new HashMap();
    private final SlotRow[] rows = new SlotRow[6];
    private int mode = -1;
    private int theme = -1;
    private String searchText = "";
    private String message = "";
    private final Runnable poll = new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity.1
        @Override // java.lang.Runnable
        public void run() {
            if (!TopBarSettingsActivity.this.resumed || TopBarSettingsActivity.this.dead) {
                return;
            }
            if (TopBarSettingsActivity.this.mode < 0 && !TopBarSettingsActivity.this.busy) {
                TopBarSettingsActivity.this.refreshState();
            }
            TopBarSettingsActivity.this.main.postDelayed(this, 3000L);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    interface Write {
        boolean run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class AppChoice {
        final String activity;
        final Drawable icon;
        final String label;
        final String pkg;

        AppChoice(String str, String str2, String str3, Drawable drawable) {
            this.pkg = str;
            this.activity = str2;
            this.label = str3;
            this.icon = drawable;
        }
    }

    private static final class SlotRow {
        ImageView icon;
        TextView name;
        TextView value;

        private SlotRow() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class State {
        final Drawable[] icons;
        final TopBarStore.Snapshot snapshot;
        final Bundle status;

        State(TopBarStore.Snapshot snapshot, Bundle bundle, Drawable[] drawableArr) {
            this.snapshot = snapshot;
            this.status = bundle;
            this.icons = drawableArr;
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int slot = readSlot(getIntent());
        this.mode = entryMode(slot, bundle != null && bundle.containsKey("mode"), bundle == null ? null : bundle.get("mode"));
        String string = "";
        if (slot < 0 && bundle != null) {
            string = bundle.getString("search", "");
        }
        this.searchText = string;
        Log.i("G3TopBarUI", "ENTRY_SLOT_" + slot + "_MODE_" + this.mode + "_RESTORED_" + (bundle != null));
        if (this.mode == -2) {
            this.mode = -1;
            this.message = "槽位参数无效，未修改任何配置。";
        }
        build();
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        int slot = readSlot(intent);
        Log.i("G3TopBarUI", "NEW_INTENT_SLOT_" + slot);
        this.message = slot == -2 ? "槽位参数无效，未修改任何配置。" : "";
        if (slot == -2) {
            slot = -1;
        }
        navigate(slot);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.resumed = true;
        if (this.theme != Ui.themeSignature(this)) {
            build();
        }
        refreshState();
        if (this.mode >= 0 && !this.appsLoaded) {
            loadApps();
        }
        this.main.removeCallbacks(this.poll);
        this.main.postDelayed(this.poll, 3000L);
    }

    @Override // android.app.Activity
    public void onPause() {
        this.resumed = false;
        this.main.removeCallbacks(this.poll);
        dismissConfirmation();
        super.onPause();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.dead = true;
        this.generation.incrementAndGet();
        this.main.removeCallbacksAndMessages(null);
        dismissConfirmation();
        this.worker.shutdownNow();
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("mode", this.mode);
        bundle.putString("search", this.searchText);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        build();
        if (this.resumed) {
            refreshState();
            if (this.mode < 0 || this.appsLoaded) {
                return;
            }
            loadApps();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.mode >= 0) {
            navigate(-1);
        } else {
            finish();
        }
    }

    static int slotExtra(boolean z, Object obj) {
        if (!z) {
            return -1;
        }
        if (obj instanceof Integer) {
            Integer num = (Integer) obj;
            if (num.intValue() >= 0 && num.intValue() < 6) {
                return num.intValue();
            }
        }
        return -2;
    }

    static int entryMode(int i, boolean z, Object obj) {
        if (i >= 0 && i < 6) {
            return i;
        }
        if (i != -1) {
            return -2;
        }
        if (!z) {
            return -1;
        }
        if (!(obj instanceof Integer)) {
            return -2;
        }
        Integer num = (Integer) obj;
        if (num.intValue() < -1 || num.intValue() >= 6) {
            return -2;
        }
        return num.intValue();
    }

    private static int readSlot(Intent intent) {
        if (intent == null) {
            return -1;
        }
        try {
            Bundle extras = intent.getExtras();
            return slotExtra(extras != null && extras.containsKey(EXTRA_SLOT), extras == null ? null : extras.get(EXTRA_SLOT));
        } catch (RuntimeException e) {
            return -2;
        }
    }

    static boolean matches(String str, String str2, String str3) {
        String lowerCase = str3 == null ? "" : str3.trim().toLowerCase(Locale.ROOT);
        return lowerCase.isEmpty() || (str != null && str.toLowerCase(Locale.ROOT).contains(lowerCase)) || (str2 != null && str2.toLowerCase(Locale.ROOT).contains(lowerCase));
    }

    private void navigate(int i) {
        dismissConfirmation();
        this.mode = i;
        this.searchText = "";
        build();
        if (this.resumed) {
            refreshState();
            if (this.mode < 0 || this.appsLoaded) {
                return;
            }
            loadApps();
        }
    }

    private boolean live(int i) {
        return (this.dead || isFinishing() || isDestroyed() || !this.resumed || i != this.generation.get()) ? false : true;
    }

    private void dismissConfirmation() {
        Ui.PanelDialog panelDialog = this.confirmation;
        if (panelDialog != null) {
            panelDialog.dismiss();
            this.confirmation = null;
        }
    }

    private String slotName(int i) {
        return (i < 0 || i >= TopBarSlot.NAMES.length) ? "未知槽位" : TopBarSlot.NAMES[i];
    }

    private void build() {
        this.generation.incrementAndGet();
        this.stateSequence++;
        this.appSequence++;
        this.appsLoading = false;
        dismissConfirmation();
        Ui.install(this);
        this.theme = Ui.themeSignature(this);
        this.controls.clear();
        this.enabled = null;
        this.importButton = null;
        this.search = null;
        this.list = null;
        this.adapter = null;
        this.listState = null;
        this.selectionState = null;
        this.runtimeState = null;
        this.configState = null;
        if (this.mode >= 0) {
            buildPicker();
        } else {
            buildOverview();
        }
        updateBusy();
        note(this.message);
    }

    private LinearLayout heading(String str, Runnable runnable) {
        LinearLayout linearLayoutRow = Ui.row(this);
        linearLayoutRow.addView(Ui.iconButton(this, "back", this.mode >= 0 ? "返回顶部栏设置" : "返回设置", runnable));
        Ui.side(this, linearLayoutRow, 26);
        linearLayoutRow.addView(Ui.title(this, str, 46), new LinearLayout.LayoutParams(0, -2, 1.0f));
        return linearLayoutRow;
    }

    private void buildOverview() {
        ScrollView scrollView = new ScrollView(this);
        scrollView.setFillViewport(true);
        scrollView.setBackgroundColor(Ui.colors(this).bg);
        LinearLayout linearLayoutCol = Ui.col(this);
        linearLayoutCol.setPadding(Ui.s(this, 44.0f), Ui.s(this, 36.0f), Ui.s(this, 44.0f), Ui.s(this, 36.0f));
        scrollView.addView(linearLayoutCol);
        setContentView(scrollView);
        linearLayoutCol.addView(heading("顶部栏应用", new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.finish();
            }
        }));
        int i = 32;
        Ui.gap(this, linearLayoutCol, 32);
        LinearLayout linearLayoutPanel = Ui.panel(this);
        LinearLayout linearLayoutRow = Ui.row(this);
        LinearLayout linearLayoutCol2 = Ui.col(this);
        linearLayoutCol2.addView(Ui.title(this, "启用顶部栏自定义", 36));
        Ui.gap(this, linearLayoutCol2, 14);
        TextView textViewText = Ui.text(this, "正在读取独立开关…", 28, Ui.colors(this).muted);
        this.configState = textViewText;
        linearLayoutCol2.addView(textViewText);
        int i2 = 0;
        linearLayoutRow.addView(linearLayoutCol2, new LinearLayout.LayoutParams(0, -2, 1.0f));
        Ui.Toggle toggle = new Ui.Toggle(this);
        this.enabled = toggle;
        toggle.setContentDescription("启用顶部栏自定义");
        this.enabled.setEnabled(false);
        this.enabled.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda7
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.m128lambda$buildOverview$0$comlocalg3homeTopBarSettingsActivity(compoundButton, z);
            }
        });
        linearLayoutRow.addView(this.enabled);
        linearLayoutPanel.addView(linearLayoutRow);
        Ui.gap(this, linearLayoutPanel, 24);
        TextView textViewText2 = Ui.text(this, "正在读取系统界面状态…", 28, Ui.colors(this).muted);
        this.runtimeState = textViewText2;
        linearLayoutPanel.addView(textViewText2);
        Ui.gap(this, linearLayoutPanel, 24);
        Ui.buttons(this, linearLayoutPanel, control("刷新状态", false, new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.refreshState();
            }
        }), control("接入说明", false, new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.help();
            }
        }));
        linearLayoutCol.addView(linearLayoutPanel, new LinearLayout.LayoutParams(-1, -2));
        Ui.gap(this, linearLayoutCol, 26);
        LinearLayout linearLayoutPanel2 = Ui.panel(this);
        linearLayoutPanel2.addView(Ui.title(this, "六个快捷入口", 34));
        Ui.gap(this, linearLayoutPanel2, 12);
        linearLayoutPanel2.addView(Ui.text(this, "可先保存应用选择，开启总开关后再应用。", 27, Ui.colors(this).muted));
        Ui.gap(this, linearLayoutPanel2, 16);
        final int i3 = 0;
        while (true) {
            if (i3 >= 6) {
                break;
            }
            SlotRow slotRow = new SlotRow();
            LinearLayout linearLayoutRow2 = Ui.row(this);
            linearLayoutRow2.setPadding(i2, Ui.s(this, 20.0f), i2, Ui.s(this, 20.0f));
            linearLayoutRow2.setMinimumHeight(Ui.s(this, 132.0f));
            slotRow.icon = fixedIcon(null);
            linearLayoutRow2.addView(slotRow.icon, new LinearLayout.LayoutParams(Ui.s(this, 72.0f), Ui.s(this, 72.0f)));
            Ui.side(this, linearLayoutRow2, 24);
            LinearLayout linearLayoutCol3 = Ui.col(this);
            int i4 = i3 + 1;
            slotRow.name = Ui.title(this, i4 + " · " + slotName(i3), i);
            linearLayoutCol3.addView(slotRow.name);
            Ui.gap(this, linearLayoutCol3, 12);
            slotRow.value = Ui.text(this, "读取中…", 28, Ui.colors(this).muted);
            slotRow.value.setMaxLines(2);
            slotRow.value.setEllipsize(TextUtils.TruncateAt.END);
            linearLayoutCol3.addView(slotRow.value);
            linearLayoutRow2.addView(linearLayoutCol3, new LinearLayout.LayoutParams(0, -2, 1.0f));
            linearLayoutRow2.addView(Ui.icon(this, "chevron", Ui.colors(this).muted, 36));
            linearLayoutRow2.setFocusable(true);
            linearLayoutRow2.setClickable(true);
            linearLayoutRow2.setContentDescription("选择顶部栏槽位" + i4 + slotName(i3));
            linearLayoutRow2.setOnClickListener(new View.OnClickListener() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m129lambda$buildOverview$1$comlocalg3homeTopBarSettingsActivity(i3, view);
                }
            });
            this.controls.add(linearLayoutRow2);
            this.rows[i3] = slotRow;
            linearLayoutPanel2.addView(linearLayoutRow2, new LinearLayout.LayoutParams(-1, -2));
            if (i3 < 5) {
                Ui.line(this, linearLayoutPanel2);
            }
            i3 = i4;
            i = 32;
            i2 = 0;
        }
        linearLayoutCol.addView(linearLayoutPanel2, new LinearLayout.LayoutParams(-1, -2));
        Ui.gap(this, linearLayoutCol, 26);
        Button buttonControl = control("导入旧版应用选择", false, new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.confirmImport();
            }
        });
        this.importButton = buttonControl;
        linearLayoutCol.addView(buttonControl, new LinearLayout.LayoutParams(-1, -2));
        Ui.gap(this, linearLayoutCol, 18);
        linearLayoutCol.addView(control("恢复全部原车默认", false, new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.confirmResetAll();
            }
        }), new LinearLayout.LayoutParams(-1, -2));
        Ui.gap(this, linearLayoutCol, 24);
        TextView textViewText3 = Ui.text(this, "", 28, Ui.colors(this).muted);
        this.operation = textViewText3;
        linearLayoutCol.addView(textViewText3);
        TopBarStore.Snapshot snapshot = this.snapshot;
        if (snapshot != null) {
            applySnapshot(snapshot, null, null);
        }
    }

    /* renamed from: lambda$buildOverview$0$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ void m128lambda$buildOverview$0$comlocalg3homeTopBarSettingsActivity(CompoundButton compoundButton, boolean z) {
        if (this.binding || this.busy) {
            return;
        }
        this.binding = true;
        Ui.Toggle toggle = this.enabled;
        TopBarStore.Snapshot snapshot = this.snapshot;
        toggle.setChecked(snapshot != null && snapshot.enabled);
        this.binding = false;
        confirmEnabled(z);
    }

    /* renamed from: lambda$buildOverview$1$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ void m129lambda$buildOverview$1$comlocalg3homeTopBarSettingsActivity(int i, View view) {
        navigate(i);
    }

    private void buildPicker() {
        LinearLayout linearLayoutCol = Ui.col(this);
        linearLayoutCol.setPadding(Ui.s(this, 44.0f), Ui.s(this, 36.0f), Ui.s(this, 44.0f), Ui.s(this, 28.0f));
        linearLayoutCol.setBackgroundColor(Ui.colors(this).bg);
        setContentView(linearLayoutCol);
        linearLayoutCol.addView(heading("选择应用 · " + slotName(this.mode), new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m130lambda$buildPicker$2$comlocalg3homeTopBarSettingsActivity();
            }
        }));
        Ui.gap(this, linearLayoutCol, 24);
        TextView textViewText = Ui.text(this, "正在读取当前选择…", 28, Ui.colors(this).muted);
        this.selectionState = textViewText;
        linearLayoutCol.addView(textViewText);
        Ui.gap(this, linearLayoutCol, 20);
        EditText editTextInput = Ui.input(this, "搜索应用名称或包名", this.searchText, false);
        this.search = editTextInput;
        editTextInput.setFilters(new InputFilter[]{new InputFilter.LengthFilter(100)});
        linearLayoutCol.addView(this.search, new LinearLayout.LayoutParams(-1, -2));
        Ui.gap(this, linearLayoutCol, 18);
        Ui.buttons(this, linearLayoutCol, control("恢复此槽原车默认", false, new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m131lambda$buildPicker$3$comlocalg3homeTopBarSettingsActivity();
            }
        }), control("刷新应用列表", false, new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m132lambda$buildPicker$4$comlocalg3homeTopBarSettingsActivity();
            }
        }));
        TextView textViewText2 = Ui.text(this, "正在读取可启动应用…", 27, Ui.colors(this).muted);
        this.listState = textViewText2;
        linearLayoutCol.addView(textViewText2);
        Ui.gap(this, linearLayoutCol, 14);
        ListView listView = new ListView(this);
        this.list = listView;
        listView.setBackgroundColor(Ui.colors(this).card);
        this.list.setCacheColorHint(Ui.colors(this).card);
        this.list.setDivider(new ColorDrawable(Ui.colors(this).line));
        this.list.setDividerHeight(Math.max(1, Ui.s(this, 1.0f)));
        this.list.setSelector(new ColorDrawable(Ui.colors(this).raised));
        AppsAdapter appsAdapter = new AppsAdapter();
        this.adapter = appsAdapter;
        this.list.setAdapter((ListAdapter) appsAdapter);
        this.list.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda29
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m133lambda$buildPicker$5$comlocalg3homeTopBarSettingsActivity(adapterView, view, i, j);
            }
        });
        linearLayoutCol.addView(this.list, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        Ui.gap(this, linearLayoutCol, 16);
        TextView textViewText3 = Ui.text(this, "", 27, Ui.colors(this).muted);
        this.operation = textViewText3;
        linearLayoutCol.addView(textViewText3);
        this.search.addTextChangedListener(new TextWatcher() { // from class: com.local.p5home.TopBarSettingsActivity.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                TopBarSettingsActivity.this.searchText = charSequence == null ? "" : charSequence.toString();
                TopBarSettingsActivity.this.filter();
            }
        });
        filter();
        TopBarStore.Snapshot snapshot = this.snapshot;
        if (snapshot != null) {
            applySnapshot(snapshot, null, null);
        }
    }

    /* renamed from: lambda$buildPicker$2$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ void m130lambda$buildPicker$2$comlocalg3homeTopBarSettingsActivity() {
        navigate(-1);
    }

    /* renamed from: lambda$buildPicker$3$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ void m131lambda$buildPicker$3$comlocalg3homeTopBarSettingsActivity() {
        confirmReset(this.mode);
    }

    /* renamed from: lambda$buildPicker$4$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ void m132lambda$buildPicker$4$comlocalg3homeTopBarSettingsActivity() {
        this.appsLoaded = false;
        loadApps();
    }

    /* renamed from: lambda$buildPicker$5$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ void m133lambda$buildPicker$5$comlocalg3homeTopBarSettingsActivity(AdapterView adapterView, View view, int i, long j) {
        if (this.busy || i < 0 || i >= this.filtered.size()) {
            return;
        }
        confirmChoice(this.mode, this.filtered.get(i));
    }

    private Button control(String str, boolean z, Runnable runnable) {
        Button button = Ui.button(this, str, z, runnable);
        this.controls.add(button);
        return button;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImageView fixedIcon(Drawable drawable) {
        ImageView imageView = new ImageView(this);
        if (drawable == null) {
            drawable = new Ui.Symbol("apps", Ui.colors(this).muted);
        }
        imageView.setImageDrawable(drawable);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setAdjustViewBounds(false);
        imageView.setPadding(Ui.s(this, 4.0f), Ui.s(this, 4.0f), Ui.s(this, 4.0f), Ui.s(this, 4.0f));
        return imageView;
    }

    private void note(String str) {
        if (str == null) {
            str = "";
        }
        this.message = str;
        TextView textView = this.operation;
        if (textView != null) {
            textView.setText(str);
            this.operation.setVisibility(this.message.isEmpty() ? 8 : 0);
        }
    }

    private void updateBusy() {
        TopBarStore.Snapshot snapshot;
        Iterator<View> it = this.controls.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else {
                it.next().setEnabled(true ^ this.busy);
            }
        }
        EditText editText = this.search;
        if (editText != null) {
            editText.setEnabled(!this.busy);
        }
        ListView listView = this.list;
        if (listView != null) {
            listView.setEnabled(!this.busy);
        }
        Ui.Toggle toggle = this.enabled;
        if (toggle != null) {
            toggle.setEnabled((this.busy || (snapshot = this.snapshot) == null || !snapshot.valid) ? false : true);
        }
        Button button = this.importButton;
        if (button != null) {
            button.setEnabled(!this.busy && canImport());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshState() {
        if (this.dead) {
            return;
        }
        final int i = this.generation.get();
        final int i2 = this.stateSequence + 1;
        this.stateSequence = i2;
        final Context applicationContext = getApplicationContext();
        this.worker.execute(new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m150lambda$refreshState$7$comlocalg3homeTopBarSettingsActivity(applicationContext, i, i2);
            }
        });
    }

    /* renamed from: lambda$refreshState$6$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ void m149lambda$refreshState$6$comlocalg3homeTopBarSettingsActivity(int i, int i2, String str, State state) {
        if (live(i) && i2 == this.stateSequence) {
            if (str != null) {
                note("顶部栏配置读取未完成：" + str);
                this.snapshot = null;
                TextView textView = this.runtimeState;
                if (textView != null) {
                    textView.setText("状态读取失败，请刷新或恢复全部默认。");
                }
                TextView textView2 = this.configState;
                if (textView2 != null) {
                    textView2.setText("配置未能读取，未开启接管。");
                }
            } else {
                this.snapshot = state.snapshot;
                applySnapshot(state.snapshot, state.status, state.icons);
            }
            updateBusy();
        }
    }

    /* renamed from: lambda$refreshState$7$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ void m150lambda$refreshState$7$comlocalg3homeTopBarSettingsActivity(Context context, final int i, final int i2) {
        final String strError;
        final State state;
        TopBarStore.Snapshot snapshotLoad;
        try {
            snapshotLoad = TopBarStore.load(context);
        } catch (Exception e) {
            strError = Ui.error(e);
            state = null;
        }
        if (snapshotLoad == null || !snapshotLoad.valid) {
            throw new IllegalStateException("私有配置无效或无法读取，可恢复全部原车默认后重试。");
        }
        Bundle bundleStatus = TopBarStore.status(context);
        Drawable[] drawableArr = new Drawable[6];
        for (int i3 = 0; i3 < 6; i3++) {
            TopBarSlot topBarSlotSlot = slot(snapshotLoad, i3);
            if (topBarSlotSlot != null && topBarSlotSlot.isCustom()) {
                drawableArr[i3] = loadIcon(context, topBarSlotSlot);
            }
        }
        state = new State(snapshotLoad, bundleStatus, drawableArr);
        strError = null;
        this.main.post(new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m149lambda$refreshState$6$comlocalg3homeTopBarSettingsActivity(i, i2, strError, state);
            }
        });
    }

    private Drawable loadIcon(Context context, TopBarSlot topBarSlot) {
        Drawable applicationIcon;
        String str = topBarSlot.packageName + "/" + topBarSlot.activityName;
        if (this.icons.containsKey(str)) {
            return this.icons.get(str);
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            applicationIcon = (topBarSlot.activityName == null || topBarSlot.activityName.isEmpty()) ? packageManager.getApplicationIcon(topBarSlot.packageName) : packageManager.getActivityIcon(new ComponentName(topBarSlot.packageName, topBarSlot.activityName));
        } catch (Exception e) {
            applicationIcon = null;
        }
        if (applicationIcon != null) {
            this.icons.put(str, applicationIcon);
        }
        return applicationIcon;
    }

    private static TopBarSlot slot(TopBarStore.Snapshot snapshot, int i) {
        if (snapshot == null || snapshot.slots == null || i < 0 || i >= snapshot.slots.length) {
            return null;
        }
        return snapshot.slots[i];
    }

    private void applySnapshot(TopBarStore.Snapshot snapshot, Bundle bundle, Drawable[] drawableArr) {
        if (snapshot == null) {
            note("顶部栏配置为空，请刷新重试。");
            return;
        }
        Ui.Toggle toggle = this.enabled;
        if (toggle != null) {
            this.binding = true;
            toggle.setChecked(snapshot.enabled);
            this.binding = false;
        }
        TextView textView = this.configState;
        if (textView != null) {
            textView.setText(snapshot.enabled ? "配置已开启 · 生效情况见系统界面回报" : "已关闭 · 应用选择仍可保存");
        }
        int i = this.mode;
        if (i < 0) {
            for (int i2 = 0; i2 < 6; i2++) {
                TopBarSlot topBarSlotSlot = slot(snapshot, i2);
                this.rows[i2].value.setText(topBarSlotSlot == null ? "原车默认 · " + slotName(i2) : topBarSlotSlot.displayLabel());
                if (drawableArr != null) {
                    ImageView imageView = this.rows[i2].icon;
                    Drawable symbol = drawableArr[i2];
                    if (symbol == null) {
                        symbol = new Ui.Symbol("apps", Ui.colors(this).muted);
                    }
                    imageView.setImageDrawable(symbol);
                }
            }
            Button button = this.importButton;
            if (button != null) {
                button.setVisibility(snapshot.migrationAttempted ? 8 : 0);
                this.importButton.setText(canImport() ? "导入旧版应用选择" : "导入旧版需先关闭并恢复全部默认");
            }
        } else if (this.selectionState != null) {
            TopBarSlot topBarSlotSlot2 = slot(snapshot, i);
            this.selectionState.setText("当前：" + (topBarSlotSlot2 == null ? "原车默认 · " + slotName(this.mode) : topBarSlotSlot2.displayLabel()) + (snapshot.enabled ? "" : "  · 总开关关闭"));
        }
        if (this.runtimeState == null || bundle == null) {
            return;
        }
        boolean z = bundle.getBoolean("hookReady", false);
        int iBounded = bounded(bundle.getInt("boundCount", 0));
        int iBounded2 = bounded(bundle.getInt("appliedCount", 0));
        String string = bundle.getString("code", "");
        this.runtimeState.setText("STATUS_UNAVAILABLE".equals(string) ? "暂时无法读取系统界面状态，请刷新或检查组件。" : "CONFIG_INVALID".equals(string) ? "配置无效，已停止自定义接管；可恢复默认后重试。" : z ? "系统界面已回报 · 识别 " + iBounded + "/6 个位置\n实际自定义 " + iBounded2 + " 处" : "等待系统界面接入\n请检查 LSPosed 系统界面作用域，开关本身不代表已生效。");
        if (z && !"topbar-20261028-c".equals(bundle.getString("loadedBuild", ""))) {
            this.runtimeState.append("\n安装包已更新，系统界面尚未加载本次版本；停车后需重新加载系统界面。");
        }
        this.runtimeState.setTextColor(("CONFIG_INVALID".equals(string) || "STATUS_UNAVAILABLE".equals(string)) ? Ui.colors(this).warning : z ? Ui.colors(this).accent : Ui.colors(this).muted);
    }

    private static int bounded(int i) {
        return Math.max(0, Math.min(6, i));
    }

    private void loadApps() {
        if (this.dead || this.appsLoading) {
            return;
        }
        this.appsLoading = true;
        final int i = this.generation.get();
        final int i2 = this.appSequence + 1;
        this.appSequence = i2;
        final Context applicationContext = getApplicationContext();
        TextView textView = this.listState;
        if (textView != null) {
            textView.setText("正在读取已安装的可启动应用…");
        }
        this.worker.execute(new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m147lambda$loadApps$10$comlocalg3homeTopBarSettingsActivity(applicationContext, i, i2);
            }
        });
    }

    static /* synthetic */ int lambda$loadApps$8(Collator collator, AppChoice appChoice, AppChoice appChoice2) {
        int iCompare = collator.compare(appChoice.label, appChoice2.label);
        return iCompare != 0 ? iCompare : (appChoice.pkg + "/" + appChoice.activity).compareTo(appChoice2.pkg + "/" + appChoice2.activity);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x009f, code lost:
    
        r9 = java.text.Collator.getInstance(java.util.Locale.CHINA);
        java.util.Collections.sort(r5, new com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda1(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ad, code lost:
    
        r4 = null;
     */
    /* renamed from: lambda$loadApps$10$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    /* synthetic */ void m147lambda$loadApps$10$comlocalg3homeTopBarSettingsActivity(android.content.Context r9, final int r10, final int r11) {
        /*
            r8 = this;
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            android.content.pm.PackageManager r9 = r9.getPackageManager()     // Catch: java.lang.Exception -> Laf
            android.content.Intent r0 = new android.content.Intent     // Catch: java.lang.Exception -> Laf
            java.lang.String r1 = "android.intent.action.MAIN"
            r0.<init>(r1)     // Catch: java.lang.Exception -> Laf
            java.lang.String r1 = "android.intent.category.LAUNCHER"
            android.content.Intent r0 = r0.addCategory(r1)     // Catch: java.lang.Exception -> Laf
            r1 = 0
            java.util.List r0 = r9.queryIntentActivities(r0, r1)     // Catch: java.lang.Exception -> Laf
            java.util.HashSet r1 = new java.util.HashSet     // Catch: java.lang.Exception -> Laf
            r1.<init>()     // Catch: java.lang.Exception -> Laf
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Exception -> Laf
        L24:
            boolean r2 = r0.hasNext()     // Catch: java.lang.Exception -> Laf
            r3 = 0
            if (r2 == 0) goto L9f
            java.lang.Object r2 = r0.next()     // Catch: java.lang.Exception -> Laf
            android.content.pm.ResolveInfo r2 = (android.content.pm.ResolveInfo) r2     // Catch: java.lang.Exception -> Laf
            boolean r4 = r8.dead     // Catch: java.lang.Exception -> Laf
            if (r4 != 0) goto L9e
            java.lang.Thread r4 = java.lang.Thread.currentThread()     // Catch: java.lang.Exception -> Laf
            boolean r4 = r4.isInterrupted()     // Catch: java.lang.Exception -> Laf
            if (r4 != 0) goto L9e
            java.util.concurrent.atomic.AtomicInteger r4 = r8.generation     // Catch: java.lang.Exception -> Laf
            int r4 = r4.get()     // Catch: java.lang.Exception -> Laf
            if (r10 == r4) goto L48
            goto L9e
        L48:
            android.content.pm.ActivityInfo r4 = r2.activityInfo     // Catch: java.lang.Exception -> Laf
            if (r4 == 0) goto L24
            boolean r6 = r4.exported     // Catch: java.lang.Exception -> Laf
            if (r6 == 0) goto L24
            boolean r6 = r4.enabled     // Catch: java.lang.Exception -> Laf
            if (r6 == 0) goto L24
            android.content.pm.ApplicationInfo r6 = r4.applicationInfo     // Catch: java.lang.Exception -> Laf
            if (r6 == 0) goto L24
            android.content.pm.ApplicationInfo r6 = r4.applicationInfo     // Catch: java.lang.Exception -> Laf
            boolean r6 = r6.enabled     // Catch: java.lang.Exception -> Laf
            if (r6 != 0) goto L5f
            goto L24
        L5f:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Laf
            r6.<init>()     // Catch: java.lang.Exception -> Laf
            java.lang.String r7 = r4.packageName     // Catch: java.lang.Exception -> Laf
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch: java.lang.Exception -> Laf
            java.lang.String r7 = "/"
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch: java.lang.Exception -> Laf
            java.lang.String r7 = r4.name     // Catch: java.lang.Exception -> Laf
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch: java.lang.Exception -> Laf
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Exception -> Laf
            boolean r6 = r1.add(r6)     // Catch: java.lang.Exception -> Laf
            if (r6 != 0) goto L81
            goto L24
        L81:
            java.lang.CharSequence r6 = r2.loadLabel(r9)     // Catch: java.lang.Exception -> Laf
            java.lang.String r7 = r4.packageName     // Catch: java.lang.Exception -> Laf
            java.lang.String r6 = cleanLabel(r6, r7)     // Catch: java.lang.Exception -> Laf
            android.graphics.drawable.Drawable r3 = r2.loadIcon(r9)     // Catch: java.lang.Exception -> L90
            goto L91
        L90:
            r2 = move-exception
        L91:
            com.local.p5home.TopBarSettingsActivity$AppChoice r2 = new com.local.p5home.TopBarSettingsActivity$AppChoice     // Catch: java.lang.Exception -> Laf
            java.lang.String r7 = r4.packageName     // Catch: java.lang.Exception -> Laf
            java.lang.String r4 = r4.name     // Catch: java.lang.Exception -> Laf
            r2.<init>(r7, r4, r6, r3)     // Catch: java.lang.Exception -> Laf
            r5.add(r2)     // Catch: java.lang.Exception -> Laf
            goto L24
        L9e:
            return
        L9f:
            java.util.Locale r9 = java.util.Locale.CHINA     // Catch: java.lang.Exception -> Laf
            java.text.Collator r9 = java.text.Collator.getInstance(r9)     // Catch: java.lang.Exception -> Laf
            com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda1 r0 = new com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda1     // Catch: java.lang.Exception -> Laf
            r0.<init>()     // Catch: java.lang.Exception -> Laf
            java.util.Collections.sort(r5, r0)     // Catch: java.lang.Exception -> Laf
            r4 = r3
            goto Lb5
        Laf:
            r9 = move-exception
            java.lang.String r9 = com.local.p5home.Ui.error(r9)
            r4 = r9
        Lb5:
            android.os.Handler r9 = r8.main
            com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda2 r6 = new com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda2
            r0 = r6
            r1 = r8
            r2 = r11
            r3 = r10
            r0.<init>()
            r9.post(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.TopBarSettingsActivity.m147lambda$loadApps$10$comlocalg3homeTopBarSettingsActivity(android.content.Context, int, int):void");
    }

    /* renamed from: lambda$loadApps$9$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ void m148lambda$loadApps$9$comlocalg3homeTopBarSettingsActivity(int i, int i2, String str, List list) {
        if (!this.dead && i == this.appSequence && i2 == this.generation.get()) {
            this.appsLoading = false;
            if (this.resumed) {
                if (str != null) {
                    TextView textView = this.listState;
                    if (textView != null) {
                        textView.setText("读取失败，请刷新应用列表。");
                    }
                    note("应用列表读取未完成：" + str);
                    return;
                }
                this.apps.clear();
                this.apps.addAll(list);
                this.appsLoaded = true;
                filter();
            }
        }
    }

    private static String cleanLabel(CharSequence charSequence, String str) {
        String strTrim = charSequence == null ? "" : charSequence.toString().replaceAll("[\\p{Cntrl}]", " ").trim();
        if (!strTrim.isEmpty()) {
            str = strTrim;
        }
        return str.length() > 80 ? str.substring(0, 80) : str;
    }

    private final class AppsAdapter extends BaseAdapter {
        private AppsAdapter() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return TopBarSettingsActivity.this.filtered.size();
        }

        @Override // android.widget.Adapter
        public AppChoice getItem(int i) {
            return (AppChoice) TopBarSettingsActivity.this.filtered.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            AppRow appRow;
            View view2;
            if (view == null) {
                LinearLayout linearLayoutRow = Ui.row(TopBarSettingsActivity.this);
                linearLayoutRow.setPadding(Ui.s(TopBarSettingsActivity.this, 18.0f), Ui.s(TopBarSettingsActivity.this, 22.0f), Ui.s(TopBarSettingsActivity.this, 18.0f), Ui.s(TopBarSettingsActivity.this, 22.0f));
                linearLayoutRow.setMinimumHeight(Ui.s(TopBarSettingsActivity.this, 132.0f));
                appRow = new AppRow();
                appRow.icon = TopBarSettingsActivity.this.fixedIcon(null);
                linearLayoutRow.addView(appRow.icon, new LinearLayout.LayoutParams(Ui.s(TopBarSettingsActivity.this, 72.0f), Ui.s(TopBarSettingsActivity.this, 72.0f)));
                Ui.side(TopBarSettingsActivity.this, linearLayoutRow, 24);
                LinearLayout linearLayoutCol = Ui.col(TopBarSettingsActivity.this);
                appRow.label = Ui.title(TopBarSettingsActivity.this, "", 32);
                appRow.label.setMaxLines(2);
                appRow.label.setEllipsize(TextUtils.TruncateAt.END);
                linearLayoutCol.addView(appRow.label);
                Ui.gap(TopBarSettingsActivity.this, linearLayoutCol, 12);
                TopBarSettingsActivity topBarSettingsActivity = TopBarSettingsActivity.this;
                appRow.pkg = Ui.text(topBarSettingsActivity, "", 24, Ui.colors(topBarSettingsActivity).muted);
                appRow.pkg.setMaxLines(1);
                appRow.pkg.setEllipsize(TextUtils.TruncateAt.END);
                linearLayoutCol.addView(appRow.pkg);
                linearLayoutRow.addView(linearLayoutCol, new LinearLayout.LayoutParams(0, -2, 1.0f));
                linearLayoutRow.setTag(appRow);
                view2 = linearLayoutRow;
            } else {
                appRow = (AppRow) view.getTag();
                view2 = view;
            }
            AppChoice item = getItem(i);
            appRow.label.setText(item.label);
            appRow.pkg.setText(item.pkg);
            appRow.icon.setImageDrawable(item.icon == null ? new Ui.Symbol("apps", Ui.colors(TopBarSettingsActivity.this).muted) : item.icon);
            view2.setBackgroundColor(Ui.colors(TopBarSettingsActivity.this).card);
            return view2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void filter() {
        this.filtered.clear();
        for (AppChoice appChoice : this.apps) {
            if (matches(appChoice.label, appChoice.pkg, this.searchText)) {
                this.filtered.add(appChoice);
            }
        }
        AppsAdapter appsAdapter = this.adapter;
        if (appsAdapter != null) {
            appsAdapter.notifyDataSetChanged();
        }
        TextView textView = this.listState;
        if (textView != null) {
            textView.setText(!this.appsLoaded ? "正在读取可启动应用…" : this.filtered.isEmpty() ? "未找到匹配应用，可修改搜索或刷新列表。" : "找到 " + this.filtered.size() + " 个可启动入口");
        }
    }

    private static final class AppRow {
        ImageView icon;
        TextView label;
        TextView pkg;

        private AppRow() {
        }
    }

    private void showConfirm(String str, String str2, final Runnable runnable) {
        dismissConfirmation();
        Ui.PanelDialog panelDialogCreate = Ui.dialog(this).setTitle(str).setMessage(str2).setNegativeButton("取消", null).setPositiveButton("确认", new DialogInterface.OnClickListener() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m151lambda$showConfirm$11$comlocalg3homeTopBarSettingsActivity(runnable, dialogInterface, i);
            }
        }).create();
        this.confirmation = panelDialogCreate;
        panelDialogCreate.show();
    }

    /* renamed from: lambda$showConfirm$11$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ void m151lambda$showConfirm$11$comlocalg3homeTopBarSettingsActivity(Runnable runnable, DialogInterface dialogInterface, int i) {
        if (this.dead || this.busy) {
            return;
        }
        runnable.run();
    }

    private void confirmEnabled(final boolean z) {
        if (this.snapshot == null || this.busy) {
            return;
        }
        showConfirm(z ? "开启顶部栏自定义" : "关闭顶部栏自定义", z ? "将按已保存的选择接管顶部快捷入口。需先在 LSPosed 启用系统界面作用域；实际接入状态以本页回报为准。" : "将恢复原车图标和点击行为，已保存的六槽选择会保留。", new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m138lambda$confirmEnabled$13$comlocalg3homeTopBarSettingsActivity(z);
            }
        });
    }

    /* renamed from: lambda$confirmEnabled$12$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ boolean m137lambda$confirmEnabled$12$comlocalg3homeTopBarSettingsActivity(boolean z) {
        return TopBarStore.setEnabled(getApplicationContext(), z);
    }

    /* renamed from: lambda$confirmEnabled$13$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ void m138lambda$confirmEnabled$13$comlocalg3homeTopBarSettingsActivity(final boolean z) {
        write(new Write() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda30
            @Override // com.local.p5home.TopBarSettingsActivity.Write
            public final boolean run() {
                return this.f$0.m137lambda$confirmEnabled$12$comlocalg3homeTopBarSettingsActivity(z);
            }
        }, z ? "已保存开启开关，请查看实际接入状态。" : "已保存关闭开关，恢复情况以系统界面回报为准。", null);
    }

    private void confirmChoice(final int i, final AppChoice appChoice) {
        if (this.busy || i < 0 || i >= 6) {
            return;
        }
        showConfirm("设置槽位 " + (i + 1) + " · " + slotName(i), "替换为“" + appChoice.label + "”？\n" + appChoice.pkg + "\n\n只保存此槽选择，不会自动开启总开关。", new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m136lambda$confirmChoice$16$comlocalg3homeTopBarSettingsActivity(i, appChoice);
            }
        });
    }

    /* renamed from: lambda$confirmChoice$14$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ boolean m134lambda$confirmChoice$14$comlocalg3homeTopBarSettingsActivity(int i, AppChoice appChoice) {
        return TopBarStore.setSlot(getApplicationContext(), i, appChoice.pkg, appChoice.activity, appChoice.label);
    }

    /* renamed from: lambda$confirmChoice$15$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ void m135lambda$confirmChoice$15$comlocalg3homeTopBarSettingsActivity() {
        navigate(-1);
    }

    /* renamed from: lambda$confirmChoice$16$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ void m136lambda$confirmChoice$16$comlocalg3homeTopBarSettingsActivity(final int i, final AppChoice appChoice) {
        write(new Write() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda15
            @Override // com.local.p5home.TopBarSettingsActivity.Write
            public final boolean run() {
                return this.f$0.m134lambda$confirmChoice$14$comlocalg3homeTopBarSettingsActivity(i, appChoice);
            }
        }, "应用选择已保存。", new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m135lambda$confirmChoice$15$comlocalg3homeTopBarSettingsActivity();
            }
        });
    }

    private void confirmReset(final int i) {
        if (this.busy || i < 0 || i >= 6) {
            return;
        }
        showConfirm("恢复此槽原车默认", "将清除此槽的自定义应用，保留其他五个槽位和总开关。", new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m143lambda$confirmReset$19$comlocalg3homeTopBarSettingsActivity(i);
            }
        });
    }

    /* renamed from: lambda$confirmReset$17$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ boolean m141lambda$confirmReset$17$comlocalg3homeTopBarSettingsActivity(int i) {
        return TopBarStore.resetSlot(getApplicationContext(), i);
    }

    /* renamed from: lambda$confirmReset$18$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ void m142lambda$confirmReset$18$comlocalg3homeTopBarSettingsActivity() {
        navigate(-1);
    }

    /* renamed from: lambda$confirmReset$19$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ void m143lambda$confirmReset$19$comlocalg3homeTopBarSettingsActivity(final int i) {
        write(new Write() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda19
            @Override // com.local.p5home.TopBarSettingsActivity.Write
            public final boolean run() {
                return this.f$0.m141lambda$confirmReset$17$comlocalg3homeTopBarSettingsActivity(i);
            }
        }, "已保存槽位 " + (i + 1) + " 的原车默认配置。", new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m142lambda$confirmReset$18$comlocalg3homeTopBarSettingsActivity();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void confirmResetAll() {
        if (this.busy) {
            return;
        }
        showConfirm("恢复全部原车默认", "将清空六个自定义槽位并关闭总开关。此操作不会删除应用。", new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m145x28bd72e();
            }
        });
    }

    /* renamed from: lambda$confirmResetAll$20$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ boolean m144x75ebac2d() {
        return TopBarStore.resetAll(getApplicationContext());
    }

    /* renamed from: lambda$confirmResetAll$21$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ void m145x28bd72e() {
        write(new Write() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda23
            @Override // com.local.p5home.TopBarSettingsActivity.Write
            public final boolean run() {
                return this.f$0.m144x75ebac2d();
            }
        }, "已保存全部原车默认配置，并关闭总开关。实际应用情况请查看状态。", null);
    }

    private boolean canImport() {
        TopBarStore.Snapshot snapshot = this.snapshot;
        if (snapshot == null || !snapshot.valid || this.snapshot.enabled || this.snapshot.migrationAttempted) {
            return false;
        }
        for (int i = 0; i < 6; i++) {
            TopBarSlot topBarSlotSlot = slot(this.snapshot, i);
            if (topBarSlotSlot != null && topBarSlotSlot.isCustom()) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void confirmImport() {
        if (this.busy) {
            return;
        }
        if (canImport()) {
            showConfirm("导入旧版应用选择", "仅尝试读取一次旧版顶部栏的已选应用。导入不会自动开启总开关；需要你之后明确开启。", new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda24
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m140lambda$confirmImport$23$comlocalg3homeTopBarSettingsActivity();
                }
            });
        } else {
            Ui.show(this, "暂不能导入", "导入只在总开关关闭、六槽都为原车默认且尚未尝试时可用，避免覆盖现有选择。");
        }
    }

    /* renamed from: lambda$confirmImport$22$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ boolean m139lambda$confirmImport$22$comlocalg3homeTopBarSettingsActivity() {
        return TopBarStore.migrateLegacyOnce(getApplicationContext());
    }

    /* renamed from: lambda$confirmImport$23$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ void m140lambda$confirmImport$23$comlocalg3homeTopBarSettingsActivity() {
        write(new Write() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda17
            @Override // com.local.p5home.TopBarSettingsActivity.Write
            public final boolean run() {
                return this.f$0.m139lambda$confirmImport$22$comlocalg3homeTopBarSettingsActivity();
            }
        }, "旧版导入已完成。请核对六槽选择，按需开启总开关。", "未能导入旧版选择。旧版可能未安装、没有可导入项或已尝试导入。总开关不会自动开启。", null);
    }

    private void write(Write write, String str, Runnable runnable) {
        write(write, str, "保存未完成。应用可能已卸载或入口已变更，或存储未完成写入；请刷新状态后重试。", runnable);
    }

    private void write(final Write write, final String str, final String str2, final Runnable runnable) {
        if (this.busy || this.dead) {
            return;
        }
        this.busy = true;
        updateBusy();
        note("正在保存顶部栏配置…");
        final int i = this.generation.get();
        this.worker.execute(new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m153lambda$write$25$comlocalg3homeTopBarSettingsActivity(write, i, str, runnable, str2);
            }
        });
    }

    /* renamed from: lambda$write$24$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ void m152lambda$write$24$comlocalg3homeTopBarSettingsActivity(int i, boolean z, String str, Runnable runnable, String str2, String str3) {
        if (this.dead || isDestroyed()) {
            return;
        }
        this.busy = false;
        updateBusy();
        if (!live(i)) {
            this.message = "";
            if (this.resumed) {
                note("");
                refreshState();
                return;
            }
            return;
        }
        if (z) {
            note(str);
            if (runnable != null) {
                runnable.run();
                return;
            }
        } else {
            if (str2 == null) {
                str2 = str3;
            }
            note(str2);
            Ui.show(this, "顶部栏操作未完成", str2);
        }
        refreshState();
    }

    /* renamed from: lambda$write$25$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ void m153lambda$write$25$comlocalg3homeTopBarSettingsActivity(Write write, final int i, final String str, final Runnable runnable, final String str2) {
        String strError;
        boolean zRun;
        try {
            zRun = write.run();
            strError = null;
        } catch (Exception e) {
            strError = Ui.error(e);
            zRun = false;
        }
        final boolean z = zRun;
        final String str3 = strError;
        this.main.post(new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m152lambda$write$24$comlocalg3homeTopBarSettingsActivity(i, z, str, runnable, str3, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void help() {
        LinearLayout linearLayoutCol = Ui.col(this);
        linearLayoutCol.addView(Ui.text(this, "在 LSPosed 为 G3轻桌面启用“系统界面 (com.android.systemui)”作用域，系统界面重新加载后检查本页状态。\n\n总开关只保存配置，不会自动完成挂载或重启系统界面。关闭时保留应用选择。", 29, Ui.colors(this).text));
        Ui.gap(this, linearLayoutCol, 24);
        linearLayoutCol.addView(Ui.button(this, "打开 LSPosed 管理器", false, new Runnable() { // from class: com.local.p5home.TopBarSettingsActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m146lambda$help$26$comlocalg3homeTopBarSettingsActivity();
            }
        }), new LinearLayout.LayoutParams(-1, -2));
        Ui.dialog(this).setTitle("顶部栏接入说明").setView(linearLayoutCol).setPositiveButton("知道了", null).show();
    }

    /* renamed from: lambda$help$26$com-local-g3home-TopBarSettingsActivity, reason: not valid java name */
    /* synthetic */ void m146lambda$help$26$comlocalg3homeTopBarSettingsActivity() {
        try {
            DeviceActions.openLsposed(this);
        } catch (Exception e) {
            Ui.show(this, "LSPosed 未打开", Ui.error(e));
        }
    }
}
