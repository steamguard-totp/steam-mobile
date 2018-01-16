package com.google.android.gms.cast.framework.media;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zza implements Creator<CastMediaOptions> {
    static void zza(CastMediaOptions castMediaOptions, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, castMediaOptions.getVersionCode());
        zzc.zza(parcel, 2, castMediaOptions.getMediaIntentReceiverClassName(), false);
        zzc.zza(parcel, 3, castMediaOptions.getExpandedControllerActivityClassName(), false);
        zzc.zza(parcel, 4, castMediaOptions.zzsQ(), false);
        zzc.zza(parcel, 5, castMediaOptions.getNotificationOptions(), i, false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzaA(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbY(i);
    }

    public CastMediaOptions zzaA(Parcel parcel) {
        NotificationOptions notificationOptions = null;
        int zzaU = zzb.zzaU(parcel);
        int i = 0;
        IBinder iBinder = null;
        String str = null;
        String str2 = null;
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
                    iBinder = zzb.zzr(parcel, zzaT);
                    break;
                case 5:
                    notificationOptions = (NotificationOptions) zzb.zza(parcel, zzaT, NotificationOptions.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new CastMediaOptions(i, str2, str, iBinder, notificationOptions);
        }
        throw new com.google.android.gms.common.internal.safeparcel.zzb.zza("Overread allowed size end=" + zzaU, parcel);
    }

    public CastMediaOptions[] zzbY(int i) {
        return new CastMediaOptions[i];
    }
}
