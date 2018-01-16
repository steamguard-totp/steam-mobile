package com.google.android.gms.ads;

import android.content.Context;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzeh;

public final class AdSize {
    public static final AdSize BANNER = new AdSize(320, 50, "320x50_mb");
    public static final AdSize FLUID = new AdSize(-3, -4, "fluid");
    public static final AdSize FULL_BANNER = new AdSize(468, 60, "468x60_as");
    public static final AdSize LARGE_BANNER = new AdSize(320, 100, "320x100_as");
    public static final AdSize LEADERBOARD = new AdSize(728, 90, "728x90_as");
    public static final AdSize MEDIUM_RECTANGLE = new AdSize(300, 250, "300x250_as");
    public static final AdSize SEARCH = new AdSize(-3, 0, "search_v2");
    public static final AdSize SMART_BANNER = new AdSize(-1, -2, "smart_banner");
    public static final AdSize WIDE_SKYSCRAPER = new AdSize(160, 600, "160x600_as");
    private final int zzrG;
    private final int zzrH;
    private final String zzrI;

    public AdSize(int i, int i2) {
        String valueOf = i == -1 ? "FULL" : String.valueOf(i);
        String valueOf2 = i2 == -2 ? "AUTO" : String.valueOf(i2);
        String valueOf3 = String.valueOf("_as");
        this(i, i2, new StringBuilder(((String.valueOf(valueOf).length() + 1) + String.valueOf(valueOf2).length()) + String.valueOf(valueOf3).length()).append(valueOf).append("x").append(valueOf2).append(valueOf3).toString());
    }

    AdSize(int i, int i2, String str) {
        if (i < 0 && i != -1 && i != -3) {
            throw new IllegalArgumentException("Invalid width for AdSize: " + i);
        } else if (i2 >= 0 || i2 == -2 || i2 == -4) {
            this.zzrG = i;
            this.zzrH = i2;
            this.zzrI = str;
        } else {
            throw new IllegalArgumentException("Invalid height for AdSize: " + i2);
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AdSize)) {
            return false;
        }
        AdSize adSize = (AdSize) obj;
        return this.zzrG == adSize.zzrG && this.zzrH == adSize.zzrH && this.zzrI.equals(adSize.zzrI);
    }

    public int getHeight() {
        return this.zzrH;
    }

    public int getHeightInPixels(Context context) {
        switch (this.zzrH) {
            case WebViewClient.ERROR_AUTHENTICATION /*-4*/:
            case WebViewClient.ERROR_UNSUPPORTED_AUTH_SCHEME /*-3*/:
                return -1;
            case WebViewClient.ERROR_HOST_LOOKUP /*-2*/:
                return zzec.zzb(context.getResources().getDisplayMetrics());
            default:
                return zzeh.zzeO().zzb(context, this.zzrH);
        }
    }

    public int getWidth() {
        return this.zzrG;
    }

    public int getWidthInPixels(Context context) {
        switch (this.zzrG) {
            case WebViewClient.ERROR_AUTHENTICATION /*-4*/:
            case WebViewClient.ERROR_UNSUPPORTED_AUTH_SCHEME /*-3*/:
                return -1;
            case WebViewClient.ERROR_UNKNOWN /*-1*/:
                return zzec.zza(context.getResources().getDisplayMetrics());
            default:
                return zzeh.zzeO().zzb(context, this.zzrG);
        }
    }

    public int hashCode() {
        return this.zzrI.hashCode();
    }

    public boolean isFluid() {
        return this.zzrG == -3 && this.zzrH == -4;
    }

    public String toString() {
        return this.zzrI;
    }
}
