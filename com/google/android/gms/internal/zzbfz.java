package com.google.android.gms.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class zzbfz extends zzbfw<zzazt> {
    private static final Map<String, zzazt> zzbKP;
    private zzazt zzbKR;

    static {
        Map hashMap = new HashMap();
        hashMap.put("hasOwnProperty", zzbbr.zzbJy);
        zzbKP = Collections.unmodifiableMap(hashMap);
    }

    public zzbfz(zzazt com_google_android_gms_internal_zzazt) {
        this.zzbKR = com_google_android_gms_internal_zzazt;
    }

    public String toString() {
        return this.zzbKR.toString();
    }

    public Iterator<zzbfw<?>> zzRE() {
        return zzRG();
    }

    public /* synthetic */ Object zzRF() {
        return zzRK();
    }

    public zzazt zzRK() {
        return this.zzbKR;
    }

    public boolean zzih(String str) {
        return zzbKP.containsKey(str);
    }

    public zzazt zzii(String str) {
        if (zzih(str)) {
            return (zzazt) zzbKP.get(str);
        }
        throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 60).append("Native Method ").append(str).append(" is not defined for type InstructionReference.").toString());
    }
}
