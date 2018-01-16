package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.google.android.gms.R;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public class zzxp extends UIController {
    private final View zzasN;
    private final boolean zzasO;
    private final Drawable zzasP;
    private final String zzasQ;
    private final Drawable zzasR;
    private final String zzasS;
    private final Drawable zzasT;
    private final String zzasU;
    private final OnClickListener zzasw;
    private final ImageView zzasy;

    public zzxp(ImageView imageView, Context context, Drawable drawable, Drawable drawable2, Drawable drawable3, View view, boolean z) {
        this.zzasy = imageView;
        this.zzasP = drawable;
        this.zzasR = drawable2;
        if (drawable3 == null) {
            drawable3 = drawable2;
        }
        this.zzasT = drawable3;
        this.zzasQ = context.getString(R.string.cast_play);
        this.zzasS = context.getString(R.string.cast_pause);
        this.zzasU = context.getString(R.string.cast_stop);
        this.zzasN = view;
        this.zzasO = z;
        this.zzasw = new OnClickListener(this) {
            final /* synthetic */ zzxp zzasV;

            {
                this.zzasV = r1;
            }

            public void onClick(View view) {
                RemoteMediaClient zza = this.zzasV.getRemoteMediaClient();
                if (zza != null && zza.hasMediaSession()) {
                    zza.togglePlayback();
                }
            }
        };
    }

    private void zza(Drawable drawable, String str) {
        this.zzasy.setImageDrawable(drawable);
        this.zzasy.setContentDescription(str);
        this.zzasy.setVisibility(0);
        this.zzasy.setEnabled(true);
        if (this.zzasN != null) {
            this.zzasN.setVisibility(8);
        }
    }

    private void zzam(boolean z) {
        boolean z2 = false;
        if (this.zzasN != null) {
            this.zzasN.setVisibility(0);
        }
        this.zzasy.setVisibility(this.zzasO ? 4 : 0);
        ImageView imageView = this.zzasy;
        if (!z) {
            z2 = true;
        }
        imageView.setEnabled(z2);
    }

    private void zztx() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            if (remoteMediaClient.isPaused()) {
                zza(this.zzasP, this.zzasQ);
            } else if (remoteMediaClient.isPlaying()) {
                if (remoteMediaClient.isLiveStream()) {
                    zza(this.zzasT, this.zzasU);
                } else {
                    zza(this.zzasR, this.zzasS);
                }
            } else if (remoteMediaClient.isBuffering()) {
                zzam(false);
            } else if (remoteMediaClient.isLoadingNextItem()) {
                zzam(true);
            }
        }
    }

    public void onMediaStatusUpdated() {
        zztx();
    }

    public void onSendingRemoteMediaRequest() {
        zzam(true);
    }

    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.zzasy.setOnClickListener(this.zzasw);
        zztx();
    }

    public void onSessionEnded() {
        this.zzasy.setOnClickListener(null);
        super.onSessionEnded();
    }
}
