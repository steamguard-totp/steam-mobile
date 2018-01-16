package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class zzbgc extends zzbfw<Map<String, zzbfw<?>>> {
    private static final Map<String, zzazt> zzbKP;
    private boolean zzbLd = false;

    static {
        Map hashMap = new HashMap();
        hashMap.put("hasOwnProperty", zzbbr.zzbJy);
        zzbKP = Collections.unmodifiableMap(hashMap);
    }

    public zzbgc(Map<String, zzbfw<?>> map) {
        this.zzbKM = (Map) zzac.zzw(map);
    }

    public boolean equals(Object obj) {
        return this == obj ? true : obj instanceof zzbgc ? this.zzbKM.entrySet().equals(((Map) ((zzbgc) obj).zzRF()).entrySet()) : false;
    }

    public String toString() {
        return this.zzbKM.toString();
    }

    public Iterator<zzbfw<?>> zzRE() {
        return zzRG();
    }

    public /* synthetic */ Object zzRF() {
        return zzRO();
    }

    public Map<String, zzbfw<?>> zzRO() {
        return this.zzbKM;
    }

    public void zzRP() {
        this.zzbLd = true;
    }

    public boolean zzRQ() {
        return this.zzbLd;
    }

    public zzbfw<?> zzig(String str) {
        zzbfw<?> zzig = super.zzig(str);
        return zzig == null ? zzbga.zzbKV : zzig;
    }

    public boolean zzih(String str) {
        return zzbKP.containsKey(str);
    }

    public zzazt zzii(String str) {
        if (zzih(str)) {
            return (zzazt) zzbKP.get(str);
        }
        throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 51).append("Native Method ").append(str).append(" is not defined for type ListWrapper.").toString());
    }
}
