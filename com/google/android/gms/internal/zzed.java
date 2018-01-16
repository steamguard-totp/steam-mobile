package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzed implements Creator<zzec> {
    static void zza(zzec com_google_android_gms_internal_zzec, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_android_gms_internal_zzec.versionCode);
        zzc.zza(parcel, 2, com_google_android_gms_internal_zzec.zzzk, false);
        zzc.zzc(parcel, 3, com_google_android_gms_internal_zzec.height);
        zzc.zzc(parcel, 4, com_google_android_gms_internal_zzec.heightPixels);
        zzc.zza(parcel, 5, com_google_android_gms_internal_zzec.zzzl);
        zzc.zzc(parcel, 6, com_google_android_gms_internal_zzec.width);
        zzc.zzc(parcel, 7, com_google_android_gms_internal_zzec.widthPixels);
        zzc.zza(parcel, 8, com_google_android_gms_internal_zzec.zzzm, i, false);
        zzc.zza(parcel, 9, com_google_android_gms_internal_zzec.zzzn);
        zzc.zza(parcel, 10, com_google_android_gms_internal_zzec.zzzo);
        zzc.zza(parcel, 11, com_google_android_gms_internal_zzec.zzzp);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzf(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzw(i);
    }

    public zzec zzf(Parcel parcel) {
        zzec[] com_google_android_gms_internal_zzecArr = null;
        boolean z = false;
        int zzaU = zzb.zzaU(parcel);
        boolean z2 = false;
        boolean z3 = false;
        int i = 0;
        int i2 = 0;
        boolean z4 = false;
        int i3 = 0;
        int i4 = 0;
        String str = null;
        int i5 = 0;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i5 = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    str = zzb.zzq(parcel, zzaT);
                    break;
                case 3:
                    i4 = zzb.zzg(parcel, zzaT);
                    break;
                case 4:
                    i3 = zzb.zzg(parcel, zzaT);
                    break;
                case 5:
                    z4 = zzb.zzc(parcel, zzaT);
                    break;
                case 6:
                    i2 = zzb.zzg(parcel, zzaT);
                    break;
                case 7:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 8:
                    com_google_android_gms_internal_zzecArr = (zzec[]) zzb.zzb(parcel, zzaT, zzec.CREATOR);
                    break;
                case 9:
                    z3 = zzb.zzc(parcel, zzaT);
                    break;
                case 10:
                    z2 = zzb.zzc(parcel, zzaT);
                    break;
                case 11:
                    z = zzb.zzc(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzec(i5, str, i4, i3, z4, i2, i, com_google_android_gms_internal_zzecArr, z3, z2, z);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public zzec[] zzw(int i) {
        return new zzec[i];
    }
}
