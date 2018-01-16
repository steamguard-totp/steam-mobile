package com.google.android.gms.ads.internal.overlay;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.TextureView;
import com.google.android.gms.internal.zzmb;

@TargetApi(14)
@zzmb
public abstract class zzj extends TextureView implements zza {
    protected final zzw zzNj = new zzw();
    protected final zzab zzNk;

    public zzj(Context context) {
        super(context);
        this.zzNk = new zzab(context, this);
    }

    public abstract int getCurrentPosition();

    public abstract int getDuration();

    public abstract int getVideoHeight();

    public abstract int getVideoWidth();

    public abstract void pause();

    public abstract void play();

    public abstract void seekTo(int i);

    public abstract void setVideoPath(String str);

    public abstract void stop();

    public abstract void zza(float f, float f2);

    public abstract void zza(zzi com_google_android_gms_ads_internal_overlay_zzi);

    public void zzb(float f) {
        this.zzNk.zzb(f);
        zzhh();
    }

    public void zzhE() {
        this.zzNk.setMuted(true);
        zzhh();
    }

    public void zzhF() {
        this.zzNk.setMuted(false);
        zzhh();
    }

    public abstract String zzhd();

    public abstract void zzhh();
}
