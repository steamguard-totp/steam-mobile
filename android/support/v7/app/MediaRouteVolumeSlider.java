package android.support.v7.app;

import android.content.Context;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.v7.appcompat.R;
import android.support.v7.widget.AppCompatSeekBar;
import android.util.AttributeSet;

class MediaRouteVolumeSlider extends AppCompatSeekBar {
    private int mColor;
    private final float mDisabledAlpha;
    private boolean mHideThumb;
    private Drawable mThumb;

    public MediaRouteVolumeSlider(Context context) {
        this(context, null);
    }

    public MediaRouteVolumeSlider(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.seekBarStyle);
    }

    public MediaRouteVolumeSlider(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mDisabledAlpha = MediaRouterThemeHelper.getDisabledAlpha(context);
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int alpha = isEnabled() ? 255 : (int) (255.0f * this.mDisabledAlpha);
        this.mThumb.setColorFilter(this.mColor, Mode.SRC_IN);
        this.mThumb.setAlpha(alpha);
        getProgressDrawable().setColorFilter(this.mColor, Mode.SRC_IN);
        getProgressDrawable().setAlpha(alpha);
    }

    public void setThumb(Drawable thumb) {
        this.mThumb = thumb;
        super.setThumb(this.mHideThumb ? null : this.mThumb);
    }
}
