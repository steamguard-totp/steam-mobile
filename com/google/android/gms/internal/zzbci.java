package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbci extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        boolean z = com_google_android_gms_internal_zzbfw_Arr.length == 2 || com_google_android_gms_internal_zzbfw_Arr.length == 3;
        zzac.zzas(z);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbge);
        String str = (String) ((zzbge) com_google_android_gms_internal_zzbfw_Arr[0]).zzRF();
        return new zzbfy(Double.valueOf((double) str.indexOf(zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[1]), (int) Math.min(Math.max(com_google_android_gms_internal_zzbfw_Arr.length < 3 ? 0.0d : zzazu.zzc(com_google_android_gms_internal_zzbfw_Arr[2]), 0.0d), (double) str.length()))));
    }
}
