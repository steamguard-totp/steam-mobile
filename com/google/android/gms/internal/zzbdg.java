package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.zzac;

public class zzbdg implements zzazt {
    private final zzaye zzbJA;

    public zzbdg(Context context) {
        this(zzaye.zzbL(context));
    }

    zzbdg(zzaye com_google_android_gms_internal_zzaye) {
        this.zzbJA = com_google_android_gms_internal_zzaye;
    }

    public zzbfw<?> zzb(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length == 0);
        if (this.zzbJA.isLimitAdTrackingEnabled()) {
            z = false;
        }
        return new zzbfx(Boolean.valueOf(z));
    }
}
