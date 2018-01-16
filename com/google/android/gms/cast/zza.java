package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zza implements Creator<AdBreakClipInfo> {
    static void zza(AdBreakClipInfo adBreakClipInfo, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, adBreakClipInfo.getVersionCode());
        zzc.zza(parcel, 2, adBreakClipInfo.getId(), false);
        zzc.zza(parcel, 3, adBreakClipInfo.getTitle(), false);
        zzc.zza(parcel, 4, adBreakClipInfo.getDurationInMs());
        zzc.zza(parcel, 5, adBreakClipInfo.getContentUrl(), false);
        zzc.zza(parcel, 6, adBreakClipInfo.getMimeType(), false);
        zzc.zza(parcel, 7, adBreakClipInfo.getClickThroughUrl(), false);
        zzc.zza(parcel, 8, adBreakClipInfo.zzrH(), false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzal(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbD(i);
    }

    public AdBreakClipInfo zzal(Parcel parcel) {
        String str = null;
        int zzaU = zzb.zzaU(parcel);
        int i = 0;
        long j = 0;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    str6 = zzb.zzq(parcel, zzaT);
                    break;
                case 3:
                    str5 = zzb.zzq(parcel, zzaT);
                    break;
                case 4:
                    j = zzb.zzi(parcel, zzaT);
                    break;
                case 5:
                    str4 = zzb.zzq(parcel, zzaT);
                    break;
                case 6:
                    str3 = zzb.zzq(parcel, zzaT);
                    break;
                case 7:
                    str2 = zzb.zzq(parcel, zzaT);
                    break;
                case 8:
                    str = zzb.zzq(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new AdBreakClipInfo(i, str6, str5, j, str4, str3, str2, str);
        }
        throw new com.google.android.gms.common.internal.safeparcel.zzb.zza("Overread allowed size end=" + zzaU, parcel);
    }

    public AdBreakClipInfo[] zzbD(int i) {
        return new AdBreakClipInfo[i];
    }
}
