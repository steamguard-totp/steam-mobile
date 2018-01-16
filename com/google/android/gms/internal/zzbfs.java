package com.google.android.gms.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class zzbfs {
    private final Map<String, zzbfv> zzbKA;
    private final zzbfv zzbKB;

    public static class zza {
        private final Map<String, zzbfv> zzbKA = new HashMap();
        private zzbfv zzbKB;

        public zzbfs zzRu() {
            return new zzbfs(this.zzbKA, this.zzbKB);
        }

        public zza zza(String str, zzbfv com_google_android_gms_internal_zzbfv) {
            this.zzbKA.put(str, com_google_android_gms_internal_zzbfv);
            return this;
        }

        public zza zzb(zzbfv com_google_android_gms_internal_zzbfv) {
            this.zzbKB = com_google_android_gms_internal_zzbfv;
            return this;
        }
    }

    private zzbfs(Map<String, zzbfv> map, zzbfv com_google_android_gms_internal_zzbfv) {
        this.zzbKA = Collections.unmodifiableMap(map);
        this.zzbKB = com_google_android_gms_internal_zzbfv;
    }

    public String toString() {
        String valueOf = String.valueOf(zzRt());
        String valueOf2 = String.valueOf(this.zzbKB);
        return new StringBuilder((String.valueOf(valueOf).length() + 32) + String.valueOf(valueOf2).length()).append("Properties: ").append(valueOf).append(" pushAfterEvaluate: ").append(valueOf2).toString();
    }

    public Map<String, zzbfv> zzRt() {
        return this.zzbKA;
    }
}
