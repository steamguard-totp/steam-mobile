package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzdp implements Creator<zzdo> {
    static void zza(zzdo com_google_android_gms_internal_zzdo, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_android_gms_internal_zzdo.version);
        zzc.zza(parcel, 2, com_google_android_gms_internal_zzdo.url, false);
        zzc.zza(parcel, 3, com_google_android_gms_internal_zzdo.zzyx);
        zzc.zza(parcel, 4, com_google_android_gms_internal_zzdo.zzyy, false);
        zzc.zza(parcel, 5, com_google_android_gms_internal_zzdo.zzyz, false);
        zzc.zza(parcel, 6, com_google_android_gms_internal_zzdo.zzyA, false);
        zzc.zza(parcel, 7, com_google_android_gms_internal_zzdo.zzyB, false);
        zzc.zza(parcel, 8, com_google_android_gms_internal_zzdo.zzyC);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzd(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzu(i);
    }

    public zzdo zzd(Parcel parcel) {
        boolean z = false;
        Bundle bundle = null;
        int zzaU = zzb.zzaU(parcel);
        long j = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        int i = 0;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    str4 = zzb.zzq(parcel, zzaT);
                    break;
                case 3:
                    j = zzb.zzi(parcel, zzaT);
                    break;
                case 4:
                    str3 = zzb.zzq(parcel, zzaT);
                    break;
                case 5:
                    str2 = zzb.zzq(parcel, zzaT);
                    break;
                case 6:
                    str = zzb.zzq(parcel, zzaT);
                    break;
                case 7:
                    bundle = zzb.zzs(parcel, zzaT);
                    break;
                case 8:
                    z = zzb.zzc(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzdo(i, str4, j, str3, str2, str, bundle, z);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public zzdo[] zzu(int i) {
        return new zzdo[i];
    }
}
