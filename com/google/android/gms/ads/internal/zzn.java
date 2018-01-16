package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzn implements Creator<zzm> {
    static void zza(zzm com_google_android_gms_ads_internal_zzm, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_android_gms_ads_internal_zzm.versionCode);
        zzc.zza(parcel, 2, com_google_android_gms_ads_internal_zzm.zztH);
        zzc.zza(parcel, 3, com_google_android_gms_ads_internal_zzm.zztI);
        zzc.zza(parcel, 4, com_google_android_gms_ads_internal_zzm.zztJ, false);
        zzc.zza(parcel, 5, com_google_android_gms_ads_internal_zzm.zztK);
        zzc.zza(parcel, 6, com_google_android_gms_ads_internal_zzm.zztL);
        zzc.zzc(parcel, 7, com_google_android_gms_ads_internal_zzm.zztM);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzb(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzi(i);
    }

    public zzm zzb(Parcel parcel) {
        int i = 0;
        int zzaU = zzb.zzaU(parcel);
        String str = null;
        float f = 0.0f;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i2 = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    z3 = zzb.zzc(parcel, zzaT);
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
                    f = zzb.zzl(parcel, zzaT);
                    break;
                case 7:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzm(i2, z3, z2, str, z, f, i);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public zzm[] zzi(int i) {
        return new zzm[i];
    }
}
