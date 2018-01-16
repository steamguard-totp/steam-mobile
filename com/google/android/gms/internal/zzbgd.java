package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.List;

public class zzbgd extends zzbfw<String> {
    private final String zzbLe;
    private final List<zzbfw<?>> zzbLf;

    public zzbgd(String str, List<zzbfw<?>> list) {
        zzac.zzb((Object) str, (Object) "Instruction name must be a string.");
        zzac.zzw(list);
        this.zzbLe = str;
        this.zzbLf = list;
    }

    public String toString() {
        String str = this.zzbLe;
        String valueOf = String.valueOf(this.zzbLf.toString());
        return new StringBuilder((String.valueOf(str).length() + 3) + String.valueOf(valueOf).length()).append("*").append(str).append(": ").append(valueOf).toString();
    }

    public String value() {
        return toString();
    }

    public /* synthetic */ Object zzRF() {
        return value();
    }

    public String zzRR() {
        return this.zzbLe;
    }

    public List<zzbfw<?>> zzRS() {
        return this.zzbLf;
    }
}
