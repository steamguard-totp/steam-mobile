package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.List;

public class zzbad extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzw(com_google_android_gms_internal_zzbfw_Arr);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length == 2);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbgb);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[1] instanceof zzbfz);
        zzbgb com_google_android_gms_internal_zzbgb = (zzbgb) com_google_android_gms_internal_zzbfw_Arr[0];
        zzbfz com_google_android_gms_internal_zzbfz = (zzbfz) com_google_android_gms_internal_zzbfw_Arr[1];
        int size = ((List) com_google_android_gms_internal_zzbgb.zzRF()).size();
        List arrayList = new ArrayList();
        int i = 0;
        while (i < size && i < ((List) com_google_android_gms_internal_zzbgb.zzRF()).size()) {
            Object obj = null;
            if (com_google_android_gms_internal_zzbgb.zznb(i)) {
                zzbfw zzb = ((zzazt) com_google_android_gms_internal_zzbfz.zzRF()).zzb(com_google_android_gms_internal_zzazg, (zzbfw) r2.get(i), new zzbfy(Double.valueOf((double) i)), com_google_android_gms_internal_zzbgb);
                zzac.zzar(!zzbgf.zzo(zzb));
                obj = zzb;
            }
            arrayList.add(obj);
            i++;
        }
        return new zzbgb(arrayList);
    }
}
