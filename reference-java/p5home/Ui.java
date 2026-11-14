package com.local.p5home;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Space;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class Ui {
    public static int AMBER = 0;
    public static int BG = 0;
    public static int BLUE = 0;
    public static int CARD = 0;
    public static final int DARK = 2;
    private static final Palette DAY;
    public static int GREEN = 0;
    public static final int LIGHT = 1;
    public static int MUTED = 0;
    private static final Palette NIGHT;
    public static final int SYSTEM = 0;
    public static int TEXT = 0;
    public static final String THEME_ACTION = "com.local.p5home.APPEARANCE_CHANGED";

    public static final class Palette {
        public final int accent;
        public final int accentText;
        public final int bg;
        public final int card;
        public final boolean dark;
        public final int line;
        public final int muted;
        public final int raised;
        public final int text;
        public final int warning;

        Palette(boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            this.dark = z;
            this.bg = i;
            this.card = i2;
            this.raised = i3;
            this.text = i4;
            this.muted = i5;
            this.line = i6;
            this.accent = i7;
            this.accentText = i8;
            this.warning = i9;
        }
    }

    static {
        Palette palette = new Palette(true, -14867411, -13683133, -13287861, -855051, -4603183, -11510416, -11494657, -15788768, -13431);
        NIGHT = palette;
        DAY = new Palette(false, -1182985, -1, -1643532, -15788768, -10986130, -3090977, -16749586, -1, -6987758);
        BG = palette.bg;
        CARD = palette.card;
        TEXT = palette.text;
        MUTED = palette.muted;
        BLUE = palette.accent;
        GREEN = palette.accent;
        AMBER = palette.warning;
    }

    private static SharedPreferences prefs(Context context) {
        return context.createDeviceProtectedStorageContext().getSharedPreferences("g3_ui_appearance", 0);
    }

    public static int themeMode(Context context) {
        int i = prefs(context).getInt("appearance_mode", 0);
        if (i < 0 || i > 2) {
            return 0;
        }
        return i;
    }

    public static boolean useDark(int i, int i2) {
        return i == 2 || (i == 0 && (i2 & 48) == 32);
    }

    public static Palette colors(Context context) {
        return useDark(themeMode(context), context.getResources().getConfiguration().uiMode) ? NIGHT : DAY;
    }

    public static int themeSignature(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) | (themeMode(context) << 8);
    }

    public static String themeLabel(Context context) {
        int iThemeMode = themeMode(context);
        return iThemeMode == 1 ? "浅色" : iThemeMode == 2 ? "深色" : "跟随系统";
    }

    public static void setThemeMode(Context context, int i) {
        if (i < 0 || i > 2) {
            throw new IllegalArgumentException("未知外观模式");
        }
        prefs(context).edit().putInt("appearance_mode", i).apply();
        context.sendBroadcast(new Intent(THEME_ACTION).setPackage(context.getPackageName()));
    }

    public static void install(Activity activity) {
        Palette paletteColors = colors(activity);
        BG = paletteColors.bg;
        CARD = paletteColors.card;
        TEXT = paletteColors.text;
        MUTED = paletteColors.muted;
        int i = paletteColors.accent;
        GREEN = i;
        BLUE = i;
        AMBER = paletteColors.warning;
        activity.getWindow().setBackgroundDrawable(new ColorDrawable(paletteColors.bg));
        activity.getWindow().getDecorView().setBackgroundColor(paletteColors.bg);
    }

    public static int dp(Context context, float f) {
        return Math.round(f * context.getResources().getDisplayMetrics().density);
    }

    public static int s(Context context, float f) {
        return dp(context, f * scale(context));
    }

    public static float scale(Context context) {
        return Math.max(0.72f, Math.min(1.0f, context.getResources().getConfiguration().screenWidthDp / 1080.0f));
    }

    public static LinearLayout col(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        return linearLayout;
    }

    public static LinearLayout row(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setGravity(16);
        return linearLayout;
    }

    public static GradientDrawable bg(Context context, int i, int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(s(context, i2));
        return gradientDrawable;
    }

    public static GradientDrawable outline(Context context, int i, int i2) {
        GradientDrawable gradientDrawableBg = bg(context, i, i2);
        gradientDrawableBg.setStroke(Math.max(1, s(context, 1.0f)), colors(context).line);
        return gradientDrawableBg;
    }

    public static TextView text(Context context, String str, int i, int i2) {
        TextView textView = new TextView(context);
        textView.setText(str);
        textView.setTextSize(i * scale(context));
        textView.setTextColor(i2);
        textView.setFontFeatureSettings("tnum");
        textView.setLineSpacing(s(context, 5.0f), 1.0f);
        textView.setIncludeFontPadding(false);
        return textView;
    }

    public static TextView title(Context context, String str, int i) {
        TextView textViewText = text(context, str, i, colors(context).text);
        textViewText.setTypeface(Typeface.create("sans-serif", 1));
        return textViewText;
    }

    public static void gap(Context context, LinearLayout linearLayout, int i) {
        linearLayout.addView(new Space(context), new LinearLayout.LayoutParams(1, s(context, i)));
    }

    public static void line(Context context, LinearLayout linearLayout) {
        View view = new View(context);
        view.setBackgroundColor(colors(context).line);
        linearLayout.addView(view, new LinearLayout.LayoutParams(-1, Math.max(1, s(context, 1.0f))));
    }

    public static void side(Context context, LinearLayout linearLayout, int i) {
        linearLayout.addView(new Space(context), new LinearLayout.LayoutParams(s(context, i), 1));
    }

    public static LinearLayout panel(Context context) {
        LinearLayout linearLayoutCol = col(context);
        linearLayoutCol.setPadding(s(context, 30.0f), s(context, 28.0f), s(context, 30.0f), s(context, 28.0f));
        linearLayoutCol.setBackground(outline(context, colors(context).card, 28));
        return linearLayoutCol;
    }

    public static LinearLayout card(Context context, LinearLayout linearLayout, String str, String str2) {
        LinearLayout linearLayoutPanel = panel(context);
        if (str != null && !str.isEmpty()) {
            linearLayoutPanel.addView(title(context, str, 34));
            gap(context, linearLayoutPanel, 16);
        }
        if (str2 != null && !str2.isEmpty()) {
            linearLayoutPanel.addView(text(context, str2, 27, colors(context).muted));
            gap(context, linearLayoutPanel, 20);
        }
        linearLayout.addView(linearLayoutPanel, new LinearLayout.LayoutParams(-1, -2));
        gap(context, linearLayout, 24);
        return linearLayoutPanel;
    }

    public static Button button(Context context, String str, boolean z, final Runnable runnable) {
        Palette paletteColors = colors(context);
        Button button = new Button(context);
        button.setText(str);
        button.setTextColor(z ? paletteColors.accentText : paletteColors.text);
        button.setTextSize(scale(context) * 32.0f);
        button.setTypeface(Typeface.create("sans-serif-medium", 0));
        button.setAllCaps(false);
        button.setMinHeight(s(context, 96.0f));
        button.setMinimumHeight(s(context, 96.0f));
        button.setMinWidth(0);
        button.setMinimumWidth(0);
        button.setPadding(s(context, 24.0f), s(context, 18.0f), s(context, 24.0f), s(context, 18.0f));
        button.setBackground(new RippleDrawable(ColorStateList.valueOf(paletteColors.dark ? 860920575 : 574331391), outline(context, z ? paletteColors.accent : paletteColors.raised, 22), null));
        button.setOnClickListener(new View.OnClickListener() { // from class: com.local.p5home.Ui$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable.run();
            }
        });
        return button;
    }

    public static void buttons(Context context, LinearLayout linearLayout, Button... buttonArr) {
        boolean z = context.getResources().getConfiguration().screenWidthDp < 600;
        LinearLayout linearLayoutCol = z ? col(context) : row(context);
        int i = 0;
        while (true) {
            if (i >= buttonArr.length) {
                linearLayout.addView(linearLayoutCol, new LinearLayout.LayoutParams(-1, -2));
                gap(context, linearLayout, 16);
                return;
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(z ? -1 : 0, -2, z ? 0.0f : 1.0f);
            if (i > 0) {
                if (z) {
                    layoutParams.topMargin = s(context, 14.0f);
                } else {
                    layoutParams.leftMargin = s(context, 18.0f);
                }
            }
            linearLayoutCol.addView(buttonArr[i], layoutParams);
            i++;
        }
    }

    public static ImageView icon(Context context, String str, int i, int i2) {
        ImageView imageView = new ImageView(context);
        imageView.setImageDrawable(new Symbol(str, i));
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        float f = i2;
        imageView.setLayoutParams(new LinearLayout.LayoutParams(s(context, f), s(context, f)));
        return imageView;
    }

    public static ImageView iconButton(Context context, String str, String str2, final Runnable runnable) {
        ImageView imageViewIcon = icon(context, str, colors(context).text, 88);
        imageViewIcon.setPadding(s(context, 23.0f), s(context, 23.0f), s(context, 23.0f), s(context, 23.0f));
        imageViewIcon.setBackground(bg(context, colors(context).raised, 44));
        imageViewIcon.setContentDescription(str2);
        imageViewIcon.setFocusable(true);
        imageViewIcon.setClickable(true);
        imageViewIcon.setOnClickListener(new View.OnClickListener() { // from class: com.local.p5home.Ui$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable.run();
            }
        });
        return imageViewIcon;
    }

    public static EditText input(Context context, String str, String str2, boolean z) {
        Palette paletteColors = colors(context);
        EditText editText = new EditText(context);
        editText.setTextColor(paletteColors.text);
        editText.setTextSize(scale(context) * 30.0f);
        editText.setHintTextColor(paletteColors.muted);
        editText.setHint(str);
        if (str2 == null) {
            str2 = "";
        }
        editText.setText(str2);
        editText.setSingleLine(!z);
        editText.setPadding(s(context, 22.0f), s(context, 22.0f), s(context, 22.0f), s(context, 22.0f));
        editText.setMinHeight(s(context, 96.0f));
        editText.setBackground(outline(context, paletteColors.raised, 18));
        return editText;
    }

    public static void error(TextView textView, String str) {
        textView.setText(str == null ? "" : str);
        textView.setVisibility((str == null || str.isEmpty()) ? 8 : 0);
    }

    public static void field(Context context, LinearLayout linearLayout, String str, EditText editText) {
        linearLayout.addView(text(context, str, 27, colors(context).muted));
        gap(context, linearLayout, 12);
        linearLayout.addView(editText, new LinearLayout.LayoutParams(-1, -2));
        gap(context, linearLayout, 24);
    }

    public static final class PanelBuilder {
        View content;
        final Context context;
        String icon;
        CharSequence message;
        CharSequence negative;
        DialogInterface.OnClickListener no;
        CharSequence positive;
        CharSequence title;
        DialogInterface.OnClickListener yes;

        PanelBuilder(Context context) {
            this.context = context;
        }

        public PanelDialog create() {
            return new PanelDialog(this);
        }

        public PanelBuilder setIcon(String str) {
            this.icon = str;
            return this;
        }

        public PanelBuilder setMessage(CharSequence charSequence) {
            this.message = charSequence;
            return this;
        }

        public PanelBuilder setNegativeButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.negative = charSequence;
            this.no = onClickListener;
            return this;
        }

        public PanelBuilder setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.positive = charSequence;
            this.yes = onClickListener;
            return this;
        }

        public PanelBuilder setTitle(CharSequence charSequence) {
            this.title = charSequence;
            return this;
        }

        public PanelBuilder setView(View view) {
            this.content = view;
            return this;
        }

        public PanelDialog show() {
            PanelDialog panelDialogCreate = create();
            panelDialogCreate.show();
            return panelDialogCreate;
        }
    }

    public static PanelBuilder dialog(Context context) {
        return new PanelBuilder(context);
    }

    public static final class PanelDialog extends Dialog {
        private Button negative;
        private Button positive;
        private final LinearLayout surface;

        PanelDialog(final PanelBuilder panelBuilder) {
            super(panelBuilder.context, R.style.PanelDialog);
            requestWindowFeature(1);
            Context context = panelBuilder.context;
            Palette paletteColors = Ui.colors(context);
            LinearLayout linearLayoutCol = Ui.col(context);
            this.surface = linearLayoutCol;
            linearLayoutCol.setPadding(Ui.s(context, 42.0f), Ui.s(context, 40.0f), Ui.s(context, 42.0f), Ui.s(context, 36.0f));
            linearLayoutCol.setBackgroundColor(paletteColors.card);
            linearLayoutCol.setAlpha(1.0f);
            if (panelBuilder.icon != null) {
                LinearLayout linearLayoutRow = Ui.row(context);
                linearLayoutRow.setGravity(17);
                ImageView imageViewIcon = Ui.icon(context, panelBuilder.icon, paletteColors.accent, 92);
                imageViewIcon.setPadding(Ui.s(context, 18.0f), Ui.s(context, 18.0f), Ui.s(context, 18.0f), Ui.s(context, 18.0f));
                imageViewIcon.setBackground(Ui.bg(context, paletteColors.raised, 48));
                linearLayoutRow.addView(imageViewIcon);
                linearLayoutCol.addView(linearLayoutRow);
                Ui.gap(context, linearLayoutCol, 28);
            }
            if (panelBuilder.title != null) {
                TextView textViewTitle = Ui.title(context, panelBuilder.title.toString(), 40);
                textViewTitle.setGravity(17);
                linearLayoutCol.addView(textViewTitle, new LinearLayout.LayoutParams(-1, -2));
                Ui.gap(context, linearLayoutCol, 24);
            }
            LinearLayout linearLayoutCol2 = Ui.col(context);
            linearLayoutCol2.setBackgroundColor(paletteColors.card);
            if (panelBuilder.message != null) {
                TextView textViewText = Ui.text(context, panelBuilder.message.toString(), 30, paletteColors.text);
                textViewText.setTextIsSelectable(true);
                linearLayoutCol2.addView(textViewText, new LinearLayout.LayoutParams(-1, -2));
                if (panelBuilder.content != null) {
                    Ui.gap(context, linearLayoutCol2, 22);
                }
            }
            if (panelBuilder.content != null) {
                linearLayoutCol2.addView(panelBuilder.content, new LinearLayout.LayoutParams(-1, -2));
            }
            BoundedScroll boundedScroll = new BoundedScroll(context);
            boundedScroll.setBackgroundColor(paletteColors.card);
            boundedScroll.addView(linearLayoutCol2);
            linearLayoutCol.addView(boundedScroll, new LinearLayout.LayoutParams(-1, -2));
            if (panelBuilder.positive != null || panelBuilder.negative != null) {
                Ui.gap(context, linearLayoutCol, 32);
                LinearLayout linearLayoutRow2 = Ui.row(context);
                if (panelBuilder.negative != null) {
                    Button button = Ui.button(context, panelBuilder.negative.toString(), false, new Runnable() { // from class: com.local.p5home.Ui$PanelDialog$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m170lambda$new$0$comlocalg3homeUi$PanelDialog(panelBuilder);
                        }
                    });
                    this.negative = button;
                    linearLayoutRow2.addView(button, new LinearLayout.LayoutParams(0, -2, 1.0f));
                }
                if (panelBuilder.positive != null) {
                    this.positive = Ui.button(context, panelBuilder.positive.toString(), true, new Runnable() { // from class: com.local.p5home.Ui$PanelDialog$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m171lambda$new$1$comlocalg3homeUi$PanelDialog(panelBuilder);
                        }
                    });
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
                    if (this.negative != null) {
                        layoutParams.leftMargin = Ui.s(context, 20.0f);
                    }
                    linearLayoutRow2.addView(this.positive, layoutParams);
                }
                linearLayoutCol.addView(linearLayoutRow2, new LinearLayout.LayoutParams(-1, -2));
            }
            setContentView(linearLayoutCol);
            setCanceledOnTouchOutside(false);
            opaque();
        }

        /* renamed from: lambda$new$0$com-local-g3home-Ui$PanelDialog, reason: not valid java name */
        /* synthetic */ void m170lambda$new$0$comlocalg3homeUi$PanelDialog(PanelBuilder panelBuilder) {
            if (panelBuilder.no != null) {
                panelBuilder.no.onClick(this, -2);
            }
            dismiss();
        }

        /* renamed from: lambda$new$1$com-local-g3home-Ui$PanelDialog, reason: not valid java name */
        /* synthetic */ void m171lambda$new$1$comlocalg3homeUi$PanelDialog(PanelBuilder panelBuilder) {
            if (panelBuilder.yes != null) {
                panelBuilder.yes.onClick(this, -1);
            }
            dismiss();
        }

        public Button getButton(int i) {
            return i == -1 ? this.positive : this.negative;
        }

        private void opaque() {
            Window window = getWindow();
            if (window == null) {
                return;
            }
            Palette paletteColors = Ui.colors(getContext());
            window.setBackgroundDrawable(new ColorDrawable(paletteColors.card));
            window.setFormat(-1);
            window.addFlags(2);
            window.setDimAmount(0.72f);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.alpha = 1.0f;
            attributes.gravity = 17;
            window.setAttributes(attributes);
            window.getDecorView().setBackgroundColor(paletteColors.card);
            this.surface.setBackgroundColor(paletteColors.card);
            this.surface.setAlpha(1.0f);
            window.setSoftInputMode(16);
            window.setLayout(Math.min(Ui.s(getContext(), 920.0f), getContext().getResources().getDisplayMetrics().widthPixels - Ui.s(getContext(), 64.0f)), -2);
        }

        /* renamed from: lambda$show$2$com-local-g3home-Ui$PanelDialog, reason: not valid java name */
        /* synthetic */ void m172lambda$show$2$comlocalg3homeUi$PanelDialog() {
            if (isShowing()) {
                opaque();
            }
        }

        @Override // android.app.Dialog
        protected void onStart() {
            super.onStart();
            opaque();
        }

        @Override // android.app.Dialog
        public void show() {
            super.show();
            opaque();
            this.surface.post(new Runnable() { // from class: com.local.p5home.Ui$PanelDialog$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m172lambda$show$2$comlocalg3homeUi$PanelDialog();
                }
            });
        }
    }

    private static final class BoundedScroll extends ScrollView {
        BoundedScroll(Context context) {
            super(context);
        }

        @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int height;
            int i3 = getResources().getDisplayMetrics().heightPixels;
            Context context = getContext();
            if ((context instanceof Activity) && (height = ((Activity) context).getWindow().getDecorView().getHeight()) > 0) {
                i3 = height;
            }
            int iMax = Math.max(Ui.s(context, 180.0f), Math.min(Ui.s(context, 820.0f), i3 - Ui.s(context, 440.0f)));
            if (View.MeasureSpec.getMode(i2) != 0) {
                iMax = Math.min(iMax, View.MeasureSpec.getSize(i2));
            }
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(iMax, Integer.MIN_VALUE));
        }
    }

    public static final class Toggle extends CompoundButton {
        private final Paint paint;

        public Toggle(Context context) {
            super(context);
            this.paint = new Paint(1);
            setButtonDrawable((Drawable) null);
            setBackgroundColor(0);
            setFocusable(true);
            setClickable(true);
        }

        @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
        protected void drawableStateChanged() {
            super.drawableStateChanged();
            invalidate();
        }

        @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
        protected void onDraw(Canvas canvas) {
            Palette paletteColors = Ui.colors(getContext());
            float width = getWidth() / 2.0f;
            float height = getHeight() / 2.0f;
            float fS = Ui.s(getContext(), 100.0f);
            float fS2 = Ui.s(getContext(), 54.0f);
            this.paint.setColor(isChecked() ? paletteColors.accent : paletteColors.line);
            this.paint.setAlpha(isEnabled() ? 255 : 110);
            float f = fS / 2.0f;
            float f2 = fS2 / 2.0f;
            canvas.drawRoundRect(width - f, height - f2, width + f, height + f2, f2, f2, this.paint);
            this.paint.setColor(isChecked() ? paletteColors.accentText : paletteColors.card);
            this.paint.setAlpha(isEnabled() ? 255 : 150);
            canvas.drawCircle(width + (((isChecked() ? 1 : -1) * (fS - fS2)) / 2.0f), height, Ui.s(getContext(), 21.0f), this.paint);
        }

        @Override // android.widget.TextView, android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(Ui.s(getContext(), 126.0f), Ui.s(getContext(), 92.0f));
        }

        @Override // android.widget.CompoundButton, android.widget.Checkable
        public void setChecked(boolean z) {
            super.setChecked(z);
            invalidate();
        }
    }

    static int decorativeSize(int i, int i2) {
        if (i == 1073741824) {
            return i2;
        }
        return 0;
    }

    public static final class MapArt extends View {
        final Paint paint;

        public MapArt(Context context) {
            super(context);
            this.paint = new Paint(1);
            setImportantForAccessibility(2);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            Palette paletteColors = Ui.colors(getContext());
            canvas.save();
            canvas.scale(getWidth() / 1000.0f, getHeight() / 560.0f);
            this.paint.setStyle(Paint.Style.STROKE);
            this.paint.setStrokeWidth(3.0f);
            this.paint.setColor(paletteColors.dark ? -12892069 : -3089432);
            for (int i = 0; i < 8; i++) {
                Path path = new Path();
                path.moveTo((i * 110) + 300, -50.0f);
                path.cubicTo((i * 105) + 220, 180.0f, (i * 65) + 500, 300.0f, (i * 95) + 350, 650.0f);
                canvas.drawPath(path, this.paint);
            }
            for (int i2 = 0; i2 < 7; i2++) {
                Path path2 = new Path();
                int i3 = i2 * 105;
                path2.moveTo(260.0f, i3 - 60);
                path2.cubicTo(580.0f, i2 * 65, 680.0f, i3 + 100, 1100.0f, r5 + 140);
                canvas.drawPath(path2, this.paint);
            }
            Path path3 = new Path();
            path3.moveTo(800.0f, -30.0f);
            path3.cubicTo(650.0f, 120.0f, 990.0f, 200.0f, 660.0f, 590.0f);
            this.paint.setColor(paletteColors.dark ? -13283725 : -4139281);
            this.paint.setStrokeWidth(30.0f);
            canvas.drawPath(path3, this.paint);
            this.paint.setColor(paletteColors.dark ? -11494657 : -9724973);
            this.paint.setStrokeWidth(9.0f);
            canvas.drawPath(path3, this.paint);
            this.paint.setStyle(Paint.Style.FILL);
            this.paint.setShader(new LinearGradient(0.0f, 0.0f, 1000.0f, 0.0f, new int[]{paletteColors.card, paletteColors.card & 16777215}, new float[]{0.28f, 1.0f}, Shader.TileMode.CLAMP));
            canvas.drawRect(0.0f, 0.0f, 1000.0f, 560.0f, this.paint);
            this.paint.setShader(null);
            canvas.restore();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(Ui.decorativeSize(View.MeasureSpec.getMode(i), View.MeasureSpec.getSize(i)), Ui.decorativeSize(View.MeasureSpec.getMode(i2), View.MeasureSpec.getSize(i2)));
        }
    }

    public static final class Symbol extends Drawable {
        private final int color;
        private final String kind;
        private final Paint p = new Paint(1);

        public Symbol(String str, int i) {
            this.kind = str;
            this.color = i;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00d6  */
        @Override // android.graphics.drawable.Drawable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void draw(android.graphics.Canvas r17) {
            /*
                Method dump skipped, instructions count: 912
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.Ui.Symbol.draw(android.graphics.Canvas):void");
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.p.setAlpha(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.p.setColorFilter(colorFilter);
        }
    }

    public static void show(Activity activity, String str, String str2) {
        if (activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        PanelBuilder title = dialog(activity).setTitle(str);
        if (str2 == null) {
            str2 = "未返回详细原因";
        }
        title.setMessage(str2).setPositiveButton("知道了", null).show();
    }

    public static String error(Throwable th) {
        while (th.getCause() != null && th.getCause() != th) {
            th = th.getCause();
        }
        String message = th.getMessage();
        return (message == null || message.isEmpty()) ? th.getClass().getSimpleName() : message;
    }

    public static void launch(Activity activity, Intent intent) {
        ActivityOptions activityOptionsMakeBasic = ActivityOptions.makeBasic();
        activityOptionsMakeBasic.setLaunchDisplayId(0);
        activity.startActivity(intent, activityOptionsMakeBasic.toBundle());
    }

    public static String limited(String str, int i) {
        return str == null ? "" : str.length() <= i ? str : str.substring(0, i) + "…";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String requestLabel(java.lang.String r2) {
        /*
            if (r2 == 0) goto Lc3
            boolean r0 = r2.isEmpty()
            if (r0 == 0) goto La
            goto Lc3
        La:
            java.util.Locale r0 = java.util.Locale.ROOT
            java.lang.String r0 = r2.toUpperCase(r0)
            int r1 = r0.hashCode()
            switch(r1) {
                case -2129972798: goto L99;
                case -2026200673: goto L8f;
                case -1895367309: goto L85;
                case -1221416593: goto L7a;
                case -1149187101: goto L70;
                case -727447911: goto L65;
                case -704463376: goto L5b;
                case -203471739: goto L50;
                case 2242516: goto L46;
                case 66247144: goto L3b;
                case 522212083: goto L30;
                case 1939854025: goto L25;
                case 2066319421: goto L19;
                default: goto L17;
            }
        L17:
            goto La3
        L19:
            java.lang.String r1 = "FAILED"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L17
            r0 = 11
            goto La4
        L25:
            java.lang.String r1 = "ASKING"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L17
            r0 = 4
            goto La4
        L30:
            java.lang.String r1 = "REQUESTING"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L17
            r0 = 2
            goto La4
        L3b:
            java.lang.String r1 = "ERROR"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L17
            r0 = 12
            goto La4
        L46:
            java.lang.String r1 = "IDLE"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L17
            r0 = 0
            goto La4
        L50:
            java.lang.String r1 = "TTS_DISPATCHED"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L17
            r0 = 9
            goto La4
        L5b:
            java.lang.String r1 = "TESTING"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L17
            r0 = 5
            goto La4
        L65:
            java.lang.String r1 = "DISPATCHED"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L17
            r0 = 10
            goto La4
        L70:
            java.lang.String r1 = "SUCCESS"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L17
            r0 = 6
            goto La4
        L7a:
            java.lang.String r1 = "GENERATED"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L17
            r0 = 8
            goto La4
        L85:
            java.lang.String r1 = "QUEUED"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L17
            r0 = 1
            goto La4
        L8f:
            java.lang.String r1 = "RUNNING"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L17
            r0 = 3
            goto La4
        L99:
            java.lang.String r1 = "ANSWER_READY"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L17
            r0 = 7
            goto La4
        La3:
            r0 = -1
        La4:
            switch(r0) {
                case 0: goto Lc0;
                case 1: goto Lbd;
                case 2: goto Lba;
                case 3: goto Lba;
                case 4: goto Lba;
                case 5: goto Lb7;
                case 6: goto Lb4;
                case 7: goto Lb4;
                case 8: goto Lb4;
                case 9: goto Lb1;
                case 10: goto Lb1;
                case 11: goto Lae;
                case 12: goto Lae;
                default: goto La7;
            }
        La7:
            r0 = 100
            java.lang.String r2 = limited(r2, r0)
            return r2
        Lae:
            java.lang.String r2 = "请求未完成"
            return r2
        Lb1:
            java.lang.String r2 = "已交给原车语音引擎"
            return r2
        Lb4:
            java.lang.String r2 = "接口已返回；播放状态以实际回执为准"
            return r2
        Lb7:
            java.lang.String r2 = "正在测试连接"
            return r2
        Lba:
            java.lang.String r2 = "正在等待接口返回"
            return r2
        Lbd:
            java.lang.String r2 = "请求已排队"
            return r2
        Lc0:
            java.lang.String r2 = "等待请求"
            return r2
        Lc3:
            java.lang.String r2 = "暂无请求"
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.Ui.requestLabel(java.lang.String):java.lang.String");
    }

    private Ui() {
    }

    public static Bundle bridge(Context context) {
        try {
            Bundle bundleStatus = BridgeStore.status(context);
            return bundleStatus == null ? new Bundle() : bundleStatus;
        } catch (RuntimeException e) {
            Bundle bundle = new Bundle();
            bundle.putString("lastError", "状态读取未完成：" + error(e));
            return bundle;
        }
    }
}
