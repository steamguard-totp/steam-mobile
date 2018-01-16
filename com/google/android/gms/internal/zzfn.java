package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.common.internal.safeparcel.zza;

@zzmb
public class zzfn extends zza {
    public static final Creator<zzfn> CREATOR = new zzfo();
    public final int versionCode;
    public final boolean zzAE;

    public zzfn(int i, boolean z) {
        this.versionCode = i;
        this.zzAE = z;
    }

    public zzfn(VideoOptions videoOptions) {
        this(1, videoOptions.getStartMuted());
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzfo.zza(this, parcel, i);
    }
}
