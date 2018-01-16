package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;

public class zzc implements Creator<SignInAccount> {
    static void zza(SignInAccount signInAccount, Parcel parcel, int i) {
        int zzaV = com.google.android.gms.common.internal.safeparcel.zzc.zzaV(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, signInAccount.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, signInAccount.zzaiW, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, signInAccount.zzqP(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, signInAccount.zzach, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzX(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbl(i);
    }

    public SignInAccount zzX(Parcel parcel) {
        int zzaU = zzb.zzaU(parcel);
        int i = 0;
        String str = "";
        GoogleSignInAccount googleSignInAccount = null;
        String str2 = "";
        while (parcel.dataPosition() < zzaU) {
            GoogleSignInAccount googleSignInAccount2;
            String str3;
            int zzg;
            String str4;
            int zzaT = zzb.zzaT(parcel);
            String str5;
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    str5 = str2;
                    googleSignInAccount2 = googleSignInAccount;
                    str3 = str;
                    zzg = zzb.zzg(parcel, zzaT);
                    str4 = str5;
                    break;
                case 4:
                    zzg = i;
                    GoogleSignInAccount googleSignInAccount3 = googleSignInAccount;
                    str3 = zzb.zzq(parcel, zzaT);
                    str4 = str2;
                    googleSignInAccount2 = googleSignInAccount3;
                    break;
                case 7:
                    str3 = str;
                    zzg = i;
                    str5 = str2;
                    googleSignInAccount2 = (GoogleSignInAccount) zzb.zza(parcel, zzaT, GoogleSignInAccount.CREATOR);
                    str4 = str5;
                    break;
                case 8:
                    str4 = zzb.zzq(parcel, zzaT);
                    googleSignInAccount2 = googleSignInAccount;
                    str3 = str;
                    zzg = i;
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    str4 = str2;
                    googleSignInAccount2 = googleSignInAccount;
                    str3 = str;
                    zzg = i;
                    break;
            }
            i = zzg;
            str = str3;
            googleSignInAccount = googleSignInAccount2;
            str2 = str4;
        }
        if (parcel.dataPosition() == zzaU) {
            return new SignInAccount(i, str, googleSignInAccount, str2);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public SignInAccount[] zzbl(int i) {
        return new SignInAccount[i];
    }
}
