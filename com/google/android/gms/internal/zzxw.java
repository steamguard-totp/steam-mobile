package com.google.android.gms.internal;

import android.text.format.DateUtils;
import android.widget.TextView;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public class zzxw extends UIController implements ProgressListener {
    private final long zzasX;
    private boolean zzask = true;
    private final TextView zzatg;
    private final String zzatj;

    public zzxw(TextView textView, long j, String str) {
        this.zzatg = textView;
        this.zzasX = j;
        this.zzatj = str;
    }

    public void onProgressUpdated(long j, long j2) {
        if (zztB()) {
            this.zzatg.setText(DateUtils.formatElapsedTime(j / 1000));
        }
    }

    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null) {
            remoteMediaClient.addProgressListener(this, this.zzasX);
            if (remoteMediaClient.hasMediaSession()) {
                this.zzatg.setText(DateUtils.formatElapsedTime(remoteMediaClient.getApproximateStreamPosition() / 1000));
            } else {
                this.zzatg.setText(this.zzatj);
            }
        }
    }

    public void onSessionEnded() {
        this.zzatg.setText(this.zzatj);
        if (getRemoteMediaClient() != null) {
            getRemoteMediaClient().removeProgressListener(this);
        }
        super.onSessionEnded();
    }

    public void zzD(long j) {
        this.zzatg.setText(DateUtils.formatElapsedTime(j / 1000));
    }

    public void zzan(boolean z) {
        this.zzask = z;
    }

    public boolean zztB() {
        return this.zzask;
    }
}
