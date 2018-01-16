package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;

public final class zzbsv implements zzbse {
    private final zzbsl zzcmu;

    private static final class zza<E> extends zzbsd<Collection<E>> {
        private final zzbsd<E> zzcoa;
        private final zzbsq<? extends Collection<E>> zzcob;

        public zza(zzbrl com_google_android_gms_internal_zzbrl, Type type, zzbsd<E> com_google_android_gms_internal_zzbsd_E, zzbsq<? extends Collection<E>> com_google_android_gms_internal_zzbsq__extends_java_util_Collection_E) {
            this.zzcoa = new zzbtf(com_google_android_gms_internal_zzbrl, com_google_android_gms_internal_zzbsd_E, type);
            this.zzcob = com_google_android_gms_internal_zzbsq__extends_java_util_Collection_E;
        }

        public void zza(zzbtk com_google_android_gms_internal_zzbtk, Collection<E> collection) throws IOException {
            if (collection == null) {
                com_google_android_gms_internal_zzbtk.zzaca();
                return;
            }
            com_google_android_gms_internal_zzbtk.zzabW();
            for (E zza : collection) {
                this.zzcoa.zza(com_google_android_gms_internal_zzbtk, zza);
            }
            com_google_android_gms_internal_zzbtk.zzabX();
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzj(com_google_android_gms_internal_zzbti);
        }

        public Collection<E> zzj(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.NULL) {
                com_google_android_gms_internal_zzbti.nextNull();
                return null;
            }
            Collection<E> collection = (Collection) this.zzcob.zzabJ();
            com_google_android_gms_internal_zzbti.beginArray();
            while (com_google_android_gms_internal_zzbti.hasNext()) {
                collection.add(this.zzcoa.zzb(com_google_android_gms_internal_zzbti));
            }
            com_google_android_gms_internal_zzbti.endArray();
            return collection;
        }
    }

    public zzbsv(zzbsl com_google_android_gms_internal_zzbsl) {
        this.zzcmu = com_google_android_gms_internal_zzbsl;
    }

    public <T> zzbsd<T> zza(zzbrl com_google_android_gms_internal_zzbrl, zzbth<T> com_google_android_gms_internal_zzbth_T) {
        Type zzacc = com_google_android_gms_internal_zzbth_T.zzacc();
        Class zzacb = com_google_android_gms_internal_zzbth_T.zzacb();
        if (!Collection.class.isAssignableFrom(zzacb)) {
            return null;
        }
        Type zza = zzbsk.zza(zzacc, zzacb);
        return new zza(com_google_android_gms_internal_zzbrl, zza, com_google_android_gms_internal_zzbrl.zza(zzbth.zzl(zza)), this.zzcmu.zzb(com_google_android_gms_internal_zzbth_T));
    }
}
