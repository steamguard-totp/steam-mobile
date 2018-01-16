package com.valvesoftware.android.steam.community.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.valvesoftware.android.steam.community.R;

public class SteamWebButton extends LinearLayout {
    private TextView detailTextView;

    public SteamWebButton(Context context) {
        this(context, null);
    }

    public SteamWebButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.SteamWebButton, 0, 0);
        int titleTextId = a.getResourceId(0, 0);
        int detailTextId = a.getResourceId(1, 0);
        boolean showTopBorder = a.getBoolean(2, false);
        boolean showBottomBorder = a.getBoolean(3, false);
        a.recycle();
        setOrientation(1);
        setLayoutParams(new LayoutParams(-1, -2));
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.steam_web_button, this, true);
        TextView textView = (TextView) findViewById(R.id.fake_button_text);
        this.detailTextView = (TextView) findViewById(R.id.fake_button_detail);
        View topBorder = findViewById(R.id.top_border);
        View bottomBorder = findViewById(R.id.bottom_border);
        topBorder.setVisibility(showTopBorder ? 0 : 4);
        bottomBorder.setVisibility(showBottomBorder ? 0 : 4);
        if (titleTextId > 0) {
            textView.setText(getResources().getString(titleTextId));
        }
        if (detailTextId > 0) {
            this.detailTextView.setText(getResources().getString(detailTextId));
        }
    }

    public void setOnClickListener(OnClickListener listener) {
        if (listener != null) {
            setClickable(true);
            super.setOnClickListener(listener);
        }
    }

    public void setDetailText(String detailText) {
        if (this.detailTextView != null) {
            this.detailTextView.setText(detailText);
        }
    }
}
