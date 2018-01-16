package com.google.android.gms.internal;

import android.view.View;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public class zzxl extends UIController {
    private final View mView;

    public zzxl(View view) {
        this.mView = view;
    }

    private void zztx() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession() && remoteMediaClient.isBuffering()) {
            this.mView.setVisibility(0);
        } else {
            this.mView.setVisibility(8);
        }
    }

    public void onMediaStatusUpdated() {
        zztx();
    }

    public void onSendingRemoteMediaRequest() {
        this.mView.setVisibility(0);
    }

    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        zztx();
    }

    public void onSessionEnded() {
        this.mView.setVisibility(8);
        super.onSessionEnded();
    }
}
