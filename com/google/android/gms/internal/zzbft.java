package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class zzbft {
    private final List<zzbfs> zzbKC;
    private final List<zzbfs> zzbKD;
    private final List<zzbfs> zzbKE;
    private final List<zzbfs> zzbKF;

    public static class zza {
        private final List<zzbfs> zzbKC = new ArrayList();
        private final List<zzbfs> zzbKD = new ArrayList();
        private final List<zzbfs> zzbKE = new ArrayList();
        private final List<zzbfs> zzbKF = new ArrayList();

        public zzbft zzRz() {
            return new zzbft(this.zzbKC, this.zzbKD, this.zzbKE, this.zzbKF);
        }

        public zza zzd(zzbfs com_google_android_gms_internal_zzbfs) {
            this.zzbKC.add(com_google_android_gms_internal_zzbfs);
            return this;
        }

        public zza zze(zzbfs com_google_android_gms_internal_zzbfs) {
            this.zzbKD.add(com_google_android_gms_internal_zzbfs);
            return this;
        }

        public zza zzf(zzbfs com_google_android_gms_internal_zzbfs) {
            this.zzbKE.add(com_google_android_gms_internal_zzbfs);
            return this;
        }

        public zza zzg(zzbfs com_google_android_gms_internal_zzbfs) {
            this.zzbKF.add(com_google_android_gms_internal_zzbfs);
            return this;
        }
    }

    private zzbft(List<zzbfs> list, List<zzbfs> list2, List<zzbfs> list3, List<zzbfs> list4) {
        this.zzbKC = Collections.unmodifiableList(list);
        this.zzbKD = Collections.unmodifiableList(list2);
        this.zzbKE = Collections.unmodifiableList(list3);
        this.zzbKF = Collections.unmodifiableList(list4);
    }

    public String toString() {
        String valueOf = String.valueOf(zzRv());
        String valueOf2 = String.valueOf(zzRw());
        String valueOf3 = String.valueOf(zzRx());
        String valueOf4 = String.valueOf(zzRy());
        return new StringBuilder((((String.valueOf(valueOf).length() + 71) + String.valueOf(valueOf2).length()) + String.valueOf(valueOf3).length()) + String.valueOf(valueOf4).length()).append("Positive predicates: ").append(valueOf).append("  Negative predicates: ").append(valueOf2).append("  Add tags: ").append(valueOf3).append("  Remove tags: ").append(valueOf4).toString();
    }

    public List<zzbfs> zzRv() {
        return this.zzbKC;
    }

    public List<zzbfs> zzRw() {
        return this.zzbKD;
    }

    public List<zzbfs> zzRx() {
        return this.zzbKE;
    }

    public List<zzbfs> zzRy() {
        return this.zzbKF;
    }
}
