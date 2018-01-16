package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.List;

public class zzb implements Creator<zza> {
    static void zza(zza com_google_firebase_database_connection_idl_zza, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_firebase_database_connection_idl_zza.versionCode);
        zzc.zzb(parcel, 2, com_google_firebase_database_connection_idl_zza.zzbZh, false);
        zzc.zzb(parcel, 3, com_google_firebase_database_connection_idl_zza.zzbZi, false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzlg(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzpK(i);
    }

    public zza zzlg(Parcel parcel) {
        List list = null;
        int zzaU = com.google.android.gms.common.internal.safeparcel.zzb.zzaU(parcel);
        int i = 0;
        List list2 = null;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = com.google.android.gms.common.internal.safeparcel.zzb.zzaT(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzcW(zzaT)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    list2 = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaT);
                    break;
                case 3:
                    list = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaT);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zza(i, list2, list);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public zza[] zzpK(int i) {
        return new zza[i];
    }
}
