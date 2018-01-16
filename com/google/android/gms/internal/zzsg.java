package com.google.android.gms.internal;

public enum zzsg {
    NONE,
    GZIP;

    public static zzsg zzbY(String str) {
        return "GZIP".equalsIgnoreCase(str) ? GZIP : NONE;
    }
}
