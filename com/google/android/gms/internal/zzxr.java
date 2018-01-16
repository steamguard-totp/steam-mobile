package com.google.android.gms.internal;

import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public class zzxr extends UIController implements ProgressListener {
    private final SeekBar zzasI;
    private final long zzasX;
    private final OnSeekBarChangeListener zzasY;
    private boolean zzask = true;

    public zzxr(SeekBar seekBar, long j, final OnSeekBarChangeListener onSeekBarChangeListener) {
        this.zzasI = seekBar;
        this.zzasX = j;
        this.zzasY = new OnSeekBarChangeListener(this) {
            final /* synthetic */ zzxr zzata;

            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (onSeekBarChangeListener != null) {
                    onSeekBarChangeListener.onProgressChanged(seekBar, i, z);
                }
            }

            public void onStartTrackingTouch(SeekBar seekBar) {
                this.zzata.zzan(false);
                if (onSeekBarChangeListener != null) {
                    onSeekBarChangeListener.onStartTrackingTouch(seekBar);
                }
            }

            public void onStopTrackingTouch(SeekBar seekBar) {
                this.zzata.zzan(true);
                if (onSeekBarChangeListener != null) {
                    onSeekBarChangeListener.onStopTrackingTouch(seekBar);
                }
                RemoteMediaClient zza = this.zzata.getRemoteMediaClient();
                if (zza != null && zza.hasMediaSession()) {
                    zza.seek((long) seekBar.getProgress());
                }
            }
        };
    }

    public void onProgressUpdated(long j, long j2) {
        if (zztB()) {
            this.zzasI.setMax((int) j2);
            this.zzasI.setProgress((int) j);
        }
    }

    public void onSendingRemoteMediaRequest() {
    }

    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.zzasI.setOnSeekBarChangeListener(this.zzasY);
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null) {
            remoteMediaClient.addProgressListener(this, this.zzasX);
            if (remoteMediaClient.hasMediaSession()) {
                this.zzasI.setMax((int) remoteMediaClient.getStreamDuration());
                this.zzasI.setProgress((int) remoteMediaClient.getApproximateStreamPosition());
                return;
            }
            this.zzasI.setMax(1);
            this.zzasI.setProgress(0);
        }
    }

    public void onSessionEnded() {
        if (getRemoteMediaClient() != null) {
            getRemoteMediaClient().removeProgressListener(this);
        }
        this.zzasI.setOnSeekBarChangeListener(null);
        this.zzasI.setMax(1);
        this.zzasI.setProgress(0);
        super.onSessionEnded();
    }

    public void zzan(boolean z) {
        this.zzask = z;
    }

    public boolean zztB() {
        return this.zzask;
    }
}
