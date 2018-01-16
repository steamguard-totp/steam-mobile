package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.List;

public class zzbbs extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        boolean z = com_google_android_gms_internal_zzbfw_Arr.length == 2 || com_google_android_gms_internal_zzbfw_Arr.length == 3;
        zzac.zzas(z);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[1] instanceof zzbgb);
        if (com_google_android_gms_internal_zzbfw_Arr.length == 3) {
            zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[2] instanceof zzbgb);
        }
        List arrayList = new ArrayList();
        if (zzazu.zza(com_google_android_gms_internal_zzbfw_Arr[0])) {
            arrayList = (List) ((zzbgb) com_google_android_gms_internal_zzbfw_Arr[1]).zzRF();
        } else if (com_google_android_gms_internal_zzbfw_Arr.length > 2) {
            arrayList = (List) ((zzbgb) com_google_android_gms_internal_zzbfw_Arr[2]).zzRF();
        }
        zzbfw<?> zza = zzbgf.zza(com_google_android_gms_internal_zzazg, arrayList);
        return ((zza instanceof zzbga) && zzbgf.zzo(zza)) ? zza : zzbga.zzbKV;
    }
}
