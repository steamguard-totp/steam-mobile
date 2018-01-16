package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzb implements Creator<zzc> {
    static void zza(zzc com_google_android_gms_ads_internal_overlay_zzc, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, com_google_android_gms_ads_internal_overlay_zzc.versionCode);
        zzc.zza(parcel, 2, com_google_android_gms_ads_internal_overlay_zzc.zzLY, false);
        zzc.zza(parcel, 3, com_google_android_gms_ads_internal_overlay_zzc.url, false);
        zzc.zza(parcel, 4, com_google_android_gms_ads_internal_overlay_zzc.mimeType, false);
        zzc.zza(parcel, 5, com_google_android_gms_ads_internal_overlay_zzc.packageName, false);
        zzc.zza(parcel, 6, com_google_android_gms_ads_internal_overlay_zzc.zzLZ, false);
        zzc.zza(parcel, 7, com_google_android_gms_ads_internal_overlay_zzc.zzMa, false);
        zzc.zza(parcel, 8, com_google_android_gms_ads_internal_overlay_zzc.zzMb, false);
        zzc.zza(parcel, 9, com_google_android_gms_ads_internal_overlay_zzc.intent, i, false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzj(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzH(i);
    }

    public zzc[] zzH(int i) {
        return new zzc[i];
    }

    public zzc zzj(Parcel parcel) {
        Intent intent = null;
        int zzaU = com.google.android.gms.common.internal.safeparcel.zzb.zzaU(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = com.google.android.gms.common.internal.safeparcel.zzb.zzaT(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzcW(zzaT)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    str7 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaT);
                    break;
                case 3:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaT);
                    break;
                case 4:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaT);
                    break;
                case 5:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaT);
                    break;
                case 6:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaT);
                    break;
                case 7:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaT);
                    break;
                case 8:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaT);
                    break;
                case 9:
                    intent = (Intent) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaT, Intent.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new zzc(i, str7, str6, str5, str4, str3, str2, str, intent);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }
}
