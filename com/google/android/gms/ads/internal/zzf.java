package com.google.android.gms.ads.internal;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zzs;
import com.google.android.gms.internal.zzcv;
import com.google.android.gms.internal.zzdy;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzeh;
import com.google.android.gms.internal.zzew;
import com.google.android.gms.internal.zzfx;
import com.google.android.gms.internal.zzjs;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzop;
import com.google.android.gms.internal.zzov;
import com.google.android.gms.internal.zzpi;
import com.google.android.gms.internal.zzpy;
import com.google.android.gms.internal.zzqa;
import com.google.android.gms.internal.zzqp;
import com.google.android.gms.internal.zzqq;
import com.google.android.gms.internal.zzqq.zzc;
import com.google.android.gms.internal.zzqq.zze;
import com.google.android.gms.internal.zzqu;
import java.util.List;

@zzmb
public class zzf extends zzc implements OnGlobalLayoutListener, OnScrollChangedListener {
    private boolean zzsS;

    public class zza {
        final /* synthetic */ zzf zzsT;

        public zza(zzf com_google_android_gms_ads_internal_zzf) {
            this.zzsT = com_google_android_gms_ads_internal_zzf;
        }

        public void onClick() {
            this.zzsT.onAdClicked();
        }
    }

    public zzf(Context context, zzec com_google_android_gms_internal_zzec, String str, zzjs com_google_android_gms_internal_zzjs, zzqa com_google_android_gms_internal_zzqa, zzd com_google_android_gms_ads_internal_zzd) {
        super(context, com_google_android_gms_internal_zzec, str, com_google_android_gms_internal_zzjs, com_google_android_gms_internal_zzqa, com_google_android_gms_ads_internal_zzd);
    }

    private zzec zzb(com.google.android.gms.internal.zzov.zza com_google_android_gms_internal_zzov_zza) {
        if (com_google_android_gms_internal_zzov_zza.zzVB.zzzo) {
            return this.zzsw.zzvj;
        }
        AdSize adSize;
        String str = com_google_android_gms_internal_zzov_zza.zzVB.zzRN;
        if (str != null) {
            String[] split = str.split("[xX]");
            split[0] = split[0].trim();
            split[1] = split[1].trim();
            adSize = new AdSize(Integer.parseInt(split[0]), Integer.parseInt(split[1]));
        } else {
            adSize = this.zzsw.zzvj.zzeA();
        }
        return new zzec(this.zzsw.zzqr, adSize);
    }

    private boolean zzb(zzov com_google_android_gms_internal_zzov, zzov com_google_android_gms_internal_zzov2) {
        if (com_google_android_gms_internal_zzov2.zzRK) {
            View zzg = zzo.zzg(com_google_android_gms_internal_zzov2);
            if (zzg == null) {
                zzpy.zzbe("Could not get mediation view");
                return false;
            }
            View nextView = this.zzsw.zzvg.getNextView();
            if (nextView != null) {
                if (nextView instanceof zzqp) {
                    ((zzqp) nextView).destroy();
                }
                this.zzsw.zzvg.removeView(nextView);
            }
            if (!zzo.zzh(com_google_android_gms_internal_zzov2)) {
                try {
                    zzb(zzg);
                } catch (Throwable th) {
                    zzpy.zzc("Could not add mediation view to view hierarchy.", th);
                    return false;
                }
            }
        } else if (!(com_google_android_gms_internal_zzov2.zzVt == null || com_google_android_gms_internal_zzov2.zzMZ == null)) {
            com_google_android_gms_internal_zzov2.zzMZ.zza(com_google_android_gms_internal_zzov2.zzVt);
            this.zzsw.zzvg.removeAllViews();
            this.zzsw.zzvg.setMinimumWidth(com_google_android_gms_internal_zzov2.zzVt.widthPixels);
            this.zzsw.zzvg.setMinimumHeight(com_google_android_gms_internal_zzov2.zzVt.heightPixels);
            zzb(com_google_android_gms_internal_zzov2.zzMZ.getView());
        }
        if (this.zzsw.zzvg.getChildCount() > 1) {
            this.zzsw.zzvg.showNext();
        }
        if (com_google_android_gms_internal_zzov != null) {
            View nextView2 = this.zzsw.zzvg.getNextView();
            if (nextView2 instanceof zzqp) {
                ((zzqp) nextView2).zza(this.zzsw.zzqr, this.zzsw.zzvj, this.zzsr);
            } else if (nextView2 != null) {
                this.zzsw.zzvg.removeView(nextView2);
            }
            this.zzsw.zzdl();
        }
        this.zzsw.zzvg.setVisibility(0);
        return true;
    }

    private void zze(final zzov com_google_android_gms_internal_zzov) {
        if (!zzs.zzyA()) {
            return;
        }
        if (this.zzsw.zzdm()) {
            if (com_google_android_gms_internal_zzov.zzMZ != null) {
                if (com_google_android_gms_internal_zzov.zzVp != null) {
                    this.zzsy.zza(this.zzsw.zzvj, com_google_android_gms_internal_zzov);
                }
                if (com_google_android_gms_internal_zzov.zzdz()) {
                    new zzcv(this.zzsw.zzqr, com_google_android_gms_internal_zzov.zzMZ.getView()).zza(com_google_android_gms_internal_zzov.zzMZ);
                } else {
                    com_google_android_gms_internal_zzov.zzMZ.zzkV().zza(new zzc(this) {
                        final /* synthetic */ zzf zzsT;
                    });
                }
            }
        } else if (this.zzsw.zzvE != null && com_google_android_gms_internal_zzov.zzVp != null) {
            this.zzsy.zza(this.zzsw.zzvj, com_google_android_gms_internal_zzov, this.zzsw.zzvE);
        }
    }

    public void onGlobalLayout() {
        zzf(this.zzsw.zzvk);
    }

    public void onScrollChanged() {
        zzf(this.zzsw.zzvk);
    }

    public void setManualImpressionsEnabled(boolean z) {
        zzac.zzdn("setManualImpressionsEnabled must be called from the main thread.");
        this.zzsS = z;
    }

    public void showInterstitial() {
        throw new IllegalStateException("Interstitial is NOT supported by BannerAdManager.");
    }

    protected zzqp zza(com.google.android.gms.internal.zzov.zza com_google_android_gms_internal_zzov_zza, zze com_google_android_gms_ads_internal_zze, zzop com_google_android_gms_internal_zzop) {
        if (this.zzsw.zzvj.zzzm == null && this.zzsw.zzvj.zzzo) {
            this.zzsw.zzvj = zzb(com_google_android_gms_internal_zzov_zza);
        }
        return super.zza(com_google_android_gms_internal_zzov_zza, com_google_android_gms_ads_internal_zze, com_google_android_gms_internal_zzop);
    }

    protected void zza(zzov com_google_android_gms_internal_zzov, boolean z) {
        super.zza(com_google_android_gms_internal_zzov, z);
        if (zzo.zzh(com_google_android_gms_internal_zzov)) {
            zzo.zza(com_google_android_gms_internal_zzov, new zza(this));
        }
    }

    public boolean zza(zzov com_google_android_gms_internal_zzov, final zzov com_google_android_gms_internal_zzov2) {
        if (!super.zza(com_google_android_gms_internal_zzov, com_google_android_gms_internal_zzov2)) {
            return false;
        }
        if (!this.zzsw.zzdm() || zzb(com_google_android_gms_internal_zzov, com_google_android_gms_internal_zzov2)) {
            zzqu zzlg;
            if (com_google_android_gms_internal_zzov2.zzSc) {
                zzf(com_google_android_gms_internal_zzov2);
                zzv.zzdh().zza(this.zzsw.zzvg, (OnGlobalLayoutListener) this);
                zzv.zzdh().zza(this.zzsw.zzvg, (OnScrollChangedListener) this);
                if (!com_google_android_gms_internal_zzov2.zzVq) {
                    final Runnable anonymousClass1 = new Runnable(this) {
                        final /* synthetic */ zzf zzsT;

                        {
                            this.zzsT = r1;
                        }

                        public void run() {
                            this.zzsT.zzf(this.zzsT.zzsw.zzvk);
                        }
                    };
                    zzqq zzkV = com_google_android_gms_internal_zzov2.zzMZ != null ? com_google_android_gms_internal_zzov2.zzMZ.zzkV() : null;
                    if (zzkV != null) {
                        zzkV.zza(new zze(this) {
                            public void zzcc() {
                                if (!com_google_android_gms_internal_zzov2.zzVq) {
                                    zzv.zzcJ();
                                    zzpi.zzb(anonymousClass1);
                                }
                            }
                        });
                    }
                }
            } else if (!this.zzsw.zzdn() || ((Boolean) zzfx.zzDQ.get()).booleanValue()) {
                zza(com_google_android_gms_internal_zzov2, false);
            }
            if (com_google_android_gms_internal_zzov2.zzMZ != null) {
                zzlg = com_google_android_gms_internal_zzov2.zzMZ.zzlg();
                zzqq zzkV2 = com_google_android_gms_internal_zzov2.zzMZ.zzkV();
                if (zzkV2 != null) {
                    zzkV2.zzlt();
                }
            } else {
                zzlg = null;
            }
            if (!(this.zzsw.zzvy == null || zzlg == null)) {
                zzlg.zzP(this.zzsw.zzvy.zzAE);
            }
            zze(com_google_android_gms_internal_zzov2);
            return true;
        }
        zzh(0);
        return false;
    }

    public boolean zzb(zzdy com_google_android_gms_internal_zzdy) {
        return super.zzb(zze(com_google_android_gms_internal_zzdy));
    }

    public zzew zzbG() {
        zzac.zzdn("getVideoController must be called from the main thread.");
        return (this.zzsw.zzvk == null || this.zzsw.zzvk.zzMZ == null) ? null : this.zzsw.zzvk.zzMZ.zzlg();
    }

    protected boolean zzbM() {
        boolean z = true;
        if (!zzv.zzcJ().zza(this.zzsw.zzqr.getPackageManager(), this.zzsw.zzqr.getPackageName(), "android.permission.INTERNET")) {
            zzeh.zzeO().zza(this.zzsw.zzvg, this.zzsw.zzvj, "Missing internet permission in AndroidManifest.xml.", "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />");
            z = false;
        }
        if (!zzv.zzcJ().zzy(this.zzsw.zzqr)) {
            zzeh.zzeO().zza(this.zzsw.zzvg, this.zzsw.zzvj, "Missing AdActivity with android:configChanges in AndroidManifest.xml.", "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />");
            z = false;
        }
        if (!(z || this.zzsw.zzvg == null)) {
            this.zzsw.zzvg.setVisibility(0);
        }
        return z;
    }

    zzdy zze(zzdy com_google_android_gms_internal_zzdy) {
        if (com_google_android_gms_internal_zzdy.zzyK == this.zzsS) {
            return com_google_android_gms_internal_zzdy;
        }
        int i = com_google_android_gms_internal_zzdy.versionCode;
        long j = com_google_android_gms_internal_zzdy.zzyF;
        Bundle bundle = com_google_android_gms_internal_zzdy.extras;
        int i2 = com_google_android_gms_internal_zzdy.zzyG;
        List list = com_google_android_gms_internal_zzdy.zzyH;
        boolean z = com_google_android_gms_internal_zzdy.zzyI;
        int i3 = com_google_android_gms_internal_zzdy.zzyJ;
        boolean z2 = com_google_android_gms_internal_zzdy.zzyK || this.zzsS;
        return new zzdy(i, j, bundle, i2, list, z, i3, z2, com_google_android_gms_internal_zzdy.zzyL, com_google_android_gms_internal_zzdy.zzyM, com_google_android_gms_internal_zzdy.zzyN, com_google_android_gms_internal_zzdy.zzyO, com_google_android_gms_internal_zzdy.zzyP, com_google_android_gms_internal_zzdy.zzyQ, com_google_android_gms_internal_zzdy.zzyR, com_google_android_gms_internal_zzdy.zzyS, com_google_android_gms_internal_zzdy.zzyT, com_google_android_gms_internal_zzdy.zzyU);
    }

    void zzf(zzov com_google_android_gms_internal_zzov) {
        if (com_google_android_gms_internal_zzov != null && !com_google_android_gms_internal_zzov.zzVq && this.zzsw.zzvg != null && zzv.zzcJ().zza(this.zzsw.zzvg, this.zzsw.zzqr) && this.zzsw.zzvg.getGlobalVisibleRect(new Rect(), null)) {
            if (!(com_google_android_gms_internal_zzov == null || com_google_android_gms_internal_zzov.zzMZ == null || com_google_android_gms_internal_zzov.zzMZ.zzkV() == null)) {
                com_google_android_gms_internal_zzov.zzMZ.zzkV().zza(null);
            }
            zza(com_google_android_gms_internal_zzov, false);
            com_google_android_gms_internal_zzov.zzVq = true;
        }
    }
}
