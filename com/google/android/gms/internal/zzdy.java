package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import java.util.List;

@zzmb
public final class zzdy extends zza {
    public static final Creator<zzdy> CREATOR = new zzea();
    public final Bundle extras;
    public final int versionCode;
    public final long zzyF;
    public final int zzyG;
    public final List<String> zzyH;
    public final boolean zzyI;
    public final int zzyJ;
    public final boolean zzyK;
    public final String zzyL;
    public final zzfj zzyM;
    public final Location zzyN;
    public final String zzyO;
    public final Bundle zzyP;
    public final Bundle zzyQ;
    public final List<String> zzyR;
    public final String zzyS;
    public final String zzyT;
    public final boolean zzyU;

    public zzdy(int i, long j, Bundle bundle, int i2, List<String> list, boolean z, int i3, boolean z2, String str, zzfj com_google_android_gms_internal_zzfj, Location location, String str2, Bundle bundle2, Bundle bundle3, List<String> list2, String str3, String str4, boolean z3) {
        this.versionCode = i;
        this.zzyF = j;
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.extras = bundle;
        this.zzyG = i2;
        this.zzyH = list;
        this.zzyI = z;
        this.zzyJ = i3;
        this.zzyK = z2;
        this.zzyL = str;
        this.zzyM = com_google_android_gms_internal_zzfj;
        this.zzyN = location;
        this.zzyO = str2;
        if (bundle2 == null) {
            bundle2 = new Bundle();
        }
        this.zzyP = bundle2;
        this.zzyQ = bundle3;
        this.zzyR = list2;
        this.zzyS = str3;
        this.zzyT = str4;
        this.zzyU = z3;
    }

    public static void zzj(zzdy com_google_android_gms_internal_zzdy) {
        com_google_android_gms_internal_zzdy.zzyP.putBundle("com.google.ads.mediation.admob.AdMobAdapter", com_google_android_gms_internal_zzdy.extras);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzdy)) {
            return false;
        }
        zzdy com_google_android_gms_internal_zzdy = (zzdy) obj;
        return this.versionCode == com_google_android_gms_internal_zzdy.versionCode && this.zzyF == com_google_android_gms_internal_zzdy.zzyF && zzaa.equal(this.extras, com_google_android_gms_internal_zzdy.extras) && this.zzyG == com_google_android_gms_internal_zzdy.zzyG && zzaa.equal(this.zzyH, com_google_android_gms_internal_zzdy.zzyH) && this.zzyI == com_google_android_gms_internal_zzdy.zzyI && this.zzyJ == com_google_android_gms_internal_zzdy.zzyJ && this.zzyK == com_google_android_gms_internal_zzdy.zzyK && zzaa.equal(this.zzyL, com_google_android_gms_internal_zzdy.zzyL) && zzaa.equal(this.zzyM, com_google_android_gms_internal_zzdy.zzyM) && zzaa.equal(this.zzyN, com_google_android_gms_internal_zzdy.zzyN) && zzaa.equal(this.zzyO, com_google_android_gms_internal_zzdy.zzyO) && zzaa.equal(this.zzyP, com_google_android_gms_internal_zzdy.zzyP) && zzaa.equal(this.zzyQ, com_google_android_gms_internal_zzdy.zzyQ) && zzaa.equal(this.zzyR, com_google_android_gms_internal_zzdy.zzyR) && zzaa.equal(this.zzyS, com_google_android_gms_internal_zzdy.zzyS) && zzaa.equal(this.zzyT, com_google_android_gms_internal_zzdy.zzyT) && this.zzyU == com_google_android_gms_internal_zzdy.zzyU;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.versionCode), Long.valueOf(this.zzyF), this.extras, Integer.valueOf(this.zzyG), this.zzyH, Boolean.valueOf(this.zzyI), Integer.valueOf(this.zzyJ), Boolean.valueOf(this.zzyK), this.zzyL, this.zzyM, this.zzyN, this.zzyO, this.zzyP, this.zzyQ, this.zzyR, this.zzyS, this.zzyT, Boolean.valueOf(this.zzyU));
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzea.zza(this, parcel, i);
    }
}
