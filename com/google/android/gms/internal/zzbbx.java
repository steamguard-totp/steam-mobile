package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.List;

public class zzbbx extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        int i = 1;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length == 3);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[1] instanceof zzbgb);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[2] instanceof zzbgb);
        zzbfw com_google_android_gms_internal_zzbfw = com_google_android_gms_internal_zzbfw_Arr[0];
        List list = (List) ((zzbgb) com_google_android_gms_internal_zzbfw_Arr[1]).zzRF();
        List list2 = (List) ((zzbgb) com_google_android_gms_internal_zzbfw_Arr[2]).zzRF();
        zzac.zzas(list2.size() <= list.size() + 1);
        int i2 = 0;
        int i3 = 0;
        while (i2 < list.size()) {
            int i4;
            if (i3 != 0 || zzazu.zzd(com_google_android_gms_internal_zzbfw, zzbgf.zza(com_google_android_gms_internal_zzazg, (zzbfw) list.get(i2)))) {
                zzbfw<?> zza = zzbgf.zza(com_google_android_gms_internal_zzazg, (zzbfw) list2.get(i2));
                if (!(zza instanceof zzbga)) {
                    i4 = 1;
                    i2++;
                    i3 = i4;
                } else if (zza == zzbga.zzbKT || ((zzbga) zza).zzRM()) {
                    return zza;
                } else {
                    if (zza == zzbga.zzbKS) {
                        return zzbga.zzbKV;
                    }
                }
            }
            i4 = i3;
            i2++;
            i3 = i4;
        }
        if (list.size() >= list2.size()) {
            i = 0;
        }
        if (i != 0) {
            zzbfw<?> zza2 = zzbgf.zza(com_google_android_gms_internal_zzazg, (zzbfw) list2.get(list2.size() - 1));
            if ((zza2 instanceof zzbga) && (zza2 == zzbga.zzbKT || ((zzbga) zza2).zzRM())) {
                return zza2;
            }
        }
        return zzbga.zzbKV;
    }
}
