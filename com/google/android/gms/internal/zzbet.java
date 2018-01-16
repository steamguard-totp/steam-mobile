package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public abstract class zzbet extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        if (com_google_android_gms_internal_zzbfw_Arr.length != 2) {
            z = false;
        }
        zzac.zzas(z);
        try {
            double zzb = zzazu.zzb(com_google_android_gms_internal_zzbfw_Arr[0]);
            double zzb2 = zzazu.zzb(com_google_android_gms_internal_zzbfw_Arr[1]);
            return (Double.isNaN(zzb) || Double.isNaN(zzb2)) ? new zzbfx(Boolean.valueOf(false)) : new zzbfx(Boolean.valueOf(zzf(zzb, zzb2)));
        } catch (IllegalArgumentException e) {
            return new zzbfx(Boolean.valueOf(false));
        }
    }

    protected abstract boolean zzf(double d, double d2);
}
