package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener;
import com.google.android.gms.internal.zzhk.zza;

@zzmb
public class zzhp extends zza {
    private final OnContentAdLoadedListener zzGZ;

    public zzhp(OnContentAdLoadedListener onContentAdLoadedListener) {
        this.zzGZ = onContentAdLoadedListener;
    }

    public void zza(zzhf com_google_android_gms_internal_zzhf) {
        this.zzGZ.onContentAdLoaded(zzb(com_google_android_gms_internal_zzhf));
    }

    zzhg zzb(zzhf com_google_android_gms_internal_zzhf) {
        return new zzhg(com_google_android_gms_internal_zzhf);
    }
}
