package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.List;

public class zzi implements Creator<MediaInfo> {
    static void zza(MediaInfo mediaInfo, Parcel parcel, int i) {
        int zzaV = zzc.zzaV(parcel);
        zzc.zzc(parcel, 1, mediaInfo.getVersionCode());
        zzc.zza(parcel, 2, mediaInfo.getContentId(), false);
        zzc.zzc(parcel, 3, mediaInfo.getStreamType());
        zzc.zza(parcel, 4, mediaInfo.getContentType(), false);
        zzc.zza(parcel, 5, mediaInfo.getMetadata(), i, false);
        zzc.zza(parcel, 6, mediaInfo.getStreamDuration());
        zzc.zzc(parcel, 7, mediaInfo.getMediaTracks(), false);
        zzc.zza(parcel, 8, mediaInfo.getTextTrackStyle(), i, false);
        zzc.zza(parcel, 9, mediaInfo.zzalH, false);
        zzc.zzc(parcel, 10, mediaInfo.getAdBreaks(), false);
        zzc.zzc(parcel, 11, mediaInfo.getAdBreakClips(), false);
        zzc.zzJ(parcel, zzaV);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzas(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbK(i);
    }

    public MediaInfo zzas(Parcel parcel) {
        int zzaU = zzb.zzaU(parcel);
        int i = 0;
        String str = null;
        int i2 = 0;
        String str2 = null;
        MediaMetadata mediaMetadata = null;
        long j = 0;
        List list = null;
        TextTrackStyle textTrackStyle = null;
        String str3 = null;
        List list2 = null;
        List list3 = null;
        while (parcel.dataPosition() < zzaU) {
            int zzaT = zzb.zzaT(parcel);
            switch (zzb.zzcW(zzaT)) {
                case 1:
                    i = zzb.zzg(parcel, zzaT);
                    break;
                case 2:
                    str = zzb.zzq(parcel, zzaT);
                    break;
                case 3:
                    i2 = zzb.zzg(parcel, zzaT);
                    break;
                case 4:
                    str2 = zzb.zzq(parcel, zzaT);
                    break;
                case 5:
                    mediaMetadata = (MediaMetadata) zzb.zza(parcel, zzaT, MediaMetadata.CREATOR);
                    break;
                case 6:
                    j = zzb.zzi(parcel, zzaT);
                    break;
                case 7:
                    list = zzb.zzc(parcel, zzaT, MediaTrack.CREATOR);
                    break;
                case 8:
                    textTrackStyle = (TextTrackStyle) zzb.zza(parcel, zzaT, TextTrackStyle.CREATOR);
                    break;
                case 9:
                    str3 = zzb.zzq(parcel, zzaT);
                    break;
                case 10:
                    list2 = zzb.zzc(parcel, zzaT, AdBreakInfo.CREATOR);
                    break;
                case 11:
                    list3 = zzb.zzc(parcel, zzaT, AdBreakClipInfo.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaT);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaU) {
            return new MediaInfo(i, str, i2, str2, mediaMetadata, j, list, textTrackStyle, str3, list2, list3);
        }
        throw new zza("Overread allowed size end=" + zzaU, parcel);
    }

    public MediaInfo[] zzbK(int i) {
        return new MediaInfo[i];
    }
}
