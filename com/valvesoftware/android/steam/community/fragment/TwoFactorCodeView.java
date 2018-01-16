package com.valvesoftware.android.steam.community.fragment;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.valvesoftware.android.steam.community.CloseableView;
import com.valvesoftware.android.steam.community.R;
import com.valvesoftware.android.steam.community.SteamguardState;
import com.valvesoftware.android.steam.community.TimeCorrector;
import com.valvesoftware.android.steam.community.TwoFactorCodeThermometerView;
import com.valvesoftware.android.steam.community.TwoFactorToken;

public class TwoFactorCodeView extends LinearLayout implements CloseableView {
    private boolean bEnableBackArrow;
    private boolean bEnableForwardArrow;
    private TextView mAccountName;
    private TextView mCode;
    private int mDangerColor;
    private int mNormalColor;
    private SteamguardState mSteamguardState;
    private TwoFactorCodeThermometerView mThermometer;
    private final TextView mValveTime;
    private boolean stopUpdating = true;
    private Handler updateHandler = new Handler();
    private Runnable updateRunnable = new Runnable() {
        public void run() {
            if (!TwoFactorCodeView.this.stopUpdating) {
                TwoFactorCodeView.this.update();
                TwoFactorCodeView.this.updateHandler.postDelayed(this, 1000);
            }
        }
    };

    public TwoFactorCodeView(Context context, AttributeSet attrs) {
        super(context, attrs);
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.twofactor_code_fragment, this, true);
        setLayoutParams(new LayoutParams(getScreenWidth(), -1));
        this.mNormalColor = getResources().getColor(R.color.twofactorcode_normal);
        this.mDangerColor = getResources().getColor(R.color.twofactorcode_alert);
        this.mCode = (TextView) findViewById(R.id.twofactorcode_code);
        this.mAccountName = (TextView) findViewById(R.id.twofactorcode_account_name);
        this.mThermometer = (TwoFactorCodeThermometerView) findViewById(R.id.twofactorcode_thermometer);
        this.mValveTime = (TextView) findViewById(R.id.twofactorcode_valvetime);
    }

    public void setSteamguardState(SteamguardState sgState) {
        if (!isInEditMode()) {
            this.mSteamguardState = sgState;
            if (this.mAccountName != null) {
                this.mAccountName.setText(this.mSteamguardState.getAccountName());
                update();
                startContinuousUpdates();
                return;
            }
            Log.e("twofactor", "TwoFactorCodeView.java, setSteamguardState, else clause, for sgState: " + sgState.getAccountName() + " " + sgState.getTokenGID());
        } else if (this.mAccountName != null) {
            this.mAccountName.setText("EditModeTest");
            update();
            startContinuousUpdates();
        }
    }

    public void enableForwardArrow(boolean bEnable) {
        this.bEnableForwardArrow = bEnable;
    }

    public void enableBackArrow(boolean bEnable) {
        this.bEnableBackArrow = bEnable;
    }

    private void enableArrow(int id, boolean bEnable) {
        View arrow = findViewById(id);
        if (arrow != null) {
            arrow.setVisibility(bEnable ? 0 : 4);
        }
    }

    public void startContinuousUpdates() {
        if (this.stopUpdating) {
            this.stopUpdating = false;
            this.updateHandler.postDelayed(this.updateRunnable, 1000);
        }
    }

    public void stopContinuousUpdates() {
        this.stopUpdating = true;
    }

    private static String kernString(String s) {
        StringBuilder result = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            result.append(s.charAt(i));
            if (i + 1 < s.length()) {
                result.append(' ');
            }
        }
        return result.toString();
    }

    public void update() {
        boolean inDanger = true;
        int i = 0;
        if (isInEditMode()) {
            this.mCode.setText("12345");
            this.mCode.setTextColor(this.mNormalColor);
            this.mThermometer.setValue(10, false);
            this.mValveTime.setVisibility(0);
            return;
        }
        TwoFactorToken token = this.mSteamguardState.getTwoFactorToken();
        if (token != null) {
            int secondsToNextChange = token.secondsToNextChange();
            if (secondsToNextChange >= 7) {
                inDanger = false;
            }
            enableArrow(R.id.twofactor_back, this.bEnableBackArrow);
            enableArrow(R.id.twofactor_forward, this.bEnableForwardArrow);
            String code = token.generateSteamGuardCode();
            "code is: " + code + " end code";
            this.mCode.setText(kernString(code));
            this.mCode.setTextColor(inDanger ? this.mDangerColor : this.mNormalColor);
            this.mThermometer.setValue(secondsToNextChange, inDanger);
            TextView textView = this.mValveTime;
            if (!TimeCorrector.getInstance().bUsingAdjustedTime()) {
                i = 4;
            }
            textView.setVisibility(i);
            return;
        }
        Log.e("twofactor", "token is null");
        this.stopUpdating = true;
    }

    private int getScreenWidth() {
        return getContext().getResources().getDisplayMetrics().widthPixels;
    }

    private void adjustWidth(int newWidth) {
        setLayoutParams(new LayoutParams(newWidth, -1));
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        startContinuousUpdates();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopContinuousUpdates();
    }

    public void onConfigurationChanged(Configuration newConfig) {
        adjustWidth(getScreenWidth());
    }

    public void close() {
        stopContinuousUpdates();
    }
}
