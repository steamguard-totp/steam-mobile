package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.Keep;
import android.widget.FrameLayout;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzen;
import com.google.android.gms.internal.zzep;
import com.google.android.gms.internal.zzes.zza;
import com.google.android.gms.internal.zzeu;
import com.google.android.gms.internal.zzfx;
import com.google.android.gms.internal.zzgy;
import com.google.android.gms.internal.zzhb;
import com.google.android.gms.internal.zziv;
import com.google.android.gms.internal.zzjs;
import com.google.android.gms.internal.zzkr;
import com.google.android.gms.internal.zzla;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzno;
import com.google.android.gms.internal.zznr;
import com.google.android.gms.internal.zzqa;

@Keep
@DynamiteApi
@zzmb
public class ClientApi extends zza {
    public zzen createAdLoaderBuilder(zzd com_google_android_gms_dynamic_zzd, String str, zzjs com_google_android_gms_internal_zzjs, int i) {
        return new zzk((Context) zze.zzE(com_google_android_gms_dynamic_zzd), str, com_google_android_gms_internal_zzjs, new zzqa(10084000, i, true), zzd.zzca());
    }

    public zzkr createAdOverlay(zzd com_google_android_gms_dynamic_zzd) {
        return new com.google.android.gms.ads.internal.overlay.zze((Activity) zze.zzE(com_google_android_gms_dynamic_zzd));
    }

    public zzep createBannerAdManager(zzd com_google_android_gms_dynamic_zzd, zzec com_google_android_gms_internal_zzec, String str, zzjs com_google_android_gms_internal_zzjs, int i) throws RemoteException {
        return new zzf((Context) zze.zzE(com_google_android_gms_dynamic_zzd), com_google_android_gms_internal_zzec, str, com_google_android_gms_internal_zzjs, new zzqa(10084000, i, true), zzd.zzca());
    }

    public zzla createInAppPurchaseManager(zzd com_google_android_gms_dynamic_zzd) {
        return new com.google.android.gms.ads.internal.purchase.zze((Activity) zze.zzE(com_google_android_gms_dynamic_zzd));
    }

    public zzep createInterstitialAdManager(zzd com_google_android_gms_dynamic_zzd, zzec com_google_android_gms_internal_zzec, String str, zzjs com_google_android_gms_internal_zzjs, int i) throws RemoteException {
        Context context = (Context) zze.zzE(com_google_android_gms_dynamic_zzd);
        zzfx.initialize(context);
        zzqa com_google_android_gms_internal_zzqa = new zzqa(10084000, i, true);
        boolean equals = "reward_mb".equals(com_google_android_gms_internal_zzec.zzzk);
        Object obj = ((equals || !((Boolean) zzfx.zzCA.get()).booleanValue()) && !(equals && ((Boolean) zzfx.zzCB.get()).booleanValue())) ? null : 1;
        if (obj != null) {
            return new zziv(context, str, com_google_android_gms_internal_zzjs, com_google_android_gms_internal_zzqa, zzd.zzca());
        }
        return new zzl(context, com_google_android_gms_internal_zzec, str, com_google_android_gms_internal_zzjs, com_google_android_gms_internal_zzqa, zzd.zzca());
    }

    public zzhb createNativeAdViewDelegate(zzd com_google_android_gms_dynamic_zzd, zzd com_google_android_gms_dynamic_zzd2) {
        return new zzgy((FrameLayout) zze.zzE(com_google_android_gms_dynamic_zzd), (FrameLayout) zze.zzE(com_google_android_gms_dynamic_zzd2));
    }

    public zznr createRewardedVideoAd(zzd com_google_android_gms_dynamic_zzd, zzjs com_google_android_gms_internal_zzjs, int i) {
        return new zzno((Context) zze.zzE(com_google_android_gms_dynamic_zzd), zzd.zzca(), com_google_android_gms_internal_zzjs, new zzqa(10084000, i, true));
    }

    public zzep createSearchAdManager(zzd com_google_android_gms_dynamic_zzd, zzec com_google_android_gms_internal_zzec, String str, int i) throws RemoteException {
        return new zzu((Context) zze.zzE(com_google_android_gms_dynamic_zzd), com_google_android_gms_internal_zzec, str, new zzqa(10084000, i, true));
    }

    public zzeu getMobileAdsSettingsManager(zzd com_google_android_gms_dynamic_zzd) {
        return null;
    }

    public zzeu getMobileAdsSettingsManagerWithClientJarVersion(zzd com_google_android_gms_dynamic_zzd, int i) {
        return zzp.zza((Context) zze.zzE(com_google_android_gms_dynamic_zzd), new zzqa(10084000, i, true));
    }
}
