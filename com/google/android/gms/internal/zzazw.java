package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.List;

public class zzazw extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        int i = 1;
        zzac.zzw(com_google_android_gms_internal_zzbfw_Arr);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length >= 1);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbgb);
        zzbgb com_google_android_gms_internal_zzbgb = (zzbgb) com_google_android_gms_internal_zzbfw_Arr[0];
        List arrayList = new ArrayList();
        for (zzbfw add : (List) com_google_android_gms_internal_zzbgb.zzRF()) {
            arrayList.add(add);
        }
        while (i < com_google_android_gms_internal_zzbfw_Arr.length) {
            if (com_google_android_gms_internal_zzbfw_Arr[i] instanceof zzbgb) {
                for (zzbfw add2 : (List) ((zzbgb) com_google_android_gms_internal_zzbfw_Arr[i]).zzRF()) {
                    arrayList.add(add2);
                }
            } else {
                arrayList.add(com_google_android_gms_internal_zzbfw_Arr[i]);
            }
            i++;
        }
        return new zzbgb(arrayList);
    }
}
