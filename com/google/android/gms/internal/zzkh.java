package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.support.customtabs.CustomTabsIntent;
import android.support.customtabs.CustomTabsIntent.Builder;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.overlay.zzh;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.zzgl.zza;

@zzmb
public class zzkh implements MediationInterstitialAdapter {
    private Uri mUri;
    private Activity zzLg;
    private zzgl zzLh;
    private MediationInterstitialListener zzLi;

    public static boolean zzo(Context context) {
        return zzgl.zzn(context);
    }

    public void onDestroy() {
        zzpy.zzbc("Destroying AdMobCustomTabsAdapter adapter.");
        try {
            this.zzLh.zzd(this.zzLg);
        } catch (Throwable e) {
            zzpy.zzb("Exception while unbinding from CustomTabsService.", e);
        }
    }

    public void onPause() {
        zzpy.zzbc("Pausing AdMobCustomTabsAdapter adapter.");
    }

    public void onResume() {
        zzpy.zzbc("Resuming AdMobCustomTabsAdapter adapter.");
    }

    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzLi = mediationInterstitialListener;
        if (this.zzLi == null) {
            zzpy.zzbe("Listener not set for mediation. Returning.");
        } else if (!(context instanceof Activity)) {
            zzpy.zzbe("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.zzLi.onAdFailedToLoad(this, 0);
        } else if (zzo(context)) {
            Object string = bundle.getString("tab_url");
            if (TextUtils.isEmpty(string)) {
                zzpy.zzbe("The tab_url retrieved from mediation metadata is empty. Bailing out.");
                this.zzLi.onAdFailedToLoad(this, 0);
                return;
            }
            this.zzLg = (Activity) context;
            this.mUri = Uri.parse(string);
            this.zzLh = new zzgl();
            this.zzLh.zza(new zza(this) {
            });
            this.zzLh.zze(this.zzLg);
            this.zzLi.onAdLoaded(this);
        } else {
            zzpy.zzbe("Default browser does not support custom tabs. Bailing out.");
            this.zzLi.onAdFailedToLoad(this, 0);
        }
    }

    public void showInterstitial() {
        CustomTabsIntent build = new Builder(this.zzLh.zzfC()).build();
        build.intent.setData(this.mUri);
        final AdOverlayInfoParcel adOverlayInfoParcel = new AdOverlayInfoParcel(new zzc(build.intent), null, new zzh(this) {
            final /* synthetic */ zzkh zzLj;

            {
                this.zzLj = r1;
            }

            public void onPause() {
                zzpy.zzbc("AdMobCustomTabsAdapter overlay is paused.");
            }

            public void onResume() {
                zzpy.zzbc("AdMobCustomTabsAdapter overlay is resumed.");
            }

            public void zzbN() {
                zzpy.zzbc("AdMobCustomTabsAdapter overlay is closed.");
                this.zzLj.zzLi.onAdClosed(this.zzLj);
                this.zzLj.zzLh.zzd(this.zzLj.zzLg);
            }

            public void zzbO() {
                zzpy.zzbc("Opening AdMobCustomTabsAdapter overlay.");
                this.zzLj.zzLi.onAdOpened(this.zzLj);
            }
        }, null, new zzqa(0, 0, false));
        zzpi.zzWR.post(new Runnable(this) {
            final /* synthetic */ zzkh zzLj;

            public void run() {
                zzv.zzcH().zza(this.zzLj.zzLg, adOverlayInfoParcel);
            }
        });
        zzv.zzcN().zzG(false);
    }
}
