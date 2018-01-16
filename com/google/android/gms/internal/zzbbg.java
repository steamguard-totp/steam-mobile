package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbbg extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length == 2);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbge);
        String str = (String) ((zzbge) com_google_android_gms_internal_zzbfw_Arr[0]).zzRF();
        if (com_google_android_gms_internal_zzazg.has(str)) {
            com_google_android_gms_internal_zzazg.zzb(str, com_google_android_gms_internal_zzbfw_Arr[1]);
            return com_google_android_gms_internal_zzbfw_Arr[1];
        }
        String str2 = "Attempting to assign to undefined variable ";
        str = String.valueOf(str);
        throw new IllegalStateException(str.length() != 0 ? str2.concat(str) : new String(str2));
    }
}
