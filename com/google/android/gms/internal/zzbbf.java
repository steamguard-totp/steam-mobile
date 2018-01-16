package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.List;

public class zzbbf extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length == 3);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[1] instanceof zzbge);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[2] instanceof zzbgb);
        zzbfw com_google_android_gms_internal_zzbfw = com_google_android_gms_internal_zzbfw_Arr[0];
        String str = (String) ((zzbge) com_google_android_gms_internal_zzbfw_Arr[1]).zzRF();
        List list = (List) ((zzbgb) com_google_android_gms_internal_zzbfw_Arr[2]).zzRF();
        if (com_google_android_gms_internal_zzbfw.zzif(str)) {
            zzbfw zzig = com_google_android_gms_internal_zzbfw.zzig(str);
            if (zzig instanceof zzbfz) {
                return ((zzazt) ((zzbfz) zzig).zzRF()).zzb(com_google_android_gms_internal_zzazg, (zzbfw[]) list.toArray(new zzbfw[list.size()]));
            }
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 35).append("Apply TypeError: ").append(str).append(" is not a function").toString());
        } else if (com_google_android_gms_internal_zzbfw.zzih(str)) {
            zzazt zzii = com_google_android_gms_internal_zzbfw.zzii(str);
            list.add(0, com_google_android_gms_internal_zzbfw);
            return zzii.zzb(com_google_android_gms_internal_zzazg, (zzbfw[]) list.toArray(new zzbfw[list.size()]));
        } else {
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 40).append("Apply TypeError: object has no ").append(str).append(" property").toString());
        }
    }
}
