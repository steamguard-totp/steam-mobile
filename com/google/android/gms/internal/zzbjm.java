package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzbjm implements Creator<zzbjl> {
    static void zza(zzbjl com_google_android_gms_internal_zzbjl, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_android_gms_internal_zzbjl.mVersionCode);
        zzc.zza(parcel, 2, com_google_android_gms_internal_zzbjl.getLocalId(), false);
        zzc.zza(parcel, 3, com_google_android_gms_internal_zzbjl.getEmail(), false);
        zzc.zza(parcel, 4, com_google_android_gms_internal_zzbjl.isEmailVerified());
        zzc.zza(parcel, 5, com_google_android_gms_internal_zzbjl.getDisplayName(), false);
        zzc.zza(parcel, 6, com_google_android_gms_internal_zzbjl.zzUb(), false);
        zzc.zza(parcel, 7, com_google_android_gms_internal_zzbjl.zzUq(), i, false);
        zzc.zza(parcel, 8, com_google_android_gms_internal_zzbjl.getPassword(), false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzkX(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzpz(i);
    }

    public zzbjl zzkX(Parcel parcel) {
        boolean z = false;
        String str = null;
        int zzaU = zzb.zzaU(parcel);
        zzbjt com_google_android_gms_internal_zzbjt = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        int i = 0;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    str5 = zzb.zzq(parcel, zzaT);
                    break;
                case 3:
                    str4 = zzb.zzq(parcel, zzaT);
                    break;
                case 4:
                    z = zzb.zzc(parcel, zzaT);
                    break;
                case 5:
                    str3 = zzb.zzq(parcel, zzaT);
                    break;
                case 6:
                    str2 = zzb.zzq(parcel, zzaT);
                    break;
                case 7:
                    com_google_android_gms_internal_zzbjt = (zzbjt) zzb.zza(parcel, zzaT, zzbjt.CREATOR);
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
            return new zzbjl(i, str5, str4, z, str3, str2, com_google_android_gms_internal_zzbjt, str);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public zzbjl[] zzpz(int i) {
        return new zzbjl[i];
    }
}
