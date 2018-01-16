package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzaa;

public class zzbqm {
    private String zzahI;

    public zzbqm(String str) {
        this.zzahI = str;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzbqm)) {
            return false;
        }
        return zzaa.equal(this.zzahI, ((zzbqm) obj).zzahI);
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzahI);
    }

    public String toString() {
        return zzaa.zzv(this).zzg("token", this.zzahI).toString();
    }
}
