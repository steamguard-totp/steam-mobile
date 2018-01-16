package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbfh {
    private zzbfa zzbKh;

    public String getId() {
        return this.zzbKh == null ? "" : this.zzbKh.getContainerId();
    }

    public zzbfa zzRh() {
        return this.zzbKh;
    }

    public zzbfh zza(zzbfa com_google_android_gms_internal_zzbfa) throws IllegalArgumentException {
        zzac.zzw(com_google_android_gms_internal_zzbfa);
        this.zzbKh = com_google_android_gms_internal_zzbfa;
        return this;
    }
}
