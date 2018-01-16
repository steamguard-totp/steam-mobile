package com.google.android.gms.internal;

import java.io.IOException;

public abstract class zzbsd<T> {
    public abstract void zza(zzbtk com_google_android_gms_internal_zzbtk, T t) throws IOException;

    public final zzbrr zzaL(T t) {
        try {
            zzbtk com_google_android_gms_internal_zzbsz = new zzbsz();
            zza(com_google_android_gms_internal_zzbsz, t);
            return com_google_android_gms_internal_zzbsz.zzabU();
        } catch (Throwable e) {
            throw new zzbrs(e);
        }
    }

    public abstract T zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException;
}
