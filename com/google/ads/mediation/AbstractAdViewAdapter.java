package com.google.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdLoader.Builder;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAdView;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
import com.google.android.gms.internal.zzdt;
import com.google.android.gms.internal.zzeh;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzpy;
import com.google.android.gms.internal.zzrd;
import java.util.Date;
import java.util.Set;

@zzmb
public abstract class AbstractAdViewAdapter implements MediationBannerAdapter, MediationNativeAdapter, MediationRewardedVideoAdAdapter, zzrd {
    public static final String AD_UNIT_ID_PARAMETER = "pubid";
    protected AdView zzcC;
    protected InterstitialAd zzcD;
    private AdLoader zzcE;
    private Context zzcF;
    private InterstitialAd zzcG;
    private MediationRewardedVideoAdListener zzcH;
    final RewardedVideoAdListener zzcI = new RewardedVideoAdListener(this) {
        final /* synthetic */ AbstractAdViewAdapter zzcJ;

        {
            this.zzcJ = r1;
        }

        public void onRewarded(RewardItem rewardItem) {
            this.zzcJ.zzcH.onRewarded(this.zzcJ, rewardItem);
        }

        public void onRewardedVideoAdClosed() {
            this.zzcJ.zzcH.onAdClosed(this.zzcJ);
            this.zzcJ.zzcG = null;
        }

        public void onRewardedVideoAdFailedToLoad(int i) {
            this.zzcJ.zzcH.onAdFailedToLoad(this.zzcJ, i);
        }

        public void onRewardedVideoAdLeftApplication() {
            this.zzcJ.zzcH.onAdLeftApplication(this.zzcJ);
        }

        public void onRewardedVideoAdLoaded() {
            this.zzcJ.zzcH.onAdLoaded(this.zzcJ);
        }

        public void onRewardedVideoAdOpened() {
            this.zzcJ.zzcH.onAdOpened(this.zzcJ);
        }

        public void onRewardedVideoStarted() {
            this.zzcJ.zzcH.onVideoStarted(this.zzcJ);
        }
    };

    static class zza extends NativeAppInstallAdMapper {
        private final NativeAppInstallAd zzcK;

        public zza(NativeAppInstallAd nativeAppInstallAd) {
            this.zzcK = nativeAppInstallAd;
            setHeadline(nativeAppInstallAd.getHeadline().toString());
            setImages(nativeAppInstallAd.getImages());
            setBody(nativeAppInstallAd.getBody().toString());
            setIcon(nativeAppInstallAd.getIcon());
            setCallToAction(nativeAppInstallAd.getCallToAction().toString());
            if (nativeAppInstallAd.getStarRating() != null) {
                setStarRating(nativeAppInstallAd.getStarRating().doubleValue());
            }
            if (nativeAppInstallAd.getStore() != null) {
                setStore(nativeAppInstallAd.getStore().toString());
            }
            if (nativeAppInstallAd.getPrice() != null) {
                setPrice(nativeAppInstallAd.getPrice().toString());
            }
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
            zza(nativeAppInstallAd.getVideoController());
        }

        public void trackView(View view) {
            if (view instanceof NativeAdView) {
                ((NativeAdView) view).setNativeAd(this.zzcK);
            }
        }
    }

    static class zzb extends NativeContentAdMapper {
        private final NativeContentAd zzcL;

        public zzb(NativeContentAd nativeContentAd) {
            this.zzcL = nativeContentAd;
            setHeadline(nativeContentAd.getHeadline().toString());
            setImages(nativeContentAd.getImages());
            setBody(nativeContentAd.getBody().toString());
            if (nativeContentAd.getLogo() != null) {
                setLogo(nativeContentAd.getLogo());
            }
            setCallToAction(nativeContentAd.getCallToAction().toString());
            setAdvertiser(nativeContentAd.getAdvertiser().toString());
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
        }

        public void trackView(View view) {
            if (view instanceof NativeAdView) {
                ((NativeAdView) view).setNativeAd(this.zzcL);
            }
        }
    }

    static final class zzc extends AdListener implements zzdt {
        final AbstractAdViewAdapter zzcM;
        final MediationBannerListener zzcN;

        public zzc(AbstractAdViewAdapter abstractAdViewAdapter, MediationBannerListener mediationBannerListener) {
            this.zzcM = abstractAdViewAdapter;
            this.zzcN = mediationBannerListener;
        }

        public void onAdClicked() {
            this.zzcN.onAdClicked(this.zzcM);
        }

        public void onAdClosed() {
            this.zzcN.onAdClosed(this.zzcM);
        }

        public void onAdFailedToLoad(int i) {
            this.zzcN.onAdFailedToLoad(this.zzcM, i);
        }

        public void onAdLeftApplication() {
            this.zzcN.onAdLeftApplication(this.zzcM);
        }

        public void onAdLoaded() {
            this.zzcN.onAdLoaded(this.zzcM);
        }

        public void onAdOpened() {
            this.zzcN.onAdOpened(this.zzcM);
        }
    }

    static final class zzd extends AdListener implements zzdt {
        final AbstractAdViewAdapter zzcM;
        final MediationInterstitialListener zzcO;

        public zzd(AbstractAdViewAdapter abstractAdViewAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.zzcM = abstractAdViewAdapter;
            this.zzcO = mediationInterstitialListener;
        }

        public void onAdClicked() {
            this.zzcO.onAdClicked(this.zzcM);
        }

        public void onAdClosed() {
            this.zzcO.onAdClosed(this.zzcM);
        }

        public void onAdFailedToLoad(int i) {
            this.zzcO.onAdFailedToLoad(this.zzcM, i);
        }

        public void onAdLeftApplication() {
            this.zzcO.onAdLeftApplication(this.zzcM);
        }

        public void onAdLoaded() {
            this.zzcO.onAdLoaded(this.zzcM);
        }

        public void onAdOpened() {
            this.zzcO.onAdOpened(this.zzcM);
        }
    }

    static final class zze extends AdListener implements OnAppInstallAdLoadedListener, OnContentAdLoadedListener, zzdt {
        final AbstractAdViewAdapter zzcM;
        final MediationNativeListener zzcP;

        public zze(AbstractAdViewAdapter abstractAdViewAdapter, MediationNativeListener mediationNativeListener) {
            this.zzcM = abstractAdViewAdapter;
            this.zzcP = mediationNativeListener;
        }

        public void onAdClicked() {
            this.zzcP.onAdClicked(this.zzcM);
        }

        public void onAdClosed() {
            this.zzcP.onAdClosed(this.zzcM);
        }

        public void onAdFailedToLoad(int i) {
            this.zzcP.onAdFailedToLoad(this.zzcM, i);
        }

        public void onAdLeftApplication() {
            this.zzcP.onAdLeftApplication(this.zzcM);
        }

        public void onAdLoaded() {
        }

        public void onAdOpened() {
            this.zzcP.onAdOpened(this.zzcM);
        }

        public void onAppInstallAdLoaded(NativeAppInstallAd nativeAppInstallAd) {
            this.zzcP.onAdLoaded(this.zzcM, new zza(nativeAppInstallAd));
        }

        public void onContentAdLoaded(NativeContentAd nativeContentAd) {
            this.zzcP.onAdLoaded(this.zzcM, new zzb(nativeContentAd));
        }
    }

    public String getAdUnitId(Bundle bundle) {
        return bundle.getString(AD_UNIT_ID_PARAMETER);
    }

    public View getBannerView() {
        return this.zzcC;
    }

    public Bundle getInterstitialAdapterInfo() {
        return new com.google.android.gms.ads.mediation.MediationAdapter.zza().zzak(1).zzlL();
    }

    public void initialize(Context context, MediationAdRequest mediationAdRequest, String str, MediationRewardedVideoAdListener mediationRewardedVideoAdListener, Bundle bundle, Bundle bundle2) {
        this.zzcF = context.getApplicationContext();
        this.zzcH = mediationRewardedVideoAdListener;
        this.zzcH.onInitializationSucceeded(this);
    }

    public boolean isInitialized() {
        return this.zzcH != null;
    }

    public void loadAd(MediationAdRequest mediationAdRequest, Bundle bundle, Bundle bundle2) {
        if (this.zzcF == null || this.zzcH == null) {
            zzpy.e("AdMobAdapter.loadAd called before initialize.");
            return;
        }
        this.zzcG = new InterstitialAd(this.zzcF);
        this.zzcG.zzd(true);
        this.zzcG.setAdUnitId(getAdUnitId(bundle));
        this.zzcG.setRewardedVideoAdListener(this.zzcI);
        this.zzcG.loadAd(zza(this.zzcF, mediationAdRequest, bundle2, bundle));
    }

    public void onDestroy() {
        if (this.zzcC != null) {
            this.zzcC.destroy();
            this.zzcC = null;
        }
        if (this.zzcD != null) {
            this.zzcD = null;
        }
        if (this.zzcE != null) {
            this.zzcE = null;
        }
        if (this.zzcG != null) {
            this.zzcG = null;
        }
    }

    public void onPause() {
        if (this.zzcC != null) {
            this.zzcC.pause();
        }
    }

    public void onResume() {
        if (this.zzcC != null) {
            this.zzcC.resume();
        }
    }

    public void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzcC = new AdView(context);
        this.zzcC.setAdSize(new AdSize(adSize.getWidth(), adSize.getHeight()));
        this.zzcC.setAdUnitId(getAdUnitId(bundle));
        this.zzcC.setAdListener(new zzc(this, mediationBannerListener));
        this.zzcC.loadAd(zza(context, mediationAdRequest, bundle2, bundle));
    }

    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzcD = new InterstitialAd(context);
        this.zzcD.setAdUnitId(getAdUnitId(bundle));
        this.zzcD.setAdListener(new zzd(this, mediationInterstitialListener));
        this.zzcD.loadAd(zza(context, mediationAdRequest, bundle2, bundle));
    }

    public void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        OnContentAdLoadedListener com_google_ads_mediation_AbstractAdViewAdapter_zze = new zze(this, mediationNativeListener);
        Builder withAdListener = zza(context, bundle.getString(AD_UNIT_ID_PARAMETER)).withAdListener(com_google_ads_mediation_AbstractAdViewAdapter_zze);
        NativeAdOptions nativeAdOptions = nativeMediationAdRequest.getNativeAdOptions();
        if (nativeAdOptions != null) {
            withAdListener.withNativeAdOptions(nativeAdOptions);
        }
        if (nativeMediationAdRequest.isAppInstallAdRequested()) {
            withAdListener.forAppInstallAd(com_google_ads_mediation_AbstractAdViewAdapter_zze);
        }
        if (nativeMediationAdRequest.isContentAdRequested()) {
            withAdListener.forContentAd(com_google_ads_mediation_AbstractAdViewAdapter_zze);
        }
        this.zzcE = withAdListener.build();
        this.zzcE.loadAd(zza(context, nativeMediationAdRequest, bundle2, bundle));
    }

    public void showInterstitial() {
        this.zzcD.show();
    }

    public void showVideo() {
        this.zzcG.show();
    }

    protected abstract Bundle zza(Bundle bundle, Bundle bundle2);

    Builder zza(Context context, String str) {
        return new Builder(context, str);
    }

    AdRequest zza(Context context, MediationAdRequest mediationAdRequest, Bundle bundle, Bundle bundle2) {
        AdRequest.Builder builder = new AdRequest.Builder();
        Date birthday = mediationAdRequest.getBirthday();
        if (birthday != null) {
            builder.setBirthday(birthday);
        }
        int gender = mediationAdRequest.getGender();
        if (gender != 0) {
            builder.setGender(gender);
        }
        Set<String> keywords = mediationAdRequest.getKeywords();
        if (keywords != null) {
            for (String addKeyword : keywords) {
                builder.addKeyword(addKeyword);
            }
        }
        Location location = mediationAdRequest.getLocation();
        if (location != null) {
            builder.setLocation(location);
        }
        if (mediationAdRequest.isTesting()) {
            builder.addTestDevice(zzeh.zzeO().zzO(context));
        }
        if (mediationAdRequest.taggedForChildDirectedTreatment() != -1) {
            builder.tagForChildDirectedTreatment(mediationAdRequest.taggedForChildDirectedTreatment() == 1);
        }
        builder.setIsDesignedForFamilies(mediationAdRequest.isDesignedForFamilies());
        builder.addNetworkExtrasBundle(AdMobAdapter.class, zza(bundle, bundle2));
        return builder.build();
    }
}
