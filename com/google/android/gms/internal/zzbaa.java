package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.List;

public class zzbaa extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        int zzc;
        int i;
        int i2 = 0;
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
        if (com_google_android_gms_internal_zzbfw_Arr.length < 3) {
            zzbfw com_google_android_gms_internal_zzbfw2 = zzbga.zzbKV;
        } else {
            zzbfw<?> com_google_android_gms_internal_zzbfw_2 = com_google_android_gms_internal_zzbfw_Arr[2];
        }
        List list = (List) com_google_android_gms_internal_zzbgb.zzRF();
        int size = list.size();
        if (com_google_android_gms_internal_zzbfw2 != zzbga.zzbKV) {
            zzc = (int) zzazu.zzc(com_google_android_gms_internal_zzbfw2);
            i2 = zzc < 0 ? Math.max(size - Math.abs(zzc), 0) : zzc;
        }
        zzc = i2;
        while (zzc < size) {
            if (com_google_android_gms_internal_zzbgb.zznb(zzc) && zzazu.zzd(r3, (zzbfw) list.get(zzc))) {
                i = zzc;
                break;
            }
            zzc++;
        }
        i = -1;
        return new zzbfy(Double.valueOf((double) i));
    }
}
