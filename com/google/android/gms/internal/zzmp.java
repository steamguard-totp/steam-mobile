package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzmp implements Creator<zzmo> {
    static void zza(zzmo com_google_android_gms_internal_zzmo, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_android_gms_internal_zzmo.versionCode);
        zzc.zza(parcel, 2, com_google_android_gms_internal_zzmo.zzSk);
        zzc.zza(parcel, 3, com_google_android_gms_internal_zzmo.zzSl);
        zzc.zza(parcel, 4, com_google_android_gms_internal_zzmo.zzSm);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzp(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzW(i);
    }

    public zzmo[] zzW(int i) {
        return new zzmo[i];
    }

    public zzmo zzp(Parcel parcel) {
        boolean z = false;
        int zzaU = zzb.zzaU(parcel);
        boolean z2 = false;
        boolean z3 = false;
        int i = 0;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    z3 = zzb.zzc(parcel, zzaT);
                    break;
                case 3:
                    z2 = zzb.zzc(parcel, zzaT);
                    break;
                case 4:
                    z = zzb.zzc(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzmo(i, z3, z2, z);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }
}
