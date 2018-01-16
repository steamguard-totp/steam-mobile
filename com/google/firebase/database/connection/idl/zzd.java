package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.List;

public class zzd implements Creator<zzc> {
    static void zza(zzc com_google_firebase_database_connection_idl_zzc, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_firebase_database_connection_idl_zzc.versionCode);
        zzc.zza(parcel, 2, com_google_firebase_database_connection_idl_zzc.zzcaQ, i, false);
        zzc.zzc(parcel, 3, com_google_firebase_database_connection_idl_zzc.zzcaR);
        zzc.zzb(parcel, 4, com_google_firebase_database_connection_idl_zzc.zzcaS, false);
        zzc.zza(parcel, 5, com_google_firebase_database_connection_idl_zzc.zzbZx);
        zzc.zza(parcel, 6, com_google_firebase_database_connection_idl_zzc.zzcaT, false);
        zzc.zza(parcel, 7, com_google_firebase_database_connection_idl_zzc.zzbZz, false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzlh(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzpL(i);
    }

    public zzc zzlh(Parcel parcel) {
        boolean z = false;
        String str = null;
        int zzaU = zzb.zzaU(parcel);
        String str2 = null;
        List list = null;
        int i = 0;
        zzf com_google_firebase_database_connection_idl_zzf = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i2 = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    com_google_firebase_database_connection_idl_zzf = (zzf) zzb.zza(parcel, zzaT, zzf.CREATOR);
                    break;
                case 3:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 4:
                    list = zzb.zzE(parcel, zzaT);
                    break;
                case 5:
                    z = zzb.zzc(parcel, zzaT);
                    break;
                case 6:
                    str2 = zzb.zzq(parcel, zzaT);
                    break;
                case 7:
                    str = zzb.zzq(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzc(i2, com_google_firebase_database_connection_idl_zzf, i, list, z, str2, str);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public zzc[] zzpL(int i) {
        return new zzc[i];
    }
}
