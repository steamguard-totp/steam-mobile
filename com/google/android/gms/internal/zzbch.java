package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbch extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        int i = 1;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length > 0);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbge);
        StringBuilder stringBuilder = new StringBuilder((String) ((zzbge) com_google_android_gms_internal_zzbfw_Arr[0]).zzRF());
        while (i < com_google_android_gms_internal_zzbfw_Arr.length) {
            stringBuilder.append(zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[i]));
            i++;
        }
        return new zzbge(stringBuilder.toString());
    }
}
