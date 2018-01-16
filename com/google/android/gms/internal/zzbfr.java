package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class zzbfr {
    private String zzaux;
    private final List<zzbft> zzbKx;
    private final Map<String, zzbfs> zzbKy;
    private int zzbKz;

    public static class zza {
        private String zzaux = "";
        private final List<zzbft> zzbKx = new ArrayList();
        private final Map<String, zzbfs> zzbKy = new HashMap();
        private int zzbKz = 0;

        public zzbfr zzRs() {
            return new zzbfr(this.zzbKx, this.zzbKy, this.zzaux, 0);
        }

        public zza zza(zzbft com_google_android_gms_internal_zzbft) {
            this.zzbKx.add(com_google_android_gms_internal_zzbft);
            return this;
        }

        public zza zzc(zzbfs com_google_android_gms_internal_zzbfs) {
            this.zzbKy.put(((zzbfv) com_google_android_gms_internal_zzbfs.zzRt().get("instance_name")).toString(), com_google_android_gms_internal_zzbfs);
            return this;
        }

        public zza zzid(String str) {
            this.zzaux = str;
            return this;
        }
    }

    public zzbfr(List<zzbft> list, Map<String, zzbfs> map, String str, int i) {
        this.zzbKx = Collections.unmodifiableList(list);
        this.zzbKy = Collections.unmodifiableMap(map);
        this.zzaux = str;
        this.zzbKz = i;
    }

    public String getVersion() {
        return this.zzaux;
    }

    public String toString() {
        String valueOf = String.valueOf(zzRr());
        String valueOf2 = String.valueOf(this.zzbKy);
        return new StringBuilder((String.valueOf(valueOf).length() + 18) + String.valueOf(valueOf2).length()).append("Rules: ").append(valueOf).append("\n  Macros: ").append(valueOf2).toString();
    }

    public List<zzbft> zzRr() {
        return this.zzbKx;
    }

    public zzbfs zzic(String str) {
        return (zzbfs) this.zzbKy.get(str);
    }
}
