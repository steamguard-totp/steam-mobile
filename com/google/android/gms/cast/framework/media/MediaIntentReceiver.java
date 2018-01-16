package com.google.android.gms.cast.framework.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManager;

public class MediaIntentReceiver extends BroadcastReceiver {
    private void zza(CastSession castSession, long j) {
        if (j != 0) {
            RemoteMediaClient zzh = zzh(castSession);
            if (zzh != null && !zzh.isLiveStream() && !zzh.isPlayingAd()) {
                zzh.seek(zzh.getApproximateStreamPosition() + j);
            }
        }
    }

    private void zzg(CastSession castSession) {
        RemoteMediaClient zzh = zzh(castSession);
        if (zzh != null) {
            zzh.togglePlayback();
        }
    }

    private RemoteMediaClient zzh(CastSession castSession) {
        return (castSession == null || !castSession.isConnected()) ? null : castSession.getRemoteMediaClient();
    }

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action != null) {
            SessionManager sessionManager = CastContext.getSharedInstance(context).getSessionManager();
            boolean z = true;
            switch (action.hashCode()) {
                case -1699820260:
                    if (action.equals("com.google.android.gms.cast.framework.action.REWIND")) {
                        z = true;
                        break;
                    }
                    break;
                case -945151566:
                    if (action.equals("com.google.android.gms.cast.framework.action.SKIP_NEXT")) {
                        z = true;
                        break;
                    }
                    break;
                case -945080078:
                    if (action.equals("com.google.android.gms.cast.framework.action.SKIP_PREV")) {
                        z = true;
                        break;
                    }
                    break;
                case -668151673:
                    if (action.equals("com.google.android.gms.cast.framework.action.STOP_CASTING")) {
                        z = true;
                        break;
                    }
                    break;
                case -124479363:
                    if (action.equals("com.google.android.gms.cast.framework.action.DISCONNECT")) {
                        z = true;
                        break;
                    }
                    break;
                case 235550565:
                    if (action.equals("com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK")) {
                        z = false;
                        break;
                    }
                    break;
                case 1362116196:
                    if (action.equals("com.google.android.gms.cast.framework.action.FORWARD")) {
                        z = true;
                        break;
                    }
                    break;
                case 1997055314:
                    if (action.equals("android.intent.action.MEDIA_BUTTON")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    onReceiveActionTogglePlayback(sessionManager.getCurrentSession());
                    return;
                case true:
                    onReceiveActionSkipNext(sessionManager.getCurrentSession());
                    return;
                case true:
                    onReceiveActionSkipPrev(sessionManager.getCurrentSession());
                    return;
                case true:
                    onReceiveActionForward(sessionManager.getCurrentSession(), intent.getLongExtra("googlecast-extra_skip_step_ms", 0));
                    return;
                case true:
                    onReceiveActionRewind(sessionManager.getCurrentSession(), intent.getLongExtra("googlecast-extra_skip_step_ms", 0));
                    return;
                case true:
                    sessionManager.endCurrentSession(true);
                    return;
                case true:
                    sessionManager.endCurrentSession(false);
                    return;
                case true:
                    onReceiveActionMediaButton(sessionManager.getCurrentSession(), intent);
                    return;
                default:
                    return;
            }
        }
    }

    protected void onReceiveActionForward(Session session, long j) {
        if (session instanceof CastSession) {
            zza((CastSession) session, j);
        }
    }

    protected void onReceiveActionMediaButton(Session session, Intent intent) {
        if ((session instanceof CastSession) && intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            KeyEvent keyEvent = (KeyEvent) intent.getExtras().get("android.intent.extra.KEY_EVENT");
            if (keyEvent != null && keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 85) {
                zzg((CastSession) session);
            }
        }
    }

    protected void onReceiveActionRewind(Session session, long j) {
        if (session instanceof CastSession) {
            zza((CastSession) session, -j);
        }
    }

    protected void onReceiveActionSkipNext(Session session) {
        if (session instanceof CastSession) {
            RemoteMediaClient zzh = zzh((CastSession) session);
            if (zzh != null && !zzh.isPlayingAd()) {
                zzh.queueNext(null);
            }
        }
    }

    protected void onReceiveActionSkipPrev(Session session) {
        if (session instanceof CastSession) {
            RemoteMediaClient zzh = zzh((CastSession) session);
            if (zzh != null && !zzh.isPlayingAd()) {
                zzh.queuePrev(null);
            }
        }
    }

    protected void onReceiveActionTogglePlayback(Session session) {
        if (session instanceof CastSession) {
            zzg((CastSession) session);
        }
    }
}
