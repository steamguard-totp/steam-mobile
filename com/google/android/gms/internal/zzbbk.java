package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.List;

public class zzbbk extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        List arrayList = new ArrayList();
        for (zzbga com_google_android_gms_internal_zzbga : com_google_android_gms_internal_zzbfw_Arr) {
            boolean z = !(com_google_android_gms_internal_zzbga instanceof zzbga) || com_google_android_gms_internal_zzbga == zzbga.zzbKV || com_google_android_gms_internal_zzbga == zzbga.zzbKU;
            zzac.zzas(z);
            arrayList.add(com_google_android_gms_internal_zzbga);
        }
        return new zzbgb(arrayList);
    }
}
