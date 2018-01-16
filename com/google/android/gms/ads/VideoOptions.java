package com.google.android.gms.ads;

import com.google.android.gms.internal.zzmb;

@zzmb
public final class VideoOptions {
    private final boolean zzrQ;

    public static final class Builder {
        private boolean zzrQ = false;

        public VideoOptions build() {
            return new VideoOptions();
        }

        public Builder setStartMuted(boolean z) {
            this.zzrQ = z;
            return this;
        }
    }

    private VideoOptions(Builder builder) {
        this.zzrQ = builder.zzrQ;
    }

    public boolean getStartMuted() {
        return this.zzrQ;
    }
}
