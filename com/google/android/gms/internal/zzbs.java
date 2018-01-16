package com.google.android.gms.internal;

import com.google.android.gms.internal.zzaf.zza;
import java.lang.reflect.InvocationTargetException;

public class zzbs extends zzby {
    private final StackTraceElement[] zzre;

    public zzbs(zzbc com_google_android_gms_internal_zzbc, String str, String str2, zza com_google_android_gms_internal_zzaf_zza, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(com_google_android_gms_internal_zzbc, str, str2, com_google_android_gms_internal_zzaf_zza, i, i2);
        this.zzre = stackTraceElementArr;
    }

    protected void zzbe() throws IllegalAccessException, InvocationTargetException {
        if (this.zzre != null) {
            zzba com_google_android_gms_internal_zzba = new zzba((String) this.zzrj.invoke(null, new Object[]{this.zzre}));
            synchronized (this.zzra) {
                this.zzra.zzbI = com_google_android_gms_internal_zzba.zzqm;
                if (com_google_android_gms_internal_zzba.zzqn.booleanValue()) {
                    this.zzra.zzbQ = Integer.valueOf(com_google_android_gms_internal_zzba.zzqo.booleanValue() ? 0 : 1);
                }
            }
        }
    }
}
