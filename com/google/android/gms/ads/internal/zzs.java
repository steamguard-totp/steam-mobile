package com.google.android.gms.ads.internal;

import android.os.Handler;
import com.google.android.gms.internal.zzdy;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzpi;
import com.google.android.gms.internal.zzpy;
import java.lang.ref.WeakReference;

@zzmb
public class zzs {
    private final zza zzuf;
    private zzdy zzug;
    private boolean zzuh;
    private boolean zzui;
    private long zzuj;
    private final Runnable zzv;

    public static class zza {
        private final Handler mHandler;

        public zza(Handler handler) {
            this.mHandler = handler;
        }

        public boolean postDelayed(Runnable runnable, long j) {
            return this.mHandler.postDelayed(runnable, j);
        }

        public void removeCallbacks(Runnable runnable) {
            this.mHandler.removeCallbacks(runnable);
        }
    }

    public zzs(zza com_google_android_gms_ads_internal_zza) {
        this(com_google_android_gms_ads_internal_zza, new zza(zzpi.zzWR));
    }

    zzs(zza com_google_android_gms_ads_internal_zza, zza com_google_android_gms_ads_internal_zzs_zza) {
        this.zzuh = false;
        this.zzui = false;
        this.zzuj = 0;
        this.zzuf = com_google_android_gms_ads_internal_zzs_zza;
        final WeakReference weakReference = new WeakReference(com_google_android_gms_ads_internal_zza);
        this.zzv = new Runnable(this) {
            final /* synthetic */ zzs zzul;

            public void run() {
                this.zzul.zzuh = false;
                zza com_google_android_gms_ads_internal_zza = (zza) weakReference.get();
                if (com_google_android_gms_ads_internal_zza != null) {
                    com_google_android_gms_ads_internal_zza.zzd(this.zzul.zzug);
                }
            }
        };
    }

    public void cancel() {
        this.zzuh = false;
        this.zzuf.removeCallbacks(this.zzv);
    }

    public void pause() {
        this.zzui = true;
        if (this.zzuh) {
            this.zzuf.removeCallbacks(this.zzv);
        }
    }

    public void resume() {
        this.zzui = false;
        if (this.zzuh) {
            this.zzuh = false;
            zza(this.zzug, this.zzuj);
        }
    }

    public void zza(zzdy com_google_android_gms_internal_zzdy, long j) {
        if (this.zzuh) {
            zzpy.zzbe("An ad refresh is already scheduled.");
            return;
        }
        this.zzug = com_google_android_gms_internal_zzdy;
        this.zzuh = true;
        this.zzuj = j;
        if (!this.zzui) {
            zzpy.zzbd("Scheduling ad refresh " + j + " milliseconds from now.");
            this.zzuf.postDelayed(this.zzv, j);
        }
    }

    public boolean zzcv() {
        return this.zzuh;
    }

    public void zzg(zzdy com_google_android_gms_internal_zzdy) {
        this.zzug = com_google_android_gms_internal_zzdy;
    }

    public void zzh(zzdy com_google_android_gms_internal_zzdy) {
        zza(com_google_android_gms_internal_zzdy, 60000);
    }
}
