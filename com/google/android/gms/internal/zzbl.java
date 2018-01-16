package com.google.android.gms.internal;

import com.google.android.gms.internal.zzaf.zza;
import java.lang.reflect.InvocationTargetException;

public class zzbl extends zzby {
    private long startTime;

    public zzbl(zzbc com_google_android_gms_internal_zzbc, String str, String str2, zza com_google_android_gms_internal_zzaf_zza, long j, int i, int i2) {
        super(com_google_android_gms_internal_zzbc, str, str2, com_google_android_gms_internal_zzaf_zza, i, i2);
        this.startTime = j;
    }

    protected void zzbe() throws IllegalAccessException, InvocationTargetException {
        long longValue = ((Long) this.zzrj.invoke(null, new Object[0])).longValue();
        synchronized (this.zzra) {
            this.zzra.zzbZ = Long.valueOf(longValue);
            if (this.startTime != 0) {
                this.zzra.zzbp = Long.valueOf(longValue - this.startTime);
                this.zzra.zzbu = Long.valueOf(this.startTime);
            }
        }
    }
}
