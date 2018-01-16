package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbcg extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        int i = 0;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        boolean z = com_google_android_gms_internal_zzbfw_Arr.length == 1 || com_google_android_gms_internal_zzbfw_Arr.length == 2;
        zzac.zzas(z);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbge);
        String str = (String) ((zzbge) com_google_android_gms_internal_zzbfw_Arr[0]).zzRF();
        if (com_google_android_gms_internal_zzbfw_Arr.length == 2) {
            i = (int) zzazu.zzc(com_google_android_gms_internal_zzbfw_Arr[1]);
        }
        return (i < 0 || i >= str.length()) ? new zzbge("") : new zzbge(String.valueOf(str.charAt(i)));
    }
}
