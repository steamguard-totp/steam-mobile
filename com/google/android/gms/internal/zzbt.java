package com.google.android.gms.internal;

import com.google.android.gms.internal.zzaf.zza;
import java.lang.reflect.InvocationTargetException;

public class zzbt extends zzby {
    public zzbt(zzbc com_google_android_gms_internal_zzbc, String str, String str2, zza com_google_android_gms_internal_zzaf_zza, int i, int i2) {
        super(com_google_android_gms_internal_zzbc, str, str2, com_google_android_gms_internal_zzaf_zza, i, i2);
    }

    protected void zzbe() throws IllegalAccessException, InvocationTargetException {
        synchronized (this.zzra) {
            zzbb com_google_android_gms_internal_zzbb = new zzbb((String) this.zzrj.invoke(null, new Object[0]));
            this.zzra.zzbL = com_google_android_gms_internal_zzbb.zzqp;
            this.zzra.zzbM = com_google_android_gms_internal_zzbb.zzqq;
        }
    }
}
