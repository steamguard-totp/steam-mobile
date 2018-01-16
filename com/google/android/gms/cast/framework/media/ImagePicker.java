package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;

public class ImagePicker {
    private final zzb zzaqO = new zza();

    private class zza extends com.google.android.gms.cast.framework.media.zzb.zza {
        final /* synthetic */ ImagePicker zzaqP;

        private zza(ImagePicker imagePicker) {
            this.zzaqP = imagePicker;
        }

        public WebImage onPickImage(MediaMetadata mediaMetadata, int i) {
            return this.zzaqP.onPickImage(mediaMetadata, i);
        }

        public WebImage zza(MediaMetadata mediaMetadata, ImageHints imageHints) {
            return this.zzaqP.onPickImage(mediaMetadata, imageHints);
        }

        public zzd zzsR() {
            return zze.zzA(this.zzaqP);
        }

        public int zzsd() {
            return 10084208;
        }
    }

    @Deprecated
    public WebImage onPickImage(MediaMetadata mediaMetadata, int i) {
        return (mediaMetadata == null || !mediaMetadata.hasImages()) ? null : (WebImage) mediaMetadata.getImages().get(0);
    }

    public WebImage onPickImage(MediaMetadata mediaMetadata, ImageHints imageHints) {
        return onPickImage(mediaMetadata, imageHints.getType());
    }
}
