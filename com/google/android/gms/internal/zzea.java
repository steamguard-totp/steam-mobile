package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.List;

public class zzea implements Creator<zzdy> {
    static void zza(zzdy com_google_android_gms_internal_zzdy, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_android_gms_internal_zzdy.versionCode);
        zzc.zza(parcel, 2, com_google_android_gms_internal_zzdy.zzyF);
        zzc.zza(parcel, 3, com_google_android_gms_internal_zzdy.extras, false);
        zzc.zzc(parcel, 4, com_google_android_gms_internal_zzdy.zzyG);
        zzc.zzb(parcel, 5, com_google_android_gms_internal_zzdy.zzyH, false);
        zzc.zza(parcel, 6, com_google_android_gms_internal_zzdy.zzyI);
        zzc.zzc(parcel, 7, com_google_android_gms_internal_zzdy.zzyJ);
        zzc.zza(parcel, 8, com_google_android_gms_internal_zzdy.zzyK);
        zzc.zza(parcel, 9, com_google_android_gms_internal_zzdy.zzyL, false);
        zzc.zza(parcel, 10, com_google_android_gms_internal_zzdy.zzyM, i, false);
        zzc.zza(parcel, 11, com_google_android_gms_internal_zzdy.zzyN, i, false);
        zzc.zza(parcel, 12, com_google_android_gms_internal_zzdy.zzyO, false);
        zzc.zza(parcel, 13, com_google_android_gms_internal_zzdy.zzyP, false);
        zzc.zza(parcel, 14, com_google_android_gms_internal_zzdy.zzyQ, false);
        zzc.zzb(parcel, 15, com_google_android_gms_internal_zzdy.zzyR, false);
        zzc.zza(parcel, 16, com_google_android_gms_internal_zzdy.zzyS, false);
        zzc.zza(parcel, 17, com_google_android_gms_internal_zzdy.zzyT, false);
        zzc.zza(parcel, 18, com_google_android_gms_internal_zzdy.zzyU);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zze(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzv(i);
    }

    public zzdy zze(Parcel parcel) {
        int zzaU = zzb.zzaU(parcel);
        int i = 0;
        long j = 0;
        Bundle bundle = null;
        int i2 = 0;
        List list = null;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        String str = null;
        zzfj com_google_android_gms_internal_zzfj = null;
        Location location = null;
        String str2 = null;
        Bundle bundle2 = null;
        Bundle bundle3 = null;
        List list2 = null;
        String str3 = null;
        String str4 = null;
        boolean z3 = false;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    j = zzb.zzi(parcel, zzaT);
                    break;
                case 3:
                    bundle = zzb.zzs(parcel, zzaT);
                    break;
                case 4:
                    i2 = zzb.zzg(parcel, zzaT);
                    break;
                case 5:
                    list = zzb.zzE(parcel, zzaT);
                    break;
                case 6:
                    z = zzb.zzc(parcel, zzaT);
                    break;
                case 7:
                    i3 = zzb.zzg(parcel, zzaT);
                    break;
                case 8:
                    z2 = zzb.zzc(parcel, zzaT);
                    break;
                case 9:
                    str = zzb.zzq(parcel, zzaT);
                    break;
                case 10:
                    com_google_android_gms_internal_zzfj = (zzfj) zzb.zza(parcel, zzaT, zzfj.CREATOR);
                    break;
                case 11:
                    location = (Location) zzb.zza(parcel, zzaT, Location.CREATOR);
                    break;
                case 12:
                    str2 = zzb.zzq(parcel, zzaT);
                    break;
                case 13:
                    bundle2 = zzb.zzs(parcel, zzaT);
                    break;
                case 14:
                    bundle3 = zzb.zzs(parcel, zzaT);
                    break;
                case 15:
                    list2 = zzb.zzE(parcel, zzaT);
                    break;
                case 16:
                    str3 = zzb.zzq(parcel, zzaT);
                    break;
                case 17:
                    str4 = zzb.zzq(parcel, zzaT);
                    break;
                case 18:
                    z3 = zzb.zzc(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzdy(i, j, bundle, i2, list, z, i3, z2, str, com_google_android_gms_internal_zzfj, location, str2, bundle2, bundle3, list2, str3, str4, z3);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public zzdy[] zzv(int i) {
        return new zzdy[i];
    }
}
