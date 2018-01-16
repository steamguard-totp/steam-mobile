package com.google.android.gms.internal;

import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.internal.zznt.zza;

@zzmb
public class zznw extends zza {
    private final RewardedVideoAdListener zzcI;

    public zznw(RewardedVideoAdListener rewardedVideoAdListener) {
        this.zzcI = rewardedVideoAdListener;
    }

    public void onRewardedVideoAdClosed() {
        if (this.zzcI != null) {
            this.zzcI.onRewardedVideoAdClosed();
        }
    }

    public void onRewardedVideoAdFailedToLoad(int i) {
        if (this.zzcI != null) {
            this.zzcI.onRewardedVideoAdFailedToLoad(i);
        }
    }

    public void onRewardedVideoAdLeftApplication() {
        if (this.zzcI != null) {
            this.zzcI.onRewardedVideoAdLeftApplication();
        }
    }

    public void onRewardedVideoAdLoaded() {
        if (this.zzcI != null) {
            this.zzcI.onRewardedVideoAdLoaded();
        }
    }

    public void onRewardedVideoAdOpened() {
        if (this.zzcI != null) {
            this.zzcI.onRewardedVideoAdOpened();
        }
    }

    public void onRewardedVideoStarted() {
        if (this.zzcI != null) {
            this.zzcI.onRewardedVideoStarted();
        }
    }

    public void zza(zznq com_google_android_gms_internal_zznq) {
        if (this.zzcI != null) {
            this.zzcI.onRewarded(new zznu(com_google_android_gms_internal_zznq));
        }
    }
}
