package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbcj extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        boolean z = com_google_android_gms_internal_zzbfw_Arr.length == 2 || com_google_android_gms_internal_zzbfw_Arr.length == 3;
        zzac.zzas(z);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbge);
        String str = (String) ((zzbge) com_google_android_gms_internal_zzbfw_Arr[0]).zzRF();
        String zzd = zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[1]);
        double d = Double.POSITIVE_INFINITY;
        if (com_google_android_gms_internal_zzbfw_Arr.length == 3 && !Double.isNaN(zzazu.zzb(com_google_android_gms_internal_zzbfw_Arr[2]))) {
            d = zzazu.zzc(com_google_android_gms_internal_zzbfw_Arr[2]);
        }
        return new zzbfy(Double.valueOf((double) str.lastIndexOf(zzd, (int) Math.min(Math.max(d, 0.0d), (double) str.length()))));
    }
}
