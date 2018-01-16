package com.google.android.gms.internal;

import android.os.Build;
import com.google.android.gms.common.internal.zzac;

public class zzbdq implements zzazt {
    private final String zzbJD = Build.BRAND;

    public zzbfw<?> zzb(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        if (com_google_android_gms_internal_zzbfw_Arr.length != 0) {
            z = false;
        }
        zzac.zzas(z);
        return new zzbge(this.zzbJD);
    }
}
