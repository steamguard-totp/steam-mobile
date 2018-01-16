package com.google.android.gms.internal;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.google.android.gms.R;
import com.google.android.gms.cast.Cast.Listener;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import java.io.IOException;

public class zzxo extends UIController {
    private static final zzyu zzaoQ = new zzyu("MuteToggleUIController");
    private final Context zzOZ;
    private final Listener zzamd = new Listener(this) {
        final /* synthetic */ zzxo zzasM;

        {
            this.zzasM = r1;
        }

        public void onVolumeChanged() {
            this.zzasM.zztx();
        }
    };
    private final String zzasK = this.zzOZ.getString(R.string.cast_mute);
    private final String zzasL = this.zzOZ.getString(R.string.cast_unmute);
    private final OnClickListener zzasw = new OnClickListener(this) {
        final /* synthetic */ zzxo zzasM;

        {
            this.zzasM = r1;
        }

        public void onClick(View view) {
            CastSession currentCastSession = CastContext.getSharedInstance(this.zzasM.zzOZ).getSessionManager().getCurrentCastSession();
            if (currentCastSession != null && currentCastSession.isConnected()) {
                try {
                    if (currentCastSession.isMute()) {
                        currentCastSession.setMute(false);
                        this.zzasM.zzal(true);
                        return;
                    }
                    currentCastSession.setMute(true);
                    this.zzasM.zzal(false);
                } catch (IOException e) {
                    IOException e2 = e;
                    zzxo.zzaoQ.zzc("Unable to call CastSession.setMute(boolean).", e2);
                } catch (IllegalArgumentException e3) {
                    e2 = e3;
                    zzxo.zzaoQ.zzc("Unable to call CastSession.setMute(boolean).", e2);
                }
            }
        }
    };
    private final ImageView zzasy;

    public zzxo(ImageView imageView, Context context) {
        this.zzasy = imageView;
        this.zzOZ = context.getApplicationContext();
    }

    private void zzal(boolean z) {
        this.zzasy.setSelected(z);
        this.zzasy.setContentDescription(z ? this.zzasK : this.zzasL);
    }

    private void zztx() {
        CastSession currentCastSession = CastContext.getSharedInstance(this.zzOZ).getSessionManager().getCurrentCastSession();
        if (currentCastSession == null || !currentCastSession.isConnected()) {
            this.zzasy.setEnabled(false);
            return;
        }
        this.zzasy.setEnabled(true);
        if (currentCastSession.isMute()) {
            zzal(false);
        } else {
            zzal(true);
        }
    }

    public void onMediaStatusUpdated() {
        this.zzasy.setEnabled(true);
    }

    public void onSendingRemoteMediaRequest() {
        this.zzasy.setEnabled(false);
    }

    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.zzasy.setOnClickListener(this.zzasw);
        castSession.addCastListener(this.zzamd);
        zztx();
    }

    public void onSessionEnded() {
        this.zzasy.setOnClickListener(null);
        super.onSessionEnded();
    }
}
