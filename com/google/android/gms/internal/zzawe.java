package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;

public class zzawe extends zza {
    public static final Creator<zzawe> CREATOR = new zzawf();
    public final String packageName;
    public final int versionCode;
    public final String zzbzA;
    public final String zzbzB;
    public final boolean zzbzC;
    public final String zzbzD;
    public final boolean zzbzE;
    public final int zzbzF;
    public final int zzbzy;
    public final int zzbzz;

    public zzawe(int i, String str, int i2, int i3, String str2, String str3, boolean z, String str4, boolean z2, int i4) {
        this.versionCode = i;
        this.packageName = str;
        this.zzbzy = i2;
        this.zzbzz = i3;
        this.zzbzA = str2;
        this.zzbzB = str3;
        this.zzbzC = z;
        this.zzbzD = str4;
        this.zzbzE = z2;
        this.zzbzF = i4;
    }

    public zzawe(String str, int i, int i2, String str2, String str3, String str4, boolean z, int i3) {
        this.versionCode = 1;
        this.packageName = (String) zzac.zzw(str);
        this.zzbzy = i;
        this.zzbzz = i2;
        this.zzbzD = str2;
        this.zzbzA = str3;
        this.zzbzB = str4;
        this.zzbzC = !z;
        this.zzbzE = z;
        this.zzbzF = i3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzawe)) {
            return false;
        }
        zzawe com_google_android_gms_internal_zzawe = (zzawe) obj;
        return this.versionCode == com_google_android_gms_internal_zzawe.versionCode && this.packageName.equals(com_google_android_gms_internal_zzawe.packageName) && this.zzbzy == com_google_android_gms_internal_zzawe.zzbzy && this.zzbzz == com_google_android_gms_internal_zzawe.zzbzz && zzaa.equal(this.zzbzD, com_google_android_gms_internal_zzawe.zzbzD) && zzaa.equal(this.zzbzA, com_google_android_gms_internal_zzawe.zzbzA) && zzaa.equal(this.zzbzB, com_google_android_gms_internal_zzawe.zzbzB) && this.zzbzC == com_google_android_gms_internal_zzawe.zzbzC && this.zzbzE == com_google_android_gms_internal_zzawe.zzbzE && this.zzbzF == com_google_android_gms_internal_zzawe.zzbzF;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.versionCode), this.packageName, Integer.valueOf(this.zzbzy), Integer.valueOf(this.zzbzz), this.zzbzD, this.zzbzA, this.zzbzB, Boolean.valueOf(this.zzbzC), Boolean.valueOf(this.zzbzE), Integer.valueOf(this.zzbzF));
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("PlayLoggerContext[");
        stringBuilder.append("versionCode=").append(this.versionCode).append(',');
        stringBuilder.append("package=").append(this.packageName).append(',');
        stringBuilder.append("packageVersionCode=").append(this.zzbzy).append(',');
        stringBuilder.append("logSource=").append(this.zzbzz).append(',');
        stringBuilder.append("logSourceName=").append(this.zzbzD).append(',');
        stringBuilder.append("uploadAccount=").append(this.zzbzA).append(',');
        stringBuilder.append("loggingId=").append(this.zzbzB).append(',');
        stringBuilder.append("logAndroidId=").append(this.zzbzC).append(',');
        stringBuilder.append("isAnonymous=").append(this.zzbzE).append(',');
        stringBuilder.append("qosTier=").append(this.zzbzF);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzawf.zza(this, parcel, i);
    }
}
