package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbcd extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length == 2);
        double zzb = zzazu.zzb(com_google_android_gms_internal_zzbfw_Arr[0]);
        double zzb2 = zzazu.zzb(com_google_android_gms_internal_zzbfw_Arr[1]);
        return (Double.isNaN(zzb) || Double.isNaN(zzb2)) ? new zzbfy(Double.valueOf(Double.NaN)) : (Double.isInfinite(zzb) || zzb2 == 0.0d) ? new zzbfy(Double.valueOf(Double.NaN)) : (Double.isInfinite(zzb) || !Double.isInfinite(zzb2)) ? (zzb != 0.0d || zzb2 == 0.0d || Double.isInfinite(zzb2)) ? new zzbfy(Double.valueOf(zzb % zzb2)) : new zzbfy(Double.valueOf(zzb)) : new zzbfy(Double.valueOf(zzb));
    }
}
