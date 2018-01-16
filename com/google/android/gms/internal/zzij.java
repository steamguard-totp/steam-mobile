package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzv;

@zzmb
public class zzij extends zzpd {
    final zzqp zzGt;
    final zzil zzHU;
    private final String zzHV;

    zzij(zzqp com_google_android_gms_internal_zzqp, zzil com_google_android_gms_internal_zzil, String str) {
        this.zzGt = com_google_android_gms_internal_zzqp;
        this.zzHU = com_google_android_gms_internal_zzil;
        this.zzHV = str;
        zzv.zzdg().zza(this);
    }

    public void onStop() {
        this.zzHU.abort();
    }

    public void zzcm() {
        try {
            this.zzHU.zzad(this.zzHV);
        } finally {
            zzpi.zzWR.post(new Runnable(this) {
                final /* synthetic */ zzij zzHW;

                {
                    this.zzHW = r1;
                }

                public void run() {
                    zzv.zzdg().zzb(this.zzHW);
                }
            });
        }
    }
}
