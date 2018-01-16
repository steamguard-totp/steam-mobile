package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbbd implements zzazt {
    public zzbfw<?> zzb(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length == 3);
        zzbfw<?> zza = zzazu.zza(zzbgf.zza(com_google_android_gms_internal_zzazg, com_google_android_gms_internal_zzbfw_Arr[0])) ? zzbgf.zza(com_google_android_gms_internal_zzazg, com_google_android_gms_internal_zzbfw_Arr[1]) : zzbgf.zza(com_google_android_gms_internal_zzazg, com_google_android_gms_internal_zzbfw_Arr[2]);
        if (!(zza instanceof zzbga) || zza == zzbga.zzbKV || zza == zzbga.zzbKU) {
            return zza;
        }
        throw new IllegalArgumentException("Illegal InternalType passed to Ternary.");
    }
}
