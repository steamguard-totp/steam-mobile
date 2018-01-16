package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

@zzmb
public class zzdl extends zza {
    public static final Creator<zzdl> CREATOR = new zzdm();
    public final int version;
    private ParcelFileDescriptor zzyw;

    public zzdl() {
        this(1, null);
    }

    zzdl(int i, ParcelFileDescriptor parcelFileDescriptor) {
        this.version = i;
        this.zzyw = parcelFileDescriptor;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzdm.zza(this, parcel, i);
    }

    synchronized ParcelFileDescriptor zzet() {
        return this.zzyw;
    }
}
