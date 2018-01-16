package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class zzbfy extends zzbfw<Double> {
    private static final Map<String, zzazt> zzbKP;
    private Double zzbKQ;

    static {
        Map hashMap = new HashMap();
        hashMap.put("hasOwnProperty", zzbbr.zzbJy);
        hashMap.put("toString", new zzbct());
        zzbKP = Collections.unmodifiableMap(hashMap);
    }

    public zzbfy(Double d) {
        zzac.zzw(d);
        this.zzbKQ = d;
    }

    public boolean equals(Object obj) {
        return this == obj ? true : obj instanceof zzbfy ? this.zzbKQ.equals((Double) ((zzbfy) obj).zzRF()) : false;
    }

    public String toString() {
        return this.zzbKQ.toString();
    }

    public /* synthetic */ Object zzRF() {
        return zzRJ();
    }

    public Double zzRJ() {
        return this.zzbKQ;
    }

    public boolean zzih(String str) {
        return zzbKP.containsKey(str);
    }

    public zzazt zzii(String str) {
        if (zzih(str)) {
            return (zzazt) zzbKP.get(str);
        }
        throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 53).append("Native Method ").append(str).append(" is not defined for type DoubleWrapper.").toString());
    }
}
