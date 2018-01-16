package com.valvesoftware.android.steam.community.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.valvesoftware.android.steam.community.PagingHorizontalScrollView;
import com.valvesoftware.android.steam.community.R;
import com.valvesoftware.android.steam.community.SteamguardState;
import com.valvesoftware.android.steam.community.TimeCorrector;
import java.util.ArrayList;

public class TwoFactorCodeListView extends FrameLayout {
    private boolean invisibleIfNoCodes;
    private PagingHorizontalScrollView pagingHorizontalScrollView;
    private BroadcastReceiver receiver;
    private boolean stopUpdatingTime = false;
    private Runnable timeCorrectorTask = new Runnable() {
        public void run() {
            if (!TwoFactorCodeListView.this.stopUpdatingTime) {
                TimeCorrector.getInstance().update();
                TwoFactorCodeListView.this.updateHandler.postDelayed(this, 1000);
            }
        }
    };
    private View twoFactorPlaceholder;
    private Handler updateHandler = new Handler();

    public void setInvisibleIfNoCodes(boolean invisibleIfNoCodes) {
        this.invisibleIfNoCodes = invisibleIfNoCodes;
    }

    public TwoFactorCodeListView(Context context, AttributeSet attrs) {
        super(context, attrs);
        View view = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.twofactor_code_list_fragment, this, true);
        this.pagingHorizontalScrollView = (PagingHorizontalScrollView) view.findViewById(R.id.twofactor_code_fragment_horizontalscroller);
        this.pagingHorizontalScrollView.init();
        this.twoFactorPlaceholder = view.findViewById(R.id.two_factor_placeholder);
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.TwoFactorCodeListFragment, 0, 0);
        this.invisibleIfNoCodes = a.getBoolean(0, false);
        a.recycle();
        this.receiver = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                TwoFactorCodeListView.this.syncFragments();
            }
        };
        if (isInEditMode()) {
            TwoFactorCodeView twoFactorCodeView = new TwoFactorCodeView(getContext(), null);
            twoFactorCodeView.setSteamguardState(null);
            this.pagingHorizontalScrollView.addView(twoFactorCodeView, "test");
            return;
        }
        gatherFragments(this);
    }

    public void syncFragments() {
        int numTwoFactorCodeViews = 0;
        ArrayList<SteamguardState> sgStates = SteamguardState.getSortedTwoFactorSteamGuardStates();
        this.pagingHorizontalScrollView.clear();
        "sgStates size: " + String.valueOf(sgStates.size());
        for (int i = 0; i < sgStates.size(); i++) {
            boolean z;
            SteamguardState sgState = (SteamguardState) sgStates.get(i);
            TwoFactorCodeView tf = new TwoFactorCodeView(getContext(), null);
            this.pagingHorizontalScrollView.addView(tf, sgState.getTokenGID());
            tf.setSteamguardState(sgState);
            numTwoFactorCodeViews++;
            if (i + 1 < sgStates.size()) {
                z = true;
            } else {
                z = false;
            }
            tf.enableForwardArrow(z);
            if (i > 0) {
                z = true;
            } else {
                z = false;
            }
            tf.enableBackArrow(z);
        }
        "number of code views: " + String.valueOf(numTwoFactorCodeViews);
        if (numTwoFactorCodeViews == 0) {
            showPlaceholder();
            if (this.invisibleIfNoCodes) {
                setVisibility(8);
                return;
            } else {
                setVisibility(0);
                return;
            }
        }
        removePlaceholder();
        setVisibility(0);
    }

    private void gatherFragments(View view) {
        ArrayList<SteamguardState> sgStates = SteamguardState.getSortedTwoFactorSteamGuardStates();
        if (sgStates.size() > 0) {
            for (int i = 0; i < sgStates.size(); i++) {
                SteamguardState sgState = (SteamguardState) sgStates.get(i);
                TwoFactorCodeView twoFactorCodeView = new TwoFactorCodeView(getContext(), null);
                twoFactorCodeView.setSteamguardState(sgState);
                if (i + 1 < sgStates.size()) {
                    twoFactorCodeView.enableForwardArrow(true);
                }
                if (i > 0) {
                    twoFactorCodeView.enableBackArrow(true);
                }
                this.pagingHorizontalScrollView.addView(twoFactorCodeView, sgState.getTokenGID());
            }
        } else if (this.invisibleIfNoCodes) {
            view.setVisibility(8);
        } else {
            view.setVisibility(0);
            showPlaceholder();
        }
    }

    private void showPlaceholder() {
        this.pagingHorizontalScrollView.clear();
        this.pagingHorizontalScrollView.setVisibility(8);
        this.twoFactorPlaceholder.setVisibility(0);
    }

    private void removePlaceholder() {
        this.pagingHorizontalScrollView.setVisibility(0);
        this.twoFactorPlaceholder.setVisibility(8);
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getContext().getApplicationContext().registerReceiver(this.receiver, new IntentFilter("TWOFACTORCODES_CHANGED"));
        startTimeCorrectorChecking();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getContext().getApplicationContext().unregisterReceiver(this.receiver);
        stopTimeCorrectorChecking();
    }

    public void stop() {
        stopTimeCorrectorChecking();
    }

    private void startTimeCorrectorChecking() {
        this.stopUpdatingTime = false;
        this.updateHandler.postDelayed(this.timeCorrectorTask, 1000);
    }

    private void stopTimeCorrectorChecking() {
        this.stopUpdatingTime = true;
        this.updateHandler.removeCallbacks(this.timeCorrectorTask);
    }
}
