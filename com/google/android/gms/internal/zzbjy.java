package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.List;

public class zzbjy implements Creator<zzbjx> {
    static void zza(zzbjx com_google_android_gms_internal_zzbjx, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_android_gms_internal_zzbjx.mVersionCode);
        zzc.zzb(parcel, 2, com_google_android_gms_internal_zzbjx.zzUA(), false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzld(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzpF(i);
    }

    public zzbjx zzld(Parcel parcel) {
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
                    list = zzb.zzE(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzbjx(i, list);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public zzbjx[] zzpF(int i) {
        return new zzbjx[i];
    }
}
