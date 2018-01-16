package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.auth.api.credentials.PasswordSpecification;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzvc extends zza {
    public static final Creator<zzvc> CREATOR = new zzvd();
    final int mVersionCode;
    private final PasswordSpecification zzaia;

    zzvc(int i, PasswordSpecification passwordSpecification) {
        this.mVersionCode = i;
        this.zzaia = passwordSpecification;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzvd.zza(this, parcel, i);
    }

    public PasswordSpecification zzqt() {
        return this.zzaia;
    }
}
