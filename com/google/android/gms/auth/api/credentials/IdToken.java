package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzut;

public final class IdToken extends zza implements ReflectedParcelable {
    public static final Creator<IdToken> CREATOR = new zze();
    final int mVersionCode;
    private final String zzaih;
    private final String zzaix;

    IdToken(int i, String str, String str2) {
        zzut.zzcs(str);
        zzac.zzb(!TextUtils.isEmpty(str2), (Object) "id token string cannot be null or empty");
        this.mVersionCode = i;
        this.zzaih = str;
        this.zzaix = str2;
    }

    public String getAccountType() {
        return this.zzaih;
    }

    public String getIdToken() {
        return this.zzaix;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }
}
