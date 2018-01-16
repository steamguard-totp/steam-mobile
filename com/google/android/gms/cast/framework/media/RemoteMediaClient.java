package com.google.android.gms.cast.framework.media;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.cast.AdBreakInfo;
import com.google.android.gms.cast.Cast.CastApi;
import com.google.android.gms.cast.Cast.MessageReceivedCallback;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzyi;
import com.google.android.gms.internal.zzyl;
import com.google.android.gms.internal.zzyv;
import com.google.android.gms.internal.zzyw;
import com.google.android.gms.internal.zzyx;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

public class RemoteMediaClient implements MessageReceivedCallback {
    public static final String NAMESPACE = zzyv.NAMESPACE;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final List<Listener> mListeners = new CopyOnWriteArrayList();
    private final zzyv zzanU;
    private final CastApi zzaph;
    private final Map<ProgressListener, zzd> zzarA = new ConcurrentHashMap();
    private final Map<Long, zzd> zzarB = new ConcurrentHashMap();
    private ParseAdsInfoCallback zzarC;
    private final zza zzary = new zza(this);
    private GoogleApiClient zzarz;
    private final Object zzrN = new Object();

    static abstract class zzb extends zzyi<MediaChannelResult> {
        zzyx zzaoC = new zzyx(this) {
            final /* synthetic */ zzb zzarG;

            {
                this.zzarG = r1;
            }

            public void zzC(long j) {
                this.zzarG.zzb((MediaChannelResult) this.zzarG.zzc(new Status(2103)));
            }

            public void zza(long j, int i, Object obj) {
                this.zzarG.zzb(new zzc(new Status(i), obj instanceof JSONObject ? (JSONObject) obj : null));
            }
        };

        zzb(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        protected void zza(zzyl com_google_android_gms_internal_zzyl) {
        }

        public /* synthetic */ Result zzc(Status status) {
            return zzr(status);
        }

        public MediaChannelResult zzr(final Status status) {
            return new MediaChannelResult(this) {
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    public interface Listener {
        void onAdBreakStatusUpdated();

        void onMetadataUpdated();

        void onPreloadStatusUpdated();

        void onQueueStatusUpdated();

        void onSendingRemoteMediaRequest();

        void onStatusUpdated();
    }

    public interface MediaChannelResult extends Result {
    }

    public interface ParseAdsInfoCallback {
        List<AdBreakInfo> parseAdBreaksFromMediaStatus(MediaStatus mediaStatus);

        boolean parseIsPlayingAdFromMediaStatus(MediaStatus mediaStatus);
    }

    public interface ProgressListener {
        void onProgressUpdated(long j, long j2);
    }

    private class zza implements zzyw {
        private GoogleApiClient zzaoy;
        private long zzaoz = 0;
        final /* synthetic */ RemoteMediaClient zzarD;

        private final class zza implements ResultCallback<Status> {
            private final long zzaoA;
            final /* synthetic */ zza zzarF;

            zza(zza com_google_android_gms_cast_framework_media_RemoteMediaClient_zza, long j) {
                this.zzarF = com_google_android_gms_cast_framework_media_RemoteMediaClient_zza;
                this.zzaoA = j;
            }

            public /* synthetic */ void onResult(Result result) {
                zzp((Status) result);
            }

            public void zzp(Status status) {
                if (!status.isSuccess()) {
                    this.zzarF.zzarD.zzanU.zzb(this.zzaoA, status.getStatusCode());
                }
            }
        }

        public zza(RemoteMediaClient remoteMediaClient) {
            this.zzarD = remoteMediaClient;
        }

        public void zza(String str, String str2, long j, String str3) throws IOException {
            if (this.zzaoy == null) {
                throw new IOException("No GoogleApiClient available");
            }
            for (Listener onSendingRemoteMediaRequest : this.zzarD.mListeners) {
                onSendingRemoteMediaRequest.onSendingRemoteMediaRequest();
            }
            this.zzarD.zzaph.sendMessage(this.zzaoy, str, str2).setResultCallback(new zza(this, j));
        }

        public void zzc(GoogleApiClient googleApiClient) {
            this.zzaoy = googleApiClient;
        }

        public long zzsc() {
            long j = this.zzaoz + 1;
            this.zzaoz = j;
            return j;
        }
    }

    private static final class zzc implements MediaChannelResult {
        private final Status zzahq;
        private final JSONObject zzalI;

        zzc(Status status, JSONObject jSONObject) {
            this.zzahq = status;
            this.zzalI = jSONObject;
        }

        public Status getStatus() {
            return this.zzahq;
        }
    }

    private class zzd {
        final /* synthetic */ RemoteMediaClient zzarD;
        private final Set<ProgressListener> zzarH = new HashSet();
        private final long zzarI;
        private final Runnable zzarJ;
        private boolean zzarK;

        public zzd(final RemoteMediaClient remoteMediaClient, long j) {
            this.zzarD = remoteMediaClient;
            this.zzarI = j;
            this.zzarJ = new TimerTask(this) {
                final /* synthetic */ zzd zzarM;

                public void run() {
                    this.zzarM.zzarD.zza(this.zzarM.zzarH);
                    this.zzarM.zzarD.mHandler.postDelayed(this, this.zzarM.zzarI);
                }
            };
        }

        public boolean isStarted() {
            return this.zzarK;
        }

        public void start() {
            this.zzarD.mHandler.removeCallbacks(this.zzarJ);
            this.zzarK = true;
            this.zzarD.mHandler.postDelayed(this.zzarJ, this.zzarI);
        }

        public void stop() {
            this.zzarD.mHandler.removeCallbacks(this.zzarJ);
            this.zzarK = false;
        }

        public void zza(ProgressListener progressListener) {
            this.zzarH.add(progressListener);
        }

        public void zzb(ProgressListener progressListener) {
            this.zzarH.remove(progressListener);
        }

        public long zztk() {
            return this.zzarI;
        }

        public boolean zztl() {
            return !this.zzarH.isEmpty();
        }
    }

    public RemoteMediaClient(zzyv com_google_android_gms_internal_zzyv, CastApi castApi) {
        this.zzaph = castApi;
        this.zzanU = (zzyv) zzac.zzw(com_google_android_gms_internal_zzyv);
        this.zzanU.zza(new com.google.android.gms.internal.zzyv.zza(this) {
            final /* synthetic */ RemoteMediaClient zzarD;

            {
                this.zzarD = r1;
            }

            private void zztj() {
                if (this.zzarD.zzarC != null) {
                    MediaStatus mediaStatus = this.zzarD.getMediaStatus();
                    if (mediaStatus != null) {
                        mediaStatus.zzak(this.zzarD.zzarC.parseIsPlayingAdFromMediaStatus(mediaStatus));
                        List parseAdBreaksFromMediaStatus = this.zzarD.zzarC.parseAdBreaksFromMediaStatus(mediaStatus);
                        MediaInfo mediaInfo = this.zzarD.getMediaInfo();
                        if (mediaInfo != null) {
                            mediaInfo.zzy(parseAdBreaksFromMediaStatus);
                        }
                    }
                }
            }

            public void onAdBreakStatusUpdated() {
                for (Listener onAdBreakStatusUpdated : this.zzarD.mListeners) {
                    onAdBreakStatusUpdated.onAdBreakStatusUpdated();
                }
            }

            public void onMetadataUpdated() {
                zztj();
                for (Listener onMetadataUpdated : this.zzarD.mListeners) {
                    onMetadataUpdated.onMetadataUpdated();
                }
            }

            public void onPreloadStatusUpdated() {
                for (Listener onPreloadStatusUpdated : this.zzarD.mListeners) {
                    onPreloadStatusUpdated.onPreloadStatusUpdated();
                }
            }

            public void onQueueStatusUpdated() {
                for (Listener onQueueStatusUpdated : this.zzarD.mListeners) {
                    onQueueStatusUpdated.onQueueStatusUpdated();
                }
            }

            public void onStatusUpdated() {
                zztj();
                this.zzarD.zzti();
                for (Listener onStatusUpdated : this.zzarD.mListeners) {
                    onStatusUpdated.onStatusUpdated();
                }
            }
        });
        this.zzanU.zza(this.zzary);
    }

    private zzb zza(zzb com_google_android_gms_cast_framework_media_RemoteMediaClient_zzb) {
        try {
            this.zzarz.zzb((com.google.android.gms.internal.zzzv.zza) com_google_android_gms_cast_framework_media_RemoteMediaClient_zzb);
        } catch (IllegalStateException e) {
            com_google_android_gms_cast_framework_media_RemoteMediaClient_zzb.zzb((MediaChannelResult) com_google_android_gms_cast_framework_media_RemoteMediaClient_zzb.zzc(new Status(2100)));
        } catch (Throwable th) {
        }
        return com_google_android_gms_cast_framework_media_RemoteMediaClient_zzb;
    }

    private void zza(Set<ProgressListener> set) {
        if (!isBuffering() && !isPaused()) {
            Set<ProgressListener> hashSet = new HashSet(set);
            if (isPlaying()) {
                for (ProgressListener onProgressUpdated : hashSet) {
                    onProgressUpdated.onProgressUpdated(getApproximateStreamPosition(), getStreamDuration());
                }
            } else if (isLoadingNextItem()) {
                MediaQueueItem loadingItem = getLoadingItem();
                if (loadingItem != null && loadingItem.getMedia() != null) {
                    for (ProgressListener onProgressUpdated2 : hashSet) {
                        onProgressUpdated2.onProgressUpdated(0, loadingItem.getMedia().getStreamDuration());
                    }
                }
            } else {
                for (ProgressListener onProgressUpdated22 : hashSet) {
                    onProgressUpdated22.onProgressUpdated(0, 0);
                }
            }
        }
    }

    private void zzth() throws IllegalStateException {
        if (this.zzarz == null) {
            throw new IllegalStateException("No connection");
        }
    }

    private void zzti() {
        for (zzd com_google_android_gms_cast_framework_media_RemoteMediaClient_zzd : this.zzarB.values()) {
            if (hasMediaSession() && !com_google_android_gms_cast_framework_media_RemoteMediaClient_zzd.isStarted()) {
                com_google_android_gms_cast_framework_media_RemoteMediaClient_zzd.start();
            } else if (!hasMediaSession() && com_google_android_gms_cast_framework_media_RemoteMediaClient_zzd.isStarted()) {
                com_google_android_gms_cast_framework_media_RemoteMediaClient_zzd.stop();
            }
            if (com_google_android_gms_cast_framework_media_RemoteMediaClient_zzd.isStarted() && (isBuffering() || isPaused() || isLoadingNextItem())) {
                zza(com_google_android_gms_cast_framework_media_RemoteMediaClient_zzd.zzarH);
            }
        }
    }

    public void addListener(Listener listener) {
        zzac.zzdn("Must be called from the main thread.");
        if (listener != null) {
            this.mListeners.add(listener);
        }
    }

    public boolean addProgressListener(ProgressListener progressListener, long j) {
        zzac.zzdn("Must be called from the main thread.");
        if (progressListener == null || this.zzarA.containsKey(progressListener)) {
            return false;
        }
        zzd com_google_android_gms_cast_framework_media_RemoteMediaClient_zzd = (zzd) this.zzarB.get(Long.valueOf(j));
        if (com_google_android_gms_cast_framework_media_RemoteMediaClient_zzd == null) {
            com_google_android_gms_cast_framework_media_RemoteMediaClient_zzd = new zzd(this, j);
            this.zzarB.put(Long.valueOf(j), com_google_android_gms_cast_framework_media_RemoteMediaClient_zzd);
        }
        com_google_android_gms_cast_framework_media_RemoteMediaClient_zzd.zza(progressListener);
        this.zzarA.put(progressListener, com_google_android_gms_cast_framework_media_RemoteMediaClient_zzd);
        if (hasMediaSession()) {
            com_google_android_gms_cast_framework_media_RemoteMediaClient_zzd.start();
        }
        return true;
    }

    public long getApproximateStreamPosition() {
        long approximateStreamPosition;
        synchronized (this.zzrN) {
            zzac.zzdn("Must be called from the main thread.");
            approximateStreamPosition = this.zzanU.getApproximateStreamPosition();
        }
        return approximateStreamPosition;
    }

    public int getIdleReason() {
        int idleReason;
        synchronized (this.zzrN) {
            zzac.zzdn("Must be called from the main thread.");
            MediaStatus mediaStatus = getMediaStatus();
            idleReason = mediaStatus != null ? mediaStatus.getIdleReason() : 0;
        }
        return idleReason;
    }

    public MediaQueueItem getLoadingItem() {
        zzac.zzdn("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus == null ? null : mediaStatus.getQueueItemById(mediaStatus.getLoadingItemId());
    }

    public MediaInfo getMediaInfo() {
        MediaInfo mediaInfo;
        synchronized (this.zzrN) {
            zzac.zzdn("Must be called from the main thread.");
            mediaInfo = this.zzanU.getMediaInfo();
        }
        return mediaInfo;
    }

    public MediaStatus getMediaStatus() {
        MediaStatus mediaStatus;
        synchronized (this.zzrN) {
            zzac.zzdn("Must be called from the main thread.");
            mediaStatus = this.zzanU.getMediaStatus();
        }
        return mediaStatus;
    }

    public String getNamespace() {
        zzac.zzdn("Must be called from the main thread.");
        return this.zzanU.getNamespace();
    }

    public int getPlayerState() {
        int playerState;
        synchronized (this.zzrN) {
            zzac.zzdn("Must be called from the main thread.");
            MediaStatus mediaStatus = getMediaStatus();
            playerState = mediaStatus != null ? mediaStatus.getPlayerState() : 1;
        }
        return playerState;
    }

    public long getStreamDuration() {
        long streamDuration;
        synchronized (this.zzrN) {
            zzac.zzdn("Must be called from the main thread.");
            streamDuration = this.zzanU.getStreamDuration();
        }
        return streamDuration;
    }

    public boolean hasMediaSession() {
        zzac.zzdn("Must be called from the main thread.");
        return isBuffering() || isPlaying() || isPaused() || isLoadingNextItem();
    }

    public boolean isBuffering() {
        zzac.zzdn("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && mediaStatus.getPlayerState() == 4;
    }

    public boolean isLiveStream() {
        zzac.zzdn("Must be called from the main thread.");
        MediaInfo mediaInfo = getMediaInfo();
        return mediaInfo != null && mediaInfo.getStreamType() == 2;
    }

    public boolean isLoadingNextItem() {
        zzac.zzdn("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return (mediaStatus == null || mediaStatus.getLoadingItemId() == 0) ? false : true;
    }

    public boolean isPaused() {
        zzac.zzdn("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && (mediaStatus.getPlayerState() == 3 || (isLiveStream() && getIdleReason() == 2));
    }

    public boolean isPlaying() {
        zzac.zzdn("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && mediaStatus.getPlayerState() == 2;
    }

    public boolean isPlayingAd() {
        zzac.zzdn("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && mediaStatus.isPlayingAd();
    }

    public void onMessageReceived(CastDevice castDevice, String str, String str2) {
        this.zzanU.zzcO(str2);
    }

    public PendingResult<MediaChannelResult> pause() {
        return pause(null);
    }

    public PendingResult<MediaChannelResult> pause(final JSONObject jSONObject) {
        zzac.zzdn("Must be called from the main thread.");
        zzth();
        return zza(new zzb(this, this.zzarz) {
            final /* synthetic */ RemoteMediaClient zzarD;

            protected void zza(zzyl com_google_android_gms_internal_zzyl) {
                synchronized (this.zzarD.zzrN) {
                    try {
                        this.zzarD.zzanU.zza(this.zzaoC, jSONObject);
                    } catch (IOException e) {
                        zzb((MediaChannelResult) zzc(new Status(2100)));
                    } catch (com.google.android.gms.internal.zzyv.zzb e2) {
                        zzb((MediaChannelResult) zzc(new Status(2100)));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> play() {
        return play(null);
    }

    public PendingResult<MediaChannelResult> play(final JSONObject jSONObject) {
        zzac.zzdn("Must be called from the main thread.");
        zzth();
        return zza(new zzb(this, this.zzarz) {
            final /* synthetic */ RemoteMediaClient zzarD;

            protected void zza(zzyl com_google_android_gms_internal_zzyl) {
                synchronized (this.zzarD.zzrN) {
                    try {
                        this.zzarD.zzanU.zzc(this.zzaoC, jSONObject);
                    } catch (IOException e) {
                        zzb((MediaChannelResult) zzc(new Status(2100)));
                    } catch (com.google.android.gms.internal.zzyv.zzb e2) {
                        zzb((MediaChannelResult) zzc(new Status(2100)));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueNext(final JSONObject jSONObject) {
        zzac.zzdn("Must be called from the main thread.");
        zzth();
        return zza(new zzb(this, this.zzarz) {
            final /* synthetic */ RemoteMediaClient zzarD;

            protected void zza(zzyl com_google_android_gms_internal_zzyl) {
                synchronized (this.zzarD.zzrN) {
                    try {
                        this.zzarD.zzanU.zza(this.zzaoC, 0, -1, null, 1, null, jSONObject);
                    } catch (IOException e) {
                        zzb((MediaChannelResult) zzc(new Status(2100)));
                    } catch (com.google.android.gms.internal.zzyv.zzb e2) {
                        zzb((MediaChannelResult) zzc(new Status(2100)));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queuePrev(final JSONObject jSONObject) {
        zzac.zzdn("Must be called from the main thread.");
        zzth();
        return zza(new zzb(this, this.zzarz) {
            final /* synthetic */ RemoteMediaClient zzarD;

            protected void zza(zzyl com_google_android_gms_internal_zzyl) {
                synchronized (this.zzarD.zzrN) {
                    try {
                        this.zzarD.zzanU.zza(this.zzaoC, 0, -1, null, -1, null, jSONObject);
                    } catch (IOException e) {
                        zzb((MediaChannelResult) zzc(new Status(2100)));
                    } catch (com.google.android.gms.internal.zzyv.zzb e2) {
                        zzb((MediaChannelResult) zzc(new Status(2100)));
                    }
                }
            }
        });
    }

    public void removeListener(Listener listener) {
        zzac.zzdn("Must be called from the main thread.");
        if (listener != null) {
            this.mListeners.remove(listener);
        }
    }

    public void removeProgressListener(ProgressListener progressListener) {
        zzac.zzdn("Must be called from the main thread.");
        zzd com_google_android_gms_cast_framework_media_RemoteMediaClient_zzd = (zzd) this.zzarA.remove(progressListener);
        if (com_google_android_gms_cast_framework_media_RemoteMediaClient_zzd != null) {
            com_google_android_gms_cast_framework_media_RemoteMediaClient_zzd.zzb(progressListener);
            if (!com_google_android_gms_cast_framework_media_RemoteMediaClient_zzd.zztl()) {
                this.zzarB.remove(Long.valueOf(com_google_android_gms_cast_framework_media_RemoteMediaClient_zzd.zztk()));
                com_google_android_gms_cast_framework_media_RemoteMediaClient_zzd.stop();
            }
        }
    }

    public PendingResult<MediaChannelResult> requestStatus() {
        zzac.zzdn("Must be called from the main thread.");
        zzth();
        return zza(new zzb(this, this.zzarz) {
            final /* synthetic */ RemoteMediaClient zzarD;

            protected void zza(zzyl com_google_android_gms_internal_zzyl) {
                synchronized (this.zzarD.zzrN) {
                    try {
                        this.zzarD.zzanU.zza(this.zzaoC);
                    } catch (IOException e) {
                        zzb((MediaChannelResult) zzc(new Status(2100)));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> seek(long j) {
        return seek(j, 0, null);
    }

    public PendingResult<MediaChannelResult> seek(long j, int i, JSONObject jSONObject) {
        zzac.zzdn("Must be called from the main thread.");
        zzth();
        final long j2 = j;
        final int i2 = i;
        final JSONObject jSONObject2 = jSONObject;
        return zza(new zzb(this, this.zzarz) {
            final /* synthetic */ RemoteMediaClient zzarD;

            protected void zza(zzyl com_google_android_gms_internal_zzyl) {
                synchronized (this.zzarD.zzrN) {
                    try {
                        this.zzarD.zzanU.zza(this.zzaoC, j2, i2, jSONObject2);
                    } catch (IOException e) {
                        zzb((MediaChannelResult) zzc(new Status(2100)));
                    } catch (com.google.android.gms.internal.zzyv.zzb e2) {
                        zzb((MediaChannelResult) zzc(new Status(2100)));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> setActiveMediaTracks(final long[] jArr) {
        zzac.zzdn("Must be called from the main thread.");
        zzth();
        if (jArr != null) {
            return zza(new zzb(this, this.zzarz) {
                final /* synthetic */ RemoteMediaClient zzarD;

                protected void zza(zzyl com_google_android_gms_internal_zzyl) {
                    synchronized (this.zzarD.zzrN) {
                        try {
                            this.zzarD.zzanU.zza(this.zzaoC, jArr);
                        } catch (IOException e) {
                            zzb((MediaChannelResult) zzc(new Status(2100)));
                        } catch (com.google.android.gms.internal.zzyv.zzb e2) {
                            zzb((MediaChannelResult) zzc(new Status(2100)));
                        }
                    }
                }
            });
        }
        throw new IllegalArgumentException("trackIds cannot be null");
    }

    public void togglePlayback() {
        zzac.zzdn("Must be called from the main thread.");
        int playerState = getPlayerState();
        if (playerState == 4 || playerState == 2) {
            pause();
        } else {
            play();
        }
    }

    public void zzd(GoogleApiClient googleApiClient) throws IOException {
        if (this.zzarz != googleApiClient) {
            if (this.zzarz != null) {
                this.zzanU.zzua();
                this.zzaph.removeMessageReceivedCallbacks(this.zzarz, getNamespace());
                this.zzary.zzc(null);
                this.mHandler.removeCallbacksAndMessages(null);
            }
            this.zzarz = googleApiClient;
            if (this.zzarz != null) {
                this.zzaph.setMessageReceivedCallbacks(this.zzarz, getNamespace(), this);
                this.zzary.zzc(this.zzarz);
            }
        }
    }
}
