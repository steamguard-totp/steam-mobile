package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.zzpy;

@KeepName
public final class CustomEventAdapter implements MediationBannerAdapter<CustomEventExtras, CustomEventServerParameters>, MediationInterstitialAdapter<CustomEventExtras, CustomEventServerParameters> {
    private View zzcV;
    CustomEventBanner zzcW;
    CustomEventInterstitial zzcX;

    static final class zza {
        private final CustomEventAdapter zzcY;
        private final MediationBannerListener zzcZ;

        public zza(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
            this.zzcY = customEventAdapter;
            this.zzcZ = mediationBannerListener;
        }
    }

    class zzb {
        private final CustomEventAdapter zzcY;
        private final MediationInterstitialListener zzda;
        final /* synthetic */ CustomEventAdapter zzdb;

        public zzb(CustomEventAdapter customEventAdapter, CustomEventAdapter customEventAdapter2, MediationInterstitialListener mediationInterstitialListener) {
            this.zzdb = customEventAdapter;
            this.zzcY = customEventAdapter2;
            this.zzda = mediationInterstitialListener;
        }
    }

    private static <T> T zzj(String str) {
        try {
            return Class.forName(str).newInstance();
        } catch (Throwable th) {
            String valueOf = String.valueOf(th.getMessage());
            zzpy.zzbe(new StringBuilder((String.valueOf(str).length() + 46) + String.valueOf(valueOf).length()).append("Could not instantiate custom event adapter: ").append(str).append(". ").append(valueOf).toString());
            return null;
        }
    }

    public Class<CustomEventExtras> getAdditionalParametersType() {
        return CustomEventExtras.class;
    }

    public View getBannerView() {
        return this.zzcV;
    }

    public Class<CustomEventServerParameters> getServerParametersType() {
        return CustomEventServerParameters.class;
    }

    public void requestBannerAd(MediationBannerListener mediationBannerListener, Activity activity, CustomEventServerParameters customEventServerParameters, AdSize adSize, MediationAdRequest mediationAdRequest, CustomEventExtras customEventExtras) {
        this.zzcW = (CustomEventBanner) zzj(customEventServerParameters.className);
        if (this.zzcW == null) {
            mediationBannerListener.onFailedToReceiveAd(this, ErrorCode.INTERNAL_ERROR);
            return;
        }
        if (customEventExtras != null) {
            customEventExtras.getExtra(customEventServerParameters.label);
        }
        zza com_google_ads_mediation_customevent_CustomEventAdapter_zza = new zza(this, mediationBannerListener);
    }

    public void requestInterstitialAd(MediationInterstitialListener mediationInterstitialListener, Activity activity, CustomEventServerParameters customEventServerParameters, MediationAdRequest mediationAdRequest, CustomEventExtras customEventExtras) {
        this.zzcX = (CustomEventInterstitial) zzj(customEventServerParameters.className);
        if (this.zzcX == null) {
            mediationInterstitialListener.onFailedToReceiveAd(this, ErrorCode.INTERNAL_ERROR);
            return;
        }
        if (customEventExtras != null) {
            customEventExtras.getExtra(customEventServerParameters.label);
        }
        zza(mediationInterstitialListener);
    }

    zzb zza(MediationInterstitialListener mediationInterstitialListener) {
        return new zzb(this, this, mediationInterstitialListener);
    }
}
