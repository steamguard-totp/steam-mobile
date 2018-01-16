package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

@zzmb
public class zzdo extends zza {
    public static final Creator<zzdo> CREATOR = new zzdp();
    public final String url;
    public final int version;
    public final String zzyA;
    public final Bundle zzyB;
    public final boolean zzyC;
    public final long zzyx;
    public final String zzyy;
    public final String zzyz;

    zzdo(int i, String str, long j, String str2, String str3, String str4, Bundle bundle, boolean z) {
        this.version = i;
        this.url = str;
        this.zzyx = j;
        if (str2 == null) {
            str2 = "";
        }
        this.zzyy = str2;
        if (str3 == null) {
            str3 = "";
        }
        this.zzyz = str3;
        if (str4 == null) {
            str4 = "";
        }
        this.zzyA = str4;
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.zzyB = bundle;
        this.zzyC = z;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzdp.zza(this, parcel, i);
    }
}
