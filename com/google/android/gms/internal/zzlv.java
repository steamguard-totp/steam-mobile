package com.google.android.gms.internal;

import android.content.Context;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.zzov.zza;
import com.google.android.gms.internal.zzqq.zzb;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;

@zzmb
public class zzlv {
    private final Context mContext;
    private final zzr zzGl;
    private final zzav zzGr;
    private final zza zzPo;
    private OnGlobalLayoutListener zzQA;
    private OnScrollChangedListener zzQB;
    private final Object zzrN = new Object();
    private final zzgf zzsr;
    private int zzvI = -1;
    private int zzvJ = -1;
    private zzpt zzvK;

    public zzlv(Context context, zzav com_google_android_gms_internal_zzav, zza com_google_android_gms_internal_zzov_zza, zzgf com_google_android_gms_internal_zzgf, zzr com_google_android_gms_ads_internal_zzr) {
        this.mContext = context;
        this.zzGr = com_google_android_gms_internal_zzav;
        this.zzPo = com_google_android_gms_internal_zzov_zza;
        this.zzsr = com_google_android_gms_internal_zzgf;
        this.zzGl = com_google_android_gms_ads_internal_zzr;
        this.zzvK = new zzpt(200);
    }

    private OnGlobalLayoutListener zza(final WeakReference<zzqp> weakReference) {
        if (this.zzQA == null) {
            this.zzQA = new OnGlobalLayoutListener(this) {
                final /* synthetic */ zzlv zzQE;

                public void onGlobalLayout() {
                    this.zzQE.zza(weakReference, false);
                }
            };
        }
        return this.zzQA;
    }

    private void zza(WeakReference<zzqp> weakReference, boolean z) {
        if (weakReference != null) {
            zzqp com_google_android_gms_internal_zzqp = (zzqp) weakReference.get();
            if (com_google_android_gms_internal_zzqp != null && com_google_android_gms_internal_zzqp.getView() != null) {
                if (!z || this.zzvK.tryAcquire()) {
                    int[] iArr = new int[2];
                    com_google_android_gms_internal_zzqp.getView().getLocationOnScreen(iArr);
                    int zzc = zzeh.zzeO().zzc(this.mContext, iArr[0]);
                    int zzc2 = zzeh.zzeO().zzc(this.mContext, iArr[1]);
                    synchronized (this.zzrN) {
                        if (!(this.zzvI == zzc && this.zzvJ == zzc2)) {
                            this.zzvI = zzc;
                            this.zzvJ = zzc2;
                            com_google_android_gms_internal_zzqp.zzkV().zza(this.zzvI, this.zzvJ, !z);
                        }
                    }
                }
            }
        }
    }

    private OnScrollChangedListener zzb(final WeakReference<zzqp> weakReference) {
        if (this.zzQB == null) {
            this.zzQB = new OnScrollChangedListener(this) {
                final /* synthetic */ zzlv zzQE;

                public void onScrollChanged() {
                    this.zzQE.zza(weakReference, true);
                }
            };
        }
        return this.zzQB;
    }

    private void zzj(zzqp com_google_android_gms_internal_zzqp) {
        zzqq zzkV = com_google_android_gms_internal_zzqp.zzkV();
        zzkV.zza("/video", zzhw.zzHq);
        zzkV.zza("/videoMeta", zzhw.zzHr);
        zzkV.zza("/precache", zzhw.zzHs);
        zzkV.zza("/delayPageLoaded", zzhw.zzHv);
        zzkV.zza("/instrument", zzhw.zzHt);
        zzkV.zza("/log", zzhw.zzHl);
        zzkV.zza("/videoClicked", zzhw.zzHm);
        zzkV.zza("/trackActiveViewUnit", new zzhx(this) {
            final /* synthetic */ zzlv zzQE;

            {
                this.zzQE = r1;
            }

            public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
                this.zzQE.zzGl.zzcr();
            }
        });
    }

    public zzqf<zzqp> zzf(final JSONObject jSONObject) {
        final zzqf com_google_android_gms_internal_zzqc = new zzqc();
        zzv.zzcJ().runOnUiThread(new Runnable(this) {
            final /* synthetic */ zzlv zzQE;

            public void run() {
                try {
                    final zzqp zziU = this.zzQE.zziU();
                    this.zzQE.zzGl.zzc(zziU);
                    WeakReference weakReference = new WeakReference(zziU);
                    zziU.zzkV().zza(this.zzQE.zza(weakReference), this.zzQE.zzb(weakReference));
                    this.zzQE.zzj(zziU);
                    zziU.zzkV().zza(new zzb(this) {
                        final /* synthetic */ AnonymousClass1 zzQF;

                        public void zzk(zzqp com_google_android_gms_internal_zzqp) {
                            zziU.zza("google.afma.nativeAds.renderVideo", jSONObject);
                        }
                    });
                    zziU.zzkV().zza(new zzqq.zza(this) {
                        final /* synthetic */ AnonymousClass1 zzQF;

                        {
                            this.zzQF = r1;
                        }

                        public void zza(zzqp com_google_android_gms_internal_zzqp, boolean z) {
                            this.zzQF.zzQE.zzGl.zzcu();
                            com_google_android_gms_internal_zzqc.zzh(com_google_android_gms_internal_zzqp);
                        }
                    });
                    zziU.loadUrl(zzlt.zza(this.zzQE.zzPo, (String) zzfx.zzDS.get()));
                } catch (Throwable e) {
                    zzpy.zzc("Exception occurred while getting video view", e);
                    com_google_android_gms_internal_zzqc.zzh(null);
                }
            }
        });
        return com_google_android_gms_internal_zzqc;
    }

    zzqp zziU() {
        return zzv.zzcK().zza(this.mContext, zzec.zzj(this.mContext), false, false, this.zzGr, this.zzPo.zzSF.zzvf, this.zzsr, null, this.zzGl.zzbz());
    }
}
