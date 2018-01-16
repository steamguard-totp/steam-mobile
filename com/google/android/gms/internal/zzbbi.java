package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.List;

public class zzbbi extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        if (com_google_android_gms_internal_zzbfw_Arr.length != 1) {
            z = false;
        }
        zzac.zzas(z);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbgb);
        for (zzbfw zza : (List) ((zzbgb) com_google_android_gms_internal_zzbfw_Arr[0]).zzRF()) {
            zzbfw<?> zza2 = zzbgf.zza(com_google_android_gms_internal_zzazg, zza);
            if ((zza2 instanceof zzbga) && (zza2 == zzbga.zzbKS || zza2 == zzbga.zzbKT || ((zzbga) zza2).zzRM())) {
                return zza2;
            }
        }
        return zzbga.zzbKV;
    }
}
