package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzl;
import com.google.android.gms.ads.internal.zzv;

@zzmb
class zzir {
    zzer zzIt;
    zzkz zzIu;
    zzgj zzIv;
    zzek zzIw;
    zznt zzIx;
    zzel zzti;

    private static class zza extends com.google.android.gms.internal.zzel.zza {
        private final zzel zzIy;

        zza(zzel com_google_android_gms_internal_zzel) {
            this.zzIy = com_google_android_gms_internal_zzel;
        }

        public void onAdClosed() throws RemoteException {
            this.zzIy.onAdClosed();
            zzv.zzcY().zzgj();
        }

        public void onAdFailedToLoad(int i) throws RemoteException {
            this.zzIy.onAdFailedToLoad(i);
        }

        public void onAdLeftApplication() throws RemoteException {
            this.zzIy.onAdLeftApplication();
        }

        public void onAdLoaded() throws RemoteException {
            this.zzIy.onAdLoaded();
        }

        public void onAdOpened() throws RemoteException {
            this.zzIy.onAdOpened();
        }
    }

    zzir() {
    }

    void zzc(zzl com_google_android_gms_ads_internal_zzl) {
        if (this.zzti != null) {
            com_google_android_gms_ads_internal_zzl.zza(new zza(this.zzti));
        }
        if (this.zzIt != null) {
            com_google_android_gms_ads_internal_zzl.zza(this.zzIt);
        }
        if (this.zzIu != null) {
            com_google_android_gms_ads_internal_zzl.zza(this.zzIu);
        }
        if (this.zzIv != null) {
            com_google_android_gms_ads_internal_zzl.zza(this.zzIv);
        }
        if (this.zzIw != null) {
            com_google_android_gms_ads_internal_zzl.zza(this.zzIw);
        }
        if (this.zzIx != null) {
            com_google_android_gms_ads_internal_zzl.zza(this.zzIx);
        }
    }
}
