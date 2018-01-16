package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.media.AudioManager;
import android.net.Uri;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.MediaSessionCompat.Callback;
import android.support.v4.media.session.MediaSessionCompat.Token;
import android.support.v4.media.session.PlaybackStateCompat.Builder;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.google.android.gms.R;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.ReconnectionService;
import com.google.android.gms.cast.framework.media.MediaNotificationService;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.util.zzs;
import com.google.android.gms.internal.zzxa.zza;

public class zzxe implements Listener {
    private final Context zzOZ;
    private CastDevice zzamc;
    private final zzwz zzapH;
    private RemoteMediaClient zzapk;
    private final CastOptions zzase;
    private final ComponentName zzasf;
    private final zzxa zzasg;
    private final zzxa zzash;
    private MediaSessionCompat zzasi;
    private Callback zzasj;
    private boolean zzask;

    public zzxe(Context context, CastOptions castOptions, zzwz com_google_android_gms_internal_zzwz) {
        this.zzOZ = context;
        this.zzase = castOptions;
        this.zzapH = com_google_android_gms_internal_zzwz;
        if (this.zzase.getCastMediaOptions() == null || TextUtils.isEmpty(this.zzase.getCastMediaOptions().getExpandedControllerActivityClassName())) {
            this.zzasf = null;
        } else {
            this.zzasf = new ComponentName(this.zzOZ, this.zzase.getCastMediaOptions().getExpandedControllerActivityClassName());
        }
        this.zzasg = new zzxa(this.zzOZ);
        this.zzasg.zza(new zza(this) {
            final /* synthetic */ zzxe zzasl;

            {
                this.zzasl = r1;
            }

            public void zzc(Bitmap bitmap) {
                this.zzasl.zza(zzxe.zzd(bitmap), 0);
            }
        });
        this.zzash = new zzxa(this.zzOZ);
        this.zzash.zza(new zza(this) {
            final /* synthetic */ zzxe zzasl;

            {
                this.zzasl = r1;
            }

            public void zzc(Bitmap bitmap) {
                this.zzasl.zza(bitmap, 3);
            }
        });
    }

    private Uri zza(MediaMetadata mediaMetadata, int i) {
        WebImage onPickImage = this.zzase.getCastMediaOptions().getImagePicker() != null ? this.zzase.getCastMediaOptions().getImagePicker().onPickImage(mediaMetadata, i) : mediaMetadata.hasImages() ? (WebImage) mediaMetadata.getImages().get(0) : null;
        return onPickImage == null ? null : onPickImage.getUrl();
    }

    private void zza(int i, MediaInfo mediaInfo) {
        if (i == 0) {
            this.zzasi.setPlaybackState(new Builder().setState(0, 0, 1.0f).build());
            this.zzasi.setMetadata(new MediaMetadataCompat.Builder().build());
            return;
        }
        this.zzasi.setPlaybackState(new Builder().setState(i, 0, 1.0f).setActions(512).build());
        this.zzasi.setSessionActivity(zztu());
        zzb(mediaInfo);
    }

    private void zza(Bitmap bitmap, int i) {
        if (i == 0) {
            if (bitmap != null) {
                this.zzasi.setMetadata(zztp().putBitmap("android.media.metadata.DISPLAY_ICON", bitmap).build());
                return;
            }
            Bitmap createBitmap = Bitmap.createBitmap(1, 1, Config.ARGB_8888);
            createBitmap.eraseColor(0);
            this.zzasi.setMetadata(zztp().putBitmap("android.media.metadata.DISPLAY_ICON", createBitmap).build());
        } else if (i == 3) {
            this.zzasi.setMetadata(zztp().putBitmap("android.media.metadata.ALBUM_ART", bitmap).build());
        }
    }

    private void zzb(MediaInfo mediaInfo) {
        MediaMetadata metadata = mediaInfo.getMetadata();
        this.zzasi.setMetadata(zztp().putString("android.media.metadata.TITLE", metadata.getString("com.google.android.gms.cast.metadata.TITLE")).putString("android.media.metadata.DISPLAY_TITLE", metadata.getString("com.google.android.gms.cast.metadata.TITLE")).putString("android.media.metadata.DISPLAY_SUBTITLE", metadata.getString("com.google.android.gms.cast.metadata.SUBTITLE")).putLong("android.media.metadata.DURATION", mediaInfo.getStreamDuration()).build());
        Uri zza = zza(metadata, 0);
        if (zza != null) {
            this.zzasg.zzo(zza);
        } else {
            zza(null, 0);
        }
        Uri zza2 = zza(metadata, 3);
        if (zza2 != null) {
            this.zzash.zzo(zza2);
        } else {
            zza(null, 3);
        }
    }

    public static Bitmap zzd(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i = (int) (((((float) width) * 9.0f) / 16.0f) + 0.5f);
        float f = (float) ((i - height) / 2);
        RectF rectF = new RectF(0.0f, f, (float) width, ((float) height) + f);
        Bitmap createBitmap = Bitmap.createBitmap(width, i, bitmap.getConfig());
        new Canvas(createBitmap).drawBitmap(bitmap, null, rectF, null);
        return createBitmap;
    }

    private void zzto() {
        int i;
        MediaInfo mediaInfo;
        Object obj = 1;
        Object obj2 = null;
        MediaStatus mediaStatus = this.zzapk.getMediaStatus();
        MediaInfo mediaInfo2 = mediaStatus == null ? null : mediaStatus.getMediaInfo();
        MediaMetadata metadata = mediaInfo2 == null ? null : mediaInfo2.getMetadata();
        if (mediaStatus != null && mediaInfo2 != null && metadata != null) {
            switch (this.zzapk.getPlayerState()) {
                case 1:
                    int idleReason = mediaStatus.getIdleReason();
                    Object obj3 = (this.zzapk.isLiveStream() && idleReason == 2) ? 1 : null;
                    int loadingItemId = mediaStatus.getLoadingItemId();
                    if (loadingItemId == 0 || !(idleReason == 1 || idleReason == 3)) {
                        obj = null;
                    }
                    if (obj3 == null) {
                        MediaQueueItem queueItemById = mediaStatus.getQueueItemById(loadingItemId);
                        if (queueItemById == null) {
                            i = 0;
                            obj2 = obj;
                            mediaInfo = mediaInfo2;
                            break;
                        }
                        obj2 = obj;
                        mediaInfo = queueItemById.getMedia();
                        i = 6;
                        break;
                    }
                    obj2 = obj;
                    i = 2;
                    mediaInfo = mediaInfo2;
                    break;
                    break;
                case 2:
                    i = 3;
                    mediaInfo = mediaInfo2;
                    break;
                case 3:
                    i = 2;
                    mediaInfo = mediaInfo2;
                    break;
                case 4:
                    i = 6;
                    mediaInfo = mediaInfo2;
                    break;
                default:
                    i = 0;
                    mediaInfo = mediaInfo2;
                    break;
            }
        }
        i = 0;
        mediaInfo = mediaInfo2;
        zza(i, mediaInfo);
        if (i == 0) {
            zztr();
            zztt();
            return;
        }
        zztq();
        if (obj2 == null) {
            zzts();
        }
    }

    private MediaMetadataCompat.Builder zztp() {
        MediaMetadataCompat metadata = this.zzasi.getController().getMetadata();
        return metadata == null ? new MediaMetadataCompat.Builder() : new MediaMetadataCompat.Builder(metadata);
    }

    private void zztq() {
        boolean z = true;
        if (this.zzase.getCastMediaOptions().getNotificationOptions() != null && this.zzapk != null) {
            Intent intent = new Intent(this.zzOZ, MediaNotificationService.class);
            intent.setPackage(this.zzOZ.getPackageName());
            intent.setAction("com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION");
            intent.putExtra("extra_media_info", this.zzapk.getMediaInfo());
            intent.putExtra("extra_remote_media_client_player_state", this.zzapk.getPlayerState());
            intent.putExtra("extra_cast_device", this.zzamc);
            intent.putExtra("extra_media_session_token", getMediaSessionToken());
            MediaStatus mediaStatus = this.zzapk.getMediaStatus();
            if (mediaStatus != null) {
                boolean z2;
                switch (mediaStatus.getQueueRepeatMode()) {
                    case 1:
                    case 2:
                    case 3:
                        z2 = true;
                        break;
                    default:
                        Integer indexById = mediaStatus.getIndexById(mediaStatus.getCurrentItemId());
                        if (indexById == null) {
                            z2 = false;
                            z = false;
                            break;
                        }
                        z2 = indexById.intValue() > 0;
                        if (indexById.intValue() >= mediaStatus.getQueueItemCount() - 1) {
                            z = false;
                            break;
                        }
                        break;
                }
                intent.putExtra("extra_can_skip_next", z);
                intent.putExtra("extra_can_skip_prev", z2);
            }
            this.zzOZ.startService(intent);
        }
    }

    private void zztr() {
        if (this.zzase.getCastMediaOptions().getNotificationOptions() != null) {
            Intent intent = new Intent(this.zzOZ, MediaNotificationService.class);
            intent.setPackage(this.zzOZ.getPackageName());
            intent.setAction("com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION");
            this.zzOZ.stopService(intent);
        }
    }

    private void zzts() {
        if (this.zzase.getEnableReconnectionService()) {
            Intent intent = new Intent(this.zzOZ, ReconnectionService.class);
            intent.setPackage(this.zzOZ.getPackageName());
            this.zzOZ.startService(intent);
        }
    }

    private void zztt() {
        if (this.zzase.getEnableReconnectionService()) {
            Intent intent = new Intent(this.zzOZ, ReconnectionService.class);
            intent.setPackage(this.zzOZ.getPackageName());
            this.zzOZ.stopService(intent);
        }
    }

    private PendingIntent zztu() {
        if (this.zzasf == null) {
            return null;
        }
        Intent intent = new Intent();
        intent.setComponent(this.zzasf);
        return PendingIntent.getActivity(this.zzOZ, 0, intent, 134217728);
    }

    public Token getMediaSessionToken() {
        return this.zzasi == null ? null : this.zzasi.getSessionToken();
    }

    public void onAdBreakStatusUpdated() {
        zzto();
    }

    public void onMetadataUpdated() {
        zzto();
    }

    public void onPreloadStatusUpdated() {
        zzto();
    }

    public void onQueueStatusUpdated() {
        zzto();
    }

    public void onSendingRemoteMediaRequest() {
    }

    public void onStatusUpdated() {
        zzto();
    }

    public void zza(RemoteMediaClient remoteMediaClient, CastDevice castDevice) {
        if (!this.zzask && this.zzase != null && this.zzase.getCastMediaOptions() != null && remoteMediaClient != null && castDevice != null) {
            this.zzapk = remoteMediaClient;
            this.zzapk.addListener(this);
            this.zzamc = castDevice;
            if (!zzs.zzyI()) {
                ((AudioManager) this.zzOZ.getSystemService("audio")).requestAudioFocus(null, 3, 3);
            }
            ComponentName componentName = new ComponentName(this.zzOZ, this.zzase.getCastMediaOptions().getMediaIntentReceiverClassName());
            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
            intent.setComponent(componentName);
            this.zzasi = new MediaSessionCompat(this.zzOZ, "CastMediaSession", componentName, PendingIntent.getBroadcast(this.zzOZ, 0, intent, 0));
            this.zzasi.setFlags(3);
            zza(0, null);
            if (!(this.zzamc == null || TextUtils.isEmpty(this.zzamc.getFriendlyName()))) {
                this.zzasi.setMetadata(new MediaMetadataCompat.Builder().putString("android.media.metadata.ALBUM_ARTIST", this.zzOZ.getResources().getString(R.string.cast_casting_to_device, new Object[]{this.zzamc.getFriendlyName()})).build());
            }
            this.zzasj = new Callback(this) {
                final /* synthetic */ zzxe zzasl;

                {
                    this.zzasl = r1;
                }

                public boolean onMediaButtonEvent(Intent intent) {
                    KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
                    if (keyEvent != null && (keyEvent.getKeyCode() == 127 || keyEvent.getKeyCode() == 126)) {
                        this.zzasl.zzapk.togglePlayback();
                    }
                    return true;
                }

                public void onPause() {
                    this.zzasl.zzapk.togglePlayback();
                }

                public void onPlay() {
                    this.zzasl.zzapk.togglePlayback();
                }
            };
            this.zzasi.setCallback(this.zzasj);
            this.zzasi.setActive(true);
            this.zzapH.setMediaSessionCompat(this.zzasi);
            this.zzask = true;
            zzto();
        }
    }

    public void zzcb(int i) {
        if (this.zzask) {
            this.zzask = false;
            if (this.zzapk != null) {
                this.zzapk.removeListener(this);
            }
            if (!zzs.zzyI()) {
                ((AudioManager) this.zzOZ.getSystemService("audio")).abandonAudioFocus(null);
            }
            this.zzapH.setMediaSessionCompat(null);
            if (this.zzasg != null) {
                this.zzasg.clear();
            }
            if (this.zzash != null) {
                this.zzash.clear();
            }
            if (this.zzasi != null) {
                this.zzasi.setSessionActivity(null);
                this.zzasi.setCallback(null);
                this.zzasi.setMetadata(new MediaMetadataCompat.Builder().build());
                zza(0, null);
                this.zzasi.setActive(false);
                this.zzasi.release();
                this.zzasi = null;
            }
            this.zzapk = null;
            this.zzamc = null;
            this.zzasj = null;
            zztr();
            if (i == 0) {
                zztt();
            }
        }
    }
}
