package com.valvesoftware.android.steam.community.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.valvesoftware.android.steam.community.R;

public class MenuBar extends LinearLayout {
    private ImageButton extraMenuButton;
    private Button hamburgerButton;
    private ProgressBar progressBar;
    private Button refreshButton;
    private OnClickListener refreshClickedListener;
    private Button searchButton;
    private OnClickListener searchClickedListener;
    private TextView titleTextView;

    public MenuBar(Context context) {
        super(context);
    }

    public MenuBar(Context context, AttributeSet attrs) {
        super(context, attrs);
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.menu_bar, this, true);
        this.hamburgerButton = (Button) findViewById(R.id.hamburgerButton);
        this.titleTextView = (TextView) findViewById(R.id.titleLabel);
        this.searchButton = (Button) findViewById(R.id.titleNavSearchButton);
        this.refreshButton = (Button) findViewById(R.id.titleNavRefreshButton);
        this.progressBar = (ProgressBar) findViewById(R.id.titleProgressBar);
        this.extraMenuButton = (ImageButton) findViewById(R.id.titleExtraButton);
    }

    public void setSearchClickedListener(OnClickListener searchClickedListener) {
        this.searchClickedListener = searchClickedListener;
        if (this.searchClickedListener == null) {
            this.searchButton.setVisibility(4);
            return;
        }
        this.searchButton.setOnClickListener(searchClickedListener);
        this.searchButton.setVisibility(0);
    }

    public void setRefreshClickedListener(OnClickListener refreshClickedListener) {
        this.refreshClickedListener = refreshClickedListener;
        if (this.refreshClickedListener == null) {
            this.refreshButton.setVisibility(4);
            return;
        }
        this.refreshButton.setOnClickListener(refreshClickedListener);
        this.refreshButton.setVisibility(0);
    }

    public void setHamburgerClickedListener(OnClickListener hamburgerClickedListener) {
        this.hamburgerButton.setOnClickListener(hamburgerClickedListener);
    }

    public void showProgressIndicator() {
        this.refreshButton.setVisibility(8);
        this.progressBar.setVisibility(0);
    }

    public void hideProgressIndicator() {
        this.progressBar.setVisibility(8);
        if (this.refreshClickedListener != null) {
            this.refreshButton.setVisibility(0);
        }
    }

    public void setTitle(CharSequence title) {
        this.titleTextView.setText(title);
    }

    public void setExtraMenuItem(SteamMenuItem extraMenuItem) {
        if (extraMenuItem != null) {
            this.extraMenuButton.setVisibility(0);
            this.extraMenuButton.setImageResource(extraMenuItem.iconResourceId);
            this.extraMenuButton.setOnClickListener(extraMenuItem.onClickListener);
            return;
        }
        this.extraMenuButton.setVisibility(8);
        this.extraMenuButton.setOnClickListener(null);
    }
}
