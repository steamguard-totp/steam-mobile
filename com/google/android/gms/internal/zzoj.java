package com.google.android.gms.internal;

import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.zze;

@zzmb
public class zzoj implements MediationRewardedVideoAdListener {
    private final zzoi zzVi;

    public zzoj(zzoi com_google_android_gms_internal_zzoi) {
        this.zzVi = com_google_android_gms_internal_zzoi;
    }

    public void onAdClosed(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        zzac.zzdn("onAdClosed must be called on the main UI thread.");
        zzpy.zzbc("Adapter called onAdClosed.");
        try {
            this.zzVi.zzu(zze.zzA(mediationRewardedVideoAdAdapter));
        } catch (Throwable e) {
            zzpy.zzc("Could not call onAdClosed.", e);
        }
    }

    public void onAdFailedToLoad(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        zzac.zzdn("onAdFailedToLoad must be called on the main UI thread.");
        zzpy.zzbc("Adapter called onAdFailedToLoad.");
        try {
            this.zzVi.zzc(zze.zzA(mediationRewardedVideoAdAdapter), i);
        } catch (Throwable e) {
            zzpy.zzc("Could not call onAdFailedToLoad.", e);
        }
    }

    public void onAdLeftApplication(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        zzac.zzdn("onAdLeftApplication must be called on the main UI thread.");
        zzpy.zzbc("Adapter called onAdLeftApplication.");
        try {
            this.zzVi.zzw(zze.zzA(mediationRewardedVideoAdAdapter));
        } catch (Throwable e) {
            zzpy.zzc("Could not call onAdLeftApplication.", e);
        }
    }

    public void onAdLoaded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        zzac.zzdn("onAdLoaded must be called on the main UI thread.");
        zzpy.zzbc("Adapter called onAdLoaded.");
        try {
            this.zzVi.zzr(zze.zzA(mediationRewardedVideoAdAdapter));
        } catch (Throwable e) {
            zzpy.zzc("Could not call onAdLoaded.", e);
        }
    }

    public void onAdOpened(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        zzac.zzdn("onAdOpened must be called on the main UI thread.");
        zzpy.zzbc("Adapter called onAdOpened.");
        try {
            this.zzVi.zzs(zze.zzA(mediationRewardedVideoAdAdapter));
        } catch (Throwable e) {
            zzpy.zzc("Could not call onAdOpened.", e);
        }
    }

    public void onInitializationSucceeded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        zzac.zzdn("onInitializationSucceeded must be called on the main UI thread.");
        zzpy.zzbc("Adapter called onInitializationSucceeded.");
        try {
            this.zzVi.zzq(zze.zzA(mediationRewardedVideoAdAdapter));
        } catch (Throwable e) {
            zzpy.zzc("Could not call onInitializationSucceeded.", e);
        }
    }

    public void onRewarded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, RewardItem rewardItem) {
        zzac.zzdn("onRewarded must be called on the main UI thread.");
        zzpy.zzbc("Adapter called onRewarded.");
        if (rewardItem != null) {
            try {
                this.zzVi.zza(zze.zzA(mediationRewardedVideoAdAdapter), new zzok(rewardItem));
                return;
            } catch (Throwable e) {
                zzpy.zzc("Could not call onRewarded.", e);
                return;
            }
        }
        this.zzVi.zza(zze.zzA(mediationRewardedVideoAdAdapter), new zzok(mediationRewardedVideoAdAdapter.getClass().getName(), 1));
    }

    public void onVideoStarted(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        zzac.zzdn("onVideoStarted must be called on the main UI thread.");
        zzpy.zzbc("Adapter called onVideoStarted.");
        try {
            this.zzVi.zzt(zze.zzA(mediationRewardedVideoAdAdapter));
        } catch (Throwable e) {
            zzpy.zzc("Could not call onVideoStarted.", e);
        }
    }
}
