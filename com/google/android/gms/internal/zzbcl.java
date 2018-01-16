package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbcl extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        boolean z = com_google_android_gms_internal_zzbfw_Arr.length > 0 && com_google_android_gms_internal_zzbfw_Arr.length <= 3;
        zzac.zzas(z);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbge);
        String str = (String) ((zzbge) com_google_android_gms_internal_zzbfw_Arr[0]).zzRF();
        if (com_google_android_gms_internal_zzbfw_Arr.length == 1) {
            return new zzbge(str);
        }
        String zzd = zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[1]);
        zzbfw com_google_android_gms_internal_zzbfw = com_google_android_gms_internal_zzbfw_Arr.length < 3 ? zzbga.zzbKV : com_google_android_gms_internal_zzbfw_Arr[2];
        int indexOf = str.indexOf(zzd);
        if (indexOf == -1) {
            return new zzbge(str);
        }
        if (com_google_android_gms_internal_zzbfw instanceof zzbfz) {
            com_google_android_gms_internal_zzbfw = ((zzazt) ((zzbfz) com_google_android_gms_internal_zzbfw).zzRF()).zzb(com_google_android_gms_internal_zzazg, new zzbge(zzd), new zzbfy(Double.valueOf((double) indexOf)), new zzbge(str));
        }
        String zzd2 = zzazu.zzd(com_google_android_gms_internal_zzbfw);
        String valueOf = String.valueOf(str.substring(0, indexOf));
        str = String.valueOf(str.substring(zzd.length() + indexOf));
        return new zzbge(new StringBuilder(((String.valueOf(valueOf).length() + 0) + String.valueOf(zzd2).length()) + String.valueOf(str).length()).append(valueOf).append(zzd2).append(str).toString());
    }
}
