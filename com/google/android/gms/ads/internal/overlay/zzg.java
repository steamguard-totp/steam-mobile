package com.google.android.gms.ads.internal.overlay;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.internal.zzm;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.internal.zzqa;

public class zzg implements Creator<AdOverlayInfoParcel> {
    static void zza(AdOverlayInfoParcel adOverlayInfoParcel, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, adOverlayInfoParcel.versionCode);
        zzc.zza(parcel, 2, adOverlayInfoParcel.zzMW, i, false);
        zzc.zza(parcel, 3, adOverlayInfoParcel.zzhs(), false);
        zzc.zza(parcel, 4, adOverlayInfoParcel.zzht(), false);
        zzc.zza(parcel, 5, adOverlayInfoParcel.zzhu(), false);
        zzc.zza(parcel, 6, adOverlayInfoParcel.zzhv(), false);
        zzc.zza(parcel, 7, adOverlayInfoParcel.zzNb, false);
        zzc.zza(parcel, 8, adOverlayInfoParcel.zzNc);
        zzc.zza(parcel, 9, adOverlayInfoParcel.zzNd, false);
        zzc.zza(parcel, 10, adOverlayInfoParcel.zzhx(), false);
        zzc.zzc(parcel, 11, adOverlayInfoParcel.orientation);
        zzc.zzc(parcel, 12, adOverlayInfoParcel.zzNf);
        zzc.zza(parcel, 13, adOverlayInfoParcel.url, false);
        zzc.zza(parcel, 14, adOverlayInfoParcel.zzvf, i, false);
        zzc.zza(parcel, 15, adOverlayInfoParcel.zzhw(), false);
        zzc.zza(parcel, 16, adOverlayInfoParcel.zzNh, false);
        zzc.zza(parcel, 17, adOverlayInfoParcel.zzNi, i, false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzk(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzL(i);
    }

    public AdOverlayInfoParcel[] zzL(int i) {
        return new AdOverlayInfoParcel[i];
    }

    public AdOverlayInfoParcel zzk(Parcel parcel) {
        int zzaU = zzb.zzaU(parcel);
        int i = 0;
        zzc com_google_android_gms_ads_internal_overlay_zzc = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        String str = null;
        boolean z = false;
        String str2 = null;
        IBinder iBinder5 = null;
        int i2 = 0;
        int i3 = 0;
        String str3 = null;
        zzqa com_google_android_gms_internal_zzqa = null;
        IBinder iBinder6 = null;
        String str4 = null;
        zzm com_google_android_gms_ads_internal_zzm = null;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    com_google_android_gms_ads_internal_overlay_zzc = (zzc) zzb.zza(parcel, zzaT, zzc.CREATOR);
                    break;
                case 3:
                    iBinder = zzb.zzr(parcel, zzaT);
                    break;
                case 4:
                    iBinder2 = zzb.zzr(parcel, zzaT);
                    break;
                case 5:
                    iBinder3 = zzb.zzr(parcel, zzaT);
                    break;
                case 6:
                    iBinder4 = zzb.zzr(parcel, zzaT);
                    break;
                case 7:
                    str = zzb.zzq(parcel, zzaT);
                    break;
                case 8:
                    z = zzb.zzc(parcel, zzaT);
                    break;
                case 9:
                    str2 = zzb.zzq(parcel, zzaT);
                    break;
                case 10:
                    iBinder5 = zzb.zzr(parcel, zzaT);
                    break;
                case 11:
                    i2 = zzb.zzg(parcel, zzaT);
                    break;
                case 12:
                    i3 = zzb.zzg(parcel, zzaT);
                    break;
                case 13:
                    str3 = zzb.zzq(parcel, zzaT);
                    break;
                case 14:
                    com_google_android_gms_internal_zzqa = (zzqa) zzb.zza(parcel, zzaT, zzqa.CREATOR);
                    break;
                case 15:
                    iBinder6 = zzb.zzr(parcel, zzaT);
                    break;
                case 16:
                    str4 = zzb.zzq(parcel, zzaT);
                    break;
                case 17:
                    com_google_android_gms_ads_internal_zzm = (zzm) zzb.zza(parcel, zzaT, zzm.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new AdOverlayInfoParcel(i, com_google_android_gms_ads_internal_overlay_zzc, iBinder, iBinder2, iBinder3, iBinder4, str, z, str2, iBinder5, i2, i3, str3, com_google_android_gms_internal_zzqa, iBinder6, str4, com_google_android_gms_ads_internal_zzm);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }
}
