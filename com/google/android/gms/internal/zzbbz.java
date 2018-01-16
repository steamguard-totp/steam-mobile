package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbbz implements zzazt {
    public zzbfw<?> zzb(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        int i = 0;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        if (com_google_android_gms_internal_zzbfw_Arr.length <= 0) {
            z = false;
        }
        zzac.zzas(z);
        int length = com_google_android_gms_internal_zzbfw_Arr.length;
        while (i < length) {
            Object obj = com_google_android_gms_internal_zzbfw_Arr[i];
            zzac.zzw(obj);
            zzac.zzas(obj instanceof zzbge);
            com_google_android_gms_internal_zzazg.zza((String) ((zzbge) obj).zzRF(), zzbga.zzbKV);
            i++;
        }
        return zzbga.zzbKV;
    }
}
