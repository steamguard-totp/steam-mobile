package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public class zzbjr extends zza {
    public static final Creator<zzbjr> CREATOR = new zzbjs();
    @zzbjd
    public final int mVersionCode;
    @zzbsg("photoUrl")
    private String zzaPq;
    @zzbsg("displayName")
    private String zzaiX;
    @zzbsg("providerId")
    private String zzbWp;
    @zzbsg("federatedId")
    private String zzbWy;
    @zzbsg("rawUserInfo")
    private String zzbWz;

    public zzbjr() {
        this.mVersionCode = 1;
    }

    zzbjr(int i, String str, String str2, String str3, String str4, String str5) {
        this.mVersionCode = i;
        this.zzbWy = str;
        this.zzaiX = str2;
        this.zzaPq = str3;
        this.zzbWp = str4;
        this.zzbWz = str5;
    }

    public String getDisplayName() {
        return this.zzaiX;
    }

    public String getProviderId() {
        return this.zzbWp;
    }

    public String getRawUserInfo() {
        return this.zzbWz;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzbjs.zza(this, parcel, i);
    }

    public String zzUb() {
        return this.zzaPq;
    }

    public String zzUw() {
        return this.zzbWy;
    }
}
