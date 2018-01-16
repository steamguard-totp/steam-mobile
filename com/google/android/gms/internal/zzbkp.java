package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public class zzbkp extends zza {
    public static final Creator<zzbkp> CREATOR = new zzbkq();
    public final int mVersionCode;
    private String zzbUL;
    private String zzbXc;

    zzbkp(int i, String str, String str2) {
        this.mVersionCode = i;
        this.zzbXc = str;
        this.zzbUL = str2;
    }

    public zzbkp(String str, String str2) {
        this.mVersionCode = 1;
        this.zzbXc = str;
        this.zzbUL = str2;
    }

    public String getApiKey() {
        return this.zzbUL;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzbkq.zza(this, parcel, i);
    }

    public String zzUS() {
        return this.zzbXc;
    }
}
