package com.google.android.gms.internal;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public class zzbth<T> {
    final Type zzcoz;
    final Class<? super T> zzcpD;
    final int zzcpE;

    protected zzbth() {
        this.zzcoz = zzp(getClass());
        this.zzcpD = zzbsk.zzf(this.zzcoz);
        this.zzcpE = this.zzcoz.hashCode();
    }

    zzbth(Type type) {
        this.zzcoz = zzbsk.zze((Type) zzbsj.zzw(type));
        this.zzcpD = zzbsk.zzf(this.zzcoz);
        this.zzcpE = this.zzcoz.hashCode();
    }

    public static zzbth<?> zzl(Type type) {
        return new zzbth(type);
    }

    static Type zzp(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (!(genericSuperclass instanceof Class)) {
            return zzbsk.zze(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        }
        throw new RuntimeException("Missing type parameter.");
    }

    public static <T> zzbth<T> zzq(Class<T> cls) {
        return new zzbth(cls);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzbth) && zzbsk.zza(this.zzcoz, ((zzbth) obj).zzcoz);
    }

    public final int hashCode() {
        return this.zzcpE;
    }

    public final String toString() {
        return zzbsk.zzg(this.zzcoz);
    }

    public final Class<? super T> zzacb() {
        return this.zzcpD;
    }

    public final Type zzacc() {
        return this.zzcoz;
    }
}
