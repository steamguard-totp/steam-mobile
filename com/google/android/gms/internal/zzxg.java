package com.google.android.gms.internal;

import android.app.Activity;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.R;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.TracksChooserDialogFragment;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import java.lang.ref.WeakReference;
import java.util.List;

public class zzxg extends UIController {
    private final View mView;
    private final WeakReference<Activity> zzast;
    private final String zzasu;
    private final String zzasv;
    private final OnClickListener zzasw = new OnClickListener(this) {
        final /* synthetic */ zzxg zzasx;

        {
            this.zzasx = r1;
        }

        public void onClick(View view) {
            Activity activity = (Activity) this.zzasx.zzast.get();
            if (activity != null) {
                RemoteMediaClient zzb = this.zzasx.getRemoteMediaClient();
                if (zzb != null && zzb.hasMediaSession() && (activity instanceof FragmentActivity)) {
                    FragmentActivity fragmentActivity = (FragmentActivity) activity;
                    FragmentTransaction beginTransaction = fragmentActivity.getSupportFragmentManager().beginTransaction();
                    Fragment findFragmentByTag = fragmentActivity.getSupportFragmentManager().findFragmentByTag("TRACKS_CHOOSER_DIALOG_TAG");
                    if (findFragmentByTag != null) {
                        beginTransaction.remove(findFragmentByTag);
                    }
                    beginTransaction.addToBackStack(null);
                    TracksChooserDialogFragment newInstance = TracksChooserDialogFragment.newInstance(zzb.getMediaInfo(), zzb.getMediaStatus().getActiveTrackIds());
                    if (newInstance != null) {
                        newInstance.show(beginTransaction, "TRACKS_CHOOSER_DIALOG_TAG");
                    }
                }
            }
        }
    };

    public zzxg(View view, Activity activity) {
        this.mView = view;
        this.zzasu = activity.getString(R.string.cast_closed_captions);
        this.zzasv = activity.getString(R.string.cast_closed_captions_unavailable);
        this.zzast = new WeakReference(activity);
    }

    private boolean zzc(MediaInfo mediaInfo) {
        if (mediaInfo == null) {
            return false;
        }
        List<MediaTrack> mediaTracks = mediaInfo.getMediaTracks();
        if (mediaTracks == null || mediaTracks.isEmpty()) {
            return false;
        }
        for (MediaTrack mediaTrack : mediaTracks) {
            if (mediaTrack.getType() != 2) {
                if (mediaTrack.getType() == 1) {
                }
            }
            return true;
        }
        return false;
    }

    private void zztx() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession() || !zzc(remoteMediaClient.getMediaInfo()) || remoteMediaClient.isPlayingAd()) {
            this.mView.setEnabled(false);
            this.mView.setContentDescription(this.zzasv);
            return;
        }
        this.mView.setEnabled(true);
        this.mView.setContentDescription(this.zzasu);
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
