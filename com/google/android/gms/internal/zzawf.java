package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzawf implements Creator<zzawe> {
    static void zza(zzawe com_google_android_gms_internal_zzawe, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_android_gms_internal_zzawe.versionCode);
        zzc.zza(parcel, 2, com_google_android_gms_internal_zzawe.packageName, false);
        zzc.zzc(parcel, 3, com_google_android_gms_internal_zzawe.zzbzy);
        zzc.zzc(parcel, 4, com_google_android_gms_internal_zzawe.zzbzz);
        zzc.zza(parcel, 5, com_google_android_gms_internal_zzawe.zzbzA, false);
        zzc.zza(parcel, 6, com_google_android_gms_internal_zzawe.zzbzB, false);
        zzc.zza(parcel, 7, com_google_android_gms_internal_zzawe.zzbzC);
        zzc.zza(parcel, 8, com_google_android_gms_internal_zzawe.zzbzD, false);
        zzc.zza(parcel, 9, com_google_android_gms_internal_zzawe.zzbzE);
        zzc.zzc(parcel, 10, com_google_android_gms_internal_zzawe.zzbzF);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zziv(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzmn(i);
    }

    public zzawe zziv(Parcel parcel) {
        String str = null;
        int i = 0;
        int zzaU = zzb.zzaU(parcel);
        boolean z = true;
        boolean z2 = false;
        String str2 = null;
        String str3 = null;
        int i2 = 0;
        int i3 = 0;
        String str4 = null;
        int i4 = 0;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i4 = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    str4 = zzb.zzq(parcel, zzaT);
                    break;
                case 3:
                    i3 = zzb.zzg(parcel, zzaT);
                    break;
                case 4:
                    i2 = zzb.zzg(parcel, zzaT);
                    break;
                case 5:
                    str3 = zzb.zzq(parcel, zzaT);
                    break;
                case 6:
                    str2 = zzb.zzq(parcel, zzaT);
                    break;
                case 7:
                    z = zzb.zzc(parcel, zzaT);
                    break;
                case 8:
                    str = zzb.zzq(parcel, zzaT);
                    break;
                case 9:
                    z2 = zzb.zzc(parcel, zzaT);
                    break;
                case 10:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzawe(i4, str4, i3, i2, str3, str2, z, str, z2, i);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public zzawe[] zzmn(int i) {
        return new zzawe[i];
    }
}
