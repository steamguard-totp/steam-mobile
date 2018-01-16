package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzd;
import com.google.android.gms.ads.internal.zzl;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.zzep.zza;

@zzmb
public class zziv extends zza {
    private final zzip zzIB;
    private zzl zzIG;
    private final zzir zzIN;
    private zzld zzIO;
    private String zzIP;
    private final String zztq;

    public zziv(Context context, String str, zzjs com_google_android_gms_internal_zzjs, zzqa com_google_android_gms_internal_zzqa, zzd com_google_android_gms_ads_internal_zzd) {
        this(str, new zzip(context, com_google_android_gms_internal_zzjs, com_google_android_gms_internal_zzqa, com_google_android_gms_ads_internal_zzd));
    }

    zziv(String str, zzip com_google_android_gms_internal_zzip) {
        this.zztq = str;
        this.zzIB = com_google_android_gms_internal_zzip;
        this.zzIN = new zzir();
        zzv.zzcY().zza(com_google_android_gms_internal_zzip);
    }

    private void zzgr() {
        if (this.zzIG != null && this.zzIO != null) {
            this.zzIG.zza(this.zzIO, this.zzIP);
        }
    }

    static boolean zzq(zzdy com_google_android_gms_internal_zzdy) {
        Bundle zzk = zzis.zzk(com_google_android_gms_internal_zzdy);
        return zzk != null && zzk.containsKey("gw");
    }

    static boolean zzr(zzdy com_google_android_gms_internal_zzdy) {
        Bundle zzk = zzis.zzk(com_google_android_gms_internal_zzdy);
        return zzk != null && zzk.containsKey("_ad");
    }

    void abort() {
        if (this.zzIG == null) {
            this.zzIG = this.zzIB.zzag(this.zztq);
            this.zzIN.zzc(this.zzIG);
            zzgr();
        }
    }

    public void destroy() throws RemoteException {
        if (this.zzIG != null) {
            this.zzIG.destroy();
        }
    }

    public String getMediationAdapterClassName() throws RemoteException {
        return this.zzIG != null ? this.zzIG.getMediationAdapterClassName() : null;
    }

    public boolean isLoading() throws RemoteException {
        return this.zzIG != null && this.zzIG.isLoading();
    }

    public boolean isReady() throws RemoteException {
        return this.zzIG != null && this.zzIG.isReady();
    }

    public void pause() throws RemoteException {
        if (this.zzIG != null) {
            this.zzIG.pause();
        }
    }

    public void resume() throws RemoteException {
        if (this.zzIG != null) {
            this.zzIG.resume();
        }
    }

    public void setManualImpressionsEnabled(boolean z) throws RemoteException {
        abort();
        if (this.zzIG != null) {
            this.zzIG.setManualImpressionsEnabled(z);
        }
    }

    public void setUserId(String str) {
    }

    public void showInterstitial() throws RemoteException {
        if (this.zzIG != null) {
            this.zzIG.showInterstitial();
        } else {
            zzpy.zzbe("Interstitial ad must be loaded before showInterstitial().");
        }
    }

    public void stopLoading() throws RemoteException {
        if (this.zzIG != null) {
            this.zzIG.stopLoading();
        }
    }

    public void zza(zzec com_google_android_gms_internal_zzec) throws RemoteException {
        if (this.zzIG != null) {
            this.zzIG.zza(com_google_android_gms_internal_zzec);
        }
    }

    public void zza(zzek com_google_android_gms_internal_zzek) throws RemoteException {
        this.zzIN.zzIw = com_google_android_gms_internal_zzek;
        if (this.zzIG != null) {
            this.zzIN.zzc(this.zzIG);
        }
    }

    public void zza(zzel com_google_android_gms_internal_zzel) throws RemoteException {
        this.zzIN.zzti = com_google_android_gms_internal_zzel;
        if (this.zzIG != null) {
            this.zzIN.zzc(this.zzIG);
        }
    }

    public void zza(zzer com_google_android_gms_internal_zzer) throws RemoteException {
        this.zzIN.zzIt = com_google_android_gms_internal_zzer;
        if (this.zzIG != null) {
            this.zzIN.zzc(this.zzIG);
        }
    }

    public void zza(zzet com_google_android_gms_internal_zzet) throws RemoteException {
        abort();
        if (this.zzIG != null) {
            this.zzIG.zza(com_google_android_gms_internal_zzet);
        }
    }

    public void zza(zzfn com_google_android_gms_internal_zzfn) {
        throw new IllegalStateException("getVideoController not implemented for interstitials");
    }

    public void zza(zzgj com_google_android_gms_internal_zzgj) throws RemoteException {
        this.zzIN.zzIv = com_google_android_gms_internal_zzgj;
        if (this.zzIG != null) {
            this.zzIN.zzc(this.zzIG);
        }
    }

    public void zza(zzkz com_google_android_gms_internal_zzkz) throws RemoteException {
        this.zzIN.zzIu = com_google_android_gms_internal_zzkz;
        if (this.zzIG != null) {
            this.zzIN.zzc(this.zzIG);
        }
    }

    public void zza(zzld com_google_android_gms_internal_zzld, String str) throws RemoteException {
        this.zzIO = com_google_android_gms_internal_zzld;
        this.zzIP = str;
        zzgr();
    }

    public void zza(zznt com_google_android_gms_internal_zznt) {
        this.zzIN.zzIx = com_google_android_gms_internal_zznt;
        if (this.zzIG != null) {
            this.zzIN.zzc(this.zzIG);
        }
    }

    public boolean zzb(zzdy com_google_android_gms_internal_zzdy) throws RemoteException {
        if (((Boolean) zzfx.zzCy.get()).booleanValue()) {
            zzdy.zzj(com_google_android_gms_internal_zzdy);
        }
        if (!zzq(com_google_android_gms_internal_zzdy)) {
            abort();
        }
        if (zzis.zzm(com_google_android_gms_internal_zzdy)) {
            abort();
        }
        if (com_google_android_gms_internal_zzdy.zzyM != null) {
            abort();
        }
        if (this.zzIG != null) {
            return this.zzIG.zzb(com_google_android_gms_internal_zzdy);
        }
        zzis zzcY = zzv.zzcY();
        if (zzr(com_google_android_gms_internal_zzdy)) {
            zzcY.zzb(com_google_android_gms_internal_zzdy, this.zztq);
        }
        zza zza = zzcY.zza(com_google_android_gms_internal_zzdy, this.zztq);
        if (zza != null) {
            if (!zza.zzIK) {
                zza.zzgq();
            }
            this.zzIG = zza.zzIG;
            zza.zzII.zza(this.zzIN);
            this.zzIN.zzc(this.zzIG);
            zzgr();
            return zza.zzIL;
        }
        abort();
        return this.zzIG.zzb(com_google_android_gms_internal_zzdy);
    }

    public com.google.android.gms.dynamic.zzd zzbC() throws RemoteException {
        return this.zzIG != null ? this.zzIG.zzbC() : null;
    }

    public zzec zzbD() throws RemoteException {
        return this.zzIG != null ? this.zzIG.zzbD() : null;
    }

    public void zzbF() throws RemoteException {
        if (this.zzIG != null) {
            this.zzIG.zzbF();
        } else {
            zzpy.zzbe("Interstitial ad must be loaded before pingManualTrackingUrl().");
        }
    }

    public zzew zzbG() {
        throw new IllegalStateException("getVideoController not implemented for interstitials");
    }
}
