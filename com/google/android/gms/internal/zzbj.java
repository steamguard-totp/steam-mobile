package com.google.android.gms.internal;

import com.google.android.gms.internal.zzaf.zza;
import java.lang.reflect.InvocationTargetException;

public class zzbj extends zzby {
    public zzbj(zzbc com_google_android_gms_internal_zzbc, String str, String str2, zza com_google_android_gms_internal_zzaf_zza, int i, int i2) {
        super(com_google_android_gms_internal_zzbc, str, str2, com_google_android_gms_internal_zzaf_zza, i, i2);
    }

    protected void zzbe() throws IllegalAccessException, InvocationTargetException {
        this.zzra.zzbd = Long.valueOf(-1);
        this.zzra.zzbe = Long.valueOf(-1);
        int[] iArr = (int[]) this.zzrj.invoke(null, new Object[]{this.zzpC.getContext()});
        synchronized (this.zzra) {
            this.zzra.zzbd = Long.valueOf((long) iArr[0]);
            this.zzra.zzbe = Long.valueOf((long) iArr[1]);
        }
    }
}
