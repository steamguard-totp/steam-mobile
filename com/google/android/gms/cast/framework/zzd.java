package com.google.android.gms.cast.framework;

import com.google.android.gms.internal.zzyu;

public class zzd {
    private static final zzyu zzaoQ = new zzyu("DiscoveryManager");
    private final zzj zzapq;

    zzd(zzj com_google_android_gms_cast_framework_zzj) {
        this.zzapq = com_google_android_gms_cast_framework_zzj;
    }

    public com.google.android.gms.dynamic.zzd zzsg() {
        try {
            return this.zzapq.zzsl();
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "getWrappedThis", zzj.class.getSimpleName());
            return null;
        }
    }
}
