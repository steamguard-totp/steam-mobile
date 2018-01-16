package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzbjq implements Creator<zzbjp> {
    static void zza(zzbjp com_google_android_gms_internal_zzbjp, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_android_gms_internal_zzbjp.mVersionCode);
        zzc.zza(parcel, 2, com_google_android_gms_internal_zzbjp.zzUs(), false);
        zzc.zza(parcel, 3, com_google_android_gms_internal_zzbjp.getAccessToken(), false);
        zzc.zza(parcel, 4, Long.valueOf(com_google_android_gms_internal_zzbjp.zzUt()), false);
        zzc.zza(parcel, 5, com_google_android_gms_internal_zzbjp.zzUu(), false);
        zzc.zza(parcel, 6, Long.valueOf(com_google_android_gms_internal_zzbjp.zzUv()), false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzkZ(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzpB(i);
    }

    public zzbjp zzkZ(Parcel parcel) {
        Long l = null;
        int zzaU = zzb.zzaU(parcel);
        int i = 0;
        String str = null;
        Long l2 = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    str3 = zzb.zzq(parcel, zzaT);
                    break;
                case 3:
                    str2 = zzb.zzq(parcel, zzaT);
                    break;
                case 4:
                    l2 = zzb.zzj(parcel, zzaT);
                    break;
                case 5:
                    str = zzb.zzq(parcel, zzaT);
                    break;
                case 6:
                    l = zzb.zzj(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzbjp(i, str3, str2, l2, str, l);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public zzbjp[] zzpB(int i) {
        return new zzbjp[i];
    }
}
