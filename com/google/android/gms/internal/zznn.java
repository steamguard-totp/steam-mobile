package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zznq.zza;

@zzmb
public class zznn extends zza {
    private final String zzTW;
    private final int zzUD;

    public zznn(String str, int i) {
        this.zzTW = str;
        this.zzUD = i;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zznn)) {
            return false;
        }
        zznn com_google_android_gms_internal_zznn = (zznn) obj;
        return zzaa.equal(getType(), com_google_android_gms_internal_zznn.getType()) && zzaa.equal(Integer.valueOf(getAmount()), Integer.valueOf(com_google_android_gms_internal_zznn.getAmount()));
    }

    public int getAmount() {
        return this.zzUD;
    }

    public String getType() {
        return this.zzTW;
    }
}
