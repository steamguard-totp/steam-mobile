package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zzs;
import com.google.android.gms.common.util.zzv;
import com.google.android.gms.common.util.zzy;

public class zzayd {
    private static boolean DEBUG = false;
    private static String TAG = "WakeLock";
    private static String zzbCt = "*gcore*:";
    private final Context mContext;
    private final String zzaGw;
    private final String zzaGy;
    private final WakeLock zzbCu;
    private final int zzbCv;
    private final String zzbCw;
    private boolean zzbCx;
    private int zzbCy;
    private int zzbCz;
    private WorkSource zzbiJ;

    public zzayd(Context context, int i, String str) {
        this(context, i, str, null, context == null ? null : context.getPackageName());
    }

    @SuppressLint({"UnwrappedWakeLock"})
    public zzayd(Context context, int i, String str, String str2, String str3) {
        this(context, i, str, str2, str3, null);
    }

    @SuppressLint({"UnwrappedWakeLock"})
    public zzayd(Context context, int i, String str, String str2, String str3, String str4) {
        this.zzbCx = true;
        zzac.zzh(str, "Wake lock name can NOT be empty");
        this.zzbCv = i;
        this.zzbCw = str2;
        this.zzaGy = str4;
        this.mContext = context.getApplicationContext();
        if ("com.google.android.gms".equals(context.getPackageName())) {
            this.zzaGw = str;
        } else {
            String valueOf = String.valueOf(zzbCt);
            String valueOf2 = String.valueOf(str);
            this.zzaGw = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        }
        this.zzbCu = ((PowerManager) context.getSystemService("power")).newWakeLock(i, str);
        if (zzy.zzaO(this.mContext)) {
            if (zzv.zzdD(str3)) {
                str3 = context.getPackageName();
            }
            this.zzbiJ = zzy.zzy(context, str3);
            zzc(this.zzbiJ);
        }
    }

    private void zzd(WorkSource workSource) {
        try {
            this.zzbCu.setWorkSource(workSource);
        } catch (IllegalArgumentException e) {
            Log.wtf(TAG, e.toString());
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void zzgP(java.lang.String r10) {
        /*
        r9 = this;
        r0 = r9.zzgQ(r10);
        r5 = r9.zzo(r10, r0);
        monitor-enter(r9);
        r1 = r9.zzbCx;	 Catch:{ all -> 0x0045 }
        if (r1 == 0) goto L_0x0017;
    L_0x000d:
        r1 = r9.zzbCy;	 Catch:{ all -> 0x0045 }
        r1 = r1 + -1;
        r9.zzbCy = r1;	 Catch:{ all -> 0x0045 }
        if (r1 == 0) goto L_0x0020;
    L_0x0015:
        if (r0 != 0) goto L_0x0020;
    L_0x0017:
        r0 = r9.zzbCx;	 Catch:{ all -> 0x0045 }
        if (r0 != 0) goto L_0x0043;
    L_0x001b:
        r0 = r9.zzbCz;	 Catch:{ all -> 0x0045 }
        r1 = 1;
        if (r0 != r1) goto L_0x0043;
    L_0x0020:
        r0 = com.google.android.gms.common.stats.zzg.zzyr();	 Catch:{ all -> 0x0045 }
        r1 = r9.mContext;	 Catch:{ all -> 0x0045 }
        r2 = r9.zzbCu;	 Catch:{ all -> 0x0045 }
        r2 = com.google.android.gms.common.stats.zze.zza(r2, r5);	 Catch:{ all -> 0x0045 }
        r3 = 8;
        r4 = r9.zzaGw;	 Catch:{ all -> 0x0045 }
        r6 = r9.zzaGy;	 Catch:{ all -> 0x0045 }
        r7 = r9.zzbCv;	 Catch:{ all -> 0x0045 }
        r8 = r9.zzbiJ;	 Catch:{ all -> 0x0045 }
        r8 = com.google.android.gms.common.util.zzy.zzb(r8);	 Catch:{ all -> 0x0045 }
        r0.zza(r1, r2, r3, r4, r5, r6, r7, r8);	 Catch:{ all -> 0x0045 }
        r0 = r9.zzbCz;	 Catch:{ all -> 0x0045 }
        r0 = r0 + -1;
        r9.zzbCz = r0;	 Catch:{ all -> 0x0045 }
    L_0x0043:
        monitor-exit(r9);	 Catch:{ all -> 0x0045 }
        return;
    L_0x0045:
        r0 = move-exception;
        monitor-exit(r9);	 Catch:{ all -> 0x0045 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzayd.zzgP(java.lang.String):void");
    }

    private boolean zzgQ(String str) {
        return (TextUtils.isEmpty(str) || str.equals(this.zzbCw)) ? false : true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void zzm(java.lang.String r13, long r14) {
        /*
        r12 = this;
        r0 = r12.zzgQ(r13);
        r6 = r12.zzo(r13, r0);
        monitor-enter(r12);
        r1 = r12.zzbCx;	 Catch:{ all -> 0x0044 }
        if (r1 == 0) goto L_0x0017;
    L_0x000d:
        r1 = r12.zzbCy;	 Catch:{ all -> 0x0044 }
        r2 = r1 + 1;
        r12.zzbCy = r2;	 Catch:{ all -> 0x0044 }
        if (r1 == 0) goto L_0x001f;
    L_0x0015:
        if (r0 != 0) goto L_0x001f;
    L_0x0017:
        r0 = r12.zzbCx;	 Catch:{ all -> 0x0044 }
        if (r0 != 0) goto L_0x0042;
    L_0x001b:
        r0 = r12.zzbCz;	 Catch:{ all -> 0x0044 }
        if (r0 != 0) goto L_0x0042;
    L_0x001f:
        r1 = com.google.android.gms.common.stats.zzg.zzyr();	 Catch:{ all -> 0x0044 }
        r2 = r12.mContext;	 Catch:{ all -> 0x0044 }
        r0 = r12.zzbCu;	 Catch:{ all -> 0x0044 }
        r3 = com.google.android.gms.common.stats.zze.zza(r0, r6);	 Catch:{ all -> 0x0044 }
        r4 = 7;
        r5 = r12.zzaGw;	 Catch:{ all -> 0x0044 }
        r7 = r12.zzaGy;	 Catch:{ all -> 0x0044 }
        r8 = r12.zzbCv;	 Catch:{ all -> 0x0044 }
        r0 = r12.zzbiJ;	 Catch:{ all -> 0x0044 }
        r9 = com.google.android.gms.common.util.zzy.zzb(r0);	 Catch:{ all -> 0x0044 }
        r10 = r14;
        r1.zza(r2, r3, r4, r5, r6, r7, r8, r9, r10);	 Catch:{ all -> 0x0044 }
        r0 = r12.zzbCz;	 Catch:{ all -> 0x0044 }
        r0 = r0 + 1;
        r12.zzbCz = r0;	 Catch:{ all -> 0x0044 }
    L_0x0042:
        monitor-exit(r12);	 Catch:{ all -> 0x0044 }
        return;
    L_0x0044:
        r0 = move-exception;
        monitor-exit(r12);	 Catch:{ all -> 0x0044 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzayd.zzm(java.lang.String, long):void");
    }

    private String zzo(String str, boolean z) {
        return this.zzbCx ? z ? str : this.zzbCw : this.zzbCw;
    }

    public void acquire(long j) {
        if (!zzs.zzyA() && this.zzbCx) {
            String str = TAG;
            String str2 = "Do not acquire with timeout on reference counted WakeLocks before ICS. wakelock: ";
            String valueOf = String.valueOf(this.zzaGw);
            Log.wtf(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        }
        zzm(null, j);
        this.zzbCu.acquire(j);
    }

    public boolean isHeld() {
        return this.zzbCu.isHeld();
    }

    public void release() {
        zzgP(null);
        this.zzbCu.release();
    }

    public void setReferenceCounted(boolean z) {
        this.zzbCu.setReferenceCounted(z);
        this.zzbCx = z;
    }

    public void zzc(WorkSource workSource) {
        if (workSource != null && zzy.zzaO(this.mContext)) {
            if (this.zzbiJ != null) {
                this.zzbiJ.add(workSource);
            } else {
                this.zzbiJ = workSource;
            }
            zzd(this.zzbiJ);
        }
    }
}
