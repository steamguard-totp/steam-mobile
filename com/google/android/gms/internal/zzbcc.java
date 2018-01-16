package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbcc extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length == 2);
        double zzb = zzazu.zzb(com_google_android_gms_internal_zzbfw_Arr[0]);
        double zzb2 = zzazu.zzb(com_google_android_gms_internal_zzbfw_Arr[1]);
        if (Double.isNaN(zzb) || Double.isNaN(zzb2)) {
            return new zzbfy(Double.valueOf(Double.NaN));
        }
        if (Double.isInfinite(zzb) && Double.isInfinite(zzb2)) {
            return new zzbfy(Double.valueOf(Double.NaN));
        }
        int i = (((double) Double.compare(zzb, 0.0d)) < 0.0d ? 1 : 0) ^ (((double) Double.compare(zzb2, 0.0d)) < 0.0d ? 1 : 0);
        if (Double.isInfinite(zzb) && !Double.isInfinite(zzb2)) {
            return new zzbfy(Double.valueOf(i != 0 ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY));
        } else if (!Double.isInfinite(zzb) && Double.isInfinite(zzb2)) {
            return new zzbfy(Double.valueOf(i != 0 ? -0.0d : 0.0d));
        } else if (zzb == 0.0d) {
            if (zzb2 == 0.0d) {
                return new zzbfy(Double.valueOf(Double.NaN));
            }
            return new zzbfy(Double.valueOf(i != 0 ? -0.0d : 0.0d));
        } else if (Double.isInfinite(zzb) || zzb == 0.0d || zzb2 != 0.0d) {
            return new zzbfy(Double.valueOf(zzb / zzb2));
        } else {
            return new zzbfy(Double.valueOf(i != 0 ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY));
        }
    }
}
