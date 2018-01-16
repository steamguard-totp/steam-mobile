package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzva extends zza {
    public static final Creator<zzva> CREATOR = new zzvb();
    final int mVersionCode;
    private final Credential zzaiH;

    zzva(int i, Credential credential) {
        this.mVersionCode = i;
        this.zzaiH = credential;
    }

    public Credential getCredential() {
        return this.zzaiH;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzvb.zza(this, parcel, i);
    }
}
