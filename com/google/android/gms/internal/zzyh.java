package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzyh implements Creator<zzyg> {
    static void zza(zzyg com_google_android_gms_internal_zzyg, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_android_gms_internal_zzyg.getVersionCode());
        zzc.zza(parcel, 2, com_google_android_gms_internal_zzyg.zztZ(), false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzaD(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzcg(i);
    }

    public zzyg zzaD(Parcel parcel) {
        int zzaU = zzb.zzaU(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    str = zzb.zzq(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzyg(i, str);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public zzyg[] zzcg(int i) {
        return new zzyg[i];
    }
}
