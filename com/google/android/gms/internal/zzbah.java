package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.List;

public class zzbah extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzbfw<?> com_google_android_gms_internal_zzbfw_;
        int i;
        zzac.zzw(com_google_android_gms_internal_zzbfw_Arr);
        boolean z = com_google_android_gms_internal_zzbfw_Arr.length == 2 || com_google_android_gms_internal_zzbfw_Arr.length == 3;
        zzac.zzas(z);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbgb);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[1] instanceof zzbfz);
        zzbgb com_google_android_gms_internal_zzbgb = (zzbgb) com_google_android_gms_internal_zzbfw_Arr[0];
        zzbfz com_google_android_gms_internal_zzbfz = (zzbfz) com_google_android_gms_internal_zzbfw_Arr[1];
        int size = ((List) com_google_android_gms_internal_zzbgb.zzRF()).size();
        if (com_google_android_gms_internal_zzbfw_Arr.length == 3) {
            com_google_android_gms_internal_zzbfw_ = com_google_android_gms_internal_zzbfw_Arr[2];
            i = size - 1;
        } else {
            zzac.zzar(size > 0);
            zzbfw<?> zzna = com_google_android_gms_internal_zzbgb.zzna(size - 1);
            int i2 = size - 2;
            i = size - 1;
            while (i >= 0) {
                if (com_google_android_gms_internal_zzbgb.zznb(i)) {
                    zzna = com_google_android_gms_internal_zzbgb.zzna(i);
                    i2 = i - 1;
                    break;
                }
                i--;
            }
            zzac.zzar(i >= 0);
            i = i2;
            com_google_android_gms_internal_zzbfw_ = zzna;
        }
        int i3 = i;
        while (i3 >= 0) {
            zzbfw<?> zzb = com_google_android_gms_internal_zzbgb.zznb(i3) ? ((zzazt) com_google_android_gms_internal_zzbfz.zzRF()).zzb(com_google_android_gms_internal_zzazg, com_google_android_gms_internal_zzbfw_, (zzbfw) r2.get(i3), new zzbfy(Double.valueOf((double) i3)), com_google_android_gms_internal_zzbgb) : com_google_android_gms_internal_zzbfw_;
            i3--;
            com_google_android_gms_internal_zzbfw_ = zzb;
        }
        return com_google_android_gms_internal_zzbfw_;
    }
}
