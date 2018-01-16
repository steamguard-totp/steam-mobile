package com.google.android.gms.cast.framework.media.uicontroller;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.google.android.gms.R;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzxg;
import com.google.android.gms.internal.zzxi;
import com.google.android.gms.internal.zzxl;
import com.google.android.gms.internal.zzxo;
import com.google.android.gms.internal.zzxp;
import com.google.android.gms.internal.zzxr;
import com.google.android.gms.internal.zzxs;
import com.google.android.gms.internal.zzxt;
import com.google.android.gms.internal.zzxu;
import com.google.android.gms.internal.zzxv;
import com.google.android.gms.internal.zzxw;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class UIMediaController implements SessionManagerListener<CastSession>, Listener {
    private final Activity mActivity;
    private final SessionManager zzaoU;
    private RemoteMediaClient zzapk;
    private final Map<View, List<UIController>> zzasp = new HashMap();
    private final Set<zzxw> zzasq = new HashSet();
    private Listener zzasr;

    public UIMediaController(Activity activity) {
        this.mActivity = activity;
        this.zzaoU = CastContext.getSharedInstance(activity).getSessionManager();
        this.zzaoU.addSessionManagerListener(this, CastSession.class);
        zza(this.zzaoU.getCurrentCastSession());
    }

    private void zza(View view, UIController uIController) {
        List list = (List) this.zzasp.get(view);
        if (list == null) {
            list = new ArrayList();
            this.zzasp.put(view, list);
        }
        list.add(uIController);
        if (isActive()) {
            uIController.onSessionConnected(this.zzaoU.getCurrentCastSession());
            zztw();
        }
    }

    private void zza(Session session) {
        if (!isActive() && (session instanceof CastSession) && session.isConnected()) {
            CastSession castSession = (CastSession) session;
            this.zzapk = castSession.getRemoteMediaClient();
            if (this.zzapk != null) {
                this.zzapk.addListener(this);
                for (List<UIController> it : this.zzasp.values()) {
                    for (UIController onSessionConnected : it) {
                        onSessionConnected.onSessionConnected(castSession);
                    }
                }
                zztw();
            }
        }
    }

    private void zztv() {
        if (isActive()) {
            for (List<UIController> it : this.zzasp.values()) {
                for (UIController onSessionEnded : it) {
                    onSessionEnded.onSessionEnded();
                }
            }
            this.zzapk.removeListener(this);
            this.zzapk = null;
        }
    }

    private void zztw() {
        for (List<UIController> it : this.zzasp.values()) {
            for (UIController onMediaStatusUpdated : it) {
                onMediaStatusUpdated.onMediaStatusUpdated();
            }
        }
    }

    public void bindImageViewToImageOfCurrentItem(ImageView imageView, ImageHints imageHints, View view) {
        zzac.zzdn("Must be called from the main thread.");
        zza(imageView, new zzxi(imageView, this.mActivity, imageHints, 0, view));
    }

    public void bindImageViewToMuteToggle(ImageView imageView) {
        zzac.zzdn("Must be called from the main thread.");
        zza(imageView, new zzxo(imageView, this.mActivity));
    }

    public void bindImageViewToPlayPauseToggle(ImageView imageView, Drawable drawable, Drawable drawable2, Drawable drawable3, View view, boolean z) {
        zzac.zzdn("Must be called from the main thread.");
        zza(imageView, new zzxp(imageView, this.mActivity, drawable, drawable2, drawable3, view, z));
    }

    public void bindSeekBar(SeekBar seekBar) {
        bindSeekBar(seekBar, 1000);
    }

    public void bindSeekBar(SeekBar seekBar, long j) {
        zzac.zzdn("Must be called from the main thread.");
        zza(seekBar, new zzxr(seekBar, j, new OnSeekBarChangeListener(this) {
            final /* synthetic */ UIMediaController zzass;

            {
                this.zzass = r1;
            }

            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (z) {
                    for (zzxw zzD : this.zzass.zzasq) {
                        zzD.zzD((long) i);
                    }
                }
            }

            public void onStartTrackingTouch(SeekBar seekBar) {
                for (zzxw zzan : this.zzass.zzasq) {
                    zzan.zzan(false);
                }
            }

            public void onStopTrackingTouch(SeekBar seekBar) {
                for (zzxw zzan : this.zzass.zzasq) {
                    zzan.zzan(true);
                }
            }
        }));
    }

    public void bindTextViewToStreamDuration(TextView textView, View view) {
        zzac.zzdn("Must be called from the main thread.");
        zza(textView, new zzxv(textView, this.mActivity.getString(R.string.cast_invalid_stream_duration_text), view));
    }

    public void bindTextViewToStreamPosition(TextView textView, boolean z) {
        bindTextViewToStreamPosition(textView, z, 1000);
    }

    public void bindTextViewToStreamPosition(TextView textView, boolean z, long j) {
        zzac.zzdn("Must be called from the main thread.");
        UIController com_google_android_gms_internal_zzxw = new zzxw(textView, j, this.mActivity.getString(R.string.cast_invalid_stream_position_text));
        if (z) {
            this.zzasq.add(com_google_android_gms_internal_zzxw);
        }
        zza(textView, com_google_android_gms_internal_zzxw);
    }

    public void bindViewToClosedCaption(View view) {
        zzac.zzdn("Must be called from the main thread.");
        zza(view, new zzxg(view, this.mActivity));
    }

    public void bindViewToForward(View view, long j) {
        zzac.zzdn("Must be called from the main thread.");
        zza(view, new zzxs(view, j));
    }

    public void bindViewToLoadingIndicator(View view) {
        zzac.zzdn("Must be called from the main thread.");
        zza(view, new zzxl(view));
    }

    public void bindViewToRewind(View view, long j) {
        zzac.zzdn("Must be called from the main thread.");
        bindViewToForward(view, -j);
    }

    public void bindViewToSkipNext(View view, int i) {
        zzac.zzdn("Must be called from the main thread.");
        zza(view, new zzxt(view, i));
    }

    public void bindViewToSkipPrev(View view, int i) {
        zzac.zzdn("Must be called from the main thread.");
        zza(view, new zzxu(view, i));
    }

    public void bindViewToUIController(View view, UIController uIController) {
        zzac.zzdn("Must be called from the main thread.");
        zza(view, uIController);
    }

    public void dispose() {
        zzac.zzdn("Must be called from the main thread.");
        zztv();
        this.zzasp.clear();
        this.zzaoU.removeSessionManagerListener(this, CastSession.class);
        this.zzasr = null;
    }

    public boolean isActive() {
        zzac.zzdn("Must be called from the main thread.");
        return this.zzapk != null;
    }

    public void onAdBreakStatusUpdated() {
        zztw();
        if (this.zzasr != null) {
            this.zzasr.onAdBreakStatusUpdated();
        }
    }

    public void onMetadataUpdated() {
        zztw();
        if (this.zzasr != null) {
            this.zzasr.onMetadataUpdated();
        }
    }

    public void onPreloadStatusUpdated() {
        zztw();
        if (this.zzasr != null) {
            this.zzasr.onPreloadStatusUpdated();
        }
    }

    public void onQueueStatusUpdated() {
        zztw();
        if (this.zzasr != null) {
            this.zzasr.onQueueStatusUpdated();
        }
    }

    public void onSendingRemoteMediaRequest() {
        for (List<UIController> it : this.zzasp.values()) {
            for (UIController onSendingRemoteMediaRequest : it) {
                onSendingRemoteMediaRequest.onSendingRemoteMediaRequest();
            }
        }
        if (this.zzasr != null) {
            this.zzasr.onSendingRemoteMediaRequest();
        }
    }

    public void onSessionEnded(CastSession castSession, int i) {
        zztv();
    }

    public void onSessionResumeFailed(CastSession castSession, int i) {
        zztv();
    }

    public void onSessionResumed(CastSession castSession, boolean z) {
        zza((Session) castSession);
    }

    public void onSessionStartFailed(CastSession castSession, int i) {
        zztv();
    }

    public void onSessionStarted(CastSession castSession, String str) {
        zza((Session) castSession);
    }

    public void onStatusUpdated() {
        zztw();
        if (this.zzasr != null) {
            this.zzasr.onStatusUpdated();
        }
    }

    public void setPostRemoteMediaClientListener(Listener listener) {
        zzac.zzdn("Must be called from the main thread.");
        this.zzasr = listener;
    }
}
