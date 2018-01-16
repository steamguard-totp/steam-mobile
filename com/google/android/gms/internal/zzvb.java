package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzvb implements Creator<zzva> {
    static void zza(zzva com_google_android_gms_internal_zzva, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zza(parcel, 1, com_google_android_gms_internal_zzva.getCredential(), i, false);
        zzc.zzc(parcel, 1000, com_google_android_gms_internal_zzva.mVersionCode);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzP(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbd(i);
    }

    public zzva zzP(Parcel parcel) {
        int zzaU = zzb.zzaU(parcel);
        int i = 0;
        Credential credential = null;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    credential = (Credential) zzb.zza(parcel, zzaT, Credential.CREATOR);
                    break;
                case 1000:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzva(i, credential);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public zzva[] zzbd(int i) {
        return new zzva[i];
    }
}
