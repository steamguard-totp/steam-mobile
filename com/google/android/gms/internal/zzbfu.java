package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

public class zzbfu {
    private final String zzaux;
    private final List<zzazs> zzbKG;

    public static class zza {
        private String zzaux;
        private List<zzazs> zzbKG = new ArrayList();

        public zzbfu zzRB() {
            return new zzbfu(this.zzaux, this.zzbKG);
        }

        public zza zza(zzazs com_google_android_gms_internal_zzazs) {
            this.zzbKG.add(com_google_android_gms_internal_zzazs);
            return this;
        }

        public zza zzie(String str) {
            this.zzaux = str;
            return this;
        }
    }

    private zzbfu(String str, List<zzazs> list) {
        this.zzaux = str;
        this.zzbKG = list;
    }

    public List<zzazs> zzRA() {
        return this.zzbKG;
    }
}
