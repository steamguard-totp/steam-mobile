package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

@zzmb
public final class zzqa extends zza {
    public static final Creator<zzqa> CREATOR = new zzqb();
    public final int versionCode;
    public int zzYb;
    public int zzYc;
    public boolean zzYd;
    public String zzaZ;

    public zzqa(int i, int i2, boolean z) {
        this(i, i2, z, false);
    }

    public zzqa(int i, int i2, boolean z, boolean z2) {
        String valueOf = String.valueOf("afma-sdk-a-v");
        String str = z ? "0" : z2 ? "2" : "1";
        this(1, new StringBuilder((String.valueOf(valueOf).length() + 24) + String.valueOf(str).length()).append(valueOf).append(i).append(".").append(i2).append(".").append(str).toString(), i, i2, z);
    }

    zzqa(int i, String str, int i2, int i3, boolean z) {
        this.versionCode = i;
        this.zzaZ = str;
        this.zzYb = i2;
        this.zzYc = i3;
        this.zzYd = z;
    }

    public static zzqa zzkK() {
        return new zzqa(10084208, 10084208, true);
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzqb.zza(this, parcel, i);
    }
}
