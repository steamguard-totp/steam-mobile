package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class zzbfx extends zzbfw<Boolean> {
    private static final Map<String, zzazt> zzbKP;
    private final Boolean zzbKO;

    static {
        Map hashMap = new HashMap();
        hashMap.put("hasOwnProperty", zzbbr.zzbJy);
        hashMap.put("toString", new zzbct());
        zzbKP = Collections.unmodifiableMap(hashMap);
    }

    public zzbfx(Boolean bool) {
        zzac.zzw(bool);
        this.zzbKO = bool;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbfx)) {
            return false;
        }
        return ((Boolean) ((zzbfx) obj).zzRF()) == this.zzbKO;
    }

    public String toString() {
        return this.zzbKO.toString();
    }

    public /* synthetic */ Object zzRF() {
        return zzRI();
    }

    public Boolean zzRI() {
        return this.zzbKO;
    }

    public boolean zzih(String str) {
        return zzbKP.containsKey(str);
    }

    public zzazt zzii(String str) {
        if (zzih(str)) {
            return (zzazt) zzbKP.get(str);
        }
        throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 54).append("Native Method ").append(str).append(" is not defined for type BooleanWrapper.").toString());
    }
}
