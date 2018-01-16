package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public abstract class zzazv implements zzazt {
    protected abstract zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr);

    public zzbfw<?> zzb(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        zzac.zzas(com_google_android_gms_internal_zzazg != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzbfw[] com_google_android_gms_internal_zzbfwArr = new zzbfw[com_google_android_gms_internal_zzbfw_Arr.length];
        for (int i = 0; i < com_google_android_gms_internal_zzbfw_Arr.length; i++) {
            zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[i] != null);
            zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[i] != zzbga.zzbKS);
            zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[i] != zzbga.zzbKT);
            com_google_android_gms_internal_zzbfwArr[i] = zzbgf.zza(com_google_android_gms_internal_zzazg, com_google_android_gms_internal_zzbfw_Arr[i]);
            zzac.zzas(com_google_android_gms_internal_zzbfwArr[i] != null);
            zzac.zzas(com_google_android_gms_internal_zzbfwArr[i] != zzbga.zzbKS);
            zzac.zzas(com_google_android_gms_internal_zzbfwArr[i] != zzbga.zzbKT);
        }
        zzbfw<?> zza = zza(com_google_android_gms_internal_zzazg, com_google_android_gms_internal_zzbfwArr);
        if (zza == null) {
            z = false;
        }
        zzac.zzar(z);
        return zza;
    }
}
