package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.zzac;

public class zzbdf implements zzazt {
    private final zzaye zzbJA;

    public zzbdf(Context context) {
        this(zzaye.zzbL(context));
    }

    zzbdf(zzaye com_google_android_gms_internal_zzaye) {
        this.zzbJA = com_google_android_gms_internal_zzaye;
    }

    public zzbfw<?> zzb(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        if (com_google_android_gms_internal_zzbfw_Arr.length != 0) {
            z = false;
        }
        zzac.zzas(z);
        String zzOq = this.zzbJA.zzOq();
        return zzOq == null ? zzbga.zzbKV : new zzbge(zzOq);
    }
}
