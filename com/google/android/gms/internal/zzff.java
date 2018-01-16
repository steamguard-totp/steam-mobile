package com.google.android.gms.internal;

import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.internal.zzep.zza;

public class zzff extends zza {
    private zzel zzti;

    public void destroy() {
    }

    public String getMediationAdapterClassName() {
        return null;
    }

    public boolean isLoading() {
        return false;
    }

    public boolean isReady() {
        return false;
    }

    public void pause() {
    }

    public void resume() {
    }

    public void setManualImpressionsEnabled(boolean z) {
    }

    public void setUserId(String str) {
    }

    public void showInterstitial() {
    }

    public void stopLoading() {
    }

    public void zza(zzec com_google_android_gms_internal_zzec) {
    }

    public void zza(zzek com_google_android_gms_internal_zzek) {
    }

    public void zza(zzel com_google_android_gms_internal_zzel) {
        this.zzti = com_google_android_gms_internal_zzel;
    }

    public void zza(zzer com_google_android_gms_internal_zzer) {
    }

    public void zza(zzet com_google_android_gms_internal_zzet) {
    }

    public void zza(zzfn com_google_android_gms_internal_zzfn) {
    }

    public void zza(zzgj com_google_android_gms_internal_zzgj) {
    }

    public void zza(zzkz com_google_android_gms_internal_zzkz) {
    }

    public void zza(zzld com_google_android_gms_internal_zzld, String str) {
    }

    public void zza(zznt com_google_android_gms_internal_zznt) {
    }

    public boolean zzb(zzdy com_google_android_gms_internal_zzdy) {
        zzpy.e("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzpx.zzXU.post(new Runnable(this) {
            final /* synthetic */ zzff zzAo;

            {
                this.zzAo = r1;
            }

            public void run() {
                if (this.zzAo.zzti != null) {
                    try {
                        this.zzAo.zzti.onAdFailedToLoad(1);
                    } catch (Throwable e) {
                        zzpy.zzc("Could not notify onAdFailedToLoad event.", e);
                    }
                }
            }
        });
        return false;
    }

    public zzd zzbC() {
        return null;
    }

    public zzec zzbD() {
        return null;
    }

    public void zzbF() {
    }

    public zzew zzbG() {
        return null;
    }
}
