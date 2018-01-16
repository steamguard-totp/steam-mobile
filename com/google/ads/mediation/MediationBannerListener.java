package com.google.ads.mediation;

import com.google.ads.AdRequest.ErrorCode;

@Deprecated
public interface MediationBannerListener {
    void onFailedToReceiveAd(MediationBannerAdapter<?, ?> mediationBannerAdapter, ErrorCode errorCode);
}
