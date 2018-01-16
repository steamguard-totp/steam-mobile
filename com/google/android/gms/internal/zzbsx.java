package com.google.android.gms.internal;

public final class zzbsx implements zzbse {
    private final zzbsl zzcmu;

    public zzbsx(zzbsl com_google_android_gms_internal_zzbsl) {
        this.zzcmu = com_google_android_gms_internal_zzbsl;
    }

    static zzbsd<?> zza(zzbsl com_google_android_gms_internal_zzbsl, zzbrl com_google_android_gms_internal_zzbrl, zzbth<?> com_google_android_gms_internal_zzbth_, zzbsf com_google_android_gms_internal_zzbsf) {
        Class value = com_google_android_gms_internal_zzbsf.value();
        if (zzbsd.class.isAssignableFrom(value)) {
            return (zzbsd) com_google_android_gms_internal_zzbsl.zzb(zzbth.zzq(value)).zzabJ();
        }
        if (zzbse.class.isAssignableFrom(value)) {
            return ((zzbse) com_google_android_gms_internal_zzbsl.zzb(zzbth.zzq(value)).zzabJ()).zza(com_google_android_gms_internal_zzbrl, com_google_android_gms_internal_zzbth_);
        }
        throw new IllegalArgumentException("@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference.");
    }

    public <T> zzbsd<T> zza(zzbrl com_google_android_gms_internal_zzbrl, zzbth<T> com_google_android_gms_internal_zzbth_T) {
        zzbsf com_google_android_gms_internal_zzbsf = (zzbsf) com_google_android_gms_internal_zzbth_T.zzacb().getAnnotation(zzbsf.class);
        return com_google_android_gms_internal_zzbsf == null ? null : zza(this.zzcmu, com_google_android_gms_internal_zzbrl, com_google_android_gms_internal_zzbth_T, com_google_android_gms_internal_zzbsf);
    }
}
