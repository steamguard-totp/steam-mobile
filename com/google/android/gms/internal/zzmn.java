package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.List;

public class zzmn implements Creator<zzmm> {
    static void zza(zzmm com_google_android_gms_internal_zzmm, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_android_gms_internal_zzmm.versionCode);
        zzc.zza(parcel, 2, com_google_android_gms_internal_zzmm.zzSi);
        zzc.zzb(parcel, 3, com_google_android_gms_internal_zzmm.zzSj, false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzo(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzV(i);
    }

    public zzmm[] zzV(int i) {
        return new zzmm[i];
    }

    public zzmm zzo(Parcel parcel) {
        boolean z = false;
        int zzaU = zzb.zzaU(parcel);
        List list = null;
        int i = 0;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    z = zzb.zzc(parcel, zzaT);
                    break;
                case 3:
                    list = zzb.zzE(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzmm(i, z, list);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }
}
