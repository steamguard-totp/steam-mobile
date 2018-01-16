package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzzi implements Creator<zzzh> {
    static void zza(zzzh com_google_android_gms_internal_zzzh, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_android_gms_internal_zzzh.versionCode);
        zzc.zza(parcel, 2, com_google_android_gms_internal_zzzh.zzawE, i, false);
        zzc.zza(parcel, 3, com_google_android_gms_internal_zzzh.zzawF, false);
        zzc.zza(parcel, 4, com_google_android_gms_internal_zzzh.zzawG, false);
        zzc.zza(parcel, 5, com_google_android_gms_internal_zzzh.zzawH, false);
        zzc.zza(parcel, 6, com_google_android_gms_internal_zzzh.zzawI, false);
        zzc.zza(parcel, 7, com_google_android_gms_internal_zzzh.zzawJ, false);
        zzc.zza(parcel, 8, com_google_android_gms_internal_zzzh.zzawK);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzaF(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzcp(i);
    }

    public zzzh zzaF(Parcel parcel) {
        byte[][] bArr = null;
        int zzaU = zzb.zzaU(parcel);
        int i = 0;
        boolean z = true;
        int[] iArr = null;
        String[] strArr = null;
        int[] iArr2 = null;
        byte[] bArr2 = null;
        zzawe com_google_android_gms_internal_zzawe = null;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    com_google_android_gms_internal_zzawe = (zzawe) zzb.zza(parcel, zzaT, zzawe.CREATOR);
                    break;
                case 3:
                    bArr2 = zzb.zzt(parcel, zzaT);
                    break;
                case 4:
                    iArr2 = zzb.zzw(parcel, zzaT);
                    break;
                case 5:
                    strArr = zzb.zzC(parcel, zzaT);
                    break;
                case 6:
                    iArr = zzb.zzw(parcel, zzaT);
                    break;
                case 7:
                    bArr = zzb.zzu(parcel, zzaT);
                    break;
                case 8:
                    z = zzb.zzc(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzzh(i, com_google_android_gms_internal_zzawe, bArr2, iArr2, strArr, iArr, bArr, z);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public zzzh[] zzcp(int i) {
        return new zzzh[i];
    }
}
