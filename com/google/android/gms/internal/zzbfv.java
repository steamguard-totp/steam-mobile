package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class zzbfv {
    private static final String zzbGK = new String("");
    private static final Integer zzbKH = Integer.valueOf(0);
    private final Object zzYe;
    private final int zzanR;
    private final List<Integer> zzbKI;
    private final boolean zzbKJ;

    public static class zza {
        private final Object zzYe;
        private final List<Integer> zzbKI = new ArrayList();
        private final Integer zzbKK;
        private boolean zzbKL = false;

        public zza(int i, Object obj) {
            this.zzbKK = Integer.valueOf(i);
            this.zzYe = obj;
        }

        public zzbfv zzRD() {
            zzac.zzw(this.zzbKK);
            zzac.zzw(this.zzYe);
            return new zzbfv(this.zzbKK, this.zzYe, this.zzbKI, this.zzbKL);
        }

        public zza zzaP(boolean z) {
            this.zzbKL = z;
            return this;
        }

        public zza zzmZ(int i) {
            this.zzbKI.add(Integer.valueOf(i));
            return this;
        }
    }

    private zzbfv(Integer num, Object obj, List<Integer> list, boolean z) {
        this.zzanR = num.intValue();
        this.zzYe = obj;
        this.zzbKI = Collections.unmodifiableList(list);
        this.zzbKJ = z;
    }

    public boolean equals(Object obj) {
        return (obj instanceof zzbfv) && ((zzbfv) obj).getValue().equals(this.zzYe);
    }

    public int getType() {
        return this.zzanR;
    }

    public Object getValue() {
        return this.zzYe;
    }

    public int hashCode() {
        return this.zzYe.hashCode();
    }

    public String toString() {
        if (this.zzYe != null) {
            return this.zzYe.toString();
        }
        zzayx.e("Fail to convert a null object to string");
        return zzbGK;
    }

    public List<Integer> zzRC() {
        return this.zzbKI;
    }
}
