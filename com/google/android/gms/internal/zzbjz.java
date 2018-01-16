package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public class zzbjz extends zza {
    public static final Creator<zzbjz> CREATOR = new zzbka();
    @zzbjd
    public final int mVersionCode;
    @zzbsg("postBody")
    private String zzHF;
    @zzbjd
    private String zzaiW;
    @zzbjd
    private String zzaix;
    @zzbjd
    private String zzbBR;
    @zzbsg("requestUri")
    private String zzbWE;
    @zzbsg("idToken")
    private String zzbWF;
    @zzbsg("oauthTokenSecret")
    private String zzbWG;
    @zzbsg("returnSecureToken")
    private boolean zzbWH;
    @zzbjd
    private String zzbWp;

    public zzbjz() {
        this.mVersionCode = 2;
        this.zzbWH = true;
    }

    zzbjz(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, boolean z) {
        this.mVersionCode = i;
        this.zzbWE = str;
        this.zzbWF = str2;
        this.zzaix = str3;
        this.zzbBR = str4;
        this.zzbWp = str5;
        this.zzaiW = str6;
        this.zzHF = str7;
        this.zzbWG = str8;
        this.zzbWH = z;
    }

    public String getAccessToken() {
        return this.zzbBR;
    }

    public String getEmail() {
        return this.zzaiW;
    }

    public String getIdToken() {
        return this.zzaix;
    }

    public String getProviderId() {
        return this.zzbWp;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzbka.zza(this, parcel, i);
    }

    public String zzUC() {
        return this.zzbWE;
    }

    public String zzUD() {
        return this.zzbWF;
    }

    public String zzUE() {
        return this.zzbWG;
    }

    public boolean zzUF() {
        return this.zzbWH;
    }

    public String zzgc() {
        return this.zzHF;
    }
}
