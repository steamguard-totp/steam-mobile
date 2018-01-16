package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzfk implements Creator<zzfj> {
    static void zza(zzfj com_google_android_gms_internal_zzfj, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_android_gms_internal_zzfj.versionCode);
        zzc.zzc(parcel, 2, com_google_android_gms_internal_zzfj.zzAr);
        zzc.zzc(parcel, 3, com_google_android_gms_internal_zzfj.backgroundColor);
        zzc.zzc(parcel, 4, com_google_android_gms_internal_zzfj.zzAs);
        zzc.zzc(parcel, 5, com_google_android_gms_internal_zzfj.zzAt);
        zzc.zzc(parcel, 6, com_google_android_gms_internal_zzfj.zzAu);
        zzc.zzc(parcel, 7, com_google_android_gms_internal_zzfj.zzAv);
        zzc.zzc(parcel, 8, com_google_android_gms_internal_zzfj.zzAw);
        zzc.zzc(parcel, 9, com_google_android_gms_internal_zzfj.zzAx);
        zzc.zza(parcel, 10, com_google_android_gms_internal_zzfj.zzAy, false);
        zzc.zzc(parcel, 11, com_google_android_gms_internal_zzfj.zzAz);
        zzc.zza(parcel, 12, com_google_android_gms_internal_zzfj.zzAA, false);
        zzc.zzc(parcel, 13, com_google_android_gms_internal_zzfj.zzAB);
        zzc.zzc(parcel, 14, com_google_android_gms_internal_zzfj.zzAC);
        zzc.zza(parcel, 15, com_google_android_gms_internal_zzfj.zzAD, false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzg(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzz(i);
    }

    public zzfj zzg(Parcel parcel) {
        int zzaU = zzb.zzaU(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        String str = null;
        int i10 = 0;
        String str2 = null;
        int i11 = 0;
        int i12 = 0;
        String str3 = null;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    i2 = zzb.zzg(parcel, zzaT);
                    break;
                case 3:
                    i3 = zzb.zzg(parcel, zzaT);
                    break;
                case 4:
                    i4 = zzb.zzg(parcel, zzaT);
                    break;
                case 5:
                    i5 = zzb.zzg(parcel, zzaT);
                    break;
                case 6:
                    i6 = zzb.zzg(parcel, zzaT);
                    break;
                case 7:
                    i7 = zzb.zzg(parcel, zzaT);
                    break;
                case 8:
                    i8 = zzb.zzg(parcel, zzaT);
                    break;
                case 9:
                    i9 = zzb.zzg(parcel, zzaT);
                    break;
                case 10:
                    str = zzb.zzq(parcel, zzaT);
                    break;
                case 11:
                    i10 = zzb.zzg(parcel, zzaT);
                    break;
                case 12:
                    str2 = zzb.zzq(parcel, zzaT);
                    break;
                case 13:
                    i11 = zzb.zzg(parcel, zzaT);
                    break;
                case 14:
                    i12 = zzb.zzg(parcel, zzaT);
                    break;
                case 15:
                    str3 = zzb.zzq(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzfj(i, i2, i3, i4, i5, i6, i7, i8, i9, str, i10, str2, i11, i12, str3);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public zzfj[] zzz(int i) {
        return new zzfj[i];
    }
}
