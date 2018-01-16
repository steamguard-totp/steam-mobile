package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbce extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        int i = 1;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length == 2);
        double zzb = zzazu.zzb(com_google_android_gms_internal_zzbfw_Arr[0]);
        double zzb2 = zzazu.zzb(com_google_android_gms_internal_zzbfw_Arr[1]);
        if (Double.isNaN(zzb) || Double.isNaN(zzb2)) {
            return new zzbfy(Double.valueOf(Double.NaN));
        }
        if ((Double.isInfinite(zzb) && zzb2 == 0.0d) || (zzb == 0.0d && Double.isInfinite(zzb2))) {
            return new zzbfy(Double.valueOf(Double.NaN));
        }
        if (!Double.isInfinite(zzb) && !Double.isInfinite(zzb2)) {
            return new zzbfy(Double.valueOf(zzb * zzb2));
        }
        int i2 = ((double) Double.compare(zzb, 0.0d)) < 0.0d ? 1 : 0;
        if (((double) Double.compare(zzb2, 0.0d)) >= 0.0d) {
            i = 0;
        }
        return new zzbfy(Double.valueOf((i2 ^ i) != 0 ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY));
    }
}
