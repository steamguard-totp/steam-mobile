package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.Iterator;
import java.util.List;

public class zzbbn extends zzazv {
    public zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzw(com_google_android_gms_internal_zzbfw_Arr);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length == 3);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbge);
        String str = (String) ((zzbge) com_google_android_gms_internal_zzbfw_Arr[0]).zzRF();
        zzac.zzas(com_google_android_gms_internal_zzazg.has(str));
        zzbfw com_google_android_gms_internal_zzbfw = com_google_android_gms_internal_zzbfw_Arr[1];
        zzac.zzw(com_google_android_gms_internal_zzbfw);
        zzbfw<?> com_google_android_gms_internal_zzbfw_ = com_google_android_gms_internal_zzbfw_Arr[2];
        zzac.zzas(com_google_android_gms_internal_zzbfw_ instanceof zzbgb);
        List list = (List) ((zzbgb) com_google_android_gms_internal_zzbfw_).zzRF();
        Iterator zzRE = com_google_android_gms_internal_zzbfw.zzRE();
        while (zzRE.hasNext()) {
            com_google_android_gms_internal_zzazg.zzb(str, (zzbfw) zzRE.next());
            com_google_android_gms_internal_zzbfw = zzbgf.zza(com_google_android_gms_internal_zzazg, list);
            if (com_google_android_gms_internal_zzbfw == zzbga.zzbKS) {
                return zzbga.zzbKV;
            }
            if (com_google_android_gms_internal_zzbfw.zzRM()) {
                return com_google_android_gms_internal_zzbfw;
            }
        }
        return zzbga.zzbKV;
    }
}
