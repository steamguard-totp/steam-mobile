package android.support.v7.app;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.animation.Interpolator;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class OverlayListView extends ListView {
    private final List<OverlayObject> mOverlayObjects = new ArrayList();

    public static class OverlayObject {
        private BitmapDrawable mBitmap;
        private float mCurrentAlpha;
        private Rect mCurrentBounds;
        private int mDeltaY;
        private long mDuration;
        private float mEndAlpha;
        private Interpolator mInterpolator;
        private boolean mIsAnimationEnded;
        private boolean mIsAnimationStarted;
        private float mStartAlpha;
        private Rect mStartRect;
        private long mStartTime;

        public BitmapDrawable getBitmapDrawable() {
            return this.mBitmap;
        }

        public boolean update(long currentTime) {
            boolean z = true;
            if (this.mIsAnimationEnded) {
                return false;
            }
            float interpolatedTime;
            float normalizedTime = Math.max(0.0f, Math.min(1.0f, ((float) (currentTime - this.mStartTime)) / ((float) this.mDuration)));
            if (!this.mIsAnimationStarted) {
                normalizedTime = 0.0f;
            }
            if (this.mInterpolator == null) {
                interpolatedTime = normalizedTime;
            } else {
                interpolatedTime = this.mInterpolator.getInterpolation(normalizedTime);
            }
            int deltaY = (int) (((float) this.mDeltaY) * interpolatedTime);
            this.mCurrentBounds.top = this.mStartRect.top + deltaY;
            this.mCurrentBounds.bottom = this.mStartRect.bottom + deltaY;
            this.mCurrentAlpha = this.mStartAlpha + ((this.mEndAlpha - this.mStartAlpha) * interpolatedTime);
            if (!(this.mBitmap == null || this.mCurrentBounds == null)) {
                this.mBitmap.setAlpha((int) (this.mCurrentAlpha * 255.0f));
                this.mBitmap.setBounds(this.mCurrentBounds);
            }
            if (this.mIsAnimationStarted && normalizedTime >= 1.0f) {
                this.mIsAnimationEnded = true;
            }
            if (this.mIsAnimationEnded) {
                z = false;
            }
            return z;
        }
    }

    public OverlayListView(Context context) {
        super(context);
    }

    public OverlayListView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public OverlayListView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mOverlayObjects.size() > 0) {
            Iterator<OverlayObject> it = this.mOverlayObjects.iterator();
            while (it.hasNext()) {
                OverlayObject object = (OverlayObject) it.next();
                BitmapDrawable bitmap = object.getBitmapDrawable();
                if (bitmap != null) {
                    bitmap.draw(canvas);
                }
                if (!object.update(getDrawingTime())) {
                    it.remove();
                }
            }
        }
    }
}
