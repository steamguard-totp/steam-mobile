package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbcn extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        boolean z = com_google_android_gms_internal_zzbfw_Arr.length > 0 && com_google_android_gms_internal_zzbfw_Arr.length <= 3;
        zzac.zzas(z);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbge);
        String str = (String) ((zzbge) com_google_android_gms_internal_zzbfw_Arr[0]).zzRF();
        double zzc = com_google_android_gms_internal_zzbfw_Arr.length < 2 ? 0.0d : zzazu.zzc(com_google_android_gms_internal_zzbfw_Arr[1]);
        double length = (double) str.length();
        if (com_google_android_gms_internal_zzbfw_Arr.length == 3 && com_google_android_gms_internal_zzbfw_Arr[2] != zzbga.zzbKV) {
            length = zzazu.zzc(com_google_android_gms_internal_zzbfw_Arr[2]);
        }
        int max = zzc < 0.0d ? (int) Math.max(zzc + ((double) str.length()), 0.0d) : (int) Math.min(zzc, (double) str.length());
        return new zzbge(str.substring(max, Math.max(0, (length < 0.0d ? (int) Math.max(((double) str.length()) + length, 0.0d) : (int) Math.min(length, (double) str.length())) - max) + max));
    }
}
