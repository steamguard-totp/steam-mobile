package com.google.android.gms.internal;

import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public class zzxu extends UIController {
    private final View mView;
    private final OnClickListener zzasw = new OnClickListener(this) {
        final /* synthetic */ zzxu zzatf;

        {
            this.zzatf = r1;
        }

        public void onClick(View view) {
            RemoteMediaClient zza = this.zzatf.getRemoteMediaClient();
            if (zza != null && zza.hasMediaSession()) {
                zza.queuePrev(null);
            }
        }
    };
    private final int zzatd;

    public zzxu(View view, int i) {
        this.mView = view;
        this.zzatd = i;
    }

    private void zztC() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            boolean z;
            MediaStatus mediaStatus = remoteMediaClient.getMediaStatus();
            if (mediaStatus.getQueueRepeatMode() == 0) {
                Integer indexById = mediaStatus.getIndexById(mediaStatus.getCurrentItemId());
                z = indexById != null && indexById.intValue() > 0;
            } else {
                z = true;
            }
            if (!z || remoteMediaClient.isPlayingAd()) {
                this.mView.setVisibility(this.zzatd);
                this.mView.setClickable(false);
                this.mView.setEnabled(false);
                return;
            }
            this.mView.setVisibility(0);
            this.mView.setClickable(true);
            this.mView.setEnabled(true);
        }
    }

    public void onMediaStatusUpdated() {
        zztC();
    }

    public void onSendingRemoteMediaRequest() {
        this.mView.setEnabled(false);
    }

    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.mView.setOnClickListener(this.zzasw);
        zztC();
    }

    public void onSessionEnded() {
        this.mView.setOnClickListener(null);
        super.onSessionEnded();
    }
}
