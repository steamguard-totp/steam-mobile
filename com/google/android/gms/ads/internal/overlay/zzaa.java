package com.google.android.gms.ads.internal.overlay;

import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzpi;

@zzmb
class zzaa implements Runnable {
    private boolean mCancelled = false;
    private zzl zzOA;

    zzaa(zzl com_google_android_gms_ads_internal_overlay_zzl) {
        this.zzOA = com_google_android_gms_ads_internal_overlay_zzl;
    }

    public void cancel() {
        this.mCancelled = true;
        zzpi.zzWR.removeCallbacks(this);
    }

    public void run() {
        if (!this.mCancelled) {
            this.zzOA.zzhH();
            zzid();
        }
    }

    public void zzid() {
        zzpi.zzWR.postDelayed(this, 250);
    }
}
