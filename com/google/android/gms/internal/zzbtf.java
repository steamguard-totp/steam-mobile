package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbtc.zza;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

final class zzbtf<T> extends zzbsd<T> {
    private final zzbsd<T> zzcmC;
    private final zzbrl zzcoy;
    private final Type zzcoz;

    zzbtf(zzbrl com_google_android_gms_internal_zzbrl, zzbsd<T> com_google_android_gms_internal_zzbsd_T, Type type) {
        this.zzcoy = com_google_android_gms_internal_zzbrl;
        this.zzcmC = com_google_android_gms_internal_zzbsd_T;
        this.zzcoz = type;
    }

    private Type zzb(Type type, Object obj) {
        return obj != null ? (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class)) ? obj.getClass() : type : type;
    }

    public void zza(zzbtk com_google_android_gms_internal_zzbtk, T t) throws IOException {
        zzbsd com_google_android_gms_internal_zzbsd = this.zzcmC;
        Type zzb = zzb(this.zzcoz, t);
        if (zzb != this.zzcoz) {
            com_google_android_gms_internal_zzbsd = this.zzcoy.zza(zzbth.zzl(zzb));
            if ((com_google_android_gms_internal_zzbsd instanceof zza) && !(this.zzcmC instanceof zza)) {
                com_google_android_gms_internal_zzbsd = this.zzcmC;
            }
        }
        com_google_android_gms_internal_zzbsd.zza(com_google_android_gms_internal_zzbtk, t);
    }

    public T zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
        return this.zzcmC.zzb(com_google_android_gms_internal_zzbti);
    }
}
