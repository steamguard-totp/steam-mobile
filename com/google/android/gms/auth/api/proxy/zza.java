package com.google.android.gms.auth.api.proxy;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class zza extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Creator<zza> CREATOR = new zzb();
    public final byte[] body;
    public final String hostname;
    public final String method;
    public final int port;
    public final long timeoutMillis;
    final int versionCode;

    zza(int i, String str, int i2, long j, byte[] bArr, String str2) {
        this.versionCode = i;
        this.hostname = str;
        this.port = i2;
        this.timeoutMillis = j;
        this.body = bArr;
        this.method = str2;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
