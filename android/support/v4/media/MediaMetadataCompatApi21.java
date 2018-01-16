package android.support.v4.media;

import android.annotation.TargetApi;
import android.media.MediaMetadata;
import android.os.Parcel;

@TargetApi(21)
class MediaMetadataCompatApi21 {
    public static void writeToParcel(Object metadataObj, Parcel dest, int flags) {
        ((MediaMetadata) metadataObj).writeToParcel(dest, flags);
    }

    public static Object createFromParcel(Parcel in) {
        return MediaMetadata.CREATOR.createFromParcel(in);
    }
}
