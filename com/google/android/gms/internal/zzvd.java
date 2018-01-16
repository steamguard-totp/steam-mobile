package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.auth.api.credentials.PasswordSpecification;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzvd implements Creator<zzvc> {
    static void zza(zzvc com_google_android_gms_internal_zzvc, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zza(parcel, 1, com_google_android_gms_internal_zzvc.zzqt(), i, false);
        zzc.zzc(parcel, 1000, com_google_android_gms_internal_zzvc.mVersionCode);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzQ(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbe(i);
    }

    public zzvc zzQ(Parcel parcel) {
        int zzaU = zzb.zzaU(parcel);
        int i = 0;
        PasswordSpecification passwordSpecification = null;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    passwordSpecification = (PasswordSpecification) zzb.zza(parcel, zzaT, PasswordSpecification.CREATOR);
                    break;
                case 1000:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzvc(i, passwordSpecification);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public zzvc[] zzbe(int i) {
        return new zzvc[i];
    }
}
