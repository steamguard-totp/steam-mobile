package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.zzpy;

@KeepName
public final class CustomEventAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {
    CustomEventBanner zzZQ;
    CustomEventInterstitial zzZR;
    CustomEventNative zzZS;
    private View zzcV;

    static final class zza {
        private final CustomEventAdapter zzZT;
        private final MediationBannerListener zzcN;

        public zza(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
            this.zzZT = customEventAdapter;
            this.zzcN = mediationBannerListener;
        }
    }

    class zzb {
        private final CustomEventAdapter zzZT;
        final /* synthetic */ CustomEventAdapter zzZU;
        private final MediationInterstitialListener zzcO;

        public zzb(CustomEventAdapter customEventAdapter, CustomEventAdapter customEventAdapter2, MediationInterstitialListener mediationInterstitialListener) {
            this.zzZU = customEventAdapter;
            this.zzZT = customEventAdapter2;
            this.zzcO = mediationInterstitialListener;
        }
    }

    static class zzc {
        private final CustomEventAdapter zzZT;
        private final MediationNativeListener zzcP;

        public zzc(CustomEventAdapter customEventAdapter, MediationNativeListener mediationNativeListener) {
            this.zzZT = customEventAdapter;
            this.zzcP = mediationNativeListener;
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

    public View getBannerView() {
        return this.zzcV;
    }

    public void onDestroy() {
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzZQ = (CustomEventBanner) zzj(bundle.getString("class_name"));
        if (this.zzZQ == null) {
            mediationBannerListener.onAdFailedToLoad(this, 0);
            return;
        }
        if (bundle2 != null) {
            bundle2.getBundle(bundle.getString("class_name"));
        }
        zza com_google_android_gms_ads_mediation_customevent_CustomEventAdapter_zza = new zza(this, mediationBannerListener);
        bundle.getString("parameter");
    }

    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzZR = (CustomEventInterstitial) zzj(bundle.getString("class_name"));
        if (this.zzZR == null) {
            mediationInterstitialListener.onAdFailedToLoad(this, 0);
            return;
        }
        if (bundle2 != null) {
            bundle2.getBundle(bundle.getString("class_name"));
        }
        zza(mediationInterstitialListener);
        bundle.getString("parameter");
    }

    public void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        this.zzZS = (CustomEventNative) zzj(bundle.getString("class_name"));
        if (this.zzZS == null) {
            mediationNativeListener.onAdFailedToLoad(this, 0);
            return;
        }
        if (bundle2 != null) {
            bundle2.getBundle(bundle.getString("class_name"));
        }
        zzc com_google_android_gms_ads_mediation_customevent_CustomEventAdapter_zzc = new zzc(this, mediationNativeListener);
        bundle.getString("parameter");
    }

    public void showInterstitial() {
    }

    zzb zza(MediationInterstitialListener mediationInterstitialListener) {
        return new zzb(this, this, mediationInterstitialListener);
    }
}
