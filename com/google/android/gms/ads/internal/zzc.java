package com.google.android.gms.ads.internal;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzfx;
import com.google.android.gms.internal.zzgf;
import com.google.android.gms.internal.zzgg;
import com.google.android.gms.internal.zzgi;
import com.google.android.gms.internal.zzgj;
import com.google.android.gms.internal.zzhx;
import com.google.android.gms.internal.zzjb;
import com.google.android.gms.internal.zzjs;
import com.google.android.gms.internal.zzkp;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzop;
import com.google.android.gms.internal.zzov;
import com.google.android.gms.internal.zzov.zza;
import com.google.android.gms.internal.zzpi;
import com.google.android.gms.internal.zzpy;
import com.google.android.gms.internal.zzqa;
import com.google.android.gms.internal.zzqp;
import java.util.Map;

@zzmb
public abstract class zzc extends zzb implements zzh, zzkp {
    public zzc(Context context, zzec com_google_android_gms_internal_zzec, String str, zzjs com_google_android_gms_internal_zzjs, zzqa com_google_android_gms_internal_zzqa, zzd com_google_android_gms_ads_internal_zzd) {
        super(context, com_google_android_gms_internal_zzec, str, com_google_android_gms_internal_zzjs, com_google_android_gms_internal_zzqa, com_google_android_gms_ads_internal_zzd);
    }

    protected zzqp zza(zza com_google_android_gms_internal_zzov_zza, zze com_google_android_gms_ads_internal_zze, zzop com_google_android_gms_internal_zzop) {
        zzqp com_google_android_gms_internal_zzqp = null;
        View nextView = this.zzsw.zzvg.getNextView();
        if (nextView instanceof zzqp) {
            com_google_android_gms_internal_zzqp = (zzqp) nextView;
            if (((Boolean) zzfx.zzCn.get()).booleanValue()) {
                zzpy.zzbc("Reusing webview...");
                com_google_android_gms_internal_zzqp.zza(this.zzsw.zzqr, this.zzsw.zzvj, this.zzsr);
            } else {
                com_google_android_gms_internal_zzqp.destroy();
                com_google_android_gms_internal_zzqp = null;
            }
        }
        if (com_google_android_gms_internal_zzqp == null) {
            if (nextView != null) {
                this.zzsw.zzvg.removeView(nextView);
            }
            com_google_android_gms_internal_zzqp = zzv.zzcK().zza(this.zzsw.zzqr, this.zzsw.zzvj, false, false, this.zzsw.zzve, this.zzsw.zzvf, this.zzsr, this, this.zzsz);
            if (this.zzsw.zzvj.zzzm == null) {
                zzb(com_google_android_gms_internal_zzqp.getView());
            }
        }
        zzjb com_google_android_gms_internal_zzjb = com_google_android_gms_internal_zzqp;
        com_google_android_gms_internal_zzjb.zzkV().zza(this, this, this, this, false, this, null, com_google_android_gms_ads_internal_zze, this, com_google_android_gms_internal_zzop);
        zza(com_google_android_gms_internal_zzjb);
        com_google_android_gms_internal_zzjb.zzbg(com_google_android_gms_internal_zzov_zza.zzSF.zzRr);
        return com_google_android_gms_internal_zzjb;
    }

    public void zza(int i, int i2, int i3, int i4) {
        zzbJ();
    }

    public void zza(zzgj com_google_android_gms_internal_zzgj) {
        zzac.zzdn("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.zzsw.zzvz = com_google_android_gms_internal_zzgj;
    }

    protected void zza(zzjb com_google_android_gms_internal_zzjb) {
        com_google_android_gms_internal_zzjb.zza("/trackActiveViewUnit", new zzhx(this) {
            final /* synthetic */ zzc zzsH;

            {
                this.zzsH = r1;
            }

            public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
                if (this.zzsH.zzsw.zzvk != null) {
                    this.zzsH.zzsy.zza(this.zzsH.zzsw.zzvj, this.zzsH.zzsw.zzvk, com_google_android_gms_internal_zzqp.getView(), (zzjb) com_google_android_gms_internal_zzqp);
                } else {
                    zzpy.zzbe("Request to enable ActiveView before adState is available.");
                }
            }
        });
    }

    protected void zza(final zza com_google_android_gms_internal_zzov_zza, final zzgf com_google_android_gms_internal_zzgf) {
        if (com_google_android_gms_internal_zzov_zza.errorCode != -2) {
            zzpi.zzWR.post(new Runnable(this) {
                final /* synthetic */ zzc zzsH;

                public void run() {
                    this.zzsH.zzb(new zzov(com_google_android_gms_internal_zzov_zza, null, null, null, null, null, null, null));
                }
            });
            return;
        }
        if (com_google_android_gms_internal_zzov_zza.zzvj != null) {
            this.zzsw.zzvj = com_google_android_gms_internal_zzov_zza.zzvj;
        }
        if (!com_google_android_gms_internal_zzov_zza.zzVB.zzRK || com_google_android_gms_internal_zzov_zza.zzVB.zzzp) {
            zzpi.zzWR.post(new Runnable(this, null) {
                final /* synthetic */ zzc zzsH;

                public void run() {
                    if (com_google_android_gms_internal_zzov_zza.zzVB.zzRT && this.zzsH.zzsw.zzvz != null) {
                        String str = null;
                        if (com_google_android_gms_internal_zzov_zza.zzVB.zzNb != null) {
                            str = zzv.zzcJ().zzaV(com_google_android_gms_internal_zzov_zza.zzVB.zzNb);
                        }
                        zzgi com_google_android_gms_internal_zzgg = new zzgg(this.zzsH, str, com_google_android_gms_internal_zzov_zza.zzVB.body);
                        this.zzsH.zzsw.zzvF = 1;
                        try {
                            this.zzsH.zzsu = false;
                            this.zzsH.zzsw.zzvz.zza(com_google_android_gms_internal_zzgg);
                            return;
                        } catch (Throwable e) {
                            zzpy.zzc("Could not call the onCustomRenderedAdLoadedListener.", e);
                            this.zzsH.zzsu = true;
                        }
                    }
                    final zze com_google_android_gms_ads_internal_zze = new zze(this.zzsH.zzsw.zzqr, com_google_android_gms_internal_zzov_zza);
                    zzqp zza = this.zzsH.zza(com_google_android_gms_internal_zzov_zza, com_google_android_gms_ads_internal_zze, null);
                    zza.setOnTouchListener(new OnTouchListener(this) {
                        public boolean onTouch(View view, MotionEvent motionEvent) {
                            com_google_android_gms_ads_internal_zze.recordClick();
                            return false;
                        }
                    });
                    zza.setOnClickListener(new OnClickListener(this) {
                        public void onClick(View view) {
                            com_google_android_gms_ads_internal_zze.recordClick();
                        }
                    });
                    this.zzsH.zzsw.zzvF = 0;
                    this.zzsH.zzsw.zzvi = zzv.zzcI().zza(this.zzsH.zzsw.zzqr, this.zzsH, com_google_android_gms_internal_zzov_zza, this.zzsH.zzsw.zzve, zza, this.zzsH.zzsD, this.zzsH, com_google_android_gms_internal_zzgf);
                }
            });
            return;
        }
        this.zzsw.zzvF = 0;
        this.zzsw.zzvi = zzv.zzcI().zza(this.zzsw.zzqr, this, com_google_android_gms_internal_zzov_zza, this.zzsw.zzve, null, this.zzsD, this, com_google_android_gms_internal_zzgf);
    }

    protected boolean zza(zzov com_google_android_gms_internal_zzov, zzov com_google_android_gms_internal_zzov2) {
        if (this.zzsw.zzdm() && this.zzsw.zzvg != null) {
            this.zzsw.zzvg.zzds().zzaY(com_google_android_gms_internal_zzov2.zzRP);
        }
        return super.zza(com_google_android_gms_internal_zzov, com_google_android_gms_internal_zzov2);
    }

    public void zzbX() {
        onAdClicked();
    }

    public void zzbY() {
        recordImpression();
        zzbF();
    }

    public void zzbZ() {
        zzbH();
    }

    public void zzc(View view) {
        this.zzsw.zzvE = view;
        zzb(new zzov(this.zzsw.zzvl, null, null, null, null, null, null, null));
    }
}
