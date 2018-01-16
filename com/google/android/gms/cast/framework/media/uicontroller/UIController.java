package com.google.android.gms.cast.framework.media.uicontroller;

import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;

public abstract class UIController {
    private RemoteMediaClient zzapk;

    protected RemoteMediaClient getRemoteMediaClient() {
        return this.zzapk;
    }

    public void onMediaStatusUpdated() {
    }

    public void onSendingRemoteMediaRequest() {
    }

    public void onSessionConnected(CastSession castSession) {
        if (castSession != null) {
            this.zzapk = castSession.getRemoteMediaClient();
        } else {
            this.zzapk = null;
        }
    }

    public void onSessionEnded() {
        this.zzapk = null;
    }
}
