package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public final class zzbga extends zzbfw<zzbfw<?>> {
    public static final zzbga zzbKS = new zzbga("BREAK");
    public static final zzbga zzbKT = new zzbga("CONTINUE");
    public static final zzbga zzbKU = new zzbga("NULL");
    public static final zzbga zzbKV = new zzbga("UNDEFINED");
    private final String mName;
    private final boolean zzbKW;
    private final zzbfw<?> zzbKX;

    public zzbga(zzbfw<?> com_google_android_gms_internal_zzbfw_) {
        zzac.zzw(com_google_android_gms_internal_zzbfw_);
        this.mName = "RETURN";
        this.zzbKW = true;
        this.zzbKX = com_google_android_gms_internal_zzbfw_;
    }

    private zzbga(String str) {
        this.mName = str;
        this.zzbKW = false;
        this.zzbKX = null;
    }

    public String toString() {
        return this.mName;
    }

    public /* synthetic */ Object zzRF() {
        return zzRL();
    }

    public zzbfw zzRL() {
        return this.zzbKX;
    }

    public boolean zzRM() {
        return this.zzbKW;
    }
}
