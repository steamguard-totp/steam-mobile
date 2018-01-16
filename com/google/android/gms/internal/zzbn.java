package com.google.android.gms.internal;

import com.google.android.gms.internal.zzaf.zza;
import java.util.concurrent.Callable;

public class zzbn implements Callable {
    private final zzbc zzpC;
    private final zza zzra;

    public zzbn(zzbc com_google_android_gms_internal_zzbc, zza com_google_android_gms_internal_zzaf_zza) {
        this.zzpC = com_google_android_gms_internal_zzbc;
        this.zzra = com_google_android_gms_internal_zzaf_zza;
    }

    public /* synthetic */ Object call() throws Exception {
        return zzbl();
    }

    public Void zzbl() throws Exception {
        if (this.zzpC.zzaT() != null) {
            this.zzpC.zzaT().get();
        }
        zzbut zzaS = this.zzpC.zzaS();
        if (zzaS != null) {
            try {
                synchronized (this.zzra) {
                    zzbut.zza(this.zzra, zzbut.zzf(zzaS));
                }
            } catch (zzbus e) {
            }
        }
        return null;
    }
}
