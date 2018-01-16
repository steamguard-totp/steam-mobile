package com.google.android.gms.internal;

import java.util.Map;

public class zzbpw {
    private final String zzbwP;
    private final Map<String, Object> zzcis;

    public zzbpw(String str, Map<String, Object> map) {
        this.zzbwP = str;
        this.zzcis = map;
    }

    public static zzbpw zzje(String str) {
        if (!str.startsWith("gauth|")) {
            return null;
        }
        try {
            Map zzjf = zzbpx.zzjf(str.substring("gauth|".length()));
            return new zzbpw((String) zzjf.get("token"), (Map) zzjf.get("auth"));
        } catch (Throwable e) {
            throw new RuntimeException("Failed to parse gauth token", e);
        }
    }

    public String getToken() {
        return this.zzbwP;
    }

    public Map<String, Object> zzZX() {
        return this.zzcis;
    }
}
