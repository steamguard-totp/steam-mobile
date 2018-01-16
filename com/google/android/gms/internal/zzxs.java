package com.google.android.gms.internal;

import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public class zzxs extends UIController {
    private final View mView;
    private final OnClickListener zzasw;

    public zzxs(View view, final long j) {
        this.mView = view;
        this.zzasw = new OnClickListener(this) {
            final /* synthetic */ zzxs zzatc;

            public void onClick(View view) {
                RemoteMediaClient zza = this.zzatc.getRemoteMediaClient();
                if (zza != null && zza.hasMediaSession()) {
                    zza.seek(zza.getApproximateStreamPosition() + j);
                }
            }
        };
    }

    private void zztx() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession() || remoteMediaClient.isLiveStream() || remoteMediaClient.isPlayingAd()) {
            this.mView.setEnabled(false);
        } else {
            this.mView.setEnabled(true);
        }
    }

    public void onMediaStatusUpdated() {
        zztx();
    }

    public void onSendingRemoteMediaRequest() {
        this.mView.setEnabled(false);
    }

    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.mView.setOnClickListener(this.zzasw);
        zztx();
    }

    public void onSessionEnded() {
        this.mView.setOnClickListener(null);
        super.onSessionEnded();
    }
}
