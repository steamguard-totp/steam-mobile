package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzyo implements Creator<zzyn> {
    static void zza(zzyn com_google_android_gms_internal_zzyn, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_android_gms_internal_zzyn.getVersionCode());
        zzc.zza(parcel, 2, com_google_android_gms_internal_zzyn.getVolume());
        zzc.zza(parcel, 3, com_google_android_gms_internal_zzyn.zzul());
        zzc.zzc(parcel, 4, com_google_android_gms_internal_zzyn.getActiveInputState());
        zzc.zza(parcel, 5, com_google_android_gms_internal_zzyn.getApplicationMetadata(), i, false);
        zzc.zzc(parcel, 6, com_google_android_gms_internal_zzyn.getStandbyState());
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzaE(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzcl(i);
    }

    public zzyn zzaE(Parcel parcel) {
        int i = 0;
        int zzaU = zzb.zzaU(parcel);
        double d = 0.0d;
        ApplicationMetadata applicationMetadata = null;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i3 = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    d = zzb.zzn(parcel, zzaT);
                    break;
                case 3:
                    z = zzb.zzc(parcel, zzaT);
                    break;
                case 4:
                    i2 = zzb.zzg(parcel, zzaT);
                    break;
                case 5:
                    applicationMetadata = (ApplicationMetadata) zzb.zza(parcel, zzaT, ApplicationMetadata.CREATOR);
                    break;
                case 6:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzyn(i3, d, z, i2, applicationMetadata, i);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public zzyn[] zzcl(int i) {
        return new zzyn[i];
    }
}
