package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zzc;

@zzmb
public class zzfl extends zzec {
    public zzfl(zzec com_google_android_gms_internal_zzec) {
        super(com_google_android_gms_internal_zzec.versionCode, com_google_android_gms_internal_zzec.zzzk, com_google_android_gms_internal_zzec.height, com_google_android_gms_internal_zzec.heightPixels, com_google_android_gms_internal_zzec.zzzl, com_google_android_gms_internal_zzec.width, com_google_android_gms_internal_zzec.widthPixels, com_google_android_gms_internal_zzec.zzzm, com_google_android_gms_internal_zzec.zzzn, com_google_android_gms_internal_zzec.zzzo, com_google_android_gms_internal_zzec.zzzp);
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, this.versionCode);
        zzc.zza(parcel, 2, this.zzzk, false);
        zzc.zzc(parcel, 3, this.height);
        zzc.zzc(parcel, 6, this.width);
        zzc.zzJ(parcel, zzaV);
    }
}
