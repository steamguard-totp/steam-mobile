package com.google.android.gms.internal;

import com.google.android.gms.common.util.zze;

public final class zzyy {
    private static final zzyu zzamu = new zzyu("RequestTracker");
    public static final Object zzqW = new Object();
    private long zzaut = -1;
    private long zzavW;
    private long zzavX = 0;
    private zzyx zzavY;
    private final zze zzuI;

    public zzyy(zze com_google_android_gms_common_util_zze, long j) {
        this.zzuI = com_google_android_gms_common_util_zze;
        this.zzavW = j;
    }

    private void zzup() {
        this.zzaut = -1;
        this.zzavY = null;
        this.zzavX = 0;
    }

    public void clear() {
        synchronized (zzqW) {
            if (this.zzaut != -1) {
                zzup();
            }
        }
    }

    public boolean test(long j) {
        boolean z;
        synchronized (zzqW) {
            z = this.zzaut != -1 && this.zzaut == j;
        }
        return z;
    }

    public void zza(long j, zzyx com_google_android_gms_internal_zzyx) {
        synchronized (zzqW) {
            zzyx com_google_android_gms_internal_zzyx2 = this.zzavY;
            long j2 = this.zzaut;
            this.zzaut = j;
            this.zzavY = com_google_android_gms_internal_zzyx;
            this.zzavX = this.zzuI.elapsedRealtime();
        }
        if (com_google_android_gms_internal_zzyx2 != null) {
            com_google_android_gms_internal_zzyx2.zzC(j2);
        }
    }

    public boolean zzc(long j, int i) {
        return zzc(j, i, null);
    }

    public boolean zzc(long j, int i, Object obj) {
        boolean z = true;
        zzyx com_google_android_gms_internal_zzyx = null;
        synchronized (zzqW) {
            if (this.zzaut == -1 || this.zzaut != j) {
                z = false;
            } else {
                zzamu.zzb("request %d completed", Long.valueOf(this.zzaut));
                com_google_android_gms_internal_zzyx = this.zzavY;
                zzup();
            }
        }
        if (com_google_android_gms_internal_zzyx != null) {
            com_google_android_gms_internal_zzyx.zza(j, i, obj);
        }
        return z;
    }

    public boolean zzd(long j, int i) {
        zzyx com_google_android_gms_internal_zzyx;
        boolean z = true;
        long j2 = 0;
        synchronized (zzqW) {
            if (this.zzaut == -1 || j - this.zzavX < this.zzavW) {
                z = false;
                com_google_android_gms_internal_zzyx = null;
            } else {
                zzamu.zzb("request %d timed out", Long.valueOf(this.zzaut));
                j2 = this.zzaut;
                com_google_android_gms_internal_zzyx = this.zzavY;
                zzup();
            }
        }
        if (com_google_android_gms_internal_zzyx != null) {
            com_google_android_gms_internal_zzyx.zza(j2, i, null);
        }
        return z;
    }

    public boolean zzuq() {
        boolean z;
        synchronized (zzqW) {
            z = this.zzaut != -1;
        }
        return z;
    }
}
