package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbbo implements zzazt {
    public zzbfw<?> zzb(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        if (com_google_android_gms_internal_zzbfw_Arr.length != 1) {
            z = false;
        }
        zzac.zzas(z);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbge);
        zzbfw<?> zzhP = com_google_android_gms_internal_zzazg.zzhP((String) ((zzbge) com_google_android_gms_internal_zzbfw_Arr[0]).zzRF());
        if (zzhP instanceof zzbgd) {
            throw new IllegalStateException("Illegal Statement type encountered in Get.");
        } else if (!(zzhP instanceof zzbga) || zzhP == zzbga.zzbKV || zzhP == zzbga.zzbKU) {
            return zzhP;
        } else {
            throw new IllegalStateException("Illegal InternalType encountered in Get.");
        }
    }
}
