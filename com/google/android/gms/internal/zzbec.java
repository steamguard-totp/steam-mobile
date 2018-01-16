package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.Locale;

public class zzbec implements zzazt {
    public zzbfw<?> zzb(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        if (com_google_android_gms_internal_zzbfw_Arr.length != 0) {
            z = false;
        }
        zzac.zzas(z);
        return new zzbge(Locale.getDefault().getCountry());
    }
}
