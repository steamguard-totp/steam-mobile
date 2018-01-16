package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzjt.zza;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

@zzmb
public final class zzjz extends zza {
    private final MediationAdapter zzKU;
    private zzka zzKV;

    public zzjz(MediationAdapter mediationAdapter) {
        this.zzKU = mediationAdapter;
    }

    private Bundle zza(String str, int i, String str2) throws RemoteException {
        String str3 = "Server parameters: ";
        String valueOf = String.valueOf(str);
        zzpy.zzbe(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle2 = new Bundle();
                Iterator keys = jSONObject.keys();
                while (keys.hasNext()) {
                    valueOf = (String) keys.next();
                    bundle2.putString(valueOf, jSONObject.getString(valueOf));
                }
                bundle = bundle2;
            }
            if (this.zzKU instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                bundle.putInt("tagForChildDirectedTreatment", i);
            }
            return bundle;
        } catch (Throwable th) {
            zzpy.zzc("Could not get Server Parameters Bundle.", th);
            RemoteException remoteException = new RemoteException();
        }
    }

    public void destroy() throws RemoteException {
        try {
            this.zzKU.onDestroy();
        } catch (Throwable th) {
            zzpy.zzc("Could not destroy adapter.", th);
            RemoteException remoteException = new RemoteException();
        }
    }

    public Bundle getInterstitialAdapterInfo() {
        if (this.zzKU instanceof zzrd) {
            return ((zzrd) this.zzKU).getInterstitialAdapterInfo();
        }
        String str = "MediationAdapter is not a v2 MediationInterstitialAdapter: ";
        String valueOf = String.valueOf(this.zzKU.getClass().getCanonicalName());
        zzpy.zzbe(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        return new Bundle();
    }

    public zzd getView() throws RemoteException {
        if (this.zzKU instanceof MediationBannerAdapter) {
            try {
                return zze.zzA(((MediationBannerAdapter) this.zzKU).getBannerView());
            } catch (Throwable th) {
                zzpy.zzc("Could not get banner view from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str = "MediationAdapter is not a MediationBannerAdapter: ";
            String valueOf = String.valueOf(this.zzKU.getClass().getCanonicalName());
            zzpy.zzbe(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            throw new RemoteException();
        }
    }

    public boolean isInitialized() throws RemoteException {
        if (this.zzKU instanceof MediationRewardedVideoAdAdapter) {
            zzpy.zzbc("Check if adapter is initialized.");
            try {
                return ((MediationRewardedVideoAdAdapter) this.zzKU).isInitialized();
            } catch (Throwable th) {
                zzpy.zzc("Could not check if adapter is initialized.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str = "MediationAdapter is not a MediationRewardedVideoAdAdapter: ";
            String valueOf = String.valueOf(this.zzKU.getClass().getCanonicalName());
            zzpy.zzbe(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            throw new RemoteException();
        }
    }

    public void pause() throws RemoteException {
        try {
            this.zzKU.onPause();
        } catch (Throwable th) {
            zzpy.zzc("Could not pause adapter.", th);
            RemoteException remoteException = new RemoteException();
        }
    }

    public void resume() throws RemoteException {
        try {
            this.zzKU.onResume();
        } catch (Throwable th) {
            zzpy.zzc("Could not resume adapter.", th);
            RemoteException remoteException = new RemoteException();
        }
    }

    public void showInterstitial() throws RemoteException {
        if (this.zzKU instanceof MediationInterstitialAdapter) {
            zzpy.zzbc("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) this.zzKU).showInterstitial();
            } catch (Throwable th) {
                zzpy.zzc("Could not show interstitial from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str = "MediationAdapter is not a MediationInterstitialAdapter: ";
            String valueOf = String.valueOf(this.zzKU.getClass().getCanonicalName());
            zzpy.zzbe(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            throw new RemoteException();
        }
    }

    public void showVideo() throws RemoteException {
        if (this.zzKU instanceof MediationRewardedVideoAdAdapter) {
            zzpy.zzbc("Show rewarded video ad from adapter.");
            try {
                ((MediationRewardedVideoAdAdapter) this.zzKU).showVideo();
            } catch (Throwable th) {
                zzpy.zzc("Could not show rewarded video ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str = "MediationAdapter is not a MediationRewardedVideoAdAdapter: ";
            String valueOf = String.valueOf(this.zzKU.getClass().getCanonicalName());
            zzpy.zzbe(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            throw new RemoteException();
        }
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd, zzdy com_google_android_gms_internal_zzdy, String str, zzju com_google_android_gms_internal_zzju) throws RemoteException {
        zza(com_google_android_gms_dynamic_zzd, com_google_android_gms_internal_zzdy, str, null, com_google_android_gms_internal_zzju);
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd, zzdy com_google_android_gms_internal_zzdy, String str, zzoi com_google_android_gms_internal_zzoi, String str2) throws RemoteException {
        if (this.zzKU instanceof MediationRewardedVideoAdAdapter) {
            zzpy.zzbc("Initialize rewarded video adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.zzKU;
                mediationRewardedVideoAdAdapter.initialize((Context) zze.zzE(com_google_android_gms_dynamic_zzd), new zzjy(com_google_android_gms_internal_zzdy.zzyF == -1 ? null : new Date(com_google_android_gms_internal_zzdy.zzyF), com_google_android_gms_internal_zzdy.zzyG, com_google_android_gms_internal_zzdy.zzyH != null ? new HashSet(com_google_android_gms_internal_zzdy.zzyH) : null, com_google_android_gms_internal_zzdy.zzyN, com_google_android_gms_internal_zzdy.zzyI, com_google_android_gms_internal_zzdy.zzyJ, com_google_android_gms_internal_zzdy.zzyU), str, new zzoj(com_google_android_gms_internal_zzoi), zza(str2, com_google_android_gms_internal_zzdy.zzyJ, null), com_google_android_gms_internal_zzdy.zzyP != null ? com_google_android_gms_internal_zzdy.zzyP.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null);
            } catch (Throwable th) {
                zzpy.zzc("Could not initialize rewarded video adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str3 = "MediationAdapter is not a MediationRewardedVideoAdAdapter: ";
            String valueOf = String.valueOf(this.zzKU.getClass().getCanonicalName());
            zzpy.zzbe(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
            throw new RemoteException();
        }
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd, zzdy com_google_android_gms_internal_zzdy, String str, String str2, zzju com_google_android_gms_internal_zzju) throws RemoteException {
        if (this.zzKU instanceof MediationInterstitialAdapter) {
            zzpy.zzbc("Requesting interstitial ad from adapter.");
            try {
                MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) this.zzKU;
                mediationInterstitialAdapter.requestInterstitialAd((Context) zze.zzE(com_google_android_gms_dynamic_zzd), new zzka(com_google_android_gms_internal_zzju), zza(str, com_google_android_gms_internal_zzdy.zzyJ, str2), new zzjy(com_google_android_gms_internal_zzdy.zzyF == -1 ? null : new Date(com_google_android_gms_internal_zzdy.zzyF), com_google_android_gms_internal_zzdy.zzyG, com_google_android_gms_internal_zzdy.zzyH != null ? new HashSet(com_google_android_gms_internal_zzdy.zzyH) : null, com_google_android_gms_internal_zzdy.zzyN, com_google_android_gms_internal_zzdy.zzyI, com_google_android_gms_internal_zzdy.zzyJ, com_google_android_gms_internal_zzdy.zzyU), com_google_android_gms_internal_zzdy.zzyP != null ? com_google_android_gms_internal_zzdy.zzyP.getBundle(mediationInterstitialAdapter.getClass().getName()) : null);
            } catch (Throwable th) {
                zzpy.zzc("Could not request interstitial ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str3 = "MediationAdapter is not a MediationInterstitialAdapter: ";
            String valueOf = String.valueOf(this.zzKU.getClass().getCanonicalName());
            zzpy.zzbe(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
            throw new RemoteException();
        }
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd, zzdy com_google_android_gms_internal_zzdy, String str, String str2, zzju com_google_android_gms_internal_zzju, zzgw com_google_android_gms_internal_zzgw, List<String> list) throws RemoteException {
        if (this.zzKU instanceof MediationNativeAdapter) {
            try {
                MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) this.zzKU;
                zzkd com_google_android_gms_internal_zzkd = new zzkd(com_google_android_gms_internal_zzdy.zzyF == -1 ? null : new Date(com_google_android_gms_internal_zzdy.zzyF), com_google_android_gms_internal_zzdy.zzyG, com_google_android_gms_internal_zzdy.zzyH != null ? new HashSet(com_google_android_gms_internal_zzdy.zzyH) : null, com_google_android_gms_internal_zzdy.zzyN, com_google_android_gms_internal_zzdy.zzyI, com_google_android_gms_internal_zzdy.zzyJ, com_google_android_gms_internal_zzgw, list, com_google_android_gms_internal_zzdy.zzyU);
                Bundle bundle = com_google_android_gms_internal_zzdy.zzyP != null ? com_google_android_gms_internal_zzdy.zzyP.getBundle(mediationNativeAdapter.getClass().getName()) : null;
                this.zzKV = new zzka(com_google_android_gms_internal_zzju);
                mediationNativeAdapter.requestNativeAd((Context) zze.zzE(com_google_android_gms_dynamic_zzd), this.zzKV, zza(str, com_google_android_gms_internal_zzdy.zzyJ, str2), com_google_android_gms_internal_zzkd, bundle);
            } catch (Throwable th) {
                zzpy.zzc("Could not request native ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str3 = "MediationAdapter is not a MediationNativeAdapter: ";
            String valueOf = String.valueOf(this.zzKU.getClass().getCanonicalName());
            zzpy.zzbe(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
            throw new RemoteException();
        }
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd, zzec com_google_android_gms_internal_zzec, zzdy com_google_android_gms_internal_zzdy, String str, zzju com_google_android_gms_internal_zzju) throws RemoteException {
        zza(com_google_android_gms_dynamic_zzd, com_google_android_gms_internal_zzec, com_google_android_gms_internal_zzdy, str, null, com_google_android_gms_internal_zzju);
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd, zzec com_google_android_gms_internal_zzec, zzdy com_google_android_gms_internal_zzdy, String str, String str2, zzju com_google_android_gms_internal_zzju) throws RemoteException {
        if (this.zzKU instanceof MediationBannerAdapter) {
            zzpy.zzbc("Requesting banner ad from adapter.");
            try {
                MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.zzKU;
                mediationBannerAdapter.requestBannerAd((Context) zze.zzE(com_google_android_gms_dynamic_zzd), new zzka(com_google_android_gms_internal_zzju), zza(str, com_google_android_gms_internal_zzdy.zzyJ, str2), com.google.android.gms.ads.zza.zza(com_google_android_gms_internal_zzec.width, com_google_android_gms_internal_zzec.height, com_google_android_gms_internal_zzec.zzzk), new zzjy(com_google_android_gms_internal_zzdy.zzyF == -1 ? null : new Date(com_google_android_gms_internal_zzdy.zzyF), com_google_android_gms_internal_zzdy.zzyG, com_google_android_gms_internal_zzdy.zzyH != null ? new HashSet(com_google_android_gms_internal_zzdy.zzyH) : null, com_google_android_gms_internal_zzdy.zzyN, com_google_android_gms_internal_zzdy.zzyI, com_google_android_gms_internal_zzdy.zzyJ, com_google_android_gms_internal_zzdy.zzyU), com_google_android_gms_internal_zzdy.zzyP != null ? com_google_android_gms_internal_zzdy.zzyP.getBundle(mediationBannerAdapter.getClass().getName()) : null);
            } catch (Throwable th) {
                zzpy.zzc("Could not request banner ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str3 = "MediationAdapter is not a MediationBannerAdapter: ";
            String valueOf = String.valueOf(this.zzKU.getClass().getCanonicalName());
            zzpy.zzbe(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
            throw new RemoteException();
        }
    }

    public void zza(zzdy com_google_android_gms_internal_zzdy, String str, String str2) throws RemoteException {
        if (this.zzKU instanceof MediationRewardedVideoAdAdapter) {
            zzpy.zzbc("Requesting rewarded video ad from adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.zzKU;
                mediationRewardedVideoAdAdapter.loadAd(new zzjy(com_google_android_gms_internal_zzdy.zzyF == -1 ? null : new Date(com_google_android_gms_internal_zzdy.zzyF), com_google_android_gms_internal_zzdy.zzyG, com_google_android_gms_internal_zzdy.zzyH != null ? new HashSet(com_google_android_gms_internal_zzdy.zzyH) : null, com_google_android_gms_internal_zzdy.zzyN, com_google_android_gms_internal_zzdy.zzyI, com_google_android_gms_internal_zzdy.zzyJ, com_google_android_gms_internal_zzdy.zzyU), zza(str, com_google_android_gms_internal_zzdy.zzyJ, str2), com_google_android_gms_internal_zzdy.zzyP != null ? com_google_android_gms_internal_zzdy.zzyP.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null);
            } catch (Throwable th) {
                zzpy.zzc("Could not load rewarded video ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str3 = "MediationAdapter is not a MediationRewardedVideoAdAdapter: ";
            String valueOf = String.valueOf(this.zzKU.getClass().getCanonicalName());
            zzpy.zzbe(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
            throw new RemoteException();
        }
    }

    public void zzc(zzdy com_google_android_gms_internal_zzdy, String str) throws RemoteException {
        zza(com_google_android_gms_internal_zzdy, str, null);
    }

    public zzjw zzgJ() {
        NativeAdMapper zzgN = this.zzKV.zzgN();
        return zzgN instanceof NativeAppInstallAdMapper ? new zzkb((NativeAppInstallAdMapper) zzgN) : null;
    }

    public zzjx zzgK() {
        NativeAdMapper zzgN = this.zzKV.zzgN();
        return zzgN instanceof NativeContentAdMapper ? new zzkc((NativeContentAdMapper) zzgN) : null;
    }

    public Bundle zzgL() {
        if (this.zzKU instanceof zzrc) {
            return ((zzrc) this.zzKU).zzgL();
        }
        String str = "MediationAdapter is not a v2 MediationBannerAdapter: ";
        String valueOf = String.valueOf(this.zzKU.getClass().getCanonicalName());
        zzpy.zzbe(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        return new Bundle();
    }

    public Bundle zzgM() {
        return new Bundle();
    }

    public void zzj(zzd com_google_android_gms_dynamic_zzd) throws RemoteException {
        try {
            zze.zzE(com_google_android_gms_dynamic_zzd);
        } catch (Throwable th) {
            zzpy.zza("Could not inform adapter of changed context", th);
        }
    }
}
