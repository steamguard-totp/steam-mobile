package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzg implements Creator<zzf> {
    static void zza(zzf com_google_firebase_database_connection_idl_zzf, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_firebase_database_connection_idl_zzf.versionCode);
        zzc.zza(parcel, 2, com_google_firebase_database_connection_idl_zzf.zzbZA, false);
        zzc.zza(parcel, 3, com_google_firebase_database_connection_idl_zzf.zzaFs, false);
        zzc.zza(parcel, 4, com_google_firebase_database_connection_idl_zzf.zzbZB);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzli(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzpM(i);
    }

    public zzf zzli(Parcel parcel) {
        String str = null;
        boolean z = false;
        int zzaU = zzb.zzaU(parcel);
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
                    str = zzb.zzq(parcel, zzaT);
                    break;
                case 4:
                    z = zzb.zzc(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzf(i, str2, str, z);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public zzf[] zzpM(int i) {
        return new zzf[i];
    }
}
