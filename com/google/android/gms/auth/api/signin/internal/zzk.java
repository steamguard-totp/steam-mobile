package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzk implements Creator<SignInConfiguration> {
    static void zza(SignInConfiguration signInConfiguration, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, signInConfiguration.versionCode);
        zzc.zza(parcel, 2, signInConfiguration.zzqZ(), false);
        zzc.zza(parcel, 5, signInConfiguration.zzra(), i, false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzY(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbm(i);
    }

    public SignInConfiguration zzY(Parcel parcel) {
        GoogleSignInOptions googleSignInOptions = null;
        int zzaU = zzb.zzaU(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    str = zzb.zzq(parcel, zzaT);
                    break;
                case 5:
                    googleSignInOptions = (GoogleSignInOptions) zzb.zza(parcel, zzaT, GoogleSignInOptions.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new SignInConfiguration(i, str, googleSignInOptions);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public SignInConfiguration[] zzbm(int i) {
        return new SignInConfiguration[i];
    }
}
