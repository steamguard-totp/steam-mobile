package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener;
import com.google.android.gms.internal.zzhj.zza;

@zzmb
public class zzho extends zza {
    private final OnAppInstallAdLoadedListener zzGY;

    public zzho(OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
        this.zzGY = onAppInstallAdLoadedListener;
    }

    public void zza(zzhd com_google_android_gms_internal_zzhd) {
        this.zzGY.onAppInstallAdLoaded(zzb(com_google_android_gms_internal_zzhd));
    }

    zzhe zzb(zzhd com_google_android_gms_internal_zzhd) {
        return new zzhe(com_google_android_gms_internal_zzhd);
    }
}
