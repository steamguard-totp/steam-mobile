package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.List;

public class zza implements Creator<Credential> {
    static void zza(Credential credential, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zza(parcel, 1, credential.getId(), false);
        zzc.zza(parcel, 2, credential.getName(), false);
        zzc.zza(parcel, 3, credential.getProfilePictureUri(), i, false);
        zzc.zzc(parcel, 4, credential.getIdTokens(), false);
        zzc.zza(parcel, 5, credential.getPassword(), false);
        zzc.zza(parcel, 6, credential.getAccountType(), false);
        zzc.zza(parcel, 7, credential.getGeneratedPassword(), false);
        zzc.zzc(parcel, 1000, credential.mVersionCode);
        zzc.zza(parcel, 8, credential.zzqv(), false);
        zzc.zza(parcel, 9, credential.getGivenName(), false);
        zzc.zza(parcel, 10, credential.getFamilyName(), false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzJ(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzaX(i);
    }

    public Credential zzJ(Parcel parcel) {
        String str = null;
        int zzaU = zzb.zzaU(parcel);
        int i = 0;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        List list = null;
        Uri uri = null;
        String str7 = null;
        String str8 = null;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    str8 = zzb.zzq(parcel, zzaT);
                    break;
                case 2:
                    str7 = zzb.zzq(parcel, zzaT);
                    break;
                case 3:
                    uri = (Uri) zzb.zza(parcel, zzaT, Uri.CREATOR);
                    break;
                case 4:
                    list = zzb.zzc(parcel, zzaT, IdToken.CREATOR);
                    break;
                case 5:
                    str6 = zzb.zzq(parcel, zzaT);
                    break;
                case 6:
                    str5 = zzb.zzq(parcel, zzaT);
                    break;
                case 7:
                    str4 = zzb.zzq(parcel, zzaT);
                    break;
                case 8:
                    str3 = zzb.zzq(parcel, zzaT);
                    break;
                case 9:
                    str2 = zzb.zzq(parcel, zzaT);
                    break;
                case 10:
                    str = zzb.zzq(parcel, zzaT);
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
            return new Credential(i, str8, str7, uri, list, str6, str5, str4, str3, str2, str);
        }
        throw new com.google.android.gms.common.internal.safeparcel.zzb.zza("Overread allowed size end=" + zzaU, parcel);
    }

    public Credential[] zzaX(int i) {
        return new Credential[i];
    }
}
