package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzv;

@zzmb
public class zzpt {
    private long zzXL;
    private long zzXM = Long.MIN_VALUE;
    private Object zzrN = new Object();

    public zzpt(long j) {
        this.zzXL = j;
    }

    public boolean tryAcquire() {
        boolean z;
        synchronized (this.zzrN) {
            long elapsedRealtime = zzv.zzcP().elapsedRealtime();
            if (this.zzXM + this.zzXL > elapsedRealtime) {
                z = false;
            } else {
                this.zzXM = elapsedRealtime;
                z = true;
            }
        }
        return z;
    }
}
