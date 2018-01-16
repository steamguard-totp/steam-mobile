package com.google.android.gms.cast;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.List;

public class zzj implements Creator<MediaMetadata> {
    static void zza(MediaMetadata mediaMetadata, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, mediaMetadata.getVersionCode());
        zzc.zzc(parcel, 2, mediaMetadata.getImages(), false);
        zzc.zza(parcel, 3, mediaMetadata.zzann, false);
        zzc.zzc(parcel, 4, mediaMetadata.getMediaType());
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzat(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbL(i);
    }

    public MediaMetadata zzat(Parcel parcel) {
        Bundle bundle = null;
        int i = 0;
        int zzaU = zzb.zzaU(parcel);
        List list = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i2 = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    list = zzb.zzc(parcel, zzaT, WebImage.CREATOR);
                    break;
                case 3:
                    bundle = zzb.zzs(parcel, zzaT);
                    break;
                case 4:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new MediaMetadata(i2, list, bundle, i);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public MediaMetadata[] zzbL(int i) {
        return new MediaMetadata[i];
    }
}
