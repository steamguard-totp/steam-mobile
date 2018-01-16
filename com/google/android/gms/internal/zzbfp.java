package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class zzbfp {
    private boolean mClosed;
    private String zzbDw;
    private final ScheduledExecutorService zzbFu;
    private ScheduledFuture<?> zzbFw;

    public zzbfp() {
        this(Executors.newSingleThreadScheduledExecutor());
    }

    zzbfp(ScheduledExecutorService scheduledExecutorService) {
        this.zzbFw = null;
        this.zzbDw = null;
        this.zzbFu = scheduledExecutorService;
        this.mClosed = false;
    }

    public void zza(Context context, zzbfh com_google_android_gms_internal_zzbfh, long j, zzbfd com_google_android_gms_internal_zzbfd) {
        synchronized (this) {
            if (this.zzbFw != null) {
                this.zzbFw.cancel(false);
            }
            this.zzbFw = this.zzbFu.schedule(new zzbfo(context, com_google_android_gms_internal_zzbfh, com_google_android_gms_internal_zzbfd), j, TimeUnit.MILLISECONDS);
        }
    }
}
