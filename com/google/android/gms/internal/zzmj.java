package com.google.android.gms.internal;

import com.google.android.gms.internal.zzmr.zza;
import java.lang.ref.WeakReference;

@zzmb
public final class zzmj extends zza {
    private final WeakReference<zzme.zza> zzRI;

    public zzmj(zzme.zza com_google_android_gms_internal_zzme_zza) {
        this.zzRI = new WeakReference(com_google_android_gms_internal_zzme_zza);
    }

    public void zzb(zzmk com_google_android_gms_internal_zzmk) {
        zzme.zza com_google_android_gms_internal_zzme_zza = (zzme.zza) this.zzRI.get();
        if (com_google_android_gms_internal_zzme_zza != null) {
            com_google_android_gms_internal_zzme_zza.zzb(com_google_android_gms_internal_zzmk);
        }
    }
}
