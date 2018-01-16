package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzqb implements Creator<zzqa> {
    static void zza(zzqa com_google_android_gms_internal_zzqa, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_android_gms_internal_zzqa.versionCode);
        zzc.zza(parcel, 2, com_google_android_gms_internal_zzqa.zzaZ, false);
        zzc.zzc(parcel, 3, com_google_android_gms_internal_zzqa.zzYb);
        zzc.zzc(parcel, 4, com_google_android_gms_internal_zzqa.zzYc);
        zzc.zza(parcel, 5, com_google_android_gms_internal_zzqa.zzYd);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzv(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzaj(i);
    }

    public zzqa[] zzaj(int i) {
        return new zzqa[i];
    }

    public zzqa zzv(Parcel parcel) {
        boolean z = false;
        int zzaU = zzb.zzaU(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i3 = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    str = zzb.zzq(parcel, zzaT);
                    break;
                case 3:
                    i2 = zzb.zzg(parcel, zzaT);
                    break;
                case 4:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 5:
                    z = zzb.zzc(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzqa(i3, str, i2, i, z);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }
}
