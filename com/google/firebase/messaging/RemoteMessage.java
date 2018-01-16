package com.google.firebase.messaging;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class RemoteMessage extends zza {
    public static final Creator<RemoteMessage> CREATOR = new zzc();
    final int mVersionCode;
    Bundle zzahb;

    RemoteMessage(int i, Bundle bundle) {
        this.mVersionCode = i;
        this.zzahb = bundle;
    }

    RemoteMessage(Bundle bundle) {
        this(1, bundle);
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
