package com.valvesoftware.android.steam.community;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.FrameLayout.LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map.Entry;

public class PagingHorizontalScrollView extends HorizontalScrollView {
    private boolean bNeedsUpdate;
    private int mCurrentIndex;
    private GestureDetector mGestureDetector;
    private LinearLayout scrollableItemsWrapper;
    private HashMap<String, View> tagsToViews;

    class PagingGestureDetector extends SimpleOnGestureListener {
        PagingGestureDetector() {
        }

        public boolean onFling(MotionEvent e1, MotionEvent e2, float vx, float vy) {
            try {
                int featureWidth;
                if (e1.getX() - e2.getX() <= 5.0f || Math.abs(vx) <= 300.0f) {
                    if (e2.getX() - e1.getX() > 5.0f && Math.abs(vx) > 300.0f) {
                        int access$200;
                        featureWidth = PagingHorizontalScrollView.this.getMeasuredWidth();
                        PagingHorizontalScrollView pagingHorizontalScrollView = PagingHorizontalScrollView.this;
                        if (PagingHorizontalScrollView.this.mCurrentIndex > 0) {
                            access$200 = PagingHorizontalScrollView.this.mCurrentIndex - 1;
                        } else {
                            access$200 = 0;
                        }
                        pagingHorizontalScrollView.mCurrentIndex = access$200;
                        PagingHorizontalScrollView.this.smoothScrollTo(PagingHorizontalScrollView.this.mCurrentIndex * featureWidth, 0);
                        PagingHorizontalScrollView.this.update();
                        return true;
                    }
                    return false;
                }
                featureWidth = PagingHorizontalScrollView.this.getMeasuredWidth();
                PagingHorizontalScrollView.this.mCurrentIndex = PagingHorizontalScrollView.this.mCurrentIndex < PagingHorizontalScrollView.this.size() + -1 ? PagingHorizontalScrollView.this.mCurrentIndex + 1 : PagingHorizontalScrollView.this.size() - 1;
                PagingHorizontalScrollView.this.smoothScrollTo(PagingHorizontalScrollView.this.mCurrentIndex * featureWidth, 0);
                PagingHorizontalScrollView.this.update();
                return true;
            } catch (Exception e) {
            }
        }

        public boolean onSingleTapConfirmed(MotionEvent e) {
            int featureWidth = PagingHorizontalScrollView.this.getMeasuredWidth();
            if (((double) e.getX()) > ((double) featureWidth) * 0.9d) {
                PagingHorizontalScrollView.this.mCurrentIndex = PagingHorizontalScrollView.this.mCurrentIndex < PagingHorizontalScrollView.this.size() + -1 ? PagingHorizontalScrollView.this.mCurrentIndex + 1 : PagingHorizontalScrollView.this.size() - 1;
                PagingHorizontalScrollView.this.smoothScrollTo(PagingHorizontalScrollView.this.mCurrentIndex * featureWidth, 0);
                PagingHorizontalScrollView.this.update();
                return true;
            } else if (((double) e.getX()) >= ((double) featureWidth) * 0.1d) {
                return false;
            } else {
                int access$200;
                PagingHorizontalScrollView pagingHorizontalScrollView = PagingHorizontalScrollView.this;
                if (PagingHorizontalScrollView.this.mCurrentIndex > 0) {
                    access$200 = PagingHorizontalScrollView.this.mCurrentIndex - 1;
                } else {
                    access$200 = 0;
                }
                pagingHorizontalScrollView.mCurrentIndex = access$200;
                PagingHorizontalScrollView.this.smoothScrollTo(PagingHorizontalScrollView.this.mCurrentIndex * featureWidth, 0);
                PagingHorizontalScrollView.this.update();
                return true;
            }
        }
    }

    public PagingHorizontalScrollView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mCurrentIndex = 0;
        this.tagsToViews = new HashMap();
        this.scrollableItemsWrapper = new LinearLayout(getContext());
        this.scrollableItemsWrapper.setLayoutParams(new LayoutParams(-1, -1));
        this.scrollableItemsWrapper.setOrientation(0);
        addView(this.scrollableItemsWrapper);
    }

    public PagingHorizontalScrollView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public PagingHorizontalScrollView(Context context) {
        this(context, null, 0);
    }

    public int size() {
        if (this.scrollableItemsWrapper == null) {
            return 0;
        }
        return this.scrollableItemsWrapper.getChildCount();
    }

    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        this.bNeedsUpdate = true;
    }

    public void onConfigurationChanged(Configuration newConfig) {
        setLayoutParams(new LayoutParams(getScreenWidth(), getHeight()));
        new Handler().postDelayed(new Runnable() {
            public void run() {
                PagingHorizontalScrollView.this.bNeedsUpdate = true;
                PagingHorizontalScrollView.this.update();
            }
        }, 50);
    }

    public void update() {
        if (this.bNeedsUpdate) {
            this.bNeedsUpdate = false;
            if (this.tagsToViews != null && this.tagsToViews.size() > 0) {
                scrollTo(this.mCurrentIndex * ((View) ((Entry) this.tagsToViews.entrySet().iterator().next()).getValue()).getWidth(), 0);
            }
        }
    }

    public void init() {
        setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View v, MotionEvent event) {
                if (PagingHorizontalScrollView.this.mGestureDetector.onTouchEvent(event)) {
                    return true;
                }
                if (event.getAction() != 1 && event.getAction() != 3) {
                    return false;
                }
                int scrollX = PagingHorizontalScrollView.this.getScrollX();
                int featureWidth = v.getMeasuredWidth();
                PagingHorizontalScrollView.this.mCurrentIndex = ((featureWidth / 2) + scrollX) / featureWidth;
                PagingHorizontalScrollView.this.smoothScrollTo(PagingHorizontalScrollView.this.mCurrentIndex * featureWidth, 0);
                PagingHorizontalScrollView.this.update();
                return true;
            }
        });
        this.mGestureDetector = new GestureDetector(new PagingGestureDetector());
    }

    public void addView(View view, String tag) {
        this.tagsToViews.put(tag, view);
        this.scrollableItemsWrapper.addView(view);
    }

    public void clear() {
        if (this.tagsToViews != null) {
            Collection<View> views = this.tagsToViews.values();
            if (views != null && views.size() > 0) {
                for (View v : views) {
                    if (v instanceof CloseableView) {
                        ((CloseableView) v).close();
                    }
                }
            }
            this.tagsToViews.clear();
        }
        this.scrollableItemsWrapper.removeAllViews();
    }

    private int getScreenWidth() {
        return getContext().getResources().getDisplayMetrics().widthPixels;
    }
}
