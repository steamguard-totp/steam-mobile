package com.google.android.gms.internal;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import com.google.android.gms.cast.framework.CastContext;

public class zzwp extends Fragment {
    public static void zza(FragmentActivity fragmentActivity, Bundle bundle) {
        if (bundle == null) {
            Fragment com_google_android_gms_internal_zzwp = new zzwp();
            FragmentTransaction beginTransaction = fragmentActivity.getSupportFragmentManager().beginTransaction();
            beginTransaction.add(com_google_android_gms_internal_zzwp, fragmentActivity.toString());
            beginTransaction.commit();
        }
    }

    public void onPause() {
        super.onPause();
        CastContext.getSharedInstance(getContext()).onActivityPaused(getActivity());
    }

    public void onResume() {
        super.onResume();
        CastContext.getSharedInstance(getContext()).onActivityResumed(getActivity());
    }
}
