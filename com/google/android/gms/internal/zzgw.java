package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.common.internal.safeparcel.zza;

@zzmb
public class zzgw extends zza {
    public static final Creator<zzgw> CREATOR = new zzgx();
    public final int versionCode;
    public final boolean zzGD;
    public final int zzGE;
    public final boolean zzGF;
    public final int zzGG;
    public final zzfn zzGH;

    public zzgw(int i, boolean z, int i2, boolean z2, int i3, zzfn com_google_android_gms_internal_zzfn) {
        this.versionCode = i;
        this.zzGD = z;
        this.zzGE = i2;
        this.zzGF = z2;
        this.zzGG = i3;
        this.zzGH = com_google_android_gms_internal_zzfn;
    }

    public zzgw(NativeAdOptions nativeAdOptions) {
        this(3, nativeAdOptions.shouldReturnUrlsForImageAssets(), nativeAdOptions.getImageOrientation(), nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new zzfn(nativeAdOptions.getVideoOptions()) : null);
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzgx.zza(this, parcel, i);
    }
}
