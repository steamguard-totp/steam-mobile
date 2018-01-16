package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.os.ConditionVariable;
import java.util.concurrent.Callable;

@zzmb
public class zzfw {
    private final ConditionVariable zzAM = new ConditionVariable();
    private SharedPreferences zzAN = null;
    private final Object zzrN = new Object();
    private volatile boolean zztW = false;

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void initialize(android.content.Context r4) {
        /*
        r3 = this;
        r0 = r3.zztW;
        if (r0 == 0) goto L_0x0005;
    L_0x0004:
        return;
    L_0x0005:
        r1 = r3.zzrN;
        monitor-enter(r1);
        r0 = r3.zztW;	 Catch:{ all -> 0x000e }
        if (r0 == 0) goto L_0x0011;
    L_0x000c:
        monitor-exit(r1);	 Catch:{ all -> 0x000e }
        goto L_0x0004;
    L_0x000e:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x000e }
        throw r0;
    L_0x0011:
        r0 = com.google.android.gms.common.zze.getRemoteContext(r4);	 Catch:{ all -> 0x0032 }
        if (r0 != 0) goto L_0x001e;
    L_0x0017:
        r0 = r3.zzAM;	 Catch:{ all -> 0x000e }
        r0.open();	 Catch:{ all -> 0x000e }
        monitor-exit(r1);	 Catch:{ all -> 0x000e }
        goto L_0x0004;
    L_0x001e:
        r2 = com.google.android.gms.ads.internal.zzv.zzcT();	 Catch:{ all -> 0x0032 }
        r0 = r2.zzm(r0);	 Catch:{ all -> 0x0032 }
        r3.zzAN = r0;	 Catch:{ all -> 0x0032 }
        r0 = 1;
        r3.zztW = r0;	 Catch:{ all -> 0x0032 }
        r0 = r3.zzAM;	 Catch:{ all -> 0x000e }
        r0.open();	 Catch:{ all -> 0x000e }
        monitor-exit(r1);	 Catch:{ all -> 0x000e }
        goto L_0x0004;
    L_0x0032:
        r0 = move-exception;
        r2 = r3.zzAM;	 Catch:{ all -> 0x000e }
        r2.open();	 Catch:{ all -> 0x000e }
        throw r0;	 Catch:{ all -> 0x000e }
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzfw.initialize(android.content.Context):void");
    }

    public <T> T zzd(final zzft<T> com_google_android_gms_internal_zzft_T) {
        if (this.zzAM.block(5000)) {
            if (!this.zztW) {
                synchronized (this.zzrN) {
                    if (!this.zztW) {
                        T zzfm = com_google_android_gms_internal_zzft_T.zzfm();
                        return zzfm;
                    }
                }
            }
            return zzpv.zzb(new Callable<T>(this) {
                final /* synthetic */ zzfw zzAP;

                public T call() {
                    return com_google_android_gms_internal_zzft_T.zza(this.zzAP.zzAN);
                }
            });
        }
        throw new IllegalStateException("Flags.initialize() was not called!");
    }
}
