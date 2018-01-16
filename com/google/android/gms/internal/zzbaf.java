package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.List;

public class zzbaf extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        int i = 1;
        zzac.zzw(com_google_android_gms_internal_zzbfw_Arr);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length >= 1);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbgb);
        zzbgb com_google_android_gms_internal_zzbgb = (zzbgb) com_google_android_gms_internal_zzbfw_Arr[0];
        int size = ((List) com_google_android_gms_internal_zzbgb.zzRF()).size();
        com_google_android_gms_internal_zzbgb.setSize((com_google_android_gms_internal_zzbfw_Arr.length + size) - 1);
        while (i < com_google_android_gms_internal_zzbfw_Arr.length) {
            com_google_android_gms_internal_zzbgb.zza(size, com_google_android_gms_internal_zzbfw_Arr[i]);
            size++;
            i++;
        }
        return new zzbfy(Double.valueOf((double) size));
    }
}
