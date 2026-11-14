package com.local.p5home;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;

/* loaded from: classes.dex */
final class TopBarBinding {
    Drawable applied;
    final int bottom;
    final View.OnClickListener click;
    final boolean clickable;
    final View container;
    final CharSequence description;
    Drawable drawable;
    final ImageView icon;
    final int index;
    boolean installed;
    final int left;
    final View.OnLongClickListener longClick;
    final boolean longClickable;
    final int right;
    final ImageView.ScaleType scale;
    final int top;

    TopBarBinding(int i, View view, ImageView imageView, View.OnClickListener onClickListener, View.OnLongClickListener onLongClickListener) {
        this.index = i;
        this.container = view;
        this.icon = imageView;
        this.click = onClickListener;
        this.longClick = onLongClickListener;
        this.clickable = view.isClickable();
        this.longClickable = view.isLongClickable();
        this.description = view.getContentDescription();
        this.drawable = imageView.getDrawable();
        this.scale = imageView.getScaleType();
        this.left = imageView.getPaddingLeft();
        this.top = imageView.getPaddingTop();
        this.right = imageView.getPaddingRight();
        this.bottom = imageView.getPaddingBottom();
    }

    int side(float f) {
        Drawable drawable = this.drawable;
        int intrinsicWidth = drawable == null ? 0 : drawable.getIntrinsicWidth();
        Drawable drawable2 = this.drawable;
        int intrinsicHeight = drawable2 != null ? drawable2.getIntrinsicHeight() : 0;
        Drawable drawable3 = this.drawable;
        if (drawable3 != null) {
            if (intrinsicWidth <= 0) {
                intrinsicWidth = drawable3.getBounds().width();
            }
            if (intrinsicHeight <= 0) {
                intrinsicHeight = this.drawable.getBounds().height();
            }
        }
        return TopBarBounds.side(this.icon.getWidth(), this.icon.getHeight(), this.left, this.top, this.right, this.bottom, intrinsicWidth, intrinsicHeight, f);
    }

    void installIcon(Drawable drawable) {
        if (drawable == null) {
            throw new IllegalArgumentException("Missing custom icon");
        }
        rememberOem();
        this.applied = drawable;
        this.icon.setImageDrawable(drawable);
        this.icon.setScaleType(ImageView.ScaleType.CENTER);
    }

    boolean repair() {
        if (!this.installed || this.applied == null) {
            return false;
        }
        boolean z = this.icon.getDrawable() != this.applied;
        if (z) {
            rememberOem();
            this.icon.setImageDrawable(this.applied);
        }
        ImageView.ScaleType scaleType = (Math.max(0, (this.icon.getWidth() - this.icon.getPaddingLeft()) - this.icon.getPaddingRight()) < this.applied.getIntrinsicWidth() || Math.max(0, (this.icon.getHeight() - this.icon.getPaddingTop()) - this.icon.getPaddingBottom()) < this.applied.getIntrinsicHeight()) ? ImageView.ScaleType.FIT_CENTER : ImageView.ScaleType.CENTER;
        if (this.icon.getScaleType() == scaleType) {
            return z;
        }
        this.icon.setScaleType(scaleType);
        return true;
    }

    private void rememberOem() {
        Drawable drawable = this.icon.getDrawable();
        Drawable drawable2 = this.applied;
        if ((drawable2 == null || drawable != drawable2) && !(drawable instanceof TopBarIcon)) {
            this.drawable = drawable;
        }
    }

    void restore() {
        if (this.installed || this.applied != null) {
            if (this.applied != null) {
                rememberOem();
                this.icon.setImageDrawable(this.drawable);
                this.icon.setScaleType(this.scale);
                this.icon.setPadding(this.left, this.top, this.right, this.bottom);
            }
            this.container.setOnClickListener(this.click);
            this.container.setOnLongClickListener(this.longClick);
            this.container.setClickable(this.clickable);
            this.container.setLongClickable(this.longClickable);
            this.container.setContentDescription(this.description);
            this.installed = false;
            this.applied = null;
        }
    }
}
