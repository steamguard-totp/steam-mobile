package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;
import java.util.Map;

public class zzbgi {

    public static class zza {
        private final com.google.android.gms.internal.zzaj.zza zzbFS;
        private final Map<String, com.google.android.gms.internal.zzaj.zza> zzbKA;

        public String toString() {
            String valueOf = String.valueOf(zzRt());
            String valueOf2 = String.valueOf(this.zzbFS);
            return new StringBuilder((String.valueOf(valueOf).length() + 32) + String.valueOf(valueOf2).length()).append("Properties: ").append(valueOf).append(" pushAfterEvaluate: ").append(valueOf2).toString();
        }

        public com.google.android.gms.internal.zzaj.zza zzPM() {
            return this.zzbFS;
        }

        public Map<String, com.google.android.gms.internal.zzaj.zza> zzRt() {
            return Collections.unmodifiableMap(this.zzbKA);
        }

        public void zza(String str, com.google.android.gms.internal.zzaj.zza com_google_android_gms_internal_zzaj_zza) {
            this.zzbKA.put(str, com_google_android_gms_internal_zzaj_zza);
        }
    }

    public static class zze {
        private final List<zza> zzbKC;
        private final List<zza> zzbKD;
        private final List<zza> zzbKE;
        private final List<zza> zzbKF;
        private final List<zza> zzbLk;
        private final List<zza> zzbLl;

        public String toString() {
            String valueOf = String.valueOf(zzRv());
            String valueOf2 = String.valueOf(zzRw());
            String valueOf3 = String.valueOf(zzRx());
            String valueOf4 = String.valueOf(zzRy());
            String valueOf5 = String.valueOf(zzSa());
            String valueOf6 = String.valueOf(zzSb());
            return new StringBuilder((((((String.valueOf(valueOf).length() + 102) + String.valueOf(valueOf2).length()) + String.valueOf(valueOf3).length()) + String.valueOf(valueOf4).length()) + String.valueOf(valueOf5).length()) + String.valueOf(valueOf6).length()).append("Positive predicates: ").append(valueOf).append("  Negative predicates: ").append(valueOf2).append("  Add tags: ").append(valueOf3).append("  Remove tags: ").append(valueOf4).append("  Add macros: ").append(valueOf5).append("  Remove macros: ").append(valueOf6).toString();
        }

        public List<zza> zzRv() {
            return this.zzbKC;
        }

        public List<zza> zzRw() {
            return this.zzbKD;
        }

        public List<zza> zzRx() {
            return this.zzbKE;
        }

        public List<zza> zzRy() {
            return this.zzbKF;
        }

        public List<zza> zzSa() {
            return this.zzbLk;
        }

        public List<zza> zzSb() {
            return this.zzbLl;
        }
    }

    public static com.google.android.gms.internal.zzaj.zza zzm(com.google.android.gms.internal.zzaj.zza com_google_android_gms_internal_zzaj_zza) {
        com.google.android.gms.internal.zzaj.zza com_google_android_gms_internal_zzaj_zza2 = new com.google.android.gms.internal.zzaj.zza();
        com_google_android_gms_internal_zzaj_zza2.type = com_google_android_gms_internal_zzaj_zza.type;
        com_google_android_gms_internal_zzaj_zza2.zzlF = (int[]) com_google_android_gms_internal_zzaj_zza.zzlF.clone();
        if (com_google_android_gms_internal_zzaj_zza.zzlG) {
            com_google_android_gms_internal_zzaj_zza2.zzlG = com_google_android_gms_internal_zzaj_zza.zzlG;
        }
        return com_google_android_gms_internal_zzaj_zza2;
    }
}
