package com.google.android.gms.ads.internal;

import android.os.Debug;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewParent;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zzi;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzcp;
import com.google.android.gms.internal.zzdt;
import com.google.android.gms.internal.zzdy;
import com.google.android.gms.internal.zzdz;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzeh;
import com.google.android.gms.internal.zzek;
import com.google.android.gms.internal.zzel;
import com.google.android.gms.internal.zzer;
import com.google.android.gms.internal.zzet;
import com.google.android.gms.internal.zzew;
import com.google.android.gms.internal.zzfl;
import com.google.android.gms.internal.zzfn;
import com.google.android.gms.internal.zzfx;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzgf;
import com.google.android.gms.internal.zzgj;
import com.google.android.gms.internal.zzht;
import com.google.android.gms.internal.zzkz;
import com.google.android.gms.internal.zzld;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zznn;
import com.google.android.gms.internal.zznt;
import com.google.android.gms.internal.zzok;
import com.google.android.gms.internal.zzov;
import com.google.android.gms.internal.zzow;
import com.google.android.gms.internal.zzpa;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzpy;
import java.util.HashSet;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CountDownLatch;

@zzmb
public abstract class zza extends com.google.android.gms.internal.zzep.zza implements zzq, zzdt, zzht, com.google.android.gms.internal.zzln.zza, com.google.android.gms.internal.zzmc.zza, zzpa {
    protected zzgf zzsr;
    protected zzgd zzss;
    protected zzgd zzst;
    protected boolean zzsu = false;
    protected final zzs zzsv;
    protected final zzw zzsw;
    protected transient zzdy zzsx;
    protected final zzcp zzsy;
    protected final zzd zzsz;

    zza(zzw com_google_android_gms_ads_internal_zzw, zzs com_google_android_gms_ads_internal_zzs, zzd com_google_android_gms_ads_internal_zzd) {
        this.zzsw = com_google_android_gms_ads_internal_zzw;
        if (com_google_android_gms_ads_internal_zzs == null) {
            com_google_android_gms_ads_internal_zzs = new zzs(this);
        }
        this.zzsv = com_google_android_gms_ads_internal_zzs;
        this.zzsz = com_google_android_gms_ads_internal_zzd;
        zzv.zzcJ().zzz(this.zzsw.zzqr);
        zzv.zzcN().zzc(this.zzsw.zzqr, this.zzsw.zzvf);
        zzv.zzcO().initialize(this.zzsw.zzqr);
        this.zzsy = zzv.zzcN().zzjZ();
        zzv.zzcM().initialize(this.zzsw.zzqr);
        zzbA();
    }

    private zzdy zza(zzdy com_google_android_gms_internal_zzdy) {
        return (!zzi.zzaK(this.zzsw.zzqr) || com_google_android_gms_internal_zzdy.zzyN == null) ? com_google_android_gms_internal_zzdy : new zzdz(com_google_android_gms_internal_zzdy).zza(null).zzex();
    }

    private TimerTask zza(final Timer timer, final CountDownLatch countDownLatch) {
        return new TimerTask(this) {
            final /* synthetic */ zza zzsC;

            public void run() {
                if (((long) ((Integer) zzfx.zzEh.get()).intValue()) != countDownLatch.getCount()) {
                    zzpy.zzbc("Stopping method tracing");
                    Debug.stopMethodTracing();
                    if (countDownLatch.getCount() == 0) {
                        timer.cancel();
                        return;
                    }
                }
                String concat = String.valueOf(this.zzsC.zzsw.zzqr.getPackageName()).concat("_adsTrace_");
                try {
                    zzpy.zzbc("Starting method tracing");
                    countDownLatch.countDown();
                    Debug.startMethodTracing(new StringBuilder(String.valueOf(concat).length() + 20).append(concat).append(zzv.zzcP().currentTimeMillis()).toString(), ((Integer) zzfx.zzEi.get()).intValue());
                } catch (Throwable e) {
                    zzpy.zzc("Exception occurred while starting method tracing.", e);
                }
            }
        };
    }

    private void zzbA() {
        if (((Boolean) zzfx.zzEf.get()).booleanValue()) {
            Timer timer = new Timer();
            timer.schedule(zza(timer, new CountDownLatch(((Integer) zzfx.zzEh.get()).intValue())), 0, ((Long) zzfx.zzEg.get()).longValue());
        }
    }

    private void zzd(zzov com_google_android_gms_internal_zzov) {
        if (zzv.zzcR().zzkz() && !com_google_android_gms_internal_zzov.zzVA && !TextUtils.isEmpty(com_google_android_gms_internal_zzov.zzSg)) {
            zzpy.zzbc("Sending troubleshooting signals to the server.");
            zzv.zzcR().zza(this.zzsw.zzqr, this.zzsw.zzvf.zzaZ, com_google_android_gms_internal_zzov.zzSg, this.zzsw.zzvd);
            com_google_android_gms_internal_zzov.zzVA = true;
        }
    }

    public void destroy() {
        zzac.zzdn("destroy must be called on the main UI thread.");
        this.zzsv.cancel();
        this.zzsy.zzk(this.zzsw.zzvk);
        this.zzsw.destroy();
    }

    public boolean isLoading() {
        return this.zzsu;
    }

    public boolean isReady() {
        zzac.zzdn("isLoaded must be called on the main UI thread.");
        return this.zzsw.zzvh == null && this.zzsw.zzvi == null && this.zzsw.zzvk != null;
    }

    public void onAdClicked() {
        if (this.zzsw.zzvk == null) {
            zzpy.zzbe("Ad state was null when trying to ping click URLs.");
            return;
        }
        zzpy.zzbc("Pinging click URLs.");
        if (this.zzsw.zzvm != null) {
            this.zzsw.zzvm.zzjA();
        }
        if (this.zzsw.zzvk.zzJY != null) {
            zzv.zzcJ().zza(this.zzsw.zzqr, this.zzsw.zzvf.zzaZ, this.zzsw.zzvk.zzJY);
        }
        if (this.zzsw.zzvn != null) {
            try {
                this.zzsw.zzvn.onAdClicked();
            } catch (Throwable e) {
                zzpy.zzc("Could not notify onAdClicked event.", e);
            }
        }
    }

    public void onAppEvent(String str, String str2) {
        if (this.zzsw.zzvp != null) {
            try {
                this.zzsw.zzvp.onAppEvent(str, str2);
            } catch (Throwable e) {
                zzpy.zzc("Could not call the AppEventListener.", e);
            }
        }
    }

    public void pause() {
        zzac.zzdn("pause must be called on the main UI thread.");
    }

    public void resume() {
        zzac.zzdn("resume must be called on the main UI thread.");
    }

    public void setManualImpressionsEnabled(boolean z) {
        throw new UnsupportedOperationException("Attempt to call setManualImpressionsEnabled for an unsupported ad type.");
    }

    public void setUserId(String str) {
        zzpy.zzbe("RewardedVideoAd.setUserId() is deprecated. Please do not call this method.");
    }

    public void stopLoading() {
        zzac.zzdn("stopLoading must be called on the main UI thread.");
        this.zzsu = false;
        this.zzsw.zzi(true);
    }

    public void zza(zzec com_google_android_gms_internal_zzec) {
        zzac.zzdn("setAdSize must be called on the main UI thread.");
        this.zzsw.zzvj = com_google_android_gms_internal_zzec;
        if (!(this.zzsw.zzvk == null || this.zzsw.zzvk.zzMZ == null || this.zzsw.zzvF != 0)) {
            this.zzsw.zzvk.zzMZ.zza(com_google_android_gms_internal_zzec);
        }
        if (this.zzsw.zzvg != null) {
            if (this.zzsw.zzvg.getChildCount() > 1) {
                this.zzsw.zzvg.removeView(this.zzsw.zzvg.getNextView());
            }
            this.zzsw.zzvg.setMinimumWidth(com_google_android_gms_internal_zzec.widthPixels);
            this.zzsw.zzvg.setMinimumHeight(com_google_android_gms_internal_zzec.heightPixels);
            this.zzsw.zzvg.requestLayout();
        }
    }

    public void zza(zzek com_google_android_gms_internal_zzek) {
        zzac.zzdn("setAdListener must be called on the main UI thread.");
        this.zzsw.zzvn = com_google_android_gms_internal_zzek;
    }

    public void zza(zzel com_google_android_gms_internal_zzel) {
        zzac.zzdn("setAdListener must be called on the main UI thread.");
        this.zzsw.zzvo = com_google_android_gms_internal_zzel;
    }

    public void zza(zzer com_google_android_gms_internal_zzer) {
        zzac.zzdn("setAppEventListener must be called on the main UI thread.");
        this.zzsw.zzvp = com_google_android_gms_internal_zzer;
    }

    public void zza(zzet com_google_android_gms_internal_zzet) {
        zzac.zzdn("setCorrelationIdProvider must be called on the main UI thread");
        this.zzsw.zzvq = com_google_android_gms_internal_zzet;
    }

    public void zza(zzfn com_google_android_gms_internal_zzfn) {
        zzac.zzdn("setVideoOptions must be called on the main UI thread.");
        this.zzsw.zzvy = com_google_android_gms_internal_zzfn;
    }

    public void zza(zzgj com_google_android_gms_internal_zzgj) {
        throw new IllegalStateException("setOnCustomRenderedAdLoadedListener is not supported for current ad type");
    }

    public void zza(zzkz com_google_android_gms_internal_zzkz) {
        throw new IllegalStateException("setInAppPurchaseListener is not supported for current ad type");
    }

    public void zza(zzld com_google_android_gms_internal_zzld, String str) {
        throw new IllegalStateException("setPlayStorePurchaseParams is not supported for current ad type");
    }

    public void zza(zznt com_google_android_gms_internal_zznt) {
        zzac.zzdn("setRewardedVideoAdListener can only be called from the UI thread.");
        this.zzsw.zzvA = com_google_android_gms_internal_zznt;
    }

    protected void zza(zzok com_google_android_gms_internal_zzok) {
        if (this.zzsw.zzvA != null) {
            try {
                String str = "";
                int i = 0;
                if (com_google_android_gms_internal_zzok != null) {
                    str = com_google_android_gms_internal_zzok.type;
                    i = com_google_android_gms_internal_zzok.zzVj;
                }
                this.zzsw.zzvA.zza(new zznn(str, i));
            } catch (Throwable e) {
                zzpy.zzc("Could not call RewardedVideoAdListener.onRewarded().", e);
            }
        }
    }

    public void zza(com.google.android.gms.internal.zzov.zza com_google_android_gms_internal_zzov_zza) {
        if (!(com_google_android_gms_internal_zzov_zza.zzVB.zzRO == -1 || TextUtils.isEmpty(com_google_android_gms_internal_zzov_zza.zzVB.zzRX))) {
            long zzw = zzw(com_google_android_gms_internal_zzov_zza.zzVB.zzRX);
            if (zzw != -1) {
                zzgd zzc = this.zzsr.zzc(zzw + com_google_android_gms_internal_zzov_zza.zzVB.zzRO);
                this.zzsr.zza(zzc, "stc");
            }
        }
        this.zzsr.zzX(com_google_android_gms_internal_zzov_zza.zzVB.zzRX);
        this.zzsr.zza(this.zzss, "arf");
        this.zzst = this.zzsr.zzfw();
        this.zzsr.zzg("gqi", com_google_android_gms_internal_zzov_zza.zzVB.zzRY);
        this.zzsw.zzvh = null;
        this.zzsw.zzvl = com_google_android_gms_internal_zzov_zza;
        zza(com_google_android_gms_internal_zzov_zza, this.zzsr);
    }

    protected abstract void zza(com.google.android.gms.internal.zzov.zza com_google_android_gms_internal_zzov_zza, zzgf com_google_android_gms_internal_zzgf);

    public void zza(HashSet<zzow> hashSet) {
        this.zzsw.zza(hashSet);
    }

    protected abstract boolean zza(zzdy com_google_android_gms_internal_zzdy, zzgf com_google_android_gms_internal_zzgf);

    boolean zza(zzov com_google_android_gms_internal_zzov) {
        return false;
    }

    protected abstract boolean zza(zzov com_google_android_gms_internal_zzov, zzov com_google_android_gms_internal_zzov2);

    protected void zzb(View view) {
        com.google.android.gms.ads.internal.zzw.zza com_google_android_gms_ads_internal_zzw_zza = this.zzsw.zzvg;
        if (com_google_android_gms_ads_internal_zzw_zza != null) {
            com_google_android_gms_ads_internal_zzw_zza.addView(view, zzv.zzcL().zzks());
        }
    }

    public void zzb(zzov com_google_android_gms_internal_zzov) {
        this.zzsr.zza(this.zzst, "awr");
        this.zzsw.zzvi = null;
        if (!(com_google_android_gms_internal_zzov.errorCode == -2 || com_google_android_gms_internal_zzov.errorCode == 3)) {
            zzv.zzcN().zzb(this.zzsw.zzdi());
        }
        if (com_google_android_gms_internal_zzov.errorCode == -1) {
            this.zzsu = false;
            return;
        }
        if (zza(com_google_android_gms_internal_zzov)) {
            zzpy.zzbc("Ad refresh scheduled.");
        }
        if (com_google_android_gms_internal_zzov.errorCode != -2) {
            zzh(com_google_android_gms_internal_zzov.errorCode);
            return;
        }
        if (this.zzsw.zzvD == null) {
            this.zzsw.zzvD = new zzpb(this.zzsw.zzvd);
        }
        this.zzsy.zzj(this.zzsw.zzvk);
        if (zza(this.zzsw.zzvk, com_google_android_gms_internal_zzov)) {
            this.zzsw.zzvk = com_google_android_gms_internal_zzov;
            this.zzsw.zzdr();
            this.zzsr.zzg("is_mraid", this.zzsw.zzvk.zzdz() ? "1" : "0");
            this.zzsr.zzg("is_mediation", this.zzsw.zzvk.zzRK ? "1" : "0");
            if (!(this.zzsw.zzvk.zzMZ == null || this.zzsw.zzvk.zzMZ.zzkV() == null)) {
                this.zzsr.zzg("is_delay_pl", this.zzsw.zzvk.zzMZ.zzkV().zzlr() ? "1" : "0");
            }
            this.zzsr.zza(this.zzss, "ttc");
            if (zzv.zzcN().zzjN() != null) {
                zzv.zzcN().zzjN().zza(this.zzsr);
            }
            if (this.zzsw.zzdm()) {
                zzbK();
            }
        }
        if (com_google_android_gms_internal_zzov.zzKb != null) {
            zzv.zzcJ().zza(this.zzsw.zzqr, com_google_android_gms_internal_zzov.zzKb);
        }
    }

    public boolean zzb(zzdy com_google_android_gms_internal_zzdy) {
        zzac.zzdn("loadAd must be called on the main UI thread.");
        zzv.zzcO().zzeq();
        if (((Boolean) zzfx.zzCy.get()).booleanValue()) {
            zzdy.zzj(com_google_android_gms_internal_zzdy);
        }
        zzdy zza = zza(com_google_android_gms_internal_zzdy);
        if (this.zzsw.zzvh == null && this.zzsw.zzvi == null) {
            zzpy.zzbd("Starting ad request.");
            zzbB();
            this.zzss = this.zzsr.zzfw();
            if (!zza.zzyI) {
                String valueOf = String.valueOf(zzeh.zzeO().zzO(this.zzsw.zzqr));
                zzpy.zzbd(new StringBuilder(String.valueOf(valueOf).length() + 71).append("Use AdRequest.Builder.addTestDevice(\"").append(valueOf).append("\") to get test ads on this device.").toString());
            }
            this.zzsv.zzg(zza);
            this.zzsu = zza(zza, this.zzsr);
            return this.zzsu;
        }
        if (this.zzsx != null) {
            zzpy.zzbe("Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes.");
        } else {
            zzpy.zzbe("Loading already in progress, saving this object for future refreshes.");
        }
        this.zzsx = zza;
        return false;
    }

    public void zzbB() {
        this.zzsr = new zzgf(((Boolean) zzfx.zzBK.get()).booleanValue(), "load_ad", this.zzsw.zzvj.zzzk);
        this.zzss = new zzgd(-1, null, null);
        this.zzst = new zzgd(-1, null, null);
    }

    public zzd zzbC() {
        zzac.zzdn("getAdFrame must be called on the main UI thread.");
        return zze.zzA(this.zzsw.zzvg);
    }

    public zzec zzbD() {
        zzac.zzdn("getAdSize must be called on the main UI thread.");
        return this.zzsw.zzvj == null ? null : new zzfl(this.zzsw.zzvj);
    }

    public void zzbE() {
        zzbI();
    }

    public void zzbF() {
        zzac.zzdn("recordManualImpression must be called on the main UI thread.");
        if (this.zzsw.zzvk == null) {
            zzpy.zzbe("Ad state was null when trying to ping manual tracking URLs.");
            return;
        }
        zzpy.zzbc("Pinging manual tracking URLs.");
        if (this.zzsw.zzvk.zzRM != null && !this.zzsw.zzvk.zzVz) {
            zzv.zzcJ().zza(this.zzsw.zzqr, this.zzsw.zzvf.zzaZ, this.zzsw.zzvk.zzRM);
            this.zzsw.zzvk.zzVz = true;
            zzd(this.zzsw.zzvk);
        }
    }

    public zzew zzbG() {
        return null;
    }

    protected void zzbH() {
        zzpy.zzbd("Ad closing.");
        if (this.zzsw.zzvo != null) {
            try {
                this.zzsw.zzvo.onAdClosed();
            } catch (Throwable e) {
                zzpy.zzc("Could not call AdListener.onAdClosed().", e);
            }
        }
        if (this.zzsw.zzvA != null) {
            try {
                this.zzsw.zzvA.onRewardedVideoAdClosed();
            } catch (Throwable e2) {
                zzpy.zzc("Could not call RewardedVideoAdListener.onRewardedVideoAdClosed().", e2);
            }
        }
    }

    protected void zzbI() {
        zzpy.zzbd("Ad leaving application.");
        if (this.zzsw.zzvo != null) {
            try {
                this.zzsw.zzvo.onAdLeftApplication();
            } catch (Throwable e) {
                zzpy.zzc("Could not call AdListener.onAdLeftApplication().", e);
            }
        }
        if (this.zzsw.zzvA != null) {
            try {
                this.zzsw.zzvA.onRewardedVideoAdLeftApplication();
            } catch (Throwable e2) {
                zzpy.zzc("Could not call  RewardedVideoAdListener.onRewardedVideoAdLeftApplication().", e2);
            }
        }
    }

    protected void zzbJ() {
        zzpy.zzbd("Ad opening.");
        if (this.zzsw.zzvo != null) {
            try {
                this.zzsw.zzvo.onAdOpened();
            } catch (Throwable e) {
                zzpy.zzc("Could not call AdListener.onAdOpened().", e);
            }
        }
        if (this.zzsw.zzvA != null) {
            try {
                this.zzsw.zzvA.onRewardedVideoAdOpened();
            } catch (Throwable e2) {
                zzpy.zzc("Could not call RewardedVideoAdListener.onRewardedVideoAdOpened().", e2);
            }
        }
    }

    protected void zzbK() {
        zzpy.zzbd("Ad finished loading.");
        this.zzsu = false;
        if (this.zzsw.zzvo != null) {
            try {
                this.zzsw.zzvo.onAdLoaded();
            } catch (Throwable e) {
                zzpy.zzc("Could not call AdListener.onAdLoaded().", e);
            }
        }
        if (this.zzsw.zzvA != null) {
            try {
                this.zzsw.zzvA.onRewardedVideoAdLoaded();
            } catch (Throwable e2) {
                zzpy.zzc("Could not call RewardedVideoAdListener.onRewardedVideoAdLoaded().", e2);
            }
        }
    }

    protected void zzbL() {
        if (this.zzsw.zzvA != null) {
            try {
                this.zzsw.zzvA.onRewardedVideoStarted();
            } catch (Throwable e) {
                zzpy.zzc("Could not call RewardedVideoAdListener.onVideoStarted().", e);
            }
        }
    }

    public zzd zzbz() {
        return this.zzsz;
    }

    protected void zzc(zzov com_google_android_gms_internal_zzov) {
        if (com_google_android_gms_internal_zzov == null) {
            zzpy.zzbe("Ad state was null when trying to ping impression URLs.");
            return;
        }
        zzpy.zzbc("Pinging Impression URLs.");
        if (this.zzsw.zzvm != null) {
            this.zzsw.zzvm.zzjz();
        }
        if (com_google_android_gms_internal_zzov.zzJZ != null && !com_google_android_gms_internal_zzov.zzVy) {
            zzv.zzcJ().zza(this.zzsw.zzqr, this.zzsw.zzvf.zzaZ, com_google_android_gms_internal_zzov.zzJZ);
            com_google_android_gms_internal_zzov.zzVy = true;
            zzd(com_google_android_gms_internal_zzov);
        }
    }

    protected boolean zzc(zzdy com_google_android_gms_internal_zzdy) {
        if (this.zzsw.zzvg == null) {
            return false;
        }
        ViewParent parent = this.zzsw.zzvg.getParent();
        if (!(parent instanceof View)) {
            return false;
        }
        View view = (View) parent;
        return zzv.zzcJ().zza(view, view.getContext());
    }

    public void zzd(zzdy com_google_android_gms_internal_zzdy) {
        if (zzc(com_google_android_gms_internal_zzdy)) {
            zzb(com_google_android_gms_internal_zzdy);
            return;
        }
        zzpy.zzbd("Ad is not visible. Not refreshing ad.");
        this.zzsv.zzh(com_google_android_gms_internal_zzdy);
    }

    protected void zzh(int i) {
        zzpy.zzbe("Failed to load ad: " + i);
        this.zzsu = false;
        if (this.zzsw.zzvo != null) {
            try {
                this.zzsw.zzvo.onAdFailedToLoad(i);
            } catch (Throwable e) {
                zzpy.zzc("Could not call AdListener.onAdFailedToLoad().", e);
            }
        }
        if (this.zzsw.zzvA != null) {
            try {
                this.zzsw.zzvA.onRewardedVideoAdFailedToLoad(i);
            } catch (Throwable e2) {
                zzpy.zzc("Could not call RewardedVideoAdListener.onRewardedVideoAdFailedToLoad().", e2);
            }
        }
    }

    long zzw(String str) {
        int indexOf = str.indexOf("ufe");
        int indexOf2 = str.indexOf(44, indexOf);
        if (indexOf2 == -1) {
            indexOf2 = str.length();
        }
        try {
            return Long.parseLong(str.substring(indexOf + 4, indexOf2));
        } catch (IndexOutOfBoundsException e) {
            zzpy.zzbe("Invalid index for Url fetch time in CSI latency info.");
            return -1;
        } catch (NumberFormatException e2) {
            zzpy.zzbe("Cannot find valid format of Url fetch time in CSI latency info.");
            return -1;
        }
    }
}
