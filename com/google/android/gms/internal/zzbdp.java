package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzh;

public class zzbdp implements zzazt {
    private zze zzuI = zzh.zzyv();

    public void zza(zze com_google_android_gms_common_util_zze) {
        this.zzuI = (zze) zzac.zzw(com_google_android_gms_common_util_zze);
    }

    public zzbfw<?> zzb(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        if (com_google_android_gms_internal_zzbfw_Arr.length != 0) {
            z = false;
        }
        zzac.zzas(z);
        return new zzbfy(Double.valueOf((double) this.zzuI.currentTimeMillis()));
    }
}
