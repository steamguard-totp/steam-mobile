package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public class zzbjj extends zza {
    public static final Creator<zzbjj> CREATOR = new zzbjk();
    @zzbjd
    public final int mVersionCode;
    @zzbsg("registered")
    private boolean zzafv;
    @zzbsg("authUri")
    private String zzbWo;
    @zzbsg("providerId")
    private String zzbWp;
    @zzbsg("forExistingProvider")
    private boolean zzbWq;
    @zzbsg("allProviders")
    private zzbjx zzbWr;

    public zzbjj() {
        this.mVersionCode = 1;
        this.zzbWr = zzbjx.zzUB();
    }

    zzbjj(int i, String str, boolean z, String str2, boolean z2, zzbjx com_google_android_gms_internal_zzbjx) {
        this.mVersionCode = i;
        this.zzbWo = str;
        this.zzafv = z;
        this.zzbWp = str2;
        this.zzbWq = z2;
        this.zzbWr = com_google_android_gms_internal_zzbjx == null ? zzbjx.zzUB() : zzbjx.zza(com_google_android_gms_internal_zzbjx);
    }

    public String getProviderId() {
        return this.zzbWp;
    }

    public boolean isRegistered() {
        return this.zzafv;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzbjk.zza(this, parcel, i);
    }

    public String zzUm() {
        return this.zzbWo;
    }

    public boolean zzUn() {
        return this.zzbWq;
    }

    public zzbjx zzUo() {
        return this.zzbWr;
    }
}
