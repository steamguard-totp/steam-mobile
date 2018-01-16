package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.List;

public class zzbca implements zzazt {
    public zzbfw<?> zzb(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzbfw zza;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length == 4);
        zzbfw zza2 = zzbgf.zza(com_google_android_gms_internal_zzazg, com_google_android_gms_internal_zzbfw_Arr[3]);
        zzac.zzas(zza2 instanceof zzbgb);
        List list = (List) ((zzbgb) zza2).zzRF();
        zzbfw<?> com_google_android_gms_internal_zzbfw_ = com_google_android_gms_internal_zzbfw_Arr[2];
        zzac.zzas(com_google_android_gms_internal_zzbfw_ instanceof zzbfx);
        if (((Boolean) ((zzbfx) com_google_android_gms_internal_zzbfw_).zzRF()).booleanValue()) {
            zza = zzbgf.zza(com_google_android_gms_internal_zzazg, list);
            if (zza == zzbga.zzbKS) {
                return zzbga.zzbKV;
            }
            if (zza.zzRM()) {
                return zza;
            }
        }
        while (zzazu.zza(zzbgf.zza(com_google_android_gms_internal_zzazg, com_google_android_gms_internal_zzbfw_Arr[0]))) {
            zza = zzbgf.zza(com_google_android_gms_internal_zzazg, list);
            if (zza == zzbga.zzbKS) {
                return zzbga.zzbKV;
            }
            if (zza.zzRM()) {
                return zza;
            }
            zzbgf.zza(com_google_android_gms_internal_zzazg, com_google_android_gms_internal_zzbfw_Arr[1]);
        }
        return zzbga.zzbKV;
    }
}
