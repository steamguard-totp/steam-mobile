package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.List;

public class zzbak extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzw(com_google_android_gms_internal_zzbfw_Arr);
        boolean z = com_google_android_gms_internal_zzbfw_Arr.length == 2 || com_google_android_gms_internal_zzbfw_Arr.length == 3;
        zzac.zzas(z);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbgb);
        zzbgb com_google_android_gms_internal_zzbgb = (zzbgb) com_google_android_gms_internal_zzbfw_Arr[0];
        int zzc = (int) zzazu.zzc(com_google_android_gms_internal_zzbfw_Arr[1]);
        zzc = zzc < 0 ? Math.max(((List) com_google_android_gms_internal_zzbgb.zzRF()).size() + zzc, 0) : Math.min(zzc, ((List) com_google_android_gms_internal_zzbgb.zzRF()).size());
        int size = ((List) com_google_android_gms_internal_zzbgb.zzRF()).size();
        if (com_google_android_gms_internal_zzbfw_Arr.length == 3) {
            int zzc2 = (int) zzazu.zzc(com_google_android_gms_internal_zzbfw_Arr[2]);
            size = zzc2 < 0 ? Math.max(((List) com_google_android_gms_internal_zzbgb.zzRF()).size() + zzc2, 0) : Math.min(zzc2, ((List) com_google_android_gms_internal_zzbgb.zzRF()).size());
        }
        return new zzbgb(new ArrayList(((List) com_google_android_gms_internal_zzbgb.zzRF()).subList(zzc, Math.max(zzc, size))));
    }
}
