package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.List;

public class zzbjo implements Creator<zzbjn> {
    static void zza(zzbjn com_google_android_gms_internal_zzbjn, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_android_gms_internal_zzbjn.mVersionCode);
        zzc.zzc(parcel, 2, com_google_android_gms_internal_zzbjn.zzUr(), false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzkY(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzpA(i);
    }

    public zzbjn zzkY(Parcel parcel) {
        int zzaU = zzb.zzaU(parcel);
        int i = 0;
        List list = null;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    list = zzb.zzc(parcel, zzaT, zzbjl.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzbjn(i, list);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public zzbjn[] zzpA(int i) {
        return new zzbjn[i];
    }
}
