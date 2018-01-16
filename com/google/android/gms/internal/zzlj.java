package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzqq.zza;
import java.util.concurrent.atomic.AtomicBoolean;

@zzmb
public abstract class zzlj implements zzpk<Void>, zza {
    protected final Context mContext;
    protected final zzqp zzGt;
    protected final zzln.zza zzPn;
    protected final zzov.zza zzPo;
    protected zzmk zzPp;
    private Runnable zzPq;
    protected final Object zzPr = new Object();
    private AtomicBoolean zzPs = new AtomicBoolean(true);

    protected zzlj(Context context, zzov.zza com_google_android_gms_internal_zzov_zza, zzqp com_google_android_gms_internal_zzqp, zzln.zza com_google_android_gms_internal_zzln_zza) {
        this.mContext = context;
        this.zzPo = com_google_android_gms_internal_zzov_zza;
        this.zzPp = this.zzPo.zzVB;
        this.zzGt = com_google_android_gms_internal_zzqp;
        this.zzPn = com_google_android_gms_internal_zzln_zza;
    }

    private zzov zzP(int i) {
        zzmh com_google_android_gms_internal_zzmh = this.zzPo.zzSF;
        return new zzov(com_google_android_gms_internal_zzmh.zzRd, this.zzGt, this.zzPp.zzJY, i, this.zzPp.zzJZ, this.zzPp.zzRM, this.zzPp.orientation, this.zzPp.zzKe, com_google_android_gms_internal_zzmh.zzRg, this.zzPp.zzRK, null, null, null, null, null, this.zzPp.zzRL, this.zzPo.zzvj, this.zzPp.zzRJ, this.zzPo.zzVv, this.zzPp.zzRO, this.zzPp.zzRP, this.zzPo.zzVp, null, this.zzPp.zzRZ, this.zzPp.zzSa, this.zzPp.zzSb, this.zzPp.zzSc, this.zzPp.zzSd, null, this.zzPp.zzKb, this.zzPp.zzSg);
    }

    public void cancel() {
        if (this.zzPs.getAndSet(false)) {
            this.zzGt.stopLoading();
            zzv.zzcL().zzl(this.zzGt);
            zzO(-1);
            zzpi.zzWR.removeCallbacks(this.zzPq);
        }
    }

    protected void zzO(int i) {
        if (i != -2) {
            this.zzPp = new zzmk(i, this.zzPp.zzKe);
        }
        this.zzGt.zzkQ();
        this.zzPn.zzb(zzP(i));
    }

    public void zza(zzqp com_google_android_gms_internal_zzqp, boolean z) {
        int i = 0;
        zzpy.zzbc("WebView finished loading.");
        if (this.zzPs.getAndSet(false)) {
            if (z) {
                i = zziv();
            }
            zzO(i);
            zzpi.zzWR.removeCallbacks(this.zzPq);
        }
    }

    public final Void zzit() {
        zzac.zzdn("Webview render task needs to be called on UI thread.");
        this.zzPq = new Runnable(this) {
            final /* synthetic */ zzlj zzPt;

            {
                this.zzPt = r1;
            }

            public void run() {
                if (this.zzPt.zzPs.get()) {
                    zzpy.e("Timed out waiting for WebView to finish loading.");
                    this.zzPt.cancel();
                }
            }
        };
        zzpi.zzWR.postDelayed(this.zzPq, ((Long) zzfx.zzDe.get()).longValue());
        zziu();
        return null;
    }

    protected abstract void zziu();

    protected int zziv() {
        return -2;
    }

    public /* synthetic */ Object zziw() {
        return zzit();
    }
}
