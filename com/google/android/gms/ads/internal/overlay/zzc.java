package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.internal.zzmb;

@zzmb
public final class zzc extends zza {
    public static final Creator<zzc> CREATOR = new zzb();
    public final Intent intent;
    public final String mimeType;
    public final String packageName;
    public final String url;
    public final int versionCode;
    public final String zzLY;
    public final String zzLZ;
    public final String zzMa;
    public final String zzMb;

    public zzc(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, Intent intent) {
        this.versionCode = i;
        this.zzLY = str;
        this.url = str2;
        this.mimeType = str3;
        this.packageName = str4;
        this.zzLZ = str5;
        this.zzMa = str6;
        this.zzMb = str7;
        this.intent = intent;
    }

    public zzc(Intent intent) {
        this(2, null, null, null, null, null, null, null, intent);
    }

    public zzc(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this(2, str, str2, str3, str4, str5, str6, str7, null);
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
