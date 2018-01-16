package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.HashMap;
import java.util.Map;

public class zzazg {
    private zzazg zzbIt;
    private Map<String, zzbfw> zzbIu;

    public zzazg() {
        this(null);
    }

    private zzazg(zzazg com_google_android_gms_internal_zzazg) {
        this.zzbIu = null;
        this.zzbIt = com_google_android_gms_internal_zzazg;
    }

    public boolean has(String str) {
        return (this.zzbIu == null || !this.zzbIu.containsKey(str)) ? this.zzbIt != null ? this.zzbIt.has(str) : false : true;
    }

    public void remove(String str) {
        zzac.zzar(has(str));
        if (this.zzbIu == null || !this.zzbIu.containsKey(str)) {
            this.zzbIt.remove(str);
        } else {
            this.zzbIu.remove(str);
        }
    }

    public zzazg zzQL() {
        return new zzazg(this);
    }

    public void zza(String str, zzbfw<?> com_google_android_gms_internal_zzbfw_) {
        if (this.zzbIu == null) {
            this.zzbIu = new HashMap();
        }
        this.zzbIu.put(str, com_google_android_gms_internal_zzbfw_);
    }

    public void zzb(String str, zzbfw<?> com_google_android_gms_internal_zzbfw_) {
        if (this.zzbIu != null && this.zzbIu.containsKey(str)) {
            this.zzbIu.put(str, com_google_android_gms_internal_zzbfw_);
        } else if (this.zzbIt == null) {
            String str2 = "Trying to modify a non existent symbol: ";
            String valueOf = String.valueOf(str);
            throw new IllegalStateException(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        } else {
            this.zzbIt.zzb(str, com_google_android_gms_internal_zzbfw_);
        }
    }

    public zzbfw<?> zzhP(String str) {
        if (this.zzbIu != null && this.zzbIu.containsKey(str)) {
            return (zzbfw) this.zzbIu.get(str);
        }
        if (this.zzbIt != null) {
            return this.zzbIt.zzhP(str);
        }
        String str2 = "Trying to get a non existent symbol: ";
        String valueOf = String.valueOf(str);
        throw new IllegalStateException(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
    }
}
