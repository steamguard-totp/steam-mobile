package com.google.android.gms.internal;

import com.google.android.gms.ads.AdListener;

@zzmb
public class zzej extends AdListener {
    private final Object lock = new Object();
    private AdListener zzzK;

    public void onAdClosed() {
        synchronized (this.lock) {
            if (this.zzzK != null) {
                this.zzzK.onAdClosed();
            }
        }
    }

    public void onAdFailedToLoad(int i) {
        synchronized (this.lock) {
            if (this.zzzK != null) {
                this.zzzK.onAdFailedToLoad(i);
            }
        }
    }

    public void onAdLeftApplication() {
        synchronized (this.lock) {
            if (this.zzzK != null) {
                this.zzzK.onAdLeftApplication();
            }
        }
    }

    public void onAdLoaded() {
        synchronized (this.lock) {
            if (this.zzzK != null) {
                this.zzzK.onAdLoaded();
            }
        }
    }

    public void onAdOpened() {
        synchronized (this.lock) {
            if (this.zzzK != null) {
                this.zzzK.onAdOpened();
            }
        }
    }

    public void zza(AdListener adListener) {
        synchronized (this.lock) {
            this.zzzK = adListener;
        }
    }
}
