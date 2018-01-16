package com.google.ads;

@Deprecated
public final class AdSize {
    public static final AdSize BANNER = new AdSize(320, 50, "mb");
    public static final AdSize IAB_BANNER = new AdSize(468, 60, "as");
    public static final AdSize IAB_LEADERBOARD = new AdSize(728, 90, "as");
    public static final AdSize IAB_MRECT = new AdSize(300, 250, "as");
    public static final AdSize IAB_WIDE_SKYSCRAPER = new AdSize(160, 600, "as");
    public static final AdSize SMART_BANNER = new AdSize(-1, -2, "mb");
    private final com.google.android.gms.ads.AdSize zzaI;

    private AdSize(int i, int i2, String str) {
        this(new com.google.android.gms.ads.AdSize(i, i2));
    }

    public AdSize(com.google.android.gms.ads.AdSize adSize) {
        this.zzaI = adSize;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AdSize)) {
            return false;
        }
        return this.zzaI.equals(((AdSize) obj).zzaI);
    }

    public int getHeight() {
        return this.zzaI.getHeight();
    }

    public int getWidth() {
        return this.zzaI.getWidth();
    }

    public int hashCode() {
        return this.zzaI.hashCode();
    }

    public String toString() {
        return this.zzaI.toString();
    }
}
