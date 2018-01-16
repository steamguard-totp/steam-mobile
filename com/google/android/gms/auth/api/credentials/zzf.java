package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.List;

public class zzf implements Creator<PasswordSpecification> {
    static void zza(PasswordSpecification passwordSpecification, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zza(parcel, 1, passwordSpecification.zzaiA, false);
        zzc.zzb(parcel, 2, passwordSpecification.zzaiB, false);
        zzc.zza(parcel, 3, passwordSpecification.zzaiC, false);
        zzc.zzc(parcel, 4, passwordSpecification.zzaiD);
        zzc.zzc(parcel, 5, passwordSpecification.zzaiE);
        zzc.zzc(parcel, 1000, passwordSpecification.mVersionCode);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzO(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbc(i);
    }

    public PasswordSpecification zzO(Parcel parcel) {
        List list = null;
        int i = 0;
        int zzaU = zzb.zzaU(parcel);
        int i2 = 0;
        List list2 = null;
        String str = null;
        int i3 = 0;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    str = zzb.zzq(parcel, zzaT);
                    break;
                case 2:
                    list2 = zzb.zzE(parcel, zzaT);
                    break;
                case 3:
                    list = zzb.zzD(parcel, zzaT);
                    break;
                case 4:
                    i2 = zzb.zzg(parcel, zzaT);
                    break;
                case 5:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 1000:
                    i3 = zzb.zzg(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new PasswordSpecification(i3, str, list2, list, i2, i);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public PasswordSpecification[] zzbc(int i) {
        return new PasswordSpecification[i];
    }
}
