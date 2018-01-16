package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.Locale;

public class zzbcs extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        if (com_google_android_gms_internal_zzbfw_Arr.length != 1) {
            z = false;
        }
        zzac.zzas(z);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbge);
        return new zzbge(((String) ((zzbge) com_google_android_gms_internal_zzbfw_Arr[0]).zzRF()).toLowerCase(Locale.ENGLISH));
    }
}
