package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class zzbao extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        int i = 1;
        zzac.zzw(com_google_android_gms_internal_zzbfw_Arr);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length >= 1);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbgb);
        zzbgb com_google_android_gms_internal_zzbgb = (zzbgb) com_google_android_gms_internal_zzbfw_Arr[0];
        Collection arrayList = new ArrayList();
        while (i < com_google_android_gms_internal_zzbfw_Arr.length) {
            arrayList.add(com_google_android_gms_internal_zzbfw_Arr[i]);
            i++;
        }
        ((List) com_google_android_gms_internal_zzbgb.zzRF()).addAll(0, arrayList);
        return new zzbfy(Double.valueOf((double) ((List) com_google_android_gms_internal_zzbgb.zzRF()).size()));
    }
}
