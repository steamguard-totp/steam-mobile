package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.internal.zzdt;
import com.google.android.gms.internal.zzfa;

public final class InterstitialAd {
    private final zzfa zzrL;

    public InterstitialAd(Context context) {
        this.zzrL = new zzfa(context);
    }

    public void loadAd(AdRequest adRequest) {
        this.zzrL.zza(adRequest.zzbq());
    }

    public void setAdListener(AdListener adListener) {
        this.zzrL.setAdListener(adListener);
        if (adListener != null && (adListener instanceof zzdt)) {
            this.zzrL.zza((zzdt) adListener);
        } else if (adListener == null) {
            this.zzrL.zza(null);
        }
    }

    public void setAdUnitId(String str) {
        this.zzrL.setAdUnitId(str);
    }

    public void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        this.zzrL.setRewardedVideoAdListener(rewardedVideoAdListener);
    }

    public void show() {
        this.zzrL.show();
    }

    public void zzd(boolean z) {
        this.zzrL.zzd(z);
    }
}
