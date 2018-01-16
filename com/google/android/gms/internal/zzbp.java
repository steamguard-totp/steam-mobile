package com.google.android.gms.internal;

import com.google.android.gms.internal.zzaf.zza;
import java.lang.reflect.InvocationTargetException;

public class zzbp extends zzby {
    private long zzrc = -1;

    public zzbp(zzbc com_google_android_gms_internal_zzbc, String str, String str2, zza com_google_android_gms_internal_zzaf_zza, int i, int i2) {
        super(com_google_android_gms_internal_zzbc, str, str2, com_google_android_gms_internal_zzaf_zza, i, i2);
    }

    protected void zzbe() throws IllegalAccessException, InvocationTargetException {
        this.zzra.zzbk = Long.valueOf(-1);
        if (this.zzrc == -1) {
            this.zzrc = (long) ((Integer) this.zzrj.invoke(null, new Object[]{this.zzpC.getContext()})).intValue();
        }
        synchronized (this.zzra) {
            this.zzra.zzbk = Long.valueOf(this.zzrc);
        }
    }
}
