package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;

public class zzc implements Creator<AdBreakStatus> {
    static void zza(AdBreakStatus adBreakStatus, Parcel parcel, int i) {
        int zzaV = com.google.android.gms.common.internal.safeparcel.zzc.zzaV(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, adBreakStatus.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, adBreakStatus.getCurrentBreakTimeInMs());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, adBreakStatus.getCurrentBreakClipTimeInMs());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, adBreakStatus.getBreakId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, adBreakStatus.getBreakClipId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, adBreakStatus.getWhenSkippableInMs());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzan(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbF(i);
    }

    public AdBreakStatus zzan(Parcel parcel) {
        String str = null;
        long j = 0;
        int zzaU = zzb.zzaU(parcel);
        int i = 0;
        String str2 = null;
        long j2 = 0;
        long j3 = 0;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    j3 = zzb.zzi(parcel, zzaT);
                    break;
                case 3:
                    j2 = zzb.zzi(parcel, zzaT);
                    break;
                case 4:
                    str2 = zzb.zzq(parcel, zzaT);
                    break;
                case 5:
                    str = zzb.zzq(parcel, zzaT);
                    break;
                case 6:
                    j = zzb.zzi(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new AdBreakStatus(i, j3, j2, str2, str, j);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public AdBreakStatus[] zzbF(int i) {
        return new AdBreakStatus[i];
    }
}
