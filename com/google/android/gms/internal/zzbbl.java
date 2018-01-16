package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.HashMap;
import java.util.Map;

public class zzbbl extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        int i = 0;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        Map hashMap = new HashMap();
        while (i < com_google_android_gms_internal_zzbfw_Arr.length - 1) {
            String zzd = zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[i]);
            zzbga com_google_android_gms_internal_zzbga = com_google_android_gms_internal_zzbfw_Arr[i + 1];
            if (!(com_google_android_gms_internal_zzbga instanceof zzbga) || com_google_android_gms_internal_zzbga == zzbga.zzbKU || com_google_android_gms_internal_zzbga == zzbga.zzbKV) {
                hashMap.put(zzd, com_google_android_gms_internal_zzbga);
                i += 2;
            } else {
                throw new IllegalStateException("Illegal InternalType found in CreateObject.");
            }
        }
        return new zzbgc(hashMap);
    }
}
