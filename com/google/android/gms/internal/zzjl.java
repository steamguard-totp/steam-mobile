package com.google.android.gms.internal;

import com.google.android.gms.internal.zzju.zza;

@zzmb
public final class zzjl extends zza {
    private zzjn.zza zzKm;
    private zzjk zzKn;
    private final Object zzrN = new Object();

    public void onAdClicked() {
        synchronized (this.zzrN) {
            if (this.zzKn != null) {
                this.zzKn.zzbP();
            }
        }
    }

    public void onAdClosed() {
        synchronized (this.zzrN) {
            if (this.zzKn != null) {
                this.zzKn.zzbQ();
            }
        }
    }

    public void onAdFailedToLoad(int i) {
        synchronized (this.zzrN) {
            if (this.zzKm != null) {
                this.zzKm.zzD(i == 3 ? 1 : 2);
                this.zzKm = null;
            }
        }
    }

    public void onAdImpression() {
        synchronized (this.zzrN) {
            if (this.zzKn != null) {
                this.zzKn.zzbU();
            }
        }
    }

    public void onAdLeftApplication() {
        synchronized (this.zzrN) {
            if (this.zzKn != null) {
                this.zzKn.zzbR();
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onAdLoaded() {
        /*
        r3 = this;
        r1 = r3.zzrN;
        monitor-enter(r1);
        r0 = r3.zzKm;	 Catch:{ all -> 0x001d }
        if (r0 == 0) goto L_0x0012;
    L_0x0007:
        r0 = r3.zzKm;	 Catch:{ all -> 0x001d }
        r2 = 0;
        r0.zzD(r2);	 Catch:{ all -> 0x001d }
        r0 = 0;
        r3.zzKm = r0;	 Catch:{ all -> 0x001d }
        monitor-exit(r1);	 Catch:{ all -> 0x001d }
    L_0x0011:
        return;
    L_0x0012:
        r0 = r3.zzKn;	 Catch:{ all -> 0x001d }
        if (r0 == 0) goto L_0x001b;
    L_0x0016:
        r0 = r3.zzKn;	 Catch:{ all -> 0x001d }
        r0.zzbT();	 Catch:{ all -> 0x001d }
    L_0x001b:
        monitor-exit(r1);	 Catch:{ all -> 0x001d }
        goto L_0x0011;
    L_0x001d:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x001d }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzjl.onAdLoaded():void");
    }

    public void onAdOpened() {
        synchronized (this.zzrN) {
            if (this.zzKn != null) {
                this.zzKn.zzbS();
            }
        }
    }

    public void zza(zzjk com_google_android_gms_internal_zzjk) {
        synchronized (this.zzrN) {
            this.zzKn = com_google_android_gms_internal_zzjk;
        }
    }

    public void zza(zzjn.zza com_google_android_gms_internal_zzjn_zza) {
        synchronized (this.zzrN) {
            this.zzKm = com_google_android_gms_internal_zzjn_zza;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void zza(com.google.android.gms.internal.zzjv r4) {
        /*
        r3 = this;
        r1 = r3.zzrN;
        monitor-enter(r1);
        r0 = r3.zzKm;	 Catch:{ all -> 0x001d }
        if (r0 == 0) goto L_0x0012;
    L_0x0007:
        r0 = r3.zzKm;	 Catch:{ all -> 0x001d }
        r2 = 0;
        r0.zza(r2, r4);	 Catch:{ all -> 0x001d }
        r0 = 0;
        r3.zzKm = r0;	 Catch:{ all -> 0x001d }
        monitor-exit(r1);	 Catch:{ all -> 0x001d }
    L_0x0011:
        return;
    L_0x0012:
        r0 = r3.zzKn;	 Catch:{ all -> 0x001d }
        if (r0 == 0) goto L_0x001b;
    L_0x0016:
        r0 = r3.zzKn;	 Catch:{ all -> 0x001d }
        r0.zzbT();	 Catch:{ all -> 0x001d }
    L_0x001b:
        monitor-exit(r1);	 Catch:{ all -> 0x001d }
        goto L_0x0011;
    L_0x001d:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x001d }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzjl.zza(com.google.android.gms.internal.zzjv):void");
    }
}
