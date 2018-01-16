package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.overlay.zzh;
import com.google.android.gms.ads.internal.purchase.GInAppPurchaseManagerInfoParcel;
import com.google.android.gms.ads.internal.purchase.zzc;
import com.google.android.gms.ads.internal.purchase.zzd;
import com.google.android.gms.ads.internal.purchase.zzf;
import com.google.android.gms.ads.internal.purchase.zzg;
import com.google.android.gms.ads.internal.purchase.zzj;
import com.google.android.gms.ads.internal.purchase.zzk;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzdy;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzeh;
import com.google.android.gms.internal.zzfx;
import com.google.android.gms.internal.zzgf;
import com.google.android.gms.internal.zzhz;
import com.google.android.gms.internal.zzjk;
import com.google.android.gms.internal.zzjs;
import com.google.android.gms.internal.zzkw;
import com.google.android.gms.internal.zzky;
import com.google.android.gms.internal.zzkz;
import com.google.android.gms.internal.zzld;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzmh.zza;
import com.google.android.gms.internal.zzmo;
import com.google.android.gms.internal.zzov;
import com.google.android.gms.internal.zzow;
import com.google.android.gms.internal.zzox;
import com.google.android.gms.internal.zzpi;
import com.google.android.gms.internal.zzpy;
import com.google.android.gms.internal.zzqa;
import com.google.android.gms.internal.zzqp;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@zzmb
public abstract class zzb extends zza implements zzh, zzj, zzt, zzhz, zzjk {
    private final Messenger mMessenger;
    protected final zzjs zzsD;
    protected transient boolean zzsE;

    public zzb(Context context, zzec com_google_android_gms_internal_zzec, String str, zzjs com_google_android_gms_internal_zzjs, zzqa com_google_android_gms_internal_zzqa, zzd com_google_android_gms_ads_internal_zzd) {
        this(new zzw(context, com_google_android_gms_internal_zzec, str, com_google_android_gms_internal_zzqa), com_google_android_gms_internal_zzjs, null, com_google_android_gms_ads_internal_zzd);
    }

    protected zzb(zzw com_google_android_gms_ads_internal_zzw, zzjs com_google_android_gms_internal_zzjs, zzs com_google_android_gms_ads_internal_zzs, zzd com_google_android_gms_ads_internal_zzd) {
        super(com_google_android_gms_ads_internal_zzw, com_google_android_gms_ads_internal_zzs, com_google_android_gms_ads_internal_zzd);
        this.zzsD = com_google_android_gms_internal_zzjs;
        this.mMessenger = new Messenger(new zzkw(this.zzsw.zzqr));
        this.zzsE = false;
    }

    private zza zza(zzdy com_google_android_gms_internal_zzdy, Bundle bundle, zzox com_google_android_gms_internal_zzox) {
        PackageInfo packageInfo;
        ApplicationInfo applicationInfo = this.zzsw.zzqr.getApplicationInfo();
        try {
            packageInfo = this.zzsw.zzqr.getPackageManager().getPackageInfo(applicationInfo.packageName, 0);
        } catch (NameNotFoundException e) {
            packageInfo = null;
        }
        DisplayMetrics displayMetrics = this.zzsw.zzqr.getResources().getDisplayMetrics();
        Bundle bundle2 = null;
        if (!(this.zzsw.zzvg == null || this.zzsw.zzvg.getParent() == null)) {
            int[] iArr = new int[2];
            this.zzsw.zzvg.getLocationOnScreen(iArr);
            int i = iArr[0];
            int i2 = iArr[1];
            int width = this.zzsw.zzvg.getWidth();
            int height = this.zzsw.zzvg.getHeight();
            int i3 = 0;
            if (this.zzsw.zzvg.isShown() && i + width > 0 && i2 + height > 0 && i <= displayMetrics.widthPixels && i2 <= displayMetrics.heightPixels) {
                i3 = 1;
            }
            bundle2 = new Bundle(5);
            bundle2.putInt("x", i);
            bundle2.putInt("y", i2);
            bundle2.putInt("width", width);
            bundle2.putInt("height", height);
            bundle2.putInt("visible", i3);
        }
        String zzjL = zzv.zzcN().zzjL();
        this.zzsw.zzvm = new zzow(zzjL, this.zzsw.zzvd);
        this.zzsw.zzvm.zzt(com_google_android_gms_internal_zzdy);
        String zza = zzv.zzcJ().zza(this.zzsw.zzqr, this.zzsw.zzvg, this.zzsw.zzvj);
        long j = 0;
        if (this.zzsw.zzvq != null) {
            try {
                j = this.zzsw.zzvq.getValue();
            } catch (RemoteException e2) {
                zzpy.zzbe("Cannot get correlation id, default to 0.");
            }
        }
        String uuid = UUID.randomUUID().toString();
        Bundle zza2 = zzv.zzcN().zza(this.zzsw.zzqr, this, zzjL);
        List arrayList = new ArrayList();
        for (i = 0; i < this.zzsw.zzvw.size(); i++) {
            arrayList.add((String) this.zzsw.zzvw.keyAt(i));
        }
        boolean z = this.zzsw.zzvr != null;
        boolean z2 = this.zzsw.zzvs != null && zzv.zzcN().zzkb();
        String str = "";
        if (((Boolean) zzfx.zzEH.get()).booleanValue()) {
            zzpy.zzbc("Getting webview cookie from CookieManager.");
            CookieManager zzL = zzv.zzcL().zzL(this.zzsw.zzqr);
            if (zzL != null) {
                str = zzL.getCookie("googleads.g.doubleclick.net");
            }
        }
        String str2 = null;
        if (com_google_android_gms_internal_zzox != null) {
            str2 = com_google_android_gms_internal_zzox.zzjH();
        }
        return new zza(bundle2, com_google_android_gms_internal_zzdy, this.zzsw.zzvj, this.zzsw.zzvd, applicationInfo, packageInfo, zzjL, zzv.zzcN().getSessionId(), this.zzsw.zzvf, zza2, this.zzsw.zzvB, arrayList, bundle, zzv.zzcN().zzjP(), this.mMessenger, displayMetrics.widthPixels, displayMetrics.heightPixels, displayMetrics.density, zza, j, uuid, zzfx.zzfn(), this.zzsw.zzvc, this.zzsw.zzvx, new zzmo(z, z2, false), this.zzsw.zzdq(), zzv.zzcJ().zzco(), zzv.zzcJ().zzcq(), zzv.zzcJ().zzI(this.zzsw.zzqr), zzv.zzcJ().zzs(this.zzsw.zzvg), this.zzsw.zzqr instanceof Activity, zzv.zzcN().zzjU(), str, str2, zzv.zzcN().zzjX(), zzv.zzdg().zzgf(), zzv.zzcJ().zzko(), zzv.zzcR().zzky());
    }

    public String getMediationAdapterClassName() {
        return this.zzsw.zzvk == null ? null : this.zzsw.zzvk.zzKC;
    }

    public void onAdClicked() {
        if (this.zzsw.zzvk == null) {
            zzpy.zzbe("Ad state was null when trying to ping click URLs.");
            return;
        }
        if (!(this.zzsw.zzvk.zzVr == null || this.zzsw.zzvk.zzVr.zzJY == null)) {
            zzv.zzdc().zza(this.zzsw.zzqr, this.zzsw.zzvf.zzaZ, this.zzsw.zzvk, this.zzsw.zzvd, false, this.zzsw.zzvk.zzVr.zzJY);
        }
        if (!(this.zzsw.zzvk.zzKA == null || this.zzsw.zzvk.zzKA.zzJL == null)) {
            zzv.zzdc().zza(this.zzsw.zzqr, this.zzsw.zzvf.zzaZ, this.zzsw.zzvk, this.zzsw.zzvd, false, this.zzsw.zzvk.zzKA.zzJL);
        }
        super.onAdClicked();
    }

    public void onPause() {
        this.zzsy.zzl(this.zzsw.zzvk);
    }

    public void onResume() {
        this.zzsy.zzm(this.zzsw.zzvk);
    }

    public void pause() {
        zzac.zzdn("pause must be called on the main UI thread.");
        if (!(this.zzsw.zzvk == null || this.zzsw.zzvk.zzMZ == null || !this.zzsw.zzdm())) {
            zzv.zzcL().zzl(this.zzsw.zzvk.zzMZ);
        }
        if (!(this.zzsw.zzvk == null || this.zzsw.zzvk.zzKB == null)) {
            try {
                this.zzsw.zzvk.zzKB.pause();
            } catch (RemoteException e) {
                zzpy.zzbe("Could not pause mediation adapter.");
            }
        }
        this.zzsy.zzl(this.zzsw.zzvk);
        this.zzsv.pause();
    }

    public void recordImpression() {
        zza(this.zzsw.zzvk, false);
    }

    public void resume() {
        zzac.zzdn("resume must be called on the main UI thread.");
        zzqp com_google_android_gms_internal_zzqp = null;
        if (!(this.zzsw.zzvk == null || this.zzsw.zzvk.zzMZ == null)) {
            com_google_android_gms_internal_zzqp = this.zzsw.zzvk.zzMZ;
        }
        if (com_google_android_gms_internal_zzqp != null && this.zzsw.zzdm()) {
            zzv.zzcL().zzm(this.zzsw.zzvk.zzMZ);
        }
        if (!(this.zzsw.zzvk == null || this.zzsw.zzvk.zzKB == null)) {
            try {
                this.zzsw.zzvk.zzKB.resume();
            } catch (RemoteException e) {
                zzpy.zzbe("Could not resume mediation adapter.");
            }
        }
        if (com_google_android_gms_internal_zzqp == null || !com_google_android_gms_internal_zzqp.zzlc()) {
            this.zzsv.resume();
        }
        this.zzsy.zzm(this.zzsw.zzvk);
    }

    public void showInterstitial() {
        throw new IllegalStateException("showInterstitial is not supported for current ad type");
    }

    public void zza(zzkz com_google_android_gms_internal_zzkz) {
        zzac.zzdn("setInAppPurchaseListener must be called on the main UI thread.");
        this.zzsw.zzvr = com_google_android_gms_internal_zzkz;
    }

    public void zza(zzld com_google_android_gms_internal_zzld, String str) {
        zzac.zzdn("setPlayStorePurchaseParams must be called on the main UI thread.");
        this.zzsw.zzvC = new zzk(str);
        this.zzsw.zzvs = com_google_android_gms_internal_zzld;
        if (!zzv.zzcN().zzjO() && com_google_android_gms_internal_zzld != null) {
            new zzc(this.zzsw.zzqr, this.zzsw.zzvs, this.zzsw.zzvC).zziw();
        }
    }

    protected void zza(zzov com_google_android_gms_internal_zzov, boolean z) {
        if (com_google_android_gms_internal_zzov == null) {
            zzpy.zzbe("Ad state was null when trying to ping impression URLs.");
            return;
        }
        super.zzc(com_google_android_gms_internal_zzov);
        if (!(com_google_android_gms_internal_zzov.zzVr == null || com_google_android_gms_internal_zzov.zzVr.zzJZ == null)) {
            zzv.zzdc().zza(this.zzsw.zzqr, this.zzsw.zzvf.zzaZ, com_google_android_gms_internal_zzov, this.zzsw.zzvd, z, com_google_android_gms_internal_zzov.zzVr.zzJZ);
        }
        if (com_google_android_gms_internal_zzov.zzKA != null && com_google_android_gms_internal_zzov.zzKA.zzJM != null) {
            zzv.zzdc().zza(this.zzsw.zzqr, this.zzsw.zzvf.zzaZ, com_google_android_gms_internal_zzov, this.zzsw.zzvd, z, com_google_android_gms_internal_zzov.zzKA.zzJM);
        }
    }

    public void zza(String str, ArrayList<String> arrayList) {
        zzky com_google_android_gms_ads_internal_purchase_zzd = new zzd(str, arrayList, this.zzsw.zzqr, this.zzsw.zzvf.zzaZ);
        if (this.zzsw.zzvr == null) {
            zzpy.zzbe("InAppPurchaseListener is not set. Try to launch default purchase flow.");
            if (!zzeh.zzeO().zzP(this.zzsw.zzqr)) {
                zzpy.zzbe("Google Play Service unavailable, cannot launch default purchase flow.");
                return;
            } else if (this.zzsw.zzvs == null) {
                zzpy.zzbe("PlayStorePurchaseListener is not set.");
                return;
            } else if (this.zzsw.zzvC == null) {
                zzpy.zzbe("PlayStorePurchaseVerifier is not initialized.");
                return;
            } else if (this.zzsw.zzvG) {
                zzpy.zzbe("An in-app purchase request is already in progress, abort");
                return;
            } else {
                this.zzsw.zzvG = true;
                try {
                    if (this.zzsw.zzvs.isValidPurchase(str)) {
                        zzv.zzcX().zza(this.zzsw.zzqr, this.zzsw.zzvf.zzYd, new GInAppPurchaseManagerInfoParcel(this.zzsw.zzqr, this.zzsw.zzvC, com_google_android_gms_ads_internal_purchase_zzd, this));
                        return;
                    } else {
                        this.zzsw.zzvG = false;
                        return;
                    }
                } catch (RemoteException e) {
                    zzpy.zzbe("Could not start In-App purchase.");
                    this.zzsw.zzvG = false;
                    return;
                }
            }
        }
        try {
            this.zzsw.zzvr.zza(com_google_android_gms_ads_internal_purchase_zzd);
        } catch (RemoteException e2) {
            zzpy.zzbe("Could not start In-App purchase.");
        }
    }

    public void zza(String str, boolean z, int i, final Intent intent, zzf com_google_android_gms_ads_internal_purchase_zzf) {
        try {
            if (this.zzsw.zzvs != null) {
                this.zzsw.zzvs.zza(new zzg(this.zzsw.zzqr, str, z, i, intent, com_google_android_gms_ads_internal_purchase_zzf));
            }
        } catch (RemoteException e) {
            zzpy.zzbe("Fail to invoke PlayStorePurchaseListener.");
        }
        zzpi.zzWR.postDelayed(new Runnable(this) {
            final /* synthetic */ zzb zzsG;

            public void run() {
                int zzd = zzv.zzcX().zzd(intent);
                zzv.zzcX();
                if (!(zzd != 0 || this.zzsG.zzsw.zzvk == null || this.zzsG.zzsw.zzvk.zzMZ == null || this.zzsG.zzsw.zzvk.zzMZ.zzkT() == null)) {
                    this.zzsG.zzsw.zzvk.zzMZ.zzkT().close();
                }
                this.zzsG.zzsw.zzvG = false;
            }
        }, 500);
    }

    public boolean zza(zzdy com_google_android_gms_internal_zzdy, zzgf com_google_android_gms_internal_zzgf) {
        if (!zzbM()) {
            return false;
        }
        Bundle zzK = zzv.zzcJ().zzK(this.zzsw.zzqr);
        this.zzsv.cancel();
        this.zzsw.zzvF = 0;
        zzox com_google_android_gms_internal_zzox = null;
        if (((Boolean) zzfx.zzEp.get()).booleanValue()) {
            com_google_android_gms_internal_zzox = zzv.zzcN().zzjY();
            zzv.zzdf().zza(this.zzsw.zzqr, this.zzsw.zzvf, false, com_google_android_gms_internal_zzox, com_google_android_gms_internal_zzox.zzjI(), this.zzsw.zzvd);
        }
        zza zza = zza(com_google_android_gms_internal_zzdy, zzK, com_google_android_gms_internal_zzox);
        com_google_android_gms_internal_zzgf.zzg("seq_num", zza.zzRg);
        com_google_android_gms_internal_zzgf.zzg("request_id", zza.zzRr);
        com_google_android_gms_internal_zzgf.zzg("session_id", zza.zzRh);
        if (zza.zzRe != null) {
            com_google_android_gms_internal_zzgf.zzg("app_version", String.valueOf(zza.zzRe.versionCode));
        }
        this.zzsw.zzvh = zzv.zzcF().zza(this.zzsw.zzqr, zza, this.zzsw.zzve, this);
        return true;
    }

    protected boolean zza(zzdy com_google_android_gms_internal_zzdy, zzov com_google_android_gms_internal_zzov, boolean z) {
        if (!z && this.zzsw.zzdm()) {
            if (com_google_android_gms_internal_zzov.zzKe > 0) {
                this.zzsv.zza(com_google_android_gms_internal_zzdy, com_google_android_gms_internal_zzov.zzKe);
            } else if (com_google_android_gms_internal_zzov.zzVr != null && com_google_android_gms_internal_zzov.zzVr.zzKe > 0) {
                this.zzsv.zza(com_google_android_gms_internal_zzdy, com_google_android_gms_internal_zzov.zzVr.zzKe);
            } else if (!com_google_android_gms_internal_zzov.zzRK && com_google_android_gms_internal_zzov.errorCode == 2) {
                this.zzsv.zzh(com_google_android_gms_internal_zzdy);
            }
        }
        return this.zzsv.zzcv();
    }

    boolean zza(zzov com_google_android_gms_internal_zzov) {
        zzdy com_google_android_gms_internal_zzdy;
        boolean z = false;
        if (this.zzsx != null) {
            com_google_android_gms_internal_zzdy = this.zzsx;
            this.zzsx = null;
        } else {
            com_google_android_gms_internal_zzdy = com_google_android_gms_internal_zzov.zzRd;
            if (com_google_android_gms_internal_zzdy.extras != null) {
                z = com_google_android_gms_internal_zzdy.extras.getBoolean("_noRefresh", false);
            }
        }
        return zza(com_google_android_gms_internal_zzdy, com_google_android_gms_internal_zzov, z);
    }

    protected boolean zza(zzov com_google_android_gms_internal_zzov, zzov com_google_android_gms_internal_zzov2) {
        int i;
        int i2 = 0;
        if (!(com_google_android_gms_internal_zzov == null || com_google_android_gms_internal_zzov.zzKD == null)) {
            com_google_android_gms_internal_zzov.zzKD.zza(null);
        }
        if (com_google_android_gms_internal_zzov2.zzKD != null) {
            com_google_android_gms_internal_zzov2.zzKD.zza((zzjk) this);
        }
        if (com_google_android_gms_internal_zzov2.zzVr != null) {
            i = com_google_android_gms_internal_zzov2.zzVr.zzKk;
            i2 = com_google_android_gms_internal_zzov2.zzVr.zzKl;
        } else {
            i = 0;
        }
        this.zzsw.zzvD.zzj(i, i2);
        return true;
    }

    public void zzb(zzov com_google_android_gms_internal_zzov) {
        super.zzb(com_google_android_gms_internal_zzov);
        if (com_google_android_gms_internal_zzov.zzKA != null) {
            zzpy.zzbc("Disable the debug gesture detector on the mediation ad frame.");
            if (this.zzsw.zzvg != null) {
                this.zzsw.zzvg.zzdu();
            }
            zzpy.zzbc("Pinging network fill URLs.");
            zzv.zzdc().zza(this.zzsw.zzqr, this.zzsw.zzvf.zzaZ, com_google_android_gms_internal_zzov, this.zzsw.zzvd, false, com_google_android_gms_internal_zzov.zzKA.zzJN);
            if (!(com_google_android_gms_internal_zzov.zzVr == null || com_google_android_gms_internal_zzov.zzVr.zzKb == null || com_google_android_gms_internal_zzov.zzVr.zzKb.size() <= 0)) {
                zzpy.zzbc("Pinging urls remotely");
                zzv.zzcJ().zza(this.zzsw.zzqr, com_google_android_gms_internal_zzov.zzVr.zzKb);
            }
        } else {
            zzpy.zzbc("Enable the debug gesture detector on the admob ad frame.");
            if (this.zzsw.zzvg != null) {
                this.zzsw.zzvg.zzdt();
            }
        }
        if (com_google_android_gms_internal_zzov.errorCode == 3 && com_google_android_gms_internal_zzov.zzVr != null && com_google_android_gms_internal_zzov.zzVr.zzKa != null) {
            zzpy.zzbc("Pinging no fill URLs.");
            zzv.zzdc().zza(this.zzsw.zzqr, this.zzsw.zzvf.zzaZ, com_google_android_gms_internal_zzov, this.zzsw.zzvd, false, com_google_android_gms_internal_zzov.zzVr.zzKa);
        }
    }

    protected boolean zzbM() {
        return zzv.zzcJ().zza(this.zzsw.zzqr.getPackageManager(), this.zzsw.zzqr.getPackageName(), "android.permission.INTERNET") && zzv.zzcJ().zzy(this.zzsw.zzqr);
    }

    public void zzbN() {
        this.zzsy.zzj(this.zzsw.zzvk);
        this.zzsE = false;
        zzbH();
        this.zzsw.zzvm.zzjB();
    }

    public void zzbO() {
        this.zzsE = true;
        zzbJ();
    }

    public void zzbP() {
        onAdClicked();
    }

    public void zzbQ() {
        zzbN();
    }

    public void zzbR() {
        zzbE();
    }

    public void zzbS() {
        zzbO();
    }

    public void zzbT() {
        if (this.zzsw.zzvk != null) {
            String str = this.zzsw.zzvk.zzKC;
            zzpy.zzbe(new StringBuilder(String.valueOf(str).length() + 74).append("Mediation adapter ").append(str).append(" refreshed, but mediation adapters should never refresh.").toString());
        }
        zza(this.zzsw.zzvk, true);
        zzbK();
    }

    public void zzbU() {
        recordImpression();
    }

    public void zzbV() {
        zzv.zzcJ().runOnUiThread(new Runnable(this) {
            final /* synthetic */ zzb zzsG;

            {
                this.zzsG = r1;
            }

            public void run() {
                this.zzsG.zzsv.pause();
            }
        });
    }

    public void zzbW() {
        zzv.zzcJ().runOnUiThread(new Runnable(this) {
            final /* synthetic */ zzb zzsG;

            {
                this.zzsG = r1;
            }

            public void run() {
                this.zzsG.zzsv.resume();
            }
        });
    }

    protected boolean zzc(zzdy com_google_android_gms_internal_zzdy) {
        return super.zzc(com_google_android_gms_internal_zzdy) && !this.zzsE;
    }
}
