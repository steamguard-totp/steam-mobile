package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

@zzmb
public class zzmo extends zza {
    public static final Creator<zzmo> CREATOR = new zzmp();
    public final int versionCode;
    public final boolean zzSk;
    public final boolean zzSl;
    public final boolean zzSm;

    zzmo(int i, boolean z, boolean z2, boolean z3) {
        this.versionCode = i;
        this.zzSk = z;
        this.zzSl = z2;
        this.zzSm = z3;
    }

    public zzmo(boolean z, boolean z2, boolean z3) {
        this(2, z, z2, z3);
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("iap_supported", this.zzSk);
        bundle.putBoolean("default_iap_supported", this.zzSl);
        bundle.putBoolean("app_streaming_supported", this.zzSm);
        return bundle;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzmp.zza(this, parcel, i);
    }
}
