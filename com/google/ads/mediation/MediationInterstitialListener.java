package com.google.ads.mediation;

import com.google.ads.AdRequest.ErrorCode;

@Deprecated
public interface MediationInterstitialListener {
    void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, ErrorCode errorCode);
}
