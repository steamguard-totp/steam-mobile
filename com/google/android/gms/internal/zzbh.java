package com.google.android.gms.internal;

import com.google.android.gms.internal.zzaf.zza;
import java.lang.reflect.InvocationTargetException;

public class zzbh extends zzby {
    private static volatile String zzqV = null;
    private static final Object zzqW = new Object();

    public zzbh(zzbc com_google_android_gms_internal_zzbc, String str, String str2, zza com_google_android_gms_internal_zzaf_zza, int i, int i2) {
        super(com_google_android_gms_internal_zzbc, str, str2, com_google_android_gms_internal_zzaf_zza, i, i2);
    }

    protected void zzbe() throws IllegalAccessException, InvocationTargetException {
        this.zzra.zzbv = "E";
        if (zzqV == null) {
            synchronized (zzqW) {
                if (zzqV == null) {
                    zzqV = (String) this.zzrj.invoke(null, new Object[]{this.zzpC.getContext()});
                }
            }
        }
        synchronized (this.zzra) {
            this.zzra.zzbv = zzal.zza(zzqV.getBytes(), true);
        }
    }
}
