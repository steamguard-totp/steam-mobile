package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public class zzbjp extends zza {
    public static final Creator<zzbjp> CREATOR = new zzbjq();
    @zzbjd
    public final int mVersionCode;
    @zzbsg("access_token")
    private String zzbBR;
    @zzbsg("refresh_token")
    private String zzbVO;
    @zzbsg("expires_in")
    private Long zzbWv;
    @zzbsg("token_type")
    private String zzbWw;
    @zzbsg("issued_at")
    private Long zzbWx;

    public zzbjp() {
        this.mVersionCode = 1;
        this.zzbWx = Long.valueOf(System.currentTimeMillis());
    }

    zzbjp(int i, String str, String str2, Long l, String str3, Long l2) {
        this.mVersionCode = i;
        this.zzbVO = str;
        this.zzbBR = str2;
        this.zzbWv = l;
        this.zzbWw = str3;
        this.zzbWx = l2;
    }

    public String getAccessToken() {
        return this.zzbBR;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzbjq.zza(this, parcel, i);
    }

    public String zzUs() {
        return this.zzbVO;
    }

    public long zzUt() {
        return this.zzbWv == null ? 0 : this.zzbWv.longValue();
    }

    public String zzUu() {
        return this.zzbWw;
    }

    public long zzUv() {
        return this.zzbWx.longValue();
    }
}
