package com.google.android.gms.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class zzbtb extends zzbsd<Object> {
    public static final zzbse zzcnX = new zzbse() {
        public <T> zzbsd<T> zza(zzbrl com_google_android_gms_internal_zzbrl, zzbth<T> com_google_android_gms_internal_zzbth_T) {
            return com_google_android_gms_internal_zzbth_T.zzacb() == Object.class ? new zzbtb(com_google_android_gms_internal_zzbrl) : null;
        }
    };
    private final zzbrl zzcmT;

    private zzbtb(zzbrl com_google_android_gms_internal_zzbrl) {
        this.zzcmT = com_google_android_gms_internal_zzbrl;
    }

    public void zza(zzbtk com_google_android_gms_internal_zzbtk, Object obj) throws IOException {
        if (obj == null) {
            com_google_android_gms_internal_zzbtk.zzaca();
            return;
        }
        zzbsd zzj = this.zzcmT.zzj(obj.getClass());
        if (zzj instanceof zzbtb) {
            com_google_android_gms_internal_zzbtk.zzabY();
            com_google_android_gms_internal_zzbtk.zzabZ();
            return;
        }
        zzj.zza(com_google_android_gms_internal_zzbtk, obj);
    }

    public Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
        switch (com_google_android_gms_internal_zzbti.zzabQ()) {
            case BEGIN_ARRAY:
                List arrayList = new ArrayList();
                com_google_android_gms_internal_zzbti.beginArray();
                while (com_google_android_gms_internal_zzbti.hasNext()) {
                    arrayList.add(zzb(com_google_android_gms_internal_zzbti));
                }
                com_google_android_gms_internal_zzbti.endArray();
                return arrayList;
            case BEGIN_OBJECT:
                Map com_google_android_gms_internal_zzbsp = new zzbsp();
                com_google_android_gms_internal_zzbti.beginObject();
                while (com_google_android_gms_internal_zzbti.hasNext()) {
                    com_google_android_gms_internal_zzbsp.put(com_google_android_gms_internal_zzbti.nextName(), zzb(com_google_android_gms_internal_zzbti));
                }
                com_google_android_gms_internal_zzbti.endObject();
                return com_google_android_gms_internal_zzbsp;
            case STRING:
                return com_google_android_gms_internal_zzbti.nextString();
            case NUMBER:
                return Double.valueOf(com_google_android_gms_internal_zzbti.nextDouble());
            case BOOLEAN:
                return Boolean.valueOf(com_google_android_gms_internal_zzbti.nextBoolean());
            case NULL:
                com_google_android_gms_internal_zzbti.nextNull();
                return null;
            default:
                throw new IllegalStateException();
        }
    }
}
