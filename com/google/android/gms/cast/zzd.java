package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.List;

public class zzd implements Creator<ApplicationMetadata> {
    static void zza(ApplicationMetadata applicationMetadata, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, applicationMetadata.getVersionCode());
        zzc.zza(parcel, 2, applicationMetadata.getApplicationId(), false);
        zzc.zza(parcel, 3, applicationMetadata.getName(), false);
        zzc.zzc(parcel, 4, applicationMetadata.getImages(), false);
        zzc.zzb(parcel, 5, applicationMetadata.getSupportedNamespaces(), false);
        zzc.zza(parcel, 6, applicationMetadata.getSenderAppIdentifier(), false);
        zzc.zza(parcel, 7, applicationMetadata.zzrI(), i, false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzao(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbG(i);
    }

    public ApplicationMetadata zzao(Parcel parcel) {
        Uri uri = null;
        int zzaU = zzb.zzaU(parcel);
        int i = 0;
        String str = null;
        List list = null;
        List list2 = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    str3 = zzb.zzq(parcel, zzaT);
                    break;
                case 3:
                    str2 = zzb.zzq(parcel, zzaT);
                    break;
                case 4:
                    list2 = zzb.zzc(parcel, zzaT, WebImage.CREATOR);
                    break;
                case 5:
                    list = zzb.zzE(parcel, zzaT);
                    break;
                case 6:
                    str = zzb.zzq(parcel, zzaT);
                    break;
                case 7:
                    uri = (Uri) zzb.zza(parcel, zzaT, Uri.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new ApplicationMetadata(i, str3, str2, list2, list, str, uri);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public ApplicationMetadata[] zzbG(int i) {
        return new ApplicationMetadata[i];
    }
}
