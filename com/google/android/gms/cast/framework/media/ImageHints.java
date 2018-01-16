package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public class ImageHints extends zza {
    public static final Creator<ImageHints> CREATOR = new zzd();
    private final int mVersionCode;
    private final int zzanR;
    private final int zzaqM;
    private final int zzaqN;

    public ImageHints(int i, int i2, int i3) {
        this(1, i, i2, i3);
    }

    ImageHints(int i, int i2, int i3, int i4) {
        this.mVersionCode = i;
        this.zzanR = i2;
        this.zzaqM = i3;
        this.zzaqN = i4;
    }

    public int getHeightInPixels() {
        return this.zzaqN;
    }

    public int getType() {
        return this.zzanR;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int getWidthInPixels() {
        return this.zzaqM;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }
}
