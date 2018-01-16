package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;

public class zzyn extends zza {
    public static final Creator<zzyn> CREATOR = new zzyo();
    private final int mVersionCode;
    private double zzanH;
    private boolean zzanI;
    private int zzauY;
    private int zzauZ;
    private ApplicationMetadata zzavj;

    public zzyn() {
        this(3, Double.NaN, false, -1, null, -1);
    }

    zzyn(int i, double d, boolean z, int i2, ApplicationMetadata applicationMetadata, int i3) {
        this.mVersionCode = i;
        this.zzanH = d;
        this.zzanI = z;
        this.zzauY = i2;
        this.zzavj = applicationMetadata;
        this.zzauZ = i3;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzyn)) {
            return false;
        }
        zzyn com_google_android_gms_internal_zzyn = (zzyn) obj;
        return this.zzanH == com_google_android_gms_internal_zzyn.zzanH && this.zzanI == com_google_android_gms_internal_zzyn.zzanI && this.zzauY == com_google_android_gms_internal_zzyn.zzauY && zzym.zza(this.zzavj, com_google_android_gms_internal_zzyn.zzavj) && this.zzauZ == com_google_android_gms_internal_zzyn.zzauZ;
    }

    public int getActiveInputState() {
        return this.zzauY;
    }

    public ApplicationMetadata getApplicationMetadata() {
        return this.zzavj;
    }

    public int getStandbyState() {
        return this.zzauZ;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public double getVolume() {
        return this.zzanH;
    }

    public int hashCode() {
        return zzaa.hashCode(Double.valueOf(this.zzanH), Boolean.valueOf(this.zzanI), Integer.valueOf(this.zzauY), this.zzavj, Integer.valueOf(this.zzauZ));
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzyo.zza(this, parcel, i);
    }

    public boolean zzul() {
        return this.zzanI;
    }
}
