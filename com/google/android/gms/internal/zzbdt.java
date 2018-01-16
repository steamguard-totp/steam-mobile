package com.google.android.gms.internal;

import android.os.Build;
import com.google.android.gms.common.internal.zzac;

public class zzbdt implements zzazt {
    private final String zzbJE = Build.MANUFACTURER;
    private final String zzbJF = Build.MODEL;

    public zzbfw<?> zzb(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        if (com_google_android_gms_internal_zzbfw_Arr.length != 0) {
            z = false;
        }
        zzac.zzas(z);
        String str = this.zzbJE;
        String str2 = this.zzbJF;
        if (!(str2.startsWith(str) || str.equals("unknown"))) {
            str2 = new StringBuilder((String.valueOf(str).length() + 1) + String.valueOf(str2).length()).append(str).append(" ").append(str2).toString();
        }
        return new zzbge(str2);
    }
}
