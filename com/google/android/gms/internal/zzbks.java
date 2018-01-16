package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamite.DynamiteModule;

public class zzbks {
    private static zzbks zzbXe;
    private DynamiteModule zzbXd;

    public static class zza extends Exception {
        private zza(Throwable th) {
            super(th);
        }
    }

    private zzbks() {
    }

    public static zzbks zzUT() {
        zzbks com_google_android_gms_internal_zzbks;
        synchronized (zzbks.class) {
            if (zzbXe != null) {
                com_google_android_gms_internal_zzbks = zzbXe;
            } else {
                zzbXe = new zzbks();
                com_google_android_gms_internal_zzbks = zzbXe;
            }
        }
        return com_google_android_gms_internal_zzbks;
    }

    public zzbkr zzUU() throws zza {
        zzac.zzw(this.zzbXd);
        try {
            return com.google.android.gms.internal.zzbkr.zza.zzfF(this.zzbXd.zzdX("com.google.firebase.crash.internal.api.FirebaseCrashApiImpl"));
        } catch (Throwable e) {
            throw new zza(e);
        }
    }

    public void zzao(Context context) throws zza {
        synchronized (zzbks.class) {
            if (this.zzbXd != null) {
                return;
            }
            try {
                this.zzbXd = DynamiteModule.zza(context, DynamiteModule.zzaQy, "com.google.android.gms.crash");
            } catch (Throwable e) {
                throw new zza(e);
            }
        }
    }
}
