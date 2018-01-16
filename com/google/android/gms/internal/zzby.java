package com.google.android.gms.internal;

import com.google.android.gms.internal.zzaf.zza;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;

public abstract class zzby implements Callable {
    protected final String TAG = getClass().getSimpleName();
    protected final String className;
    protected final zzbc zzpC;
    protected final zza zzra;
    protected final String zzrh;
    protected Method zzrj;
    protected final int zzrn;
    protected final int zzro;

    public zzby(zzbc com_google_android_gms_internal_zzbc, String str, String str2, zza com_google_android_gms_internal_zzaf_zza, int i, int i2) {
        this.zzpC = com_google_android_gms_internal_zzbc;
        this.className = str;
        this.zzrh = str2;
        this.zzra = com_google_android_gms_internal_zzaf_zza;
        this.zzrn = i;
        this.zzro = i2;
    }

    public /* synthetic */ Object call() throws Exception {
        return zzbl();
    }

    protected abstract void zzbe() throws IllegalAccessException, InvocationTargetException;

    public Void zzbl() throws Exception {
        try {
            long nanoTime = System.nanoTime();
            this.zzrj = this.zzpC.zzc(this.className, this.zzrh);
            if (this.zzrj != null) {
                zzbe();
                zzap zzaQ = this.zzpC.zzaQ();
                if (!(zzaQ == null || this.zzrn == Integer.MIN_VALUE)) {
                    zzaQ.zza(this.zzro, this.zzrn, (System.nanoTime() - nanoTime) / 1000);
                }
            }
        } catch (IllegalAccessException e) {
        } catch (InvocationTargetException e2) {
        }
        return null;
    }
}
