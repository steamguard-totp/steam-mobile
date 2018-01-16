package com.valvesoftware.android.steam.community.views;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;

public class RobotoRegularTextView extends TypefaceTextView {
    public RobotoRegularTextView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        if (!isInEditMode()) {
            setTypeface(Typeface.createFromAsset(context.getAssets(), fontName()));
        }
    }

    public RobotoRegularTextView(Context context) {
        this(context, null);
    }

    public RobotoRegularTextView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    protected String fontName() {
        return "fonts/Roboto-Regular.ttf";
    }
}
