package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.ImagePicker;
import com.google.android.gms.cast.framework.media.MediaUtils;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.internal.zzxa.zza;

public class zzxi extends UIController {
    private final ImagePicker zzaqL;
    private final ImageHints zzarV;
    private final zzxa zzasA;
    private final Bitmap zzasC;
    private final View zzasD;
    private final ImageView zzasy;

    public zzxi(ImageView imageView, Context context, ImageHints imageHints, int i, View view) {
        ImagePicker imagePicker = null;
        this.zzasy = imageView;
        this.zzarV = imageHints;
        this.zzasC = i != 0 ? BitmapFactory.decodeResource(context.getResources(), i) : null;
        this.zzasD = view;
        CastMediaOptions castMediaOptions = CastContext.getSharedInstance(context).getCastOptions().getCastMediaOptions();
        if (castMediaOptions != null) {
            imagePicker = castMediaOptions.getImagePicker();
        }
        this.zzaqL = imagePicker;
        this.zzasA = new zzxa(context.getApplicationContext());
    }

    private Uri zzd(MediaInfo mediaInfo) {
        if (mediaInfo == null) {
            return null;
        }
        if (this.zzaqL != null) {
            WebImage onPickImage = this.zzaqL.onPickImage(mediaInfo.getMetadata(), this.zzarV);
            if (!(onPickImage == null || onPickImage.getUrl() == null)) {
                return onPickImage.getUrl();
            }
        }
        return MediaUtils.getImageUri(mediaInfo, 0);
    }

    private void zztx() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            zzty();
            return;
        }
        Uri zzd = zzd(remoteMediaClient.getMediaInfo());
        if (zzd == null) {
            zzty();
        } else {
            this.zzasA.zzo(zzd);
        }
    }

    private void zzty() {
        if (this.zzasD != null) {
            this.zzasD.setVisibility(0);
            this.zzasy.setVisibility(4);
        }
        if (this.zzasC != null) {
            this.zzasy.setImageBitmap(this.zzasC);
        }
    }

    public void onMediaStatusUpdated() {
        zztx();
    }

    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.zzasA.zza(new zza(this) {
            final /* synthetic */ zzxi zzasE;

            {
                this.zzasE = r1;
            }

            public void zzc(Bitmap bitmap) {
                if (bitmap != null) {
                    if (this.zzasE.zzasD != null) {
                        this.zzasE.zzasD.setVisibility(4);
                    }
                    this.zzasE.zzasy.setVisibility(0);
                    this.zzasE.zzasy.setImageBitmap(bitmap);
                }
            }
        });
        zzty();
        zztx();
    }

    public void onSessionEnded() {
        this.zzasA.clear();
        zzty();
        super.onSessionEnded();
    }
}
