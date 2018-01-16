package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzbjk implements Creator<zzbjj> {
    static void zza(zzbjj com_google_android_gms_internal_zzbjj, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_android_gms_internal_zzbjj.mVersionCode);
        zzc.zza(parcel, 2, com_google_android_gms_internal_zzbjj.zzUm(), false);
        zzc.zza(parcel, 3, com_google_android_gms_internal_zzbjj.isRegistered());
        zzc.zza(parcel, 4, com_google_android_gms_internal_zzbjj.getProviderId(), false);
        zzc.zza(parcel, 5, com_google_android_gms_internal_zzbjj.zzUn());
        zzc.zza(parcel, 6, com_google_android_gms_internal_zzbjj.zzUo(), i, false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzkW(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzpy(i);
    }

    public zzbjj zzkW(Parcel parcel) {
        zzbjx com_google_android_gms_internal_zzbjx = null;
        boolean z = false;
        int zzaU = zzb.zzaU(parcel);
        String str = null;
        boolean z2 = false;
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    str2 = zzb.zzq(parcel, zzaT);
                    break;
                case 3:
                    z2 = zzb.zzc(parcel, zzaT);
                    break;
                case 4:
                    str = zzb.zzq(parcel, zzaT);
                    break;
                case 5:
                    z = zzb.zzc(parcel, zzaT);
                    break;
                case 6:
                    com_google_android_gms_internal_zzbjx = (zzbjx) zzb.zza(parcel, zzaT, zzbjx.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzbjj(i, str2, z2, str, z, com_google_android_gms_internal_zzbjx);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public zzbjj[] zzpy(int i) {
        return new zzbjj[i];
    }
}
