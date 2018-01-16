package com.google.android.gms.ads.internal.overlay;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.os.Build.VERSION;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View.MeasureSpec;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzpe;
import com.google.android.gms.internal.zzpi;
import com.google.android.gms.internal.zzpy;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@TargetApi(14)
@zzmb
public class zzd extends zzj implements OnBufferingUpdateListener, OnCompletionListener, OnErrorListener, OnInfoListener, OnPreparedListener, OnVideoSizeChangedListener, SurfaceTextureListener {
    private static final Map<Integer, String> zzMc = new HashMap();
    private final zzz zzMd;
    private final boolean zzMe;
    private int zzMf = 0;
    private int zzMg = 0;
    private MediaPlayer zzMh;
    private Uri zzMi;
    private int zzMj;
    private int zzMk;
    private int zzMl;
    private int zzMm;
    private int zzMn;
    private zzy zzMo;
    private boolean zzMp;
    private int zzMq;
    private zzi zzMr;

    static {
        if (VERSION.SDK_INT >= 17) {
            zzMc.put(Integer.valueOf(-1004), "MEDIA_ERROR_IO");
            zzMc.put(Integer.valueOf(-1007), "MEDIA_ERROR_MALFORMED");
            zzMc.put(Integer.valueOf(-1010), "MEDIA_ERROR_UNSUPPORTED");
            zzMc.put(Integer.valueOf(-110), "MEDIA_ERROR_TIMED_OUT");
            zzMc.put(Integer.valueOf(3), "MEDIA_INFO_VIDEO_RENDERING_START");
        }
        zzMc.put(Integer.valueOf(100), "MEDIA_ERROR_SERVER_DIED");
        zzMc.put(Integer.valueOf(1), "MEDIA_ERROR_UNKNOWN");
        zzMc.put(Integer.valueOf(1), "MEDIA_INFO_UNKNOWN");
        zzMc.put(Integer.valueOf(700), "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        zzMc.put(Integer.valueOf(701), "MEDIA_INFO_BUFFERING_START");
        zzMc.put(Integer.valueOf(702), "MEDIA_INFO_BUFFERING_END");
        zzMc.put(Integer.valueOf(800), "MEDIA_INFO_BAD_INTERLEAVING");
        zzMc.put(Integer.valueOf(801), "MEDIA_INFO_NOT_SEEKABLE");
        zzMc.put(Integer.valueOf(802), "MEDIA_INFO_METADATA_UPDATE");
        if (VERSION.SDK_INT >= 19) {
            zzMc.put(Integer.valueOf(901), "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
            zzMc.put(Integer.valueOf(902), "MEDIA_INFO_SUBTITLE_TIMED_OUT");
        }
    }

    public zzd(Context context, boolean z, boolean z2, zzz com_google_android_gms_ads_internal_overlay_zzz) {
        super(context);
        setSurfaceTextureListener(this);
        this.zzMd = com_google_android_gms_ads_internal_overlay_zzz;
        this.zzMp = z;
        this.zzMe = z2;
        this.zzMd.zza((zzj) this);
    }

    private void zzI(int i) {
        if (i == 3) {
            this.zzMd.zzib();
            this.zzNk.zzib();
        } else if (this.zzMf == 3) {
            this.zzMd.zzic();
            this.zzNk.zzic();
        }
        this.zzMf = i;
    }

    private void zzJ(int i) {
        this.zzMg = i;
    }

    private void zza(float f) {
        if (this.zzMh != null) {
            try {
                this.zzMh.setVolume(f, f);
                return;
            } catch (IllegalStateException e) {
                return;
            }
        }
        zzpy.zzbe("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
    }

    private void zzhe() {
        Throwable e;
        String valueOf;
        zzpe.v("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.zzMi != null && surfaceTexture != null) {
            zzy(false);
            try {
                SurfaceTexture zzhQ;
                this.zzMh = zzv.zzda().zzhO();
                this.zzMh.setOnBufferingUpdateListener(this);
                this.zzMh.setOnCompletionListener(this);
                this.zzMh.setOnErrorListener(this);
                this.zzMh.setOnInfoListener(this);
                this.zzMh.setOnPreparedListener(this);
                this.zzMh.setOnVideoSizeChangedListener(this);
                this.zzMl = 0;
                if (this.zzMp) {
                    this.zzMo = new zzy(getContext());
                    this.zzMo.zza(surfaceTexture, getWidth(), getHeight());
                    this.zzMo.start();
                    zzhQ = this.zzMo.zzhQ();
                    if (zzhQ == null) {
                        this.zzMo.zzhP();
                        this.zzMo = null;
                    }
                    this.zzMh.setDataSource(getContext(), this.zzMi);
                    this.zzMh.setSurface(zzv.zzdb().zza(zzhQ));
                    this.zzMh.setAudioStreamType(3);
                    this.zzMh.setScreenOnWhilePlaying(true);
                    this.zzMh.prepareAsync();
                    zzI(1);
                }
                zzhQ = surfaceTexture;
                this.zzMh.setDataSource(getContext(), this.zzMi);
                this.zzMh.setSurface(zzv.zzdb().zza(zzhQ));
                this.zzMh.setAudioStreamType(3);
                this.zzMh.setScreenOnWhilePlaying(true);
                this.zzMh.prepareAsync();
                zzI(1);
            } catch (IOException e2) {
                e = e2;
                valueOf = String.valueOf(this.zzMi);
                zzpy.zzc(new StringBuilder(String.valueOf(valueOf).length() + 36).append("Failed to initialize MediaPlayer at ").append(valueOf).toString(), e);
                onError(this.zzMh, 1, 0);
            } catch (IllegalArgumentException e3) {
                e = e3;
                valueOf = String.valueOf(this.zzMi);
                zzpy.zzc(new StringBuilder(String.valueOf(valueOf).length() + 36).append("Failed to initialize MediaPlayer at ").append(valueOf).toString(), e);
                onError(this.zzMh, 1, 0);
            } catch (IllegalStateException e4) {
                e = e4;
                valueOf = String.valueOf(this.zzMi);
                zzpy.zzc(new StringBuilder(String.valueOf(valueOf).length() + 36).append("Failed to initialize MediaPlayer at ").append(valueOf).toString(), e);
                onError(this.zzMh, 1, 0);
            }
        }
    }

    private void zzhf() {
        if (this.zzMe && zzhg() && this.zzMh.getCurrentPosition() > 0 && this.zzMg != 3) {
            zzpe.v("AdMediaPlayerView nudging MediaPlayer");
            zza(0.0f);
            this.zzMh.start();
            int currentPosition = this.zzMh.getCurrentPosition();
            long currentTimeMillis = zzv.zzcP().currentTimeMillis();
            while (zzhg() && this.zzMh.getCurrentPosition() == currentPosition) {
                if (zzv.zzcP().currentTimeMillis() - currentTimeMillis > 250) {
                    break;
                }
            }
            this.zzMh.pause();
            zzhh();
        }
    }

    private boolean zzhg() {
        return (this.zzMh == null || this.zzMf == -1 || this.zzMf == 0 || this.zzMf == 1) ? false : true;
    }

    private void zzy(boolean z) {
        zzpe.v("AdMediaPlayerView release");
        if (this.zzMo != null) {
            this.zzMo.zzhP();
            this.zzMo = null;
        }
        if (this.zzMh != null) {
            this.zzMh.reset();
            this.zzMh.release();
            this.zzMh = null;
            zzI(0);
            if (z) {
                this.zzMg = 0;
                zzJ(0);
            }
        }
    }

    public int getCurrentPosition() {
        return zzhg() ? this.zzMh.getCurrentPosition() : 0;
    }

    public int getDuration() {
        return zzhg() ? this.zzMh.getDuration() : -1;
    }

    public int getVideoHeight() {
        return this.zzMh != null ? this.zzMh.getVideoHeight() : 0;
    }

    public int getVideoWidth() {
        return this.zzMh != null ? this.zzMh.getVideoWidth() : 0;
    }

    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.zzMl = i;
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        zzpe.v("AdMediaPlayerView completion");
        zzI(5);
        zzJ(5);
        zzpi.zzWR.post(new Runnable(this) {
            final /* synthetic */ zzd zzMs;

            {
                this.zzMs = r1;
            }

            public void run() {
                if (this.zzMs.zzMr != null) {
                    this.zzMs.zzMr.zzhB();
                }
            }
        });
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        final String str = (String) zzMc.get(Integer.valueOf(i));
        final String str2 = (String) zzMc.get(Integer.valueOf(i2));
        zzpy.zzbe(new StringBuilder((String.valueOf(str).length() + 38) + String.valueOf(str2).length()).append("AdMediaPlayerView MediaPlayer error: ").append(str).append(":").append(str2).toString());
        zzI(-1);
        zzJ(-1);
        zzpi.zzWR.post(new Runnable(this) {
            final /* synthetic */ zzd zzMs;

            public void run() {
                if (this.zzMs.zzMr != null) {
                    this.zzMs.zzMr.zzk(str, str2);
                }
            }
        });
        return true;
    }

    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        String str = (String) zzMc.get(Integer.valueOf(i));
        String str2 = (String) zzMc.get(Integer.valueOf(i2));
        zzpe.v(new StringBuilder((String.valueOf(str).length() + 37) + String.valueOf(str2).length()).append("AdMediaPlayerView MediaPlayer info: ").append(str).append(":").append(str2).toString());
        return true;
    }

    protected void onMeasure(int i, int i2) {
        int defaultSize = getDefaultSize(this.zzMj, i);
        int defaultSize2 = getDefaultSize(this.zzMk, i2);
        if (this.zzMj > 0 && this.zzMk > 0 && this.zzMo == null) {
            int mode = MeasureSpec.getMode(i);
            int size = MeasureSpec.getSize(i);
            int mode2 = MeasureSpec.getMode(i2);
            defaultSize2 = MeasureSpec.getSize(i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                if (this.zzMj * defaultSize2 < this.zzMk * size) {
                    defaultSize = (this.zzMj * defaultSize2) / this.zzMk;
                } else if (this.zzMj * defaultSize2 > this.zzMk * size) {
                    defaultSize2 = (this.zzMk * size) / this.zzMj;
                    defaultSize = size;
                } else {
                    defaultSize = size;
                }
            } else if (mode == 1073741824) {
                defaultSize = (this.zzMk * size) / this.zzMj;
                if (mode2 != Integer.MIN_VALUE || defaultSize <= defaultSize2) {
                    defaultSize2 = defaultSize;
                    defaultSize = size;
                } else {
                    defaultSize = size;
                }
            } else if (mode2 == 1073741824) {
                defaultSize = (this.zzMj * defaultSize2) / this.zzMk;
                if (mode == Integer.MIN_VALUE && defaultSize > size) {
                    defaultSize = size;
                }
            } else {
                int i3 = this.zzMj;
                defaultSize = this.zzMk;
                if (mode2 != Integer.MIN_VALUE || defaultSize <= defaultSize2) {
                    defaultSize2 = defaultSize;
                    defaultSize = i3;
                } else {
                    defaultSize = (this.zzMj * defaultSize2) / this.zzMk;
                }
                if (mode == Integer.MIN_VALUE && r1 > size) {
                    defaultSize2 = (this.zzMk * size) / this.zzMj;
                    defaultSize = size;
                }
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
        if (this.zzMo != null) {
            this.zzMo.zzi(defaultSize, defaultSize2);
        }
        if (VERSION.SDK_INT == 16) {
            if ((this.zzMm > 0 && this.zzMm != defaultSize) || (this.zzMn > 0 && this.zzMn != defaultSize2)) {
                zzhf();
            }
            this.zzMm = defaultSize;
            this.zzMn = defaultSize2;
        }
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        zzpe.v("AdMediaPlayerView prepared");
        zzI(2);
        this.zzMd.zzhz();
        zzpi.zzWR.post(new Runnable(this) {
            final /* synthetic */ zzd zzMs;

            {
                this.zzMs = r1;
            }

            public void run() {
                if (this.zzMs.zzMr != null) {
                    this.zzMs.zzMr.zzhz();
                }
            }
        });
        this.zzMj = mediaPlayer.getVideoWidth();
        this.zzMk = mediaPlayer.getVideoHeight();
        if (this.zzMq != 0) {
            seekTo(this.zzMq);
        }
        zzhf();
        int i = this.zzMj;
        zzpy.zzbd("AdMediaPlayerView stream dimensions: " + i + " x " + this.zzMk);
        if (this.zzMg == 3) {
            play();
        }
        zzhh();
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        zzpe.v("AdMediaPlayerView surface created");
        zzhe();
        zzpi.zzWR.post(new Runnable(this) {
            final /* synthetic */ zzd zzMs;

            {
                this.zzMs = r1;
            }

            public void run() {
                if (this.zzMs.zzMr != null) {
                    this.zzMs.zzMr.zzhy();
                }
            }
        });
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzpe.v("AdMediaPlayerView surface destroyed");
        if (this.zzMh != null && this.zzMq == 0) {
            this.zzMq = this.zzMh.getCurrentPosition();
        }
        if (this.zzMo != null) {
            this.zzMo.zzhP();
        }
        zzpi.zzWR.post(new Runnable(this) {
            final /* synthetic */ zzd zzMs;

            {
                this.zzMs = r1;
            }

            public void run() {
                if (this.zzMs.zzMr != null) {
                    this.zzMs.zzMr.onPaused();
                    this.zzMs.zzMr.zzhC();
                }
            }
        });
        zzy(true);
        return true;
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, final int i, final int i2) {
        Object obj = 1;
        zzpe.v("AdMediaPlayerView surface changed");
        Object obj2 = this.zzMg == 3 ? 1 : null;
        if (!(this.zzMj == i && this.zzMk == i2)) {
            obj = null;
        }
        if (!(this.zzMh == null || obj2 == null || r1 == null)) {
            if (this.zzMq != 0) {
                seekTo(this.zzMq);
            }
            play();
        }
        if (this.zzMo != null) {
            this.zzMo.zzi(i, i2);
        }
        zzpi.zzWR.post(new Runnable(this) {
            final /* synthetic */ zzd zzMs;

            public void run() {
                if (this.zzMs.zzMr != null) {
                    this.zzMs.zzMr.zzf(i, i2);
                }
            }
        });
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.zzMd.zzb(this);
        this.zzNj.zza(surfaceTexture, this.zzMr);
    }

    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        zzpe.v("AdMediaPlayerView size changed: " + i + " x " + i2);
        this.zzMj = mediaPlayer.getVideoWidth();
        this.zzMk = mediaPlayer.getVideoHeight();
        if (this.zzMj != 0 && this.zzMk != 0) {
            requestLayout();
        }
    }

    public void pause() {
        zzpe.v("AdMediaPlayerView pause");
        if (zzhg() && this.zzMh.isPlaying()) {
            this.zzMh.pause();
            zzI(4);
            zzpi.zzWR.post(new Runnable(this) {
                final /* synthetic */ zzd zzMs;

                {
                    this.zzMs = r1;
                }

                public void run() {
                    if (this.zzMs.zzMr != null) {
                        this.zzMs.zzMr.onPaused();
                    }
                }
            });
        }
        zzJ(4);
    }

    public void play() {
        zzpe.v("AdMediaPlayerView play");
        if (zzhg()) {
            this.zzMh.start();
            zzI(3);
            this.zzNj.zzhA();
            zzpi.zzWR.post(new Runnable(this) {
                final /* synthetic */ zzd zzMs;

                {
                    this.zzMs = r1;
                }

                public void run() {
                    if (this.zzMs.zzMr != null) {
                        this.zzMs.zzMr.zzhA();
                    }
                }
            });
        }
        zzJ(3);
    }

    public void seekTo(int i) {
        zzpe.v("AdMediaPlayerView seek " + i);
        if (zzhg()) {
            this.zzMh.seekTo(i);
            this.zzMq = 0;
            return;
        }
        this.zzMq = i;
    }

    public void setVideoPath(String str) {
        setVideoURI(Uri.parse(str));
    }

    public void setVideoURI(Uri uri) {
        this.zzMi = uri;
        this.zzMq = 0;
        zzhe();
        requestLayout();
        invalidate();
    }

    public void stop() {
        zzpe.v("AdMediaPlayerView stop");
        if (this.zzMh != null) {
            this.zzMh.stop();
            this.zzMh.release();
            this.zzMh = null;
            zzI(0);
            zzJ(0);
        }
        this.zzMd.onStop();
    }

    public String toString() {
        String valueOf = String.valueOf(getClass().getName());
        String valueOf2 = String.valueOf(Integer.toHexString(hashCode()));
        return new StringBuilder((String.valueOf(valueOf).length() + 1) + String.valueOf(valueOf2).length()).append(valueOf).append("@").append(valueOf2).toString();
    }

    public void zza(float f, float f2) {
        if (this.zzMo != null) {
            this.zzMo.zzb(f, f2);
        }
    }

    public void zza(zzi com_google_android_gms_ads_internal_overlay_zzi) {
        this.zzMr = com_google_android_gms_ads_internal_overlay_zzi;
    }

    public String zzhd() {
        String str = "MediaPlayer";
        String valueOf = String.valueOf(this.zzMp ? " spherical" : "");
        return valueOf.length() != 0 ? str.concat(valueOf) : new String(str);
    }

    public void zzhh() {
        zza(this.zzNk.zzie());
    }
}
