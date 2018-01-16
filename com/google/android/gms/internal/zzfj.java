package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.safeparcel.zza;

@zzmb
public final class zzfj extends zza {
    public static final Creator<zzfj> CREATOR = new zzfk();
    public final int backgroundColor;
    public final int versionCode;
    public final String zzAA;
    public final int zzAB;
    public final int zzAC;
    public final String zzAD;
    public final int zzAr;
    public final int zzAs;
    public final int zzAt;
    public final int zzAu;
    public final int zzAv;
    public final int zzAw;
    public final int zzAx;
    public final String zzAy;
    public final int zzAz;

    zzfj(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, String str, int i10, String str2, int i11, int i12, String str3) {
        this.versionCode = i;
        this.zzAr = i2;
        this.backgroundColor = i3;
        this.zzAs = i4;
        this.zzAt = i5;
        this.zzAu = i6;
        this.zzAv = i7;
        this.zzAw = i8;
        this.zzAx = i9;
        this.zzAy = str;
        this.zzAz = i10;
        this.zzAA = str2;
        this.zzAB = i11;
        this.zzAC = i12;
        this.zzAD = str3;
    }

    public zzfj(SearchAdRequest searchAdRequest) {
        this.versionCode = 1;
        this.zzAr = searchAdRequest.getAnchorTextColor();
        this.backgroundColor = searchAdRequest.getBackgroundColor();
        this.zzAs = searchAdRequest.getBackgroundGradientBottom();
        this.zzAt = searchAdRequest.getBackgroundGradientTop();
        this.zzAu = searchAdRequest.getBorderColor();
        this.zzAv = searchAdRequest.getBorderThickness();
        this.zzAw = searchAdRequest.getBorderType();
        this.zzAx = searchAdRequest.getCallButtonColor();
        this.zzAy = searchAdRequest.getCustomChannels();
        this.zzAz = searchAdRequest.getDescriptionTextColor();
        this.zzAA = searchAdRequest.getFontFace();
        this.zzAB = searchAdRequest.getHeaderTextColor();
        this.zzAC = searchAdRequest.getHeaderTextSize();
        this.zzAD = searchAdRequest.getQuery();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzfk.zza(this, parcel, i);
    }
}
