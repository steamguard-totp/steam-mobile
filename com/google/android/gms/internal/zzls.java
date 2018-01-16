package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.zzln.zza;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@zzmb
public class zzls extends zzpd {
    private final zzlu zzPP;
    private Future<zzov> zzPQ;
    private final zza zzPn;
    private final zzov.zza zzPo;
    private final zzmk zzPp;
    private final Object zzrN;

    public zzls(Context context, zzr com_google_android_gms_ads_internal_zzr, zzov.zza com_google_android_gms_internal_zzov_zza, zzav com_google_android_gms_internal_zzav, zza com_google_android_gms_internal_zzln_zza, zzgf com_google_android_gms_internal_zzgf) {
        this(com_google_android_gms_internal_zzov_zza, com_google_android_gms_internal_zzln_zza, new zzlu(context, com_google_android_gms_ads_internal_zzr, new zzpp(context), com_google_android_gms_internal_zzav, com_google_android_gms_internal_zzov_zza, com_google_android_gms_internal_zzgf));
    }

    zzls(zzov.zza com_google_android_gms_internal_zzov_zza, zza com_google_android_gms_internal_zzln_zza, zzlu com_google_android_gms_internal_zzlu) {
        this.zzrN = new Object();
        this.zzPo = com_google_android_gms_internal_zzov_zza;
        this.zzPp = com_google_android_gms_internal_zzov_zza.zzVB;
        this.zzPn = com_google_android_gms_internal_zzln_zza;
        this.zzPP = com_google_android_gms_internal_zzlu;
    }

    private zzov zzQ(int i) {
        return new zzov(this.zzPo.zzSF.zzRd, null, null, i, null, null, this.zzPp.orientation, this.zzPp.zzKe, this.zzPo.zzSF.zzRg, false, null, null, null, null, null, this.zzPp.zzRL, this.zzPo.zzvj, this.zzPp.zzRJ, this.zzPo.zzVv, this.zzPp.zzRO, this.zzPp.zzRP, this.zzPo.zzVp, null, null, null, null, this.zzPo.zzVB.zzSc, this.zzPo.zzVB.zzSd, null, null, this.zzPp.zzSg);
    }

    public void onStop() {
        synchronized (this.zzrN) {
            if (this.zzPQ != null) {
                this.zzPQ.cancel(true);
            }
        }
    }

    public void zzcm() {
        zzov com_google_android_gms_internal_zzov;
        int i;
        try {
            synchronized (this.zzrN) {
                this.zzPQ = zzph.zza(this.zzPP);
            }
            com_google_android_gms_internal_zzov = (zzov) this.zzPQ.get(60000, TimeUnit.MILLISECONDS);
            i = -2;
        } catch (TimeoutException e) {
            zzpy.zzbe("Timed out waiting for native ad.");
            this.zzPQ.cancel(true);
            i = 2;
            com_google_android_gms_internal_zzov = null;
        } catch (ExecutionException e2) {
            com_google_android_gms_internal_zzov = null;
            i = 0;
        } catch (InterruptedException e3) {
            com_google_android_gms_internal_zzov = null;
            i = 0;
        } catch (CancellationException e4) {
            com_google_android_gms_internal_zzov = null;
            i = 0;
        }
        if (com_google_android_gms_internal_zzov == null) {
            com_google_android_gms_internal_zzov = zzQ(i);
        }
        zzpi.zzWR.post(new Runnable(this) {
            final /* synthetic */ zzls zzPR;

            public void run() {
                this.zzPR.zzPn.zzb(com_google_android_gms_internal_zzov);
            }
        });
    }
}
