package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbcp extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        boolean z = com_google_android_gms_internal_zzbfw_Arr.length > 0 && com_google_android_gms_internal_zzbfw_Arr.length <= 3;
        zzac.zzas(z);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbge);
        String str = (String) ((zzbge) com_google_android_gms_internal_zzbfw_Arr[0]).zzRF();
        int zzc = (int) zzazu.zzc(com_google_android_gms_internal_zzbfw_Arr.length < 2 ? zzbga.zzbKV : com_google_android_gms_internal_zzbfw_Arr[1]);
        int length = str.length();
        if (com_google_android_gms_internal_zzbfw_Arr.length == 3 && com_google_android_gms_internal_zzbfw_Arr[2] != zzbga.zzbKV) {
            length = (int) zzazu.zzc(zzbgf.zza(com_google_android_gms_internal_zzazg, com_google_android_gms_internal_zzbfw_Arr[2]));
        }
        zzc = Math.min(Math.max(zzc, 0), str.length());
        length = Math.min(Math.max(length, 0), str.length());
        return new zzbge(str.substring(Math.min(zzc, length), Math.max(zzc, length)));
    }
}
