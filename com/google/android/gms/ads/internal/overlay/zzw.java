package com.google.android.gms.ads.internal.overlay;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import com.google.android.gms.internal.zzfx;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzpi;
import java.util.concurrent.TimeUnit;

@TargetApi(14)
@zzmb
public class zzw {
    private final long zzNC = TimeUnit.MILLISECONDS.toNanos(((Long) zzfx.zzBs.get()).longValue());
    private long zzND;
    private boolean zzNE = true;

    zzw() {
    }

    public void zza(SurfaceTexture surfaceTexture, final zzi com_google_android_gms_ads_internal_overlay_zzi) {
        if (com_google_android_gms_ads_internal_overlay_zzi != null) {
            long timestamp = surfaceTexture.getTimestamp();
            if (this.zzNE || Math.abs(timestamp - this.zzND) >= this.zzNC) {
                this.zzNE = false;
                this.zzND = timestamp;
                zzpi.zzWR.post(new Runnable(this) {
                    public void run() {
                        com_google_android_gms_ads_internal_overlay_zzi.zzhD();
                    }
                });
            }
        }
    }

    public void zzhA() {
        this.zzNE = true;
    }
}
