package com.google.android.gms.internal;

import android.graphics.drawable.ColorDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.SeekBar;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import com.google.android.gms.common.util.zzs;

public class zzxk extends UIController {
    private final SeekBar zzasH;
    private final SeekBar zzasI;

    public zzxk(SeekBar seekBar, SeekBar seekBar2) {
        this.zzasH = seekBar;
        this.zzasI = seekBar2;
        this.zzasH.setClickable(false);
        if (zzs.zzyF()) {
            this.zzasH.setThumb(null);
        } else {
            this.zzasH.setThumb(new ColorDrawable(0));
        }
        this.zzasH.setMax(1);
        this.zzasH.setProgress(1);
        this.zzasH.setOnTouchListener(new OnTouchListener(this) {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    private void zztz() {
        int i = 4;
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            boolean isLiveStream = remoteMediaClient.isLiveStream();
            this.zzasH.setVisibility(isLiveStream ? 0 : 4);
            SeekBar seekBar = this.zzasI;
            if (!isLiveStream) {
                i = 0;
            }
            seekBar.setVisibility(i);
        }
    }

    public void onMediaStatusUpdated() {
        zztz();
    }

    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        zztz();
    }
}
