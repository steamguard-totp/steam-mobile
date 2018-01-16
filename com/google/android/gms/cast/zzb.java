package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzb implements Creator<AdBreakInfo> {
    static void zza(AdBreakInfo adBreakInfo, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, adBreakInfo.getVersionCode());
        zzc.zza(parcel, 2, adBreakInfo.getPlaybackPositionInMs());
        zzc.zza(parcel, 3, adBreakInfo.getId(), false);
        zzc.zza(parcel, 4, adBreakInfo.getDurationInMs());
        zzc.zza(parcel, 5, adBreakInfo.isWatched());
        zzc.zza(parcel, 6, adBreakInfo.getBreakClipIds(), false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzam(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbE(i);
    }

    public AdBreakInfo zzam(Parcel parcel) {
        long j = 0;
        String[] strArr = null;
        boolean z = false;
        int zzaU = com.google.android.gms.common.internal.safeparcel.zzb.zzaU(parcel);
        String str = null;
        long j2 = 0;
        int i = 0;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = com.google.android.gms.common.internal.safeparcel.zzb.zzaT(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzcW(zzaT)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaT);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaT);
                    break;
                case 4:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaT);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaT);
                    break;
                case 6:
                    strArr = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaT);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new AdBreakInfo(i, j2, str, j, z, strArr);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public AdBreakInfo[] zzbE(int i) {
        return new AdBreakInfo[i];
    }
}
