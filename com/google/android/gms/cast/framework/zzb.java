package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.List;

public class zzb implements Creator<CastOptions> {
    static void zza(CastOptions castOptions, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, castOptions.getVersionCode());
        zzc.zza(parcel, 2, castOptions.getReceiverApplicationId(), false);
        zzc.zzb(parcel, 3, castOptions.getSupportedNamespaces(), false);
        zzc.zza(parcel, 4, castOptions.getStopReceiverApplicationWhenEndingSession());
        zzc.zza(parcel, 5, castOptions.getLaunchOptions(), i, false);
        zzc.zza(parcel, 6, castOptions.getResumeSavedSession());
        zzc.zza(parcel, 7, castOptions.getCastMediaOptions(), i, false);
        zzc.zza(parcel, 8, castOptions.getEnableReconnectionService());
        zzc.zza(parcel, 9, castOptions.getVolumeDeltaBeforeIceCreamSandwich());
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzaz(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbU(i);
    }

    public CastOptions zzaz(Parcel parcel) {
        CastMediaOptions castMediaOptions = null;
        boolean z = false;
        int zzaU = com.google.android.gms.common.internal.safeparcel.zzb.zzaU(parcel);
        double d = 0.0d;
        boolean z2 = false;
        LaunchOptions launchOptions = null;
        boolean z3 = false;
        List list = null;
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = com.google.android.gms.common.internal.safeparcel.zzb.zzaT(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzcW(zzaT)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaT);
                    break;
                case 3:
                    list = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaT);
                    break;
                case 4:
                    z3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaT);
                    break;
                case 5:
                    launchOptions = (LaunchOptions) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaT, LaunchOptions.CREATOR);
                    break;
                case 6:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaT);
                    break;
                case 7:
                    castMediaOptions = (CastMediaOptions) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaT, CastMediaOptions.CREATOR);
                    break;
                case 8:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaT);
                    break;
                case 9:
                    d = com.google.android.gms.common.internal.safeparcel.zzb.zzn(parcel, zzaT);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new CastOptions(i, str, list, z3, launchOptions, z2, castMediaOptions, z, d);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public CastOptions[] zzbU(int i) {
        return new CastOptions[i];
    }
}
