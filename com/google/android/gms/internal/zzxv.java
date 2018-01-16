package com.google.android.gms.internal;

import android.text.format.DateUtils;
import android.view.View;
import android.widget.TextView;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public class zzxv extends UIController implements ProgressListener {
    private final TextView zzatg;
    private final String zzath;
    private final View zzati;

    public zzxv(TextView textView, String str, View view) {
        this.zzatg = textView;
        this.zzath = str;
        this.zzati = view;
    }

    private void zza(long j, boolean z) {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            this.zzatg.setVisibility(0);
            this.zzatg.setText(this.zzath);
            if (this.zzati != null) {
                this.zzati.setVisibility(4);
            }
        } else if (remoteMediaClient.isLiveStream()) {
            this.zzatg.setText(this.zzath);
            if (this.zzati != null) {
                this.zzatg.setVisibility(4);
                this.zzati.setVisibility(0);
            }
        } else {
            if (z) {
                j = remoteMediaClient.getStreamDuration();
            }
            this.zzatg.setVisibility(0);
            this.zzatg.setText(DateUtils.formatElapsedTime(j / 1000));
            if (this.zzati != null) {
                this.zzati.setVisibility(4);
            }
        }
    }

    public void onMediaStatusUpdated() {
        zza(-1, true);
    }

    public void onProgressUpdated(long j, long j2) {
        zza(j2, false);
    }

    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        if (getRemoteMediaClient() != null) {
            getRemoteMediaClient().addProgressListener(this, 1000);
        }
        zza(-1, true);
    }

    public void onSessionEnded() {
        this.zzatg.setText(this.zzath);
        if (getRemoteMediaClient() != null) {
            getRemoteMediaClient().removeProgressListener(this);
        }
        super.onSessionEnded();
    }
}
