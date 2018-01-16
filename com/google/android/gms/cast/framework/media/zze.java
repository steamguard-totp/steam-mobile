package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.List;

public class zze implements Creator<NotificationOptions> {
    static void zza(NotificationOptions notificationOptions, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, notificationOptions.getVersionCode());
        zzc.zzb(parcel, 2, notificationOptions.getActions(), false);
        zzc.zza(parcel, 3, notificationOptions.getCompatActionIndices(), false);
        zzc.zza(parcel, 4, notificationOptions.getSkipStepMs());
        zzc.zza(parcel, 5, notificationOptions.getTargetActivityClassName(), false);
        zzc.zzc(parcel, 6, notificationOptions.getSmallIconDrawableResId());
        zzc.zzc(parcel, 7, notificationOptions.getStopLiveStreamDrawableResId());
        zzc.zzc(parcel, 8, notificationOptions.getPauseDrawableResId());
        zzc.zzc(parcel, 9, notificationOptions.getPlayDrawableResId());
        zzc.zzc(parcel, 10, notificationOptions.getSkipNextDrawableResId());
        zzc.zzc(parcel, 11, notificationOptions.getSkipPrevDrawableResId());
        zzc.zzc(parcel, 12, notificationOptions.getForwardDrawableResId());
        zzc.zzc(parcel, 13, notificationOptions.getForward10DrawableResId());
        zzc.zzc(parcel, 14, notificationOptions.getForward30DrawableResId());
        zzc.zzc(parcel, 15, notificationOptions.getRewindDrawableResId());
        zzc.zzc(parcel, 16, notificationOptions.getRewind10DrawableResId());
        zzc.zzc(parcel, 17, notificationOptions.getRewind30DrawableResId());
        zzc.zzc(parcel, 18, notificationOptions.getDisconnectDrawableResId());
        zzc.zzc(parcel, 19, notificationOptions.zzsT());
        zzc.zzc(parcel, 20, notificationOptions.getCastingToDeviceStringResId());
        zzc.zzc(parcel, 21, notificationOptions.getStopLiveStreamTitleResId());
        zzc.zzc(parcel, 22, notificationOptions.zzsU());
        zzc.zzc(parcel, 23, notificationOptions.zzsV());
        zzc.zzc(parcel, 24, notificationOptions.zzsW());
        zzc.zzc(parcel, 25, notificationOptions.zzsX());
        zzc.zzc(parcel, 26, notificationOptions.zzsY());
        zzc.zzc(parcel, 27, notificationOptions.zzsZ());
        zzc.zzc(parcel, 28, notificationOptions.zzta());
        zzc.zzc(parcel, 29, notificationOptions.zztb());
        zzc.zzc(parcel, 30, notificationOptions.zztc());
        zzc.zzc(parcel, 31, notificationOptions.zztd());
        zzc.zzc(parcel, 32, notificationOptions.zzte());
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzaC(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzca(i);
    }

    public NotificationOptions zzaC(Parcel parcel) {
        int zzaU = zzb.zzaU(parcel);
        int i = 0;
        List list = null;
        int[] iArr = null;
        long j = 0;
        String str = null;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        int i28 = 0;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    list = zzb.zzE(parcel, zzaT);
                    break;
                case 3:
                    iArr = zzb.zzw(parcel, zzaT);
                    break;
                case 4:
                    j = zzb.zzi(parcel, zzaT);
                    break;
                case 5:
                    str = zzb.zzq(parcel, zzaT);
                    break;
                case 6:
                    i2 = zzb.zzg(parcel, zzaT);
                    break;
                case 7:
                    i3 = zzb.zzg(parcel, zzaT);
                    break;
                case 8:
                    i4 = zzb.zzg(parcel, zzaT);
                    break;
                case 9:
                    i5 = zzb.zzg(parcel, zzaT);
                    break;
                case 10:
                    i6 = zzb.zzg(parcel, zzaT);
                    break;
                case 11:
                    i7 = zzb.zzg(parcel, zzaT);
                    break;
                case 12:
                    i8 = zzb.zzg(parcel, zzaT);
                    break;
                case 13:
                    i9 = zzb.zzg(parcel, zzaT);
                    break;
                case 14:
                    i10 = zzb.zzg(parcel, zzaT);
                    break;
                case 15:
                    i11 = zzb.zzg(parcel, zzaT);
                    break;
                case 16:
                    i12 = zzb.zzg(parcel, zzaT);
                    break;
                case 17:
                    i13 = zzb.zzg(parcel, zzaT);
                    break;
                case 18:
                    i14 = zzb.zzg(parcel, zzaT);
                    break;
                case 19:
                    i15 = zzb.zzg(parcel, zzaT);
                    break;
                case 20:
                    i16 = zzb.zzg(parcel, zzaT);
                    break;
                case 21:
                    i17 = zzb.zzg(parcel, zzaT);
                    break;
                case 22:
                    i18 = zzb.zzg(parcel, zzaT);
                    break;
                case 23:
                    i19 = zzb.zzg(parcel, zzaT);
                    break;
                case 24:
                    i20 = zzb.zzg(parcel, zzaT);
                    break;
                case 25:
                    i21 = zzb.zzg(parcel, zzaT);
                    break;
                case 26:
                    i22 = zzb.zzg(parcel, zzaT);
                    break;
                case 27:
                    i23 = zzb.zzg(parcel, zzaT);
                    break;
                case 28:
                    i24 = zzb.zzg(parcel, zzaT);
                    break;
                case 29:
                    i25 = zzb.zzg(parcel, zzaT);
                    break;
                case 30:
                    i26 = zzb.zzg(parcel, zzaT);
                    break;
                case 31:
                    i27 = zzb.zzg(parcel, zzaT);
                    break;
                case 32:
                    i28 = zzb.zzg(parcel, zzaT);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new NotificationOptions(i, list, iArr, j, str, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27, i28);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public NotificationOptions[] zzca(int i) {
        return new NotificationOptions[i];
    }
}
