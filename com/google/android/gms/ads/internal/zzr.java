package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.RemoteException;
import android.support.v4.util.SimpleArrayMap;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzdy;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzgf;
import com.google.android.gms.internal.zzgj;
import com.google.android.gms.internal.zzgp;
import com.google.android.gms.internal.zzgq;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzgs;
import com.google.android.gms.internal.zzgt;
import com.google.android.gms.internal.zzgu;
import com.google.android.gms.internal.zzgw;
import com.google.android.gms.internal.zzhj;
import com.google.android.gms.internal.zzhk;
import com.google.android.gms.internal.zzhl;
import com.google.android.gms.internal.zzhm;
import com.google.android.gms.internal.zzjs;
import com.google.android.gms.internal.zzjw;
import com.google.android.gms.internal.zzjx;
import com.google.android.gms.internal.zzkz;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzov;
import com.google.android.gms.internal.zzov.zza;
import com.google.android.gms.internal.zzpi;
import com.google.android.gms.internal.zzpy;
import com.google.android.gms.internal.zzqa;
import com.google.android.gms.internal.zzqp;
import java.util.List;

@zzmb
public class zzr extends zzb {
    private zzqp zzua;

    public zzr(Context context, zzd com_google_android_gms_ads_internal_zzd, zzec com_google_android_gms_internal_zzec, String str, zzjs com_google_android_gms_internal_zzjs, zzqa com_google_android_gms_internal_zzqa) {
        super(context, com_google_android_gms_internal_zzec, str, com_google_android_gms_internal_zzjs, com_google_android_gms_internal_zzqa, com_google_android_gms_ads_internal_zzd);
    }

    private static zzgp zza(zzjw com_google_android_gms_internal_zzjw) throws RemoteException {
        return new zzgp(com_google_android_gms_internal_zzjw.getHeadline(), com_google_android_gms_internal_zzjw.getImages(), com_google_android_gms_internal_zzjw.getBody(), com_google_android_gms_internal_zzjw.zzfL() != null ? com_google_android_gms_internal_zzjw.zzfL() : null, com_google_android_gms_internal_zzjw.getCallToAction(), com_google_android_gms_internal_zzjw.getStarRating(), com_google_android_gms_internal_zzjw.getStore(), com_google_android_gms_internal_zzjw.getPrice(), null, com_google_android_gms_internal_zzjw.getExtras(), com_google_android_gms_internal_zzjw.zzbG(), null);
    }

    private static zzgq zza(zzjx com_google_android_gms_internal_zzjx) throws RemoteException {
        return new zzgq(com_google_android_gms_internal_zzjx.getHeadline(), com_google_android_gms_internal_zzjx.getImages(), com_google_android_gms_internal_zzjx.getBody(), com_google_android_gms_internal_zzjx.zzfQ() != null ? com_google_android_gms_internal_zzjx.zzfQ() : null, com_google_android_gms_internal_zzjx.getCallToAction(), com_google_android_gms_internal_zzjx.getAdvertiser(), null, com_google_android_gms_internal_zzjx.getExtras());
    }

    private void zza(final zzgp com_google_android_gms_internal_zzgp) {
        zzpi.zzWR.post(new Runnable(this) {
            final /* synthetic */ zzr zzub;

            public void run() {
                try {
                    if (this.zzub.zzsw.zzvt != null) {
                        this.zzub.zzsw.zzvt.zza(com_google_android_gms_internal_zzgp);
                    }
                } catch (Throwable e) {
                    zzpy.zzc("Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded().", e);
                }
            }
        });
    }

    private void zza(final zzgq com_google_android_gms_internal_zzgq) {
        zzpi.zzWR.post(new Runnable(this) {
            final /* synthetic */ zzr zzub;

            public void run() {
                try {
                    if (this.zzub.zzsw.zzvu != null) {
                        this.zzub.zzsw.zzvu.zza(com_google_android_gms_internal_zzgq);
                    }
                } catch (Throwable e) {
                    zzpy.zzc("Could not call OnContentAdLoadedListener.onContentAdLoaded().", e);
                }
            }
        });
    }

    private void zza(final zzov com_google_android_gms_internal_zzov, final String str) {
        zzpi.zzWR.post(new Runnable(this) {
            final /* synthetic */ zzr zzub;

            public void run() {
                try {
                    ((zzhm) this.zzub.zzsw.zzvw.get(str)).zza((zzgr) com_google_android_gms_internal_zzov.zzVx);
                } catch (Throwable e) {
                    zzpy.zzc("Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded().", e);
                }
            }
        });
    }

    public void pause() {
        throw new IllegalStateException("Native Ad DOES NOT support pause().");
    }

    public void resume() {
        throw new IllegalStateException("Native Ad DOES NOT support resume().");
    }

    public void showInterstitial() {
        throw new IllegalStateException("Interstitial is NOT supported by NativeAdManager.");
    }

    public void zza(SimpleArrayMap<String, zzhm> simpleArrayMap) {
        zzac.zzdn("setOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        this.zzsw.zzvw = simpleArrayMap;
    }

    public void zza(zzgj com_google_android_gms_internal_zzgj) {
        throw new IllegalStateException("CustomRendering is NOT supported by NativeAdManager.");
    }

    public void zza(zzgs com_google_android_gms_internal_zzgs) {
        if (this.zzua != null) {
            this.zzua.zzb(com_google_android_gms_internal_zzgs);
        }
    }

    public void zza(zzgu com_google_android_gms_internal_zzgu) {
        if (this.zzsw.zzvk.zzVp != null) {
            zzv.zzcN().zzjZ().zza(this.zzsw.zzvj, this.zzsw.zzvk, com_google_android_gms_internal_zzgu);
        }
    }

    public void zza(zzkz com_google_android_gms_internal_zzkz) {
        throw new IllegalStateException("In App Purchase is NOT supported by NativeAdManager.");
    }

    public void zza(final zza com_google_android_gms_internal_zzov_zza, zzgf com_google_android_gms_internal_zzgf) {
        if (com_google_android_gms_internal_zzov_zza.zzvj != null) {
            this.zzsw.zzvj = com_google_android_gms_internal_zzov_zza.zzvj;
        }
        if (com_google_android_gms_internal_zzov_zza.errorCode != -2) {
            zzpi.zzWR.post(new Runnable(this) {
                final /* synthetic */ zzr zzub;

                public void run() {
                    this.zzub.zzb(new zzov(com_google_android_gms_internal_zzov_zza, null, null, null, null, null, null, null));
                }
            });
            return;
        }
        this.zzsw.zzvF = 0;
        this.zzsw.zzvi = zzv.zzcI().zza(this.zzsw.zzqr, this, com_google_android_gms_internal_zzov_zza, this.zzsw.zzve, null, this.zzsD, this, com_google_android_gms_internal_zzgf);
        String str = "AdRenderer: ";
        String valueOf = String.valueOf(this.zzsw.zzvi.getClass().getName());
        zzpy.zzbc(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
    }

    protected boolean zza(zzdy com_google_android_gms_internal_zzdy, zzov com_google_android_gms_internal_zzov, boolean z) {
        return this.zzsv.zzcv();
    }

    protected boolean zza(zzov com_google_android_gms_internal_zzov, zzov com_google_android_gms_internal_zzov2) {
        zzb(null);
        if (this.zzsw.zzdm()) {
            if (com_google_android_gms_internal_zzov2.zzRK) {
                try {
                    zzjw zzgJ = com_google_android_gms_internal_zzov2.zzKB != null ? com_google_android_gms_internal_zzov2.zzKB.zzgJ() : null;
                    zzjx zzgK = com_google_android_gms_internal_zzov2.zzKB != null ? com_google_android_gms_internal_zzov2.zzKB.zzgK() : null;
                    if (zzgJ == null || this.zzsw.zzvt == null) {
                        if (zzgK != null) {
                            if (this.zzsw.zzvu != null) {
                                zzgq zza = zza(zzgK);
                                zza.zzb(new zzgt(this.zzsw.zzqr, this, this.zzsw.zzve, zzgK, (zzgu.zza) zza));
                                zza(zza);
                            }
                        }
                        zzpy.zzbe("No matching mapper/listener for retrieved native ad template.");
                        zzh(0);
                        return false;
                    }
                    zzgp zza2 = zza(zzgJ);
                    zza2.zzb(new zzgt(this.zzsw.zzqr, this, this.zzsw.zzve, zzgJ, (zzgu.zza) zza2));
                    zza(zza2);
                } catch (Throwable e) {
                    zzpy.zzc("Failed to get native ad mapper", e);
                }
            } else {
                zzgu.zza com_google_android_gms_internal_zzgu_zza = com_google_android_gms_internal_zzov2.zzVx;
                if ((com_google_android_gms_internal_zzgu_zza instanceof zzgq) && this.zzsw.zzvu != null) {
                    zza((zzgq) com_google_android_gms_internal_zzov2.zzVx);
                } else if ((com_google_android_gms_internal_zzgu_zza instanceof zzgp) && this.zzsw.zzvt != null) {
                    zza((zzgp) com_google_android_gms_internal_zzov2.zzVx);
                } else if (!(com_google_android_gms_internal_zzgu_zza instanceof zzgr) || this.zzsw.zzvw == null || this.zzsw.zzvw.get(((zzgr) com_google_android_gms_internal_zzgu_zza).getCustomTemplateId()) == null) {
                    zzpy.zzbe("No matching listener for retrieved native ad template.");
                    zzh(0);
                    return false;
                } else {
                    zza(com_google_android_gms_internal_zzov2, ((zzgr) com_google_android_gms_internal_zzgu_zza).getCustomTemplateId());
                }
            }
            return super.zza(com_google_android_gms_internal_zzov, com_google_android_gms_internal_zzov2);
        }
        throw new IllegalStateException("Native ad DOES NOT have custom rendering mode.");
    }

    public void zzb(SimpleArrayMap<String, zzhl> simpleArrayMap) {
        zzac.zzdn("setOnCustomClickListener must be called on the main UI thread.");
        this.zzsw.zzvv = simpleArrayMap;
    }

    public void zzb(zzgw com_google_android_gms_internal_zzgw) {
        zzac.zzdn("setNativeAdOptions must be called on the main UI thread.");
        this.zzsw.zzvx = com_google_android_gms_internal_zzgw;
    }

    public void zzb(zzhj com_google_android_gms_internal_zzhj) {
        zzac.zzdn("setOnAppInstallAdLoadedListener must be called on the main UI thread.");
        this.zzsw.zzvt = com_google_android_gms_internal_zzhj;
    }

    public void zzb(zzhk com_google_android_gms_internal_zzhk) {
        zzac.zzdn("setOnContentAdLoadedListener must be called on the main UI thread.");
        this.zzsw.zzvu = com_google_android_gms_internal_zzhk;
    }

    public void zzb(List<String> list) {
        zzac.zzdn("setNativeTemplates must be called on the main UI thread.");
        this.zzsw.zzvB = list;
    }

    public void zzc(zzqp com_google_android_gms_internal_zzqp) {
        this.zzua = com_google_android_gms_internal_zzqp;
    }

    public void zzcr() {
        if (this.zzsw.zzvk == null || this.zzua == null) {
            zzpy.zzbe("Request to enable ActiveView before adState is available.");
        } else {
            zzv.zzcN().zzjZ().zza(this.zzsw.zzvj, this.zzsw.zzvk, this.zzua.getView(), this.zzua);
        }
    }

    public SimpleArrayMap<String, zzhm> zzcs() {
        zzac.zzdn("getOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        return this.zzsw.zzvw;
    }

    public void zzct() {
        if (this.zzua != null) {
            this.zzua.destroy();
            this.zzua = null;
        }
    }

    public void zzcu() {
        if (this.zzua != null && this.zzua.zzlg() != null && this.zzsw.zzvx != null && this.zzsw.zzvx.zzGH != null) {
            this.zzua.zzlg().zzP(this.zzsw.zzvx.zzGH.zzAE);
        }
    }

    public zzhl zzz(String str) {
        zzac.zzdn("getOnCustomClickListener must be called on the main UI thread.");
        return (zzhl) this.zzsw.zzvv.get(str);
    }
}
