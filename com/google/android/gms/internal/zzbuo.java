package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Array;

public class zzbuo<M extends zzbun<M>, T> {
    public final int tag;
    protected final int type;
    protected final Class<T> zzciF;
    protected final boolean zzcrY;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbuo)) {
            return false;
        }
        zzbuo com_google_android_gms_internal_zzbuo = (zzbuo) obj;
        return this.type == com_google_android_gms_internal_zzbuo.type && this.zzciF == com_google_android_gms_internal_zzbuo.zzciF && this.tag == com_google_android_gms_internal_zzbuo.tag && this.zzcrY == com_google_android_gms_internal_zzbuo.zzcrY;
    }

    public int hashCode() {
        return (this.zzcrY ? 1 : 0) + ((((((this.type + 1147) * 31) + this.zzciF.hashCode()) * 31) + this.tag) * 31);
    }

    void zza(Object obj, zzbum com_google_android_gms_internal_zzbum) throws IOException {
        if (this.zzcrY) {
            zzc(obj, com_google_android_gms_internal_zzbum);
        } else {
            zzb(obj, com_google_android_gms_internal_zzbum);
        }
    }

    int zzaR(Object obj) {
        return this.zzcrY ? zzaS(obj) : zzaT(obj);
    }

    protected int zzaS(Object obj) {
        int i = 0;
        int length = Array.getLength(obj);
        for (int i2 = 0; i2 < length; i2++) {
            if (Array.get(obj, i2) != null) {
                i += zzaT(Array.get(obj, i2));
            }
        }
        return i;
    }

    protected int zzaT(Object obj) {
        int zzqB = zzbuw.zzqB(this.tag);
        switch (this.type) {
            case 10:
                return zzbum.zzb(zzqB, (zzbut) obj);
            case 11:
                return zzbum.zzc(zzqB, (zzbut) obj);
            default:
                throw new IllegalArgumentException("Unknown type " + this.type);
        }
    }

    protected void zzb(Object obj, zzbum com_google_android_gms_internal_zzbum) {
        try {
            com_google_android_gms_internal_zzbum.zzqt(this.tag);
            switch (this.type) {
                case 10:
                    zzbut com_google_android_gms_internal_zzbut = (zzbut) obj;
                    int zzqB = zzbuw.zzqB(this.tag);
                    com_google_android_gms_internal_zzbum.zzb(com_google_android_gms_internal_zzbut);
                    com_google_android_gms_internal_zzbum.zzJ(zzqB, 4);
                    return;
                case 11:
                    com_google_android_gms_internal_zzbum.zzc((zzbut) obj);
                    return;
                default:
                    throw new IllegalArgumentException("Unknown type " + this.type);
            }
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
        throw new IllegalStateException(e);
    }

    protected void zzc(Object obj, zzbum com_google_android_gms_internal_zzbum) {
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            Object obj2 = Array.get(obj, i);
            if (obj2 != null) {
                zzb(obj2, com_google_android_gms_internal_zzbum);
            }
        }
    }
}
