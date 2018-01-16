package com.google.android.gms.internal;

import android.view.View;
import com.google.android.gms.ads.internal.zzh;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzgi.zza;

@zzmb
public final class zzgg extends zza {
    private final zzh zzFw;
    private final String zzFx;
    private final String zzFy;

    public zzgg(zzh com_google_android_gms_ads_internal_zzh, String str, String str2) {
        this.zzFw = com_google_android_gms_ads_internal_zzh;
        this.zzFx = str;
        this.zzFy = str2;
    }

    public String getContent() {
        return this.zzFy;
    }

    public void recordClick() {
        this.zzFw.zzbX();
    }

    public void recordImpression() {
        this.zzFw.zzbY();
    }

    public String zzfB() {
        return this.zzFx;
    }

    public void zzi(zzd com_google_android_gms_dynamic_zzd) {
        if (com_google_android_gms_dynamic_zzd != null) {
            this.zzFw.zzc((View) zze.zzE(com_google_android_gms_dynamic_zzd));
        }
    }
}
