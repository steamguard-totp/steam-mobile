package com.valvesoftware.android.steam.community.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Build.VERSION;
import android.support.v4.app.Fragment;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.ToggleButton;
import com.valvesoftware.android.steam.community.R;
import com.valvesoftware.android.steam.community.SteamCommunityApplication;

public class ActivityHelper {
    public static void UpdateToggleButtonStyles(ToggleButton btn) {
        int residColor = R.color.primary_foreground_dim;
        int residBgColor = R.color.secondary_background;
        int fontStyle = 0;
        if (btn.isChecked()) {
            residColor = R.color.primary_foreground;
            residBgColor = R.color.primary_background;
            fontStyle = 1;
        }
        btn.setTextColor(SteamCommunityApplication.GetInstance().getResources().getColor(residColor));
        btn.setBackgroundColor(SteamCommunityApplication.GetInstance().getResources().getColor(residBgColor));
        btn.setTypeface(null, fontStyle);
    }

    public static void hideKeyboard(Activity activity) {
        if (activity != null) {
            View view = activity.getCurrentFocus();
            if (view != null) {
                ((InputMethodManager) activity.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 1);
            }
        }
    }

    public static void showKeyboard(Activity activity) {
        if (activity != null) {
            ((InputMethodManager) activity.getSystemService("input_method")).toggleSoftInput(1, 0);
        }
    }

    public static boolean fragmentIsActive(Fragment fragment) {
        if (fragment == null || fragment.getActivity() == null || fragment.getActivity().isFinishing() || fragment.isRemoving() || fragment.isDetached() || !fragment.isAdded()) {
            return false;
        }
        return true;
    }

    @SuppressLint({"NewApi"})
    public static boolean fragmentOrActivityIsActive(Object activityOrFragment) {
        boolean z = true;
        if (activityOrFragment == null) {
            return false;
        }
        if (activityOrFragment instanceof Activity) {
            Activity activity = (Activity) activityOrFragment;
            if (activity.isFinishing()) {
                return false;
            }
            if (VERSION.SDK_INT <= 17 || !activity.isDestroyed()) {
                return true;
            }
            return false;
        }
        if (!((activityOrFragment instanceof Fragment) && fragmentIsActive((Fragment) activityOrFragment))) {
            z = false;
        }
        return z;
    }
}
