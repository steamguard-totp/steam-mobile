package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzgx implements Creator<zzgw> {
    static void zza(zzgw com_google_android_gms_internal_zzgw, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_android_gms_internal_zzgw.versionCode);
        zzc.zza(parcel, 2, com_google_android_gms_internal_zzgw.zzGD);
        zzc.zzc(parcel, 3, com_google_android_gms_internal_zzgw.zzGE);
        zzc.zza(parcel, 4, com_google_android_gms_internal_zzgw.zzGF);
        zzc.zzc(parcel, 5, com_google_android_gms_internal_zzgw.zzGG);
        zzc.zza(parcel, 6, com_google_android_gms_internal_zzgw.zzGH, i, false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzi(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzC(i);
    }

    public zzgw[] zzC(int i) {
        return new zzgw[i];
    }

    public zzgw zzi(Parcel parcel) {
        int i = 0;
        int zzaU = zzb.zzaU(parcel);
        zzfn com_google_android_gms_internal_zzfn = null;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i3 = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    z2 = zzb.zzc(parcel, zzaT);
                    break;
                case 3:
                    i2 = zzb.zzg(parcel, zzaT);
                    break;
                case 4:
                    z = zzb.zzc(parcel, zzaT);
                    break;
                case 5:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 6:
                    com_google_android_gms_internal_zzfn = (zzfn) zzb.zza(parcel, zzaT, zzfn.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzgw(i3, z2, i2, z, i, com_google_android_gms_internal_zzfn);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }
}
