package com.google.android.gms.internal;

import com.google.android.gms.internal.zzqi.zzc;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

@zzmb
public class zzqj<T> implements zzqi<T> {
    protected int zzJh = 0;
    protected final BlockingQueue<zza> zzYt = new LinkedBlockingQueue();
    protected T zzYu;
    private final Object zzrN = new Object();

    class zza {
        public final zzc<T> zzYv;
        public final com.google.android.gms.internal.zzqi.zza zzYw;

        public zza(zzqj com_google_android_gms_internal_zzqj, zzc<T> com_google_android_gms_internal_zzqi_zzc_T, com.google.android.gms.internal.zzqi.zza com_google_android_gms_internal_zzqi_zza) {
            this.zzYv = com_google_android_gms_internal_zzqi_zzc_T;
            this.zzYw = com_google_android_gms_internal_zzqi_zza;
        }
    }

    public int getStatus() {
        return this.zzJh;
    }

    public void reject() {
        synchronized (this.zzrN) {
            if (this.zzJh != 0) {
                throw new UnsupportedOperationException();
            }
            this.zzJh = -1;
            for (zza com_google_android_gms_internal_zzqj_zza : this.zzYt) {
                com_google_android_gms_internal_zzqj_zza.zzYw.run();
            }
            this.zzYt.clear();
        }
    }

    public void zza(zzc<T> com_google_android_gms_internal_zzqi_zzc_T, com.google.android.gms.internal.zzqi.zza com_google_android_gms_internal_zzqi_zza) {
        synchronized (this.zzrN) {
            if (this.zzJh == 1) {
                com_google_android_gms_internal_zzqi_zzc_T.zzd(this.zzYu);
            } else if (this.zzJh == -1) {
                com_google_android_gms_internal_zzqi_zza.run();
            } else if (this.zzJh == 0) {
                this.zzYt.add(new zza(this, com_google_android_gms_internal_zzqi_zzc_T, com_google_android_gms_internal_zzqi_zza));
            }
        }
    }

    public void zzg(T t) {
        synchronized (this.zzrN) {
            if (this.zzJh != 0) {
                throw new UnsupportedOperationException();
            }
            this.zzYu = t;
            this.zzJh = 1;
            for (zza com_google_android_gms_internal_zzqj_zza : this.zzYt) {
                com_google_android_gms_internal_zzqj_zza.zzYv.zzd(t);
            }
            this.zzYt.clear();
        }
    }
}
