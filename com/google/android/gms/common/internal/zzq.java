package com.google.android.gms.common.internal;

public final class zzq {
    public static final int zzaES = (23 - " PII_LOG".length());
    private static final String zzaET = null;
    private final String zzaEU;
    private final String zzaEV;

    public zzq(String str) {
        this(str, null);
    }

    public zzq(String str, String str2) {
        zzac.zzb((Object) str, (Object) "log tag cannot be null");
        zzac.zzb(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, Integer.valueOf(23));
        this.zzaEU = str;
        if (str2 == null || str2.length() <= 0) {
            this.zzaEV = null;
        } else {
            this.zzaEV = str2;
        }
    }
}
