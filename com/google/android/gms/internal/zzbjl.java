package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public class zzbjl extends zza {
    public static final Creator<zzbjl> CREATOR = new zzbjm();
    @zzbjd
    public final int mVersionCode;
    @zzbsg("localId")
    private String zzaMA;
    @zzbsg("photoUrl")
    private String zzaPq;
    @zzbsg("email")
    private String zzaiW;
    @zzbsg("displayName")
    private String zzaiX;
    @zzbsg("passwordHash")
    private String zzaig;
    @zzbsg("emailVerified")
    private boolean zzbWs;
    @zzbsg("providerUserInfo")
    private zzbjt zzbWt;

    public zzbjl() {
        this.mVersionCode = 1;
        this.zzbWt = new zzbjt();
    }

    zzbjl(int i, String str, String str2, boolean z, String str3, String str4, zzbjt com_google_android_gms_internal_zzbjt, String str5) {
        this.mVersionCode = i;
        this.zzaMA = str;
        this.zzaiW = str2;
        this.zzbWs = z;
        this.zzaiX = str3;
        this.zzaPq = str4;
        this.zzbWt = com_google_android_gms_internal_zzbjt == null ? zzbjt.zzUx() : zzbjt.zza(com_google_android_gms_internal_zzbjt);
        this.zzaig = str5;
    }

    public String getDisplayName() {
        return this.zzaiX;
    }

    public String getEmail() {
        return this.zzaiW;
    }

    public String getLocalId() {
        return this.zzaMA;
    }

    public String getPassword() {
        return this.zzaig;
    }

    public boolean isEmailVerified() {
        return this.zzbWs;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzbjm.zza(this, parcel, i);
    }

    public String zzUb() {
        return this.zzaPq;
    }

    public zzbjt zzUq() {
        return this.zzbWt;
    }
}
