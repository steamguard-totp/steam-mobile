package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public class zzbjv extends zza {
    public static final Creator<zzbjv> CREATOR = new zzbjw();
    @zzbjd
    public final int mVersionCode;
    @zzbsg("email")
    private String zzaiW;
    @zzbsg("newEmail")
    private String zzbWB;
    @zzbsg("requestType")
    private String zzbWC;

    public zzbjv() {
        this.mVersionCode = 1;
    }

    zzbjv(int i, String str, String str2, String str3) {
        this.mVersionCode = i;
        this.zzaiW = str;
        this.zzbWB = str2;
        this.zzbWC = str3;
    }

    public String getEmail() {
        return this.zzaiW;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzbjw.zza(this, parcel, i);
    }

    public String zzUy() {
        return this.zzbWB;
    }

    public String zzUz() {
        return this.zzbWC;
    }
}
