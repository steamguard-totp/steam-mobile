package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.List;

public class zzo implements Creator<zzn> {
    static void zza(zzn com_google_firebase_database_connection_idl_zzn, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_firebase_database_connection_idl_zzn.versionCode);
        zzc.zzb(parcel, 2, com_google_firebase_database_connection_idl_zzn.zzcay, false);
        zzc.zzb(parcel, 3, com_google_firebase_database_connection_idl_zzn.zzcaz, false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzlj(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzpN(i);
    }

    public zzn zzlj(Parcel parcel) {
        List list = null;
        int zzaU = zzb.zzaU(parcel);
        int i = 0;
        List list2 = null;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    list2 = zzb.zzE(parcel, zzaT);
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
            return new zzn(i, list2, list);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public zzn[] zzpN(int i) {
        return new zzn[i];
    }
}
