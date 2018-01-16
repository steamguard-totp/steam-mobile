package com.google.android.gms.cast.framework;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast.ApplicationConnectionResult;
import com.google.android.gms.cast.Cast.CastApi;
import com.google.android.gms.cast.Cast.Listener;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzwq;
import com.google.android.gms.internal.zzws;
import com.google.android.gms.internal.zzxe;
import com.google.android.gms.internal.zzyu;
import com.google.android.gms.internal.zzyv;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

public class CastSession extends Session {
    private static final zzyu zzaoQ = new zzyu("CastSession");
    private final Context zzOZ;
    private GoogleApiClient zzamy;
    private final CastOptions zzaoW;
    private final Set<Listener> zzapf = new HashSet();
    private final zzh zzapg;
    private final CastApi zzaph;
    private final zzws zzapi;
    private final zzxe zzapj;
    private RemoteMediaClient zzapk;
    private CastDevice zzapl;
    private ApplicationConnectionResult zzapm;

    private class zza implements ResultCallback<ApplicationConnectionResult> {
        String zzapn;
        final /* synthetic */ CastSession zzapo;

        zza(CastSession castSession, String str) {
            this.zzapo = castSession;
            this.zzapn = str;
        }

        public /* synthetic */ void onResult(Result result) {
            zza((ApplicationConnectionResult) result);
        }

        public void zza(ApplicationConnectionResult applicationConnectionResult) {
            this.zzapo.zzapm = applicationConnectionResult;
            try {
                if (applicationConnectionResult.getStatus().isSuccess()) {
                    CastSession.zzaoQ.zzb("%s() -> success result", this.zzapn);
                    this.zzapo.zzapk = new RemoteMediaClient(new zzyv(null), this.zzapo.zzaph);
                    try {
                        this.zzapo.zzapk.zzd(this.zzapo.zzamy);
                        this.zzapo.zzapk.requestStatus();
                        this.zzapo.zzapj.zza(this.zzapo.zzapk, this.zzapo.getCastDevice());
                    } catch (Throwable e) {
                        CastSession.zzaoQ.zza(e, "Exception when setting GoogleApiClient.", new Object[0]);
                        this.zzapo.zzapk = null;
                    }
                    this.zzapo.zzapg.zza(applicationConnectionResult.getApplicationMetadata(), applicationConnectionResult.getApplicationStatus(), applicationConnectionResult.getSessionId(), applicationConnectionResult.getWasLaunched());
                    return;
                }
                CastSession.zzaoQ.zzb("%s() -> failure result", this.zzapn);
                this.zzapo.zzapg.zzbW(applicationConnectionResult.getStatus().getStatusCode());
            } catch (Throwable e2) {
                CastSession.zzaoQ.zzb(e2, "Unable to call %s on %s.", "methods", zzh.class.getSimpleName());
            }
        }
    }

    private class zzb extends com.google.android.gms.cast.framework.zzf.zza {
        final /* synthetic */ CastSession zzapo;

        private zzb(CastSession castSession) {
            this.zzapo = castSession;
        }

        public void zza(String str, LaunchOptions launchOptions) {
            this.zzapo.zzaph.launchApplication(this.zzapo.zzamy, str, launchOptions).setResultCallback(new zza(this.zzapo, "launchApplication"));
        }

        public void zzbV(int i) {
            this.zzapo.zzbV(i);
        }

        public void zzcJ(String str) {
            this.zzapo.zzaph.stopApplication(this.zzapo.zzamy, str);
        }

        public int zzsd() {
            return 10084208;
        }

        public void zzy(String str, String str2) {
            this.zzapo.zzaph.joinApplication(this.zzapo.zzamy, str, str2).setResultCallback(new zza(this.zzapo, "joinApplication"));
        }
    }

    private class zzc extends Listener {
        final /* synthetic */ CastSession zzapo;

        private zzc(CastSession castSession) {
            this.zzapo = castSession;
        }

        public void onActiveInputStateChanged(int i) {
            for (Listener onActiveInputStateChanged : new HashSet(this.zzapo.zzapf)) {
                onActiveInputStateChanged.onActiveInputStateChanged(i);
            }
        }

        public void onApplicationDisconnected(int i) {
            this.zzapo.zzbV(i);
            this.zzapo.notifySessionEnded(i);
            for (Listener onApplicationDisconnected : new HashSet(this.zzapo.zzapf)) {
                onApplicationDisconnected.onApplicationDisconnected(i);
            }
        }

        public void onApplicationMetadataChanged(ApplicationMetadata applicationMetadata) {
            for (Listener onApplicationMetadataChanged : new HashSet(this.zzapo.zzapf)) {
                onApplicationMetadataChanged.onApplicationMetadataChanged(applicationMetadata);
            }
        }

        public void onApplicationStatusChanged() {
            for (Listener onApplicationStatusChanged : new HashSet(this.zzapo.zzapf)) {
                onApplicationStatusChanged.onApplicationStatusChanged();
            }
        }

        public void onStandbyStateChanged(int i) {
            for (Listener onStandbyStateChanged : new HashSet(this.zzapo.zzapf)) {
                onStandbyStateChanged.onStandbyStateChanged(i);
            }
        }

        public void onVolumeChanged() {
            for (Listener onVolumeChanged : new HashSet(this.zzapo.zzapf)) {
                onVolumeChanged.onVolumeChanged();
            }
        }
    }

    private class zzd implements ConnectionCallbacks, OnConnectionFailedListener {
        final /* synthetic */ CastSession zzapo;

        private zzd(CastSession castSession) {
            this.zzapo = castSession;
        }

        public void onConnected(Bundle bundle) {
            try {
                this.zzapo.zzapg.onConnected(bundle);
            } catch (Throwable e) {
                CastSession.zzaoQ.zzb(e, "Unable to call %s on %s.", "onConnected", zzh.class.getSimpleName());
            }
        }

        public void onConnectionFailed(ConnectionResult connectionResult) {
            try {
                this.zzapo.zzapg.onConnectionFailed(connectionResult);
            } catch (Throwable e) {
                CastSession.zzaoQ.zzb(e, "Unable to call %s on %s.", "onConnectionFailed", zzh.class.getSimpleName());
            }
        }

        public void onConnectionSuspended(int i) {
            try {
                this.zzapo.zzapg.onConnectionSuspended(i);
            } catch (Throwable e) {
                CastSession.zzaoQ.zzb(e, "Unable to call %s on %s.", "onConnectionSuspended", zzh.class.getSimpleName());
            }
        }
    }

    public CastSession(Context context, String str, String str2, CastOptions castOptions, CastApi castApi, zzws com_google_android_gms_internal_zzws, zzxe com_google_android_gms_internal_zzxe) {
        super(context, str, str2);
        this.zzOZ = context.getApplicationContext();
        this.zzaoW = castOptions;
        this.zzaph = castApi;
        this.zzapi = com_google_android_gms_internal_zzws;
        this.zzapj = com_google_android_gms_internal_zzxe;
        this.zzapg = zzwq.zza(context, castOptions, zzsp(), new zzb());
    }

    private void zzbV(int i) {
        this.zzapj.zzcb(i);
        if (this.zzamy != null) {
            this.zzamy.disconnect();
            this.zzamy = null;
        }
        this.zzapl = null;
        if (this.zzapk != null) {
            try {
                this.zzapk.zzd(null);
            } catch (Throwable e) {
                zzaoQ.zza(e, "Exception when setting GoogleApiClient.", new Object[0]);
            }
            this.zzapk = null;
        }
        this.zzapm = null;
    }

    private void zzl(Bundle bundle) {
        this.zzapl = CastDevice.getFromBundle(bundle);
        if (this.zzapl != null) {
            if (this.zzamy != null) {
                this.zzamy.disconnect();
                this.zzamy = null;
            }
            zzaoQ.zzb("Acquiring a connection to Google Play Services for %s", this.zzapl);
            ConnectionCallbacks com_google_android_gms_cast_framework_CastSession_zzd = new zzd();
            this.zzamy = this.zzapi.zza(this.zzOZ, this.zzapl, this.zzaoW, new zzc(), com_google_android_gms_cast_framework_CastSession_zzd, com_google_android_gms_cast_framework_CastSession_zzd);
            this.zzamy.connect();
        } else if (isResuming()) {
            notifyFailedToResumeSession(8);
        } else {
            notifyFailedToStartSession(8);
        }
    }

    public void addCastListener(Listener listener) {
        zzac.zzdn("Must be called from the main thread.");
        if (listener != null) {
            this.zzapf.add(listener);
        }
    }

    protected void end(boolean z) {
        try {
            this.zzapg.zzb(z, 0);
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "disconnectFromDevice", zzh.class.getSimpleName());
        }
        notifySessionEnded(0);
    }

    public CastDevice getCastDevice() {
        zzac.zzdn("Must be called from the main thread.");
        return this.zzapl;
    }

    public RemoteMediaClient getRemoteMediaClient() {
        zzac.zzdn("Must be called from the main thread.");
        return this.zzapk;
    }

    public long getSessionRemainingTimeMs() {
        zzac.zzdn("Must be called from the main thread.");
        return this.zzapk == null ? 0 : this.zzapk.getStreamDuration() - this.zzapk.getApproximateStreamPosition();
    }

    public boolean isMute() throws IllegalStateException {
        zzac.zzdn("Must be called from the main thread.");
        return this.zzamy != null ? this.zzaph.isMute(this.zzamy) : false;
    }

    protected void resume(Bundle bundle) {
        zzl(bundle);
    }

    public void setMute(boolean z) throws IOException, IllegalStateException {
        zzac.zzdn("Must be called from the main thread.");
        if (this.zzamy != null) {
            this.zzaph.setMute(this.zzamy, z);
        }
    }

    protected void start(Bundle bundle) {
        zzl(bundle);
    }
}
