package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.List;

public class zzbaj extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        zzac.zzw(com_google_android_gms_internal_zzbfw_Arr);
        if (com_google_android_gms_internal_zzbfw_Arr.length != 1) {
            z = false;
        }
        zzac.zzas(z);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbgb);
        List list = (List) ((zzbgb) com_google_android_gms_internal_zzbfw_Arr[0]).zzRF();
        return !list.isEmpty() ? (zzbfw) list.remove(0) : zzbga.zzbKV;
    }
}
