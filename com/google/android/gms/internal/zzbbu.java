package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.List;

public class zzbbu implements zzazt {
    public zzbfw<?> zzb(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        int i = 0;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        List arrayList = new ArrayList(com_google_android_gms_internal_zzbfw_Arr.length);
        int length = com_google_android_gms_internal_zzbfw_Arr.length;
        while (i < length) {
            arrayList.add(com_google_android_gms_internal_zzbfw_Arr[i]);
            i++;
        }
        return new zzbgb(arrayList);
    }
}
