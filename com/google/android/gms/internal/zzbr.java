package com.google.android.gms.internal;

import com.google.android.gms.internal.zzaf.zza;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

public class zzbr extends zzby {
    private List<Long> zzrd = null;

    public zzbr(zzbc com_google_android_gms_internal_zzbc, String str, String str2, zza com_google_android_gms_internal_zzaf_zza, int i, int i2) {
        super(com_google_android_gms_internal_zzbc, str, str2, com_google_android_gms_internal_zzaf_zza, i, i2);
    }

    protected void zzbe() throws IllegalAccessException, InvocationTargetException {
        this.zzra.zzbw = Long.valueOf(-1);
        this.zzra.zzbx = Long.valueOf(-1);
        if (this.zzrd == null) {
            this.zzrd = (List) this.zzrj.invoke(null, new Object[]{this.zzpC.getContext()});
        }
        if (this.zzrd != null && this.zzrd.size() == 2) {
            synchronized (this.zzra) {
                this.zzra.zzbw = Long.valueOf(((Long) this.zzrd.get(0)).longValue());
                this.zzra.zzbx = Long.valueOf(((Long) this.zzrd.get(1)).longValue());
            }
        }
    }
}
