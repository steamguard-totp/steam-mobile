package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzaj.zza;
import java.util.Map;
import java.util.Set;

abstract class zzam {
    private final Set<String> zzbEh;

    public abstract boolean zzOw();

    public Set<String> zzPh() {
        return this.zzbEh;
    }

    public abstract zza zzY(Map<String, zza> map);

    boolean zzf(Set<String> set) {
        return set.containsAll(this.zzbEh);
    }
}
