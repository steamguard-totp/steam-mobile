package com.google.android.gms.internal;

import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;

@zzmb
public final class zzkf<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> implements MediationBannerListener, MediationInterstitialListener {
    private final zzju zzKW;

    public zzkf(zzju com_google_android_gms_internal_zzju) {
        this.zzKW = com_google_android_gms_internal_zzju;
    }

    public void onFailedToReceiveAd(MediationBannerAdapter<?, ?> mediationBannerAdapter, final ErrorCode errorCode) {
        String valueOf = String.valueOf(errorCode);
        zzpy.zzbc(new StringBuilder(String.valueOf(valueOf).length() + 47).append("Adapter called onFailedToReceiveAd with error. ").append(valueOf).toString());
        if (zzeh.zzeO().zzkJ()) {
            try {
                this.zzKW.onAdFailedToLoad(zzkg.zza(errorCode));
                return;
            } catch (Throwable e) {
                zzpy.zzc("Could not call onAdFailedToLoad.", e);
                return;
            }
        }
        zzpy.zzbe("onFailedToReceiveAd must be called on the main UI thread.");
        zzpx.zzXU.post(new Runnable(this) {
            final /* synthetic */ zzkf zzLc;

            public void run() {
                try {
                    this.zzLc.zzKW.onAdFailedToLoad(zzkg.zza(errorCode));
                } catch (Throwable e) {
                    zzpy.zzc("Could not call onAdFailedToLoad.", e);
                }
            }
        });
    }

    public void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, final ErrorCode errorCode) {
        String valueOf = String.valueOf(errorCode);
        zzpy.zzbc(new StringBuilder(String.valueOf(valueOf).length() + 47).append("Adapter called onFailedToReceiveAd with error ").append(valueOf).append(".").toString());
        if (zzeh.zzeO().zzkJ()) {
            try {
                this.zzKW.onAdFailedToLoad(zzkg.zza(errorCode));
                return;
            } catch (Throwable e) {
                zzpy.zzc("Could not call onAdFailedToLoad.", e);
                return;
            }
        }
        zzpy.zzbe("onFailedToReceiveAd must be called on the main UI thread.");
        zzpx.zzXU.post(new Runnable(this) {
            final /* synthetic */ zzkf zzLc;

            public void run() {
                try {
                    this.zzLc.zzKW.onAdFailedToLoad(zzkg.zza(errorCode));
                } catch (Throwable e) {
                    zzpy.zzc("Could not call onAdFailedToLoad.", e);
                }
            }
        });
    }
}
