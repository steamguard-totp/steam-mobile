package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.List;

public class zzbac extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        int i;
        zzac.zzw(com_google_android_gms_internal_zzbfw_Arr);
        boolean z = com_google_android_gms_internal_zzbfw_Arr.length > 0 && com_google_android_gms_internal_zzbfw_Arr.length <= 3;
        zzac.zzas(z);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbgb);
        zzbgb com_google_android_gms_internal_zzbgb = (zzbgb) com_google_android_gms_internal_zzbfw_Arr[0];
        if (com_google_android_gms_internal_zzbfw_Arr.length < 2) {
            zzbfw com_google_android_gms_internal_zzbfw = zzbga.zzbKV;
        } else {
            zzbfw<?> com_google_android_gms_internal_zzbfw_ = com_google_android_gms_internal_zzbfw_Arr[1];
        }
        List list = (List) com_google_android_gms_internal_zzbgb.zzRF();
        int size = list.size();
        int i2 = size - 1;
        if (com_google_android_gms_internal_zzbfw_Arr.length == 3) {
            i2 = (int) zzazu.zzc(com_google_android_gms_internal_zzbfw_Arr[2]);
            i2 = i2 < 0 ? size - Math.abs(i2) : Math.min(i2, size - 1);
        }
        size = i2;
        while (size >= 0) {
            if (com_google_android_gms_internal_zzbgb.zznb(size) && zzazu.zzd(r3, (zzbfw) list.get(size))) {
                i = size;
                break;
            }
            size--;
        }
        i = -1;
        return new zzbfy(Double.valueOf((double) i));
    }
}
