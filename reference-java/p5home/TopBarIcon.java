package com.local.p5home;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
final class TopBarIcon extends Drawable {
    private final Bitmap bitmap;
    private final Paint paint = new Paint(3);

    private TopBarIcon(Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    static TopBarIcon render(Drawable drawable, int i) {
        if (drawable == null || i <= 0 || i > 192) {
            throw new IllegalArgumentException("Invalid icon bounds");
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
        int[] iArrFit = TopBarBounds.fit(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), i);
        Rect rect = new Rect(drawable.getBounds());
        int i2 = iArrFit[0];
        int i3 = (i - i2) / 2;
        int i4 = iArrFit[1];
        int i5 = (i - i4) / 2;
        try {
            drawable.setBounds(i3, i5, i2 + i3, i4 + i5);
            drawable.draw(new Canvas(bitmapCreateBitmap));
            drawable.setBounds(rect);
            return new TopBarIcon(bitmapCreateBitmap);
        } catch (Throwable th) {
            drawable.setBounds(rect);
            throw th;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.bitmap.getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.bitmap.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawBitmap(this.bitmap, (Rect) null, getBounds(), this.paint);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.paint.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }
}
