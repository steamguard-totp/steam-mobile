package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzapv extends zza {
    public static final Creator<zzapv> CREATOR = new zzapw();
    public final String packageName;
    public final int versionCode;
    public final String zzbfF;

    zzapv(int i, String str, String str2) {
        this.versionCode = i;
        this.packageName = str;
        this.zzbfF = str2;
    }

    public zzapv(String str, String str2) {
        this(1, str, str2);
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzapw.zza(this, parcel, i);
    }
}
