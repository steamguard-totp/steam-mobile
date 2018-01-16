package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

public final class zzbsu<E> extends zzbsd<Object> {
    public static final zzbse zzcnX = new zzbse() {
        public <T> zzbsd<T> zza(zzbrl com_google_android_gms_internal_zzbrl, zzbth<T> com_google_android_gms_internal_zzbth_T) {
            Type zzacc = com_google_android_gms_internal_zzbth_T.zzacc();
            if (!(zzacc instanceof GenericArrayType) && (!(zzacc instanceof Class) || !((Class) zzacc).isArray())) {
                return null;
            }
            zzacc = zzbsk.zzh(zzacc);
            return new zzbsu(com_google_android_gms_internal_zzbrl, com_google_android_gms_internal_zzbrl.zza(zzbth.zzl(zzacc)), zzbsk.zzf(zzacc));
        }
    };
    private final Class<E> zzcnY;
    private final zzbsd<E> zzcnZ;

    public zzbsu(zzbrl com_google_android_gms_internal_zzbrl, zzbsd<E> com_google_android_gms_internal_zzbsd_E, Class<E> cls) {
        this.zzcnZ = new zzbtf(com_google_android_gms_internal_zzbrl, com_google_android_gms_internal_zzbsd_E, cls);
        this.zzcnY = cls;
    }

    public void zza(zzbtk com_google_android_gms_internal_zzbtk, Object obj) throws IOException {
        if (obj == null) {
            com_google_android_gms_internal_zzbtk.zzaca();
            return;
        }
        com_google_android_gms_internal_zzbtk.zzabW();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.zzcnZ.zza(com_google_android_gms_internal_zzbtk, Array.get(obj, i));
        }
        com_google_android_gms_internal_zzbtk.zzabX();
    }

    public Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
        if (com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.NULL) {
            com_google_android_gms_internal_zzbti.nextNull();
            return null;
        }
        List arrayList = new ArrayList();
        com_google_android_gms_internal_zzbti.beginArray();
        while (com_google_android_gms_internal_zzbti.hasNext()) {
            arrayList.add(this.zzcnZ.zzb(com_google_android_gms_internal_zzbti));
        }
        com_google_android_gms_internal_zzbti.endArray();
        Object newInstance = Array.newInstance(this.zzcnY, arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            Array.set(newInstance, i, arrayList.get(i));
        }
        return newInstance;
    }
}
