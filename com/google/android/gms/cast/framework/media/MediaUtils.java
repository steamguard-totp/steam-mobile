package com.google.android.gms.cast.framework.media;

import android.annotation.TargetApi;
import android.net.Uri;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.util.zzs;
import java.util.Locale;

public class MediaUtils {
    public static Uri getImageUri(MediaInfo mediaInfo, int i) {
        if (mediaInfo == null) {
            return null;
        }
        MediaMetadata metadata = mediaInfo.getMetadata();
        return (metadata == null || metadata.getImages() == null || metadata.getImages().size() <= i) ? null : ((WebImage) metadata.getImages().get(i)).getUrl();
    }

    @TargetApi(21)
    public static Locale getTrackLanguage(MediaTrack mediaTrack) {
        if (mediaTrack.getLanguage() == null) {
            return null;
        }
        if (zzs.zzyI()) {
            return Locale.forLanguageTag(mediaTrack.getLanguage());
        }
        String[] split = mediaTrack.getLanguage().split("-");
        return split.length == 1 ? new Locale(split[0]) : new Locale(split[0], split[1]);
    }
}
