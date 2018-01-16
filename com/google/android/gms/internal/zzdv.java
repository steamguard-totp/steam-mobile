package com.google.android.gms.internal;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.internal.zzel.zza;

@zzmb
public final class zzdv extends zza {
    private final AdListener zzyE;

    public zzdv(AdListener adListener) {
        this.zzyE = adListener;
    }

    public void onAdClosed() {
        this.zzyE.onAdClosed();
    }

    public void onAdFailedToLoad(int i) {
        this.zzyE.onAdFailedToLoad(i);
    }

    public void onAdLeftApplication() {
        this.zzyE.onAdLeftApplication();
    }

    public void onAdLoaded() {
        this.zzyE.onAdLoaded();
    }

    public void onAdOpened() {
        this.zzyE.onAdOpened();
    }
}
