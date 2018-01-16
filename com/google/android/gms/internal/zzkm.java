package com.google.android.gms.internal;

import org.json.JSONObject;

@zzmb
public class zzkm {
    private final boolean zzLJ;
    private final boolean zzLK;
    private final boolean zzLL;
    private final boolean zzLM;
    private final boolean zzLN;

    public static final class zza {
        private boolean zzLJ;
        private boolean zzLK;
        private boolean zzLL;
        private boolean zzLM;
        private boolean zzLN;

        public zzkm zzgT() {
            return new zzkm();
        }

        public zza zzt(boolean z) {
            this.zzLJ = z;
            return this;
        }

        public zza zzu(boolean z) {
            this.zzLK = z;
            return this;
        }

        public zza zzv(boolean z) {
            this.zzLL = z;
            return this;
        }

        public zza zzw(boolean z) {
            this.zzLM = z;
            return this;
        }

        public zza zzx(boolean z) {
            this.zzLN = z;
            return this;
        }
    }

    private zzkm(zza com_google_android_gms_internal_zzkm_zza) {
        this.zzLJ = com_google_android_gms_internal_zzkm_zza.zzLJ;
        this.zzLK = com_google_android_gms_internal_zzkm_zza.zzLK;
        this.zzLL = com_google_android_gms_internal_zzkm_zza.zzLL;
        this.zzLM = com_google_android_gms_internal_zzkm_zza.zzLM;
        this.zzLN = com_google_android_gms_internal_zzkm_zza.zzLN;
    }

    public JSONObject toJson() {
        try {
            return new JSONObject().put("sms", this.zzLJ).put("tel", this.zzLK).put("calendar", this.zzLL).put("storePicture", this.zzLM).put("inlineVideo", this.zzLN);
        } catch (Throwable e) {
            zzpy.zzb("Error occured while obtaining the MRAID capabilities.", e);
            return null;
        }
    }
}
