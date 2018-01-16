package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.util.zze;

public abstract class zzyj extends zzyk {
    protected final Handler mHandler = new Handler(Looper.getMainLooper());
    protected final long zzauL;
    protected final Runnable zzauM;
    protected boolean zzauN;
    protected final zze zzuI;

    private class zza implements Runnable {
        final /* synthetic */ zzyj zzauO;

        private zza(zzyj com_google_android_gms_internal_zzyj) {
            this.zzauO = com_google_android_gms_internal_zzyj;
        }

        public void run() {
            this.zzauO.zzauN = false;
            this.zzauO.zzao(this.zzauO.zzE(this.zzauO.zzuI.elapsedRealtime()));
        }
    }

    public zzyj(String str, zze com_google_android_gms_common_util_zze, String str2, String str3, long j) {
        super(str, str2, str3);
        this.zzuI = com_google_android_gms_common_util_zze;
        this.zzauM = new zza();
        this.zzauL = j;
        zzao(false);
    }

    protected abstract boolean zzE(long j);

    protected final void zzao(boolean z) {
        if (this.zzauN != z) {
            this.zzauN = z;
            if (z) {
                this.mHandler.postDelayed(this.zzauM, this.zzauL);
            } else {
                this.mHandler.removeCallbacks(this.zzauM);
            }
        }
    }

    public void zzua() {
        zzao(false);
    }
}
