package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public final class zzbta implements zzbse {
    private final zzbsl zzcmu;
    private final boolean zzcoj;

    private final class zza<K, V> extends zzbsd<Map<K, V>> {
        private final zzbsq<? extends Map<K, V>> zzcob;
        private final zzbsd<K> zzcok;
        private final zzbsd<V> zzcol;
        final /* synthetic */ zzbta zzcom;

        public zza(zzbta com_google_android_gms_internal_zzbta, zzbrl com_google_android_gms_internal_zzbrl, Type type, zzbsd<K> com_google_android_gms_internal_zzbsd_K, Type type2, zzbsd<V> com_google_android_gms_internal_zzbsd_V, zzbsq<? extends Map<K, V>> com_google_android_gms_internal_zzbsq__extends_java_util_Map_K__V) {
            this.zzcom = com_google_android_gms_internal_zzbta;
            this.zzcok = new zzbtf(com_google_android_gms_internal_zzbrl, com_google_android_gms_internal_zzbsd_K, type);
            this.zzcol = new zzbtf(com_google_android_gms_internal_zzbrl, com_google_android_gms_internal_zzbsd_V, type2);
            this.zzcob = com_google_android_gms_internal_zzbsq__extends_java_util_Map_K__V;
        }

        private String zze(zzbrr com_google_android_gms_internal_zzbrr) {
            if (com_google_android_gms_internal_zzbrr.zzabx()) {
                zzbrx zzabB = com_google_android_gms_internal_zzbrr.zzabB();
                if (zzabB.zzabE()) {
                    return String.valueOf(zzabB.zzabt());
                }
                if (zzabB.zzabD()) {
                    return Boolean.toString(zzabB.getAsBoolean());
                }
                if (zzabB.zzabF()) {
                    return zzabB.zzabu();
                }
                throw new AssertionError();
            } else if (com_google_android_gms_internal_zzbrr.zzaby()) {
                return "null";
            } else {
                throw new AssertionError();
            }
        }

        public void zza(zzbtk com_google_android_gms_internal_zzbtk, Map<K, V> map) throws IOException {
            int i = 0;
            if (map == null) {
                com_google_android_gms_internal_zzbtk.zzaca();
            } else if (this.zzcom.zzcoj) {
                List arrayList = new ArrayList(map.size());
                List arrayList2 = new ArrayList(map.size());
                int i2 = 0;
                for (Entry entry : map.entrySet()) {
                    zzbrr zzaL = this.zzcok.zzaL(entry.getKey());
                    arrayList.add(zzaL);
                    arrayList2.add(entry.getValue());
                    int i3 = (zzaL.zzabv() || zzaL.zzabw()) ? 1 : 0;
                    i2 = i3 | i2;
                }
                if (i2 != 0) {
                    com_google_android_gms_internal_zzbtk.zzabW();
                    while (i < arrayList.size()) {
                        com_google_android_gms_internal_zzbtk.zzabW();
                        zzbss.zzb((zzbrr) arrayList.get(i), com_google_android_gms_internal_zzbtk);
                        this.zzcol.zza(com_google_android_gms_internal_zzbtk, arrayList2.get(i));
                        com_google_android_gms_internal_zzbtk.zzabX();
                        i++;
                    }
                    com_google_android_gms_internal_zzbtk.zzabX();
                    return;
                }
                com_google_android_gms_internal_zzbtk.zzabY();
                while (i < arrayList.size()) {
                    com_google_android_gms_internal_zzbtk.zzjW(zze((zzbrr) arrayList.get(i)));
                    this.zzcol.zza(com_google_android_gms_internal_zzbtk, arrayList2.get(i));
                    i++;
                }
                com_google_android_gms_internal_zzbtk.zzabZ();
            } else {
                com_google_android_gms_internal_zzbtk.zzabY();
                for (Entry entry2 : map.entrySet()) {
                    com_google_android_gms_internal_zzbtk.zzjW(String.valueOf(entry2.getKey()));
                    this.zzcol.zza(com_google_android_gms_internal_zzbtk, entry2.getValue());
                }
                com_google_android_gms_internal_zzbtk.zzabZ();
            }
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzl(com_google_android_gms_internal_zzbti);
        }

        public Map<K, V> zzl(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            zzbtj zzabQ = com_google_android_gms_internal_zzbti.zzabQ();
            if (zzabQ == zzbtj.NULL) {
                com_google_android_gms_internal_zzbti.nextNull();
                return null;
            }
            Map<K, V> map = (Map) this.zzcob.zzabJ();
            Object zzb;
            if (zzabQ == zzbtj.BEGIN_ARRAY) {
                com_google_android_gms_internal_zzbti.beginArray();
                while (com_google_android_gms_internal_zzbti.hasNext()) {
                    com_google_android_gms_internal_zzbti.beginArray();
                    zzb = this.zzcok.zzb(com_google_android_gms_internal_zzbti);
                    if (map.put(zzb, this.zzcol.zzb(com_google_android_gms_internal_zzbti)) != null) {
                        String valueOf = String.valueOf(zzb);
                        throw new zzbsa(new StringBuilder(String.valueOf(valueOf).length() + 15).append("duplicate key: ").append(valueOf).toString());
                    }
                    com_google_android_gms_internal_zzbti.endArray();
                }
                com_google_android_gms_internal_zzbti.endArray();
                return map;
            }
            com_google_android_gms_internal_zzbti.beginObject();
            while (com_google_android_gms_internal_zzbti.hasNext()) {
                zzbsn.zzcny.zzi(com_google_android_gms_internal_zzbti);
                zzb = this.zzcok.zzb(com_google_android_gms_internal_zzbti);
                if (map.put(zzb, this.zzcol.zzb(com_google_android_gms_internal_zzbti)) != null) {
                    valueOf = String.valueOf(zzb);
                    throw new zzbsa(new StringBuilder(String.valueOf(valueOf).length() + 15).append("duplicate key: ").append(valueOf).toString());
                }
            }
            com_google_android_gms_internal_zzbti.endObject();
            return map;
        }
    }

    public zzbta(zzbsl com_google_android_gms_internal_zzbsl, boolean z) {
        this.zzcmu = com_google_android_gms_internal_zzbsl;
        this.zzcoj = z;
    }

    private zzbsd<?> zza(zzbrl com_google_android_gms_internal_zzbrl, Type type) {
        return (type == Boolean.TYPE || type == Boolean.class) ? zzbtg.zzcoF : com_google_android_gms_internal_zzbrl.zza(zzbth.zzl(type));
    }

    public <T> zzbsd<T> zza(zzbrl com_google_android_gms_internal_zzbrl, zzbth<T> com_google_android_gms_internal_zzbth_T) {
        Type zzacc = com_google_android_gms_internal_zzbth_T.zzacc();
        if (!Map.class.isAssignableFrom(com_google_android_gms_internal_zzbth_T.zzacb())) {
            return null;
        }
        Type[] zzb = zzbsk.zzb(zzacc, zzbsk.zzf(zzacc));
        zzbsd zza = zza(com_google_android_gms_internal_zzbrl, zzb[0]);
        zzbsd zza2 = com_google_android_gms_internal_zzbrl.zza(zzbth.zzl(zzb[1]));
        zzbsq zzb2 = this.zzcmu.zzb(com_google_android_gms_internal_zzbth_T);
        return new zza(this, com_google_android_gms_internal_zzbrl, zzb[0], zza, zzb[1], zza2, zzb2);
    }
}
