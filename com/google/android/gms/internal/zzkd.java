package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAdOptions.Builder;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import java.util.Date;
import java.util.List;
import java.util.Set;

@zzmb
public final class zzkd implements NativeMediationAdRequest {
    private final int zzKT;
    private final Date zzcQ;
    private final Set<String> zzcS;
    private final boolean zzcT;
    private final Location zzcU;
    private final zzgw zztn;
    private final List<String> zzto;
    private final int zzyW;
    private final boolean zzzi;

    public zzkd(Date date, int i, Set<String> set, Location location, boolean z, int i2, zzgw com_google_android_gms_internal_zzgw, List<String> list, boolean z2) {
        this.zzcQ = date;
        this.zzyW = i;
        this.zzcS = set;
        this.zzcU = location;
        this.zzcT = z;
        this.zzKT = i2;
        this.zztn = com_google_android_gms_internal_zzgw;
        this.zzto = list;
        this.zzzi = z2;
    }

    public Date getBirthday() {
        return this.zzcQ;
    }

    public int getGender() {
        return this.zzyW;
    }

    public Set<String> getKeywords() {
        return this.zzcS;
    }

    public Location getLocation() {
        return this.zzcU;
    }

    public NativeAdOptions getNativeAdOptions() {
        if (this.zztn == null) {
            return null;
        }
        Builder requestMultipleImages = new Builder().setReturnUrlsForImageAssets(this.zztn.zzGD).setImageOrientation(this.zztn.zzGE).setRequestMultipleImages(this.zztn.zzGF);
        if (this.zztn.versionCode >= 2) {
            requestMultipleImages.setAdChoicesPlacement(this.zztn.zzGG);
        }
        if (this.zztn.versionCode >= 3 && this.zztn.zzGH != null) {
            requestMultipleImages.setVideoOptions(new VideoOptions.Builder().setStartMuted(this.zztn.zzGH.zzAE).build());
        }
        return requestMultipleImages.build();
    }

    public boolean isAppInstallAdRequested() {
        return this.zzto != null && this.zzto.contains("2");
    }

    public boolean isContentAdRequested() {
        return this.zzto != null && this.zzto.contains("1");
    }

    public boolean isDesignedForFamilies() {
        return this.zzzi;
    }

    public boolean isTesting() {
        return this.zzcT;
    }

    public int taggedForChildDirectedTreatment() {
        return this.zzKT;
    }
}
