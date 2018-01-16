package com.google.android.gms.internal;

import java.net.URI;

public class zzblp {
    private final String zzaFs;
    private final String zzbZA;
    private final boolean zzbZB;

    public zzblp(String str, String str2, boolean z) {
        this.zzbZA = str;
        this.zzaFs = str2;
        this.zzbZB = z;
    }

    public static URI zza(String str, boolean z, String str2, String str3) {
        String str4 = z ? "wss" : "ws";
        String valueOf = String.valueOf("v");
        String valueOf2 = String.valueOf("5");
        str4 = new StringBuilder(((((String.valueOf(str4).length() + 13) + String.valueOf(str).length()) + String.valueOf(str2).length()) + String.valueOf(valueOf).length()) + String.valueOf(valueOf2).length()).append(str4).append("://").append(str).append("/.ws?ns=").append(str2).append("&").append(valueOf).append("=").append(valueOf2).toString();
        if (str3 != null) {
            str4 = String.valueOf(str4);
            valueOf = String.valueOf("&ls=");
            str4 = new StringBuilder(((String.valueOf(str4).length() + 0) + String.valueOf(valueOf).length()) + String.valueOf(str3).length()).append(str4).append(valueOf).append(str3).toString();
        }
        return URI.create(str4);
    }

    public String getHost() {
        return this.zzbZA;
    }

    public String getNamespace() {
        return this.zzaFs;
    }

    public boolean isSecure() {
        return this.zzbZB;
    }

    public String toString() {
        String str = this.zzbZB ? "s" : "";
        String str2 = this.zzbZA;
        return new StringBuilder((String.valueOf(str).length() + 7) + String.valueOf(str2).length()).append("http").append(str).append("://").append(str2).toString();
    }
}
