package com.valvesoftware.android.steam.community.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;
import com.valvesoftware.android.steam.community.R;

public class TypefaceTextView extends TextView {
    public TypefaceTextView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        if (!isInEditMode()) {
            TypedArray styledAttrs = context.obtainStyledAttributes(attrs, R.styleable.TypefaceTextView);
            String fontName = styledAttrs.getString(0);
            styledAttrs.recycle();
            if (fontName != null) {
                setTypeface(Typeface.createFromAsset(context.getAssets(), "fonts/" + fontName));
            }
        }
    }

    public TypefaceTextView(Context context) {
        this(context, null);
    }

    public TypefaceTextView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }
}
