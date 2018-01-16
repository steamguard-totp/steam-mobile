package com.google.android.gms.internal;

import java.util.Map.Entry;
import java.util.Set;

public final class zzbru extends zzbrr {
    private final zzbsp<String, zzbrr> zzcmM = new zzbsp();

    private zzbrr zzaJ(Object obj) {
        return obj == null ? zzbrt.zzcmL : new zzbrx(obj);
    }

    public Set<Entry<String, zzbrr>> entrySet() {
        return this.zzcmM.entrySet();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof zzbru) && ((zzbru) obj).zzcmM.equals(this.zzcmM));
    }

    public boolean has(String str) {
        return this.zzcmM.containsKey(str);
    }

    public int hashCode() {
        return this.zzcmM.hashCode();
    }

    public void zza(String str, zzbrr com_google_android_gms_internal_zzbrr) {
        Object obj;
        if (com_google_android_gms_internal_zzbrr == null) {
            obj = zzbrt.zzcmL;
        }
        this.zzcmM.put(str, obj);
    }

    public void zzaB(String str, String str2) {
        zza(str, zzaJ(str2));
    }

    public void zzb(String str, Boolean bool) {
        zza(str, zzaJ(bool));
    }

    public zzbrr zzjS(String str) {
        return (zzbrr) this.zzcmM.get(str);
    }

    public zzbro zzjT(String str) {
        return (zzbro) this.zzcmM.get(str);
    }
}
