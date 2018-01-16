package com.google.android.gms.ads.formats;

import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.internal.zzmb;

@zzmb
public final class NativeAdOptions {
    private final boolean zzrX;
    private final int zzrY;
    private final boolean zzrZ;
    private final int zzsa;
    private final VideoOptions zzsb;

    public static final class Builder {
        private boolean zzrX = false;
        private int zzrY = 0;
        private boolean zzrZ = false;
        private int zzsa = 1;
        private VideoOptions zzsb;

        public NativeAdOptions build() {
            return new NativeAdOptions();
        }

        public Builder setAdChoicesPlacement(int i) {
            this.zzsa = i;
            return this;
        }

        public Builder setImageOrientation(int i) {
            this.zzrY = i;
            return this;
        }

        public Builder setRequestMultipleImages(boolean z) {
            this.zzrZ = z;
            return this;
        }

        public Builder setReturnUrlsForImageAssets(boolean z) {
            this.zzrX = z;
            return this;
        }

        public Builder setVideoOptions(VideoOptions videoOptions) {
            this.zzsb = videoOptions;
            return this;
        }
    }

    private NativeAdOptions(Builder builder) {
        this.zzrX = builder.zzrX;
        this.zzrY = builder.zzrY;
        this.zzrZ = builder.zzrZ;
        this.zzsa = builder.zzsa;
        this.zzsb = builder.zzsb;
    }

    public int getAdChoicesPlacement() {
        return this.zzsa;
    }

    public int getImageOrientation() {
        return this.zzrY;
    }

    public VideoOptions getVideoOptions() {
        return this.zzsb;
    }

    public boolean shouldRequestMultipleImages() {
        return this.zzrZ;
    }

    public boolean shouldReturnUrlsForImageAssets() {
        return this.zzrX;
    }
}
