package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbfa {
    private final String zzbCS;
    private final String zzbFt;
    private final String zzbHk;
    private final String zzbJS;
    private final boolean zzbJT;
    private final String zzbJU;

    public zzbfa(String str, String str2, String str3, boolean z, String str4) {
        this(str, str2, str3, z, str4, "");
    }

    public zzbfa(String str, String str2, String str3, boolean z, String str4, String str5) {
        zzac.zzw(str);
        zzac.zzw(str5);
        this.zzbCS = str;
        this.zzbHk = str2;
        this.zzbJS = str3;
        this.zzbJT = z;
        this.zzbJU = str4;
        this.zzbFt = str5;
    }

    public String getContainerId() {
        return this.zzbCS;
    }

    public String zzRa() {
        return this.zzbHk;
    }

    public String zzRb() {
        return this.zzbJS;
    }

    public String zzRc() {
        if (this.zzbJS == null) {
            return this.zzbCS;
        }
        String str = this.zzbJS;
        String str2 = this.zzbCS;
        return new StringBuilder((String.valueOf(str).length() + 1) + String.valueOf(str2).length()).append(str).append("_").append(str2).toString();
    }

    public boolean zzRd() {
        return this.zzbJT;
    }

    public String zzRe() {
        return this.zzbJU;
    }

    public String zzRf() {
        return this.zzbFt;
    }
}
