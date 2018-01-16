package com.google.android.gms.ads.formats;

import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd.Image;
import java.util.List;

public abstract class NativeAppInstallAd extends NativeAd {

    public interface OnAppInstallAdLoadedListener {
        void onAppInstallAdLoaded(NativeAppInstallAd nativeAppInstallAd);
    }

    public abstract CharSequence getBody();

    public abstract CharSequence getCallToAction();

    public abstract CharSequence getHeadline();

    public abstract Image getIcon();

    public abstract List<Image> getImages();

    public abstract CharSequence getPrice();

    public abstract Double getStarRating();

    public abstract CharSequence getStore();

    public abstract VideoController getVideoController();
}
