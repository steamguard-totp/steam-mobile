package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.List;

public class zzbco extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        int i = 1;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        boolean z = com_google_android_gms_internal_zzbfw_Arr.length == 1 || com_google_android_gms_internal_zzbfw_Arr.length == 2;
        zzac.zzas(z);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbge);
        List arrayList = new ArrayList();
        if (com_google_android_gms_internal_zzbfw_Arr.length == 1) {
            arrayList.add(com_google_android_gms_internal_zzbfw_Arr[0]);
        } else {
            String str = (String) ((zzbge) com_google_android_gms_internal_zzbfw_Arr[0]).zzRF();
            String zzd = zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[1]);
            boolean equals = zzd.equals("");
            String[] split = str.split(zzd, equals ? 0 : -1);
            int i2 = (equals && split.length > 0 && split[0].equals("")) ? 1 : 0;
            if (i2 == 0) {
                i = 0;
            }
            while (i < split.length) {
                arrayList.add(new zzbge(split[i]));
                i++;
            }
        }
        return new zzbgb(arrayList);
    }
}
