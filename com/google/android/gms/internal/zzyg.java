package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;

public class zzyg extends zza {
    public static final Creator<zzyg> CREATOR = new zzyh();
    private final int mVersionCode;
    private String zzauK;

    public zzyg() {
        this(1, null);
    }

    zzyg(int i, String str) {
        this.mVersionCode = i;
        this.zzauK = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzyg)) {
            return false;
        }
        return zzym.zza(this.zzauK, ((zzyg) obj).zzauK);
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzauK);
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzyh.zza(this, parcel, i);
    }

    public String zztZ() {
        return this.zzauK;
    }
}
