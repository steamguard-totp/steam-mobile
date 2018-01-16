package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.Window;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zzs;
import com.google.android.gms.internal.zzcv;
import com.google.android.gms.internal.zzdy;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzfx;
import com.google.android.gms.internal.zzgf;
import com.google.android.gms.internal.zzib;
import com.google.android.gms.internal.zzig;
import com.google.android.gms.internal.zzjb;
import com.google.android.gms.internal.zzji;
import com.google.android.gms.internal.zzjj;
import com.google.android.gms.internal.zzjs;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzmk;
import com.google.android.gms.internal.zzna;
import com.google.android.gms.internal.zzok;
import com.google.android.gms.internal.zzop;
import com.google.android.gms.internal.zzov;
import com.google.android.gms.internal.zzpd;
import com.google.android.gms.internal.zzpi;
import com.google.android.gms.internal.zzpy;
import com.google.android.gms.internal.zzqa;
import com.google.android.gms.internal.zzqp;
import com.google.android.gms.internal.zzqq;
import com.google.android.gms.internal.zzqq.zzc;
import java.util.Collections;
import org.json.JSONObject;

@zzmb
public class zzl extends zzc implements zzib, com.google.android.gms.internal.zzig.zza {
    private int zztA = -1;
    private boolean zztB;
    private float zztC;
    protected transient boolean zztz = false;

    @zzmb
    private class zza extends zzpd {
        final /* synthetic */ zzl zztD;
        private final int zztE;

        public zza(zzl com_google_android_gms_ads_internal_zzl, int i) {
            this.zztD = com_google_android_gms_ads_internal_zzl;
            this.zztE = i;
        }

        public void onStop() {
        }

        public void zzcm() {
            zzm com_google_android_gms_ads_internal_zzm = new zzm(this.zztD.zzsw.zztH, this.zztD.zzcj(), this.zztD.zztB, this.zztD.zztC, this.zztD.zzsw.zztH ? this.zztE : -1);
            int requestedOrientation = this.zztD.zzsw.zzvk.zzMZ.getRequestedOrientation();
            final AdOverlayInfoParcel adOverlayInfoParcel = new AdOverlayInfoParcel(this.zztD, this.zztD, this.zztD, this.zztD.zzsw.zzvk.zzMZ, requestedOrientation == -1 ? this.zztD.zzsw.zzvk.orientation : requestedOrientation, this.zztD.zzsw.zzvf, this.zztD.zzsw.zzvk.zzRP, com_google_android_gms_ads_internal_zzm);
            zzpi.zzWR.post(new Runnable(this) {
                final /* synthetic */ zza zztG;

                public void run() {
                    zzv.zzcH().zza(this.zztG.zztD.zzsw.zzqr, adOverlayInfoParcel);
                }
            });
        }
    }

    public zzl(Context context, zzec com_google_android_gms_internal_zzec, String str, zzjs com_google_android_gms_internal_zzjs, zzqa com_google_android_gms_internal_zzqa, zzd com_google_android_gms_ads_internal_zzd) {
        super(context, com_google_android_gms_internal_zzec, str, com_google_android_gms_internal_zzjs, com_google_android_gms_internal_zzqa, com_google_android_gms_ads_internal_zzd);
    }

    private void zzb(Bundle bundle) {
        zzv.zzcJ().zzb(this.zzsw.zzqr, this.zzsw.zzvf.zzaZ, "gmob-apps", bundle, false);
    }

    static com.google.android.gms.internal.zzov.zza zzc(com.google.android.gms.internal.zzov.zza com_google_android_gms_internal_zzov_zza) {
        try {
            String jSONObject = zzna.zzc(com_google_android_gms_internal_zzov_zza.zzVB).toString();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, com_google_android_gms_internal_zzov_zza.zzSF.zzvd);
            zzji com_google_android_gms_internal_zzji = new zzji(jSONObject, null, Collections.singletonList("com.google.ads.mediation.admob.AdMobAdapter"), null, null, Collections.emptyList(), Collections.emptyList(), jSONObject2.toString(), null, Collections.emptyList(), Collections.emptyList(), null, null, null, null, null, Collections.emptyList());
            zzmk com_google_android_gms_internal_zzmk = com_google_android_gms_internal_zzov_zza.zzVB;
            zzjj com_google_android_gms_internal_zzjj = new zzjj(Collections.singletonList(com_google_android_gms_internal_zzji), -1, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), com_google_android_gms_internal_zzmk.zzKb, com_google_android_gms_internal_zzmk.zzKc, "", -1, 0, 1, null, 0, -1, -1, false);
            return new com.google.android.gms.internal.zzov.zza(com_google_android_gms_internal_zzov_zza.zzSF, new zzmk(com_google_android_gms_internal_zzov_zza.zzSF, com_google_android_gms_internal_zzmk.zzNb, com_google_android_gms_internal_zzmk.body, Collections.emptyList(), Collections.emptyList(), com_google_android_gms_internal_zzmk.zzRJ, true, com_google_android_gms_internal_zzmk.zzRL, Collections.emptyList(), com_google_android_gms_internal_zzmk.zzKe, com_google_android_gms_internal_zzmk.orientation, com_google_android_gms_internal_zzmk.zzRN, com_google_android_gms_internal_zzmk.zzRO, com_google_android_gms_internal_zzmk.zzRP, com_google_android_gms_internal_zzmk.zzRQ, com_google_android_gms_internal_zzmk.zzRR, null, com_google_android_gms_internal_zzmk.zzRT, com_google_android_gms_internal_zzmk.zzzn, com_google_android_gms_internal_zzmk.zzRl, com_google_android_gms_internal_zzmk.zzRU, com_google_android_gms_internal_zzmk.zzRV, com_google_android_gms_internal_zzmk.zzRY, com_google_android_gms_internal_zzmk.zzzo, com_google_android_gms_internal_zzmk.zzzp, null, Collections.emptyList(), Collections.emptyList(), com_google_android_gms_internal_zzmk.zzSc, com_google_android_gms_internal_zzmk.zzSd, com_google_android_gms_internal_zzmk.zzRB, com_google_android_gms_internal_zzmk.zzRC, com_google_android_gms_internal_zzmk.zzKb, com_google_android_gms_internal_zzmk.zzKc, com_google_android_gms_internal_zzmk.zzSe, null, com_google_android_gms_internal_zzmk.zzSg, com_google_android_gms_internal_zzmk.zzSh), com_google_android_gms_internal_zzjj, com_google_android_gms_internal_zzov_zza.zzvj, com_google_android_gms_internal_zzov_zza.errorCode, com_google_android_gms_internal_zzov_zza.zzVv, com_google_android_gms_internal_zzov_zza.zzVw, null);
        } catch (Throwable e) {
            zzpy.zzb("Unable to generate ad state for an interstitial ad with pooling.", e);
            return com_google_android_gms_internal_zzov_zza;
        }
    }

    public void showInterstitial() {
        zzac.zzdn("showInterstitial must be called on the main UI thread.");
        if (this.zzsw.zzvk == null) {
            zzpy.zzbe("The interstitial has not loaded.");
            return;
        }
        if (((Boolean) zzfx.zzCR.get()).booleanValue()) {
            Bundle bundle;
            String packageName = this.zzsw.zzqr.getApplicationContext() != null ? this.zzsw.zzqr.getApplicationContext().getPackageName() : this.zzsw.zzqr.getPackageName();
            if (!this.zztz) {
                zzpy.zzbe("It is not recommended to show an interstitial before onAdLoaded completes.");
                bundle = new Bundle();
                bundle.putString("appid", packageName);
                bundle.putString("action", "show_interstitial_before_load_finish");
                zzb(bundle);
            }
            if (!zzv.zzcJ().zzE(this.zzsw.zzqr)) {
                zzpy.zzbe("It is not recommended to show an interstitial when app is not in foreground.");
                bundle = new Bundle();
                bundle.putString("appid", packageName);
                bundle.putString("action", "show_interstitial_app_not_in_foreground");
                zzb(bundle);
            }
        }
        if (!this.zzsw.zzdn()) {
            if (this.zzsw.zzvk.zzRK && this.zzsw.zzvk.zzKB != null) {
                try {
                    this.zzsw.zzvk.zzKB.showInterstitial();
                } catch (Throwable e) {
                    zzpy.zzc("Could not show interstitial.", e);
                    zzck();
                }
            } else if (this.zzsw.zzvk.zzMZ == null) {
                zzpy.zzbe("The interstitial failed to load.");
            } else if (this.zzsw.zzvk.zzMZ.zzkZ()) {
                zzpy.zzbe("The interstitial is already showing.");
            } else {
                this.zzsw.zzvk.zzMZ.zzJ(true);
                if (this.zzsw.zzvk.zzVp != null) {
                    this.zzsy.zza(this.zzsw.zzvj, this.zzsw.zzvk);
                }
                if (zzs.zzyA()) {
                    final zzov com_google_android_gms_internal_zzov = this.zzsw.zzvk;
                    if (com_google_android_gms_internal_zzov.zzdz()) {
                        new zzcv(this.zzsw.zzqr, com_google_android_gms_internal_zzov.zzMZ.getView()).zza(com_google_android_gms_internal_zzov.zzMZ);
                    } else {
                        com_google_android_gms_internal_zzov.zzMZ.zzkV().zza(new zzc(this) {
                            final /* synthetic */ zzl zztD;
                        });
                    }
                }
                Bitmap zzF = this.zzsw.zztH ? zzv.zzcJ().zzF(this.zzsw.zzqr) : null;
                this.zztA = zzv.zzde().zzb(zzF);
                if (!((Boolean) zzfx.zzDJ.get()).booleanValue() || zzF == null) {
                    zzm com_google_android_gms_ads_internal_zzm = new zzm(this.zzsw.zztH, zzcj(), false, 0.0f, -1);
                    int requestedOrientation = this.zzsw.zzvk.zzMZ.getRequestedOrientation();
                    if (requestedOrientation == -1) {
                        requestedOrientation = this.zzsw.zzvk.orientation;
                    }
                    zzv.zzcH().zza(this.zzsw.zzqr, new AdOverlayInfoParcel(this, this, this, this.zzsw.zzvk.zzMZ, requestedOrientation, this.zzsw.zzvf, this.zzsw.zzvk.zzRP, com_google_android_gms_ads_internal_zzm));
                    return;
                }
                new zza(this, this.zztA).zziw();
            }
        }
    }

    protected zzqp zza(com.google.android.gms.internal.zzov.zza com_google_android_gms_internal_zzov_zza, zze com_google_android_gms_ads_internal_zze, zzop com_google_android_gms_internal_zzop) {
        zzqp zza = zzv.zzcK().zza(this.zzsw.zzqr, this.zzsw.zzvj, false, false, this.zzsw.zzve, this.zzsw.zzvf, this.zzsr, this, this.zzsz);
        zza.zzkV().zza(this, null, this, this, ((Boolean) zzfx.zzCh.get()).booleanValue(), this, this, com_google_android_gms_ads_internal_zze, null, com_google_android_gms_internal_zzop);
        zza((zzjb) zza);
        zza.zzbg(com_google_android_gms_internal_zzov_zza.zzSF.zzRr);
        zzig.zza(zza, (com.google.android.gms.internal.zzig.zza) this);
        return zza;
    }

    public void zza(com.google.android.gms.internal.zzov.zza com_google_android_gms_internal_zzov_zza, zzgf com_google_android_gms_internal_zzgf) {
        Object obj = 1;
        if (!((Boolean) zzfx.zzCA.get()).booleanValue()) {
            super.zza(com_google_android_gms_internal_zzov_zza, com_google_android_gms_internal_zzgf);
        } else if (com_google_android_gms_internal_zzov_zza.errorCode != -2) {
            super.zza(com_google_android_gms_internal_zzov_zza, com_google_android_gms_internal_zzgf);
        } else {
            Bundle bundle = com_google_android_gms_internal_zzov_zza.zzSF.zzRd.zzyP.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
            Object obj2 = (bundle == null || !bundle.containsKey("gw")) ? 1 : null;
            if (com_google_android_gms_internal_zzov_zza.zzVB.zzRK) {
                obj = null;
            }
            if (!(obj2 == null || r2 == null)) {
                this.zzsw.zzvl = zzc(com_google_android_gms_internal_zzov_zza);
            }
            super.zza(this.zzsw.zzvl, com_google_android_gms_internal_zzgf);
        }
    }

    public void zza(boolean z, float f) {
        this.zztB = z;
        this.zztC = f;
    }

    public boolean zza(zzdy com_google_android_gms_internal_zzdy, zzgf com_google_android_gms_internal_zzgf) {
        if (this.zzsw.zzvk == null) {
            return super.zza(com_google_android_gms_internal_zzdy, com_google_android_gms_internal_zzgf);
        }
        zzpy.zzbe("An interstitial is already loading. Aborting.");
        return false;
    }

    protected boolean zza(zzdy com_google_android_gms_internal_zzdy, zzov com_google_android_gms_internal_zzov, boolean z) {
        if (this.zzsw.zzdm() && com_google_android_gms_internal_zzov.zzMZ != null) {
            zzv.zzcL().zzl(com_google_android_gms_internal_zzov.zzMZ);
        }
        return this.zzsv.zzcv();
    }

    public boolean zza(zzov com_google_android_gms_internal_zzov, zzov com_google_android_gms_internal_zzov2) {
        if (!super.zza(com_google_android_gms_internal_zzov, com_google_android_gms_internal_zzov2)) {
            return false;
        }
        if (!(this.zzsw.zzdm() || this.zzsw.zzvE == null || com_google_android_gms_internal_zzov2.zzVp == null)) {
            this.zzsy.zza(this.zzsw.zzvj, com_google_android_gms_internal_zzov2, this.zzsw.zzvE);
        }
        return true;
    }

    public void zzb(zzok com_google_android_gms_internal_zzok) {
        if (this.zzsw.zzvk != null) {
            if (this.zzsw.zzvk.zzSb != null) {
                zzv.zzcJ().zza(this.zzsw.zzqr, this.zzsw.zzvf.zzaZ, this.zzsw.zzvk.zzSb);
            }
            if (this.zzsw.zzvk.zzRZ != null) {
                com_google_android_gms_internal_zzok = this.zzsw.zzvk.zzRZ;
            }
        }
        zza(com_google_android_gms_internal_zzok);
    }

    protected void zzbH() {
        zzck();
        super.zzbH();
    }

    protected void zzbK() {
        super.zzbK();
        this.zztz = true;
    }

    public void zzbO() {
        recordImpression();
        super.zzbO();
        if (this.zzsw.zzvk != null && this.zzsw.zzvk.zzMZ != null) {
            zzqq zzkV = this.zzsw.zzvk.zzMZ.zzkV();
            if (zzkV != null) {
                zzkV.zzlt();
            }
        }
    }

    protected boolean zzcj() {
        if (!(this.zzsw.zzqr instanceof Activity)) {
            return false;
        }
        Window window = ((Activity) this.zzsw.zzqr).getWindow();
        if (window == null || window.getDecorView() == null) {
            return false;
        }
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        window.getDecorView().getGlobalVisibleRect(rect, null);
        window.getDecorView().getWindowVisibleDisplayFrame(rect2);
        boolean z = (rect.bottom == 0 || rect2.bottom == 0 || rect.top != rect2.top) ? false : true;
        return z;
    }

    public void zzck() {
        zzv.zzde().zzb(Integer.valueOf(this.zztA));
        if (this.zzsw.zzdm()) {
            this.zzsw.zzdj();
            this.zzsw.zzvk = null;
            this.zzsw.zztH = false;
            this.zztz = false;
        }
    }

    public void zzcl() {
        if (!(this.zzsw.zzvk == null || this.zzsw.zzvk.zzVu == null)) {
            zzv.zzcJ().zza(this.zzsw.zzqr, this.zzsw.zzvf.zzaZ, this.zzsw.zzvk.zzVu);
        }
        zzbL();
    }

    public void zzg(boolean z) {
        this.zzsw.zztH = z;
    }
}
