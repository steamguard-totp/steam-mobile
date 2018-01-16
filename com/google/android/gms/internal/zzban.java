package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class zzban extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzw(com_google_android_gms_internal_zzbfw_Arr);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length >= 3);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbgb);
        zzbgb com_google_android_gms_internal_zzbgb = (zzbgb) com_google_android_gms_internal_zzbfw_Arr[0];
        int zzc = (int) zzazu.zzc(com_google_android_gms_internal_zzbfw_Arr[1]);
        zzc = zzc < 0 ? Math.max(((List) com_google_android_gms_internal_zzbgb.zzRF()).size() + zzc, 0) : Math.min(zzc, ((List) com_google_android_gms_internal_zzbgb.zzRF()).size());
        int min = zzc + Math.min(Math.max((int) zzazu.zzc(com_google_android_gms_internal_zzbfw_Arr[2]), 0), ((List) com_google_android_gms_internal_zzbgb.zzRF()).size() - zzc);
        List arrayList = new ArrayList(((List) com_google_android_gms_internal_zzbgb.zzRF()).subList(zzc, min));
        ((List) com_google_android_gms_internal_zzbgb.zzRF()).subList(zzc, min).clear();
        Collection arrayList2 = new ArrayList();
        for (int i = 3; i < com_google_android_gms_internal_zzbfw_Arr.length; i++) {
            arrayList2.add(com_google_android_gms_internal_zzbfw_Arr[i]);
        }
        ((List) com_google_android_gms_internal_zzbgb.zzRF()).addAll(zzc, arrayList2);
        return new zzbgb(arrayList);
    }
}
