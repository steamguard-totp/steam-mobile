package com.google.android.gms.internal;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@zzmb
public class zzjp implements zzjh {
    private final Context mContext;
    private final zzmh zzKG;
    private final long zzKH;
    private final long zzKI;
    private final int zzKJ;
    private boolean zzKK = false;
    private final Map<zzqf<zzjn>, zzjm> zzKL = new HashMap();
    private List<zzjn> zzKM = new ArrayList();
    private final zzjj zzKq;
    private final boolean zzKs;
    private final Object zzrN = new Object();
    private final zzjs zzsD;
    private final boolean zzvW;

    public zzjp(Context context, zzmh com_google_android_gms_internal_zzmh, zzjs com_google_android_gms_internal_zzjs, zzjj com_google_android_gms_internal_zzjj, boolean z, boolean z2, long j, long j2, int i) {
        this.mContext = context;
        this.zzKG = com_google_android_gms_internal_zzmh;
        this.zzsD = com_google_android_gms_internal_zzjs;
        this.zzKq = com_google_android_gms_internal_zzjj;
        this.zzvW = z;
        this.zzKs = z2;
        this.zzKH = j;
        this.zzKI = j2;
        this.zzKJ = i;
    }

    private void zza(final zzqf<zzjn> com_google_android_gms_internal_zzqf_com_google_android_gms_internal_zzjn) {
        zzpi.zzWR.post(new Runnable(this) {
            final /* synthetic */ zzjp zzKO;

            public void run() {
                for (zzqf com_google_android_gms_internal_zzqf : this.zzKO.zzKL.keySet()) {
                    if (com_google_android_gms_internal_zzqf != com_google_android_gms_internal_zzqf_com_google_android_gms_internal_zzjn) {
                        ((zzjm) this.zzKO.zzKL.get(com_google_android_gms_internal_zzqf)).cancel();
                    }
                }
            }
        });
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.google.android.gms.internal.zzjn zze(java.util.List<com.google.android.gms.internal.zzqf<com.google.android.gms.internal.zzjn>> r5) {
        /*
        r4 = this;
        r2 = r4.zzrN;
        monitor-enter(r2);
        r0 = r4.zzKK;	 Catch:{ all -> 0x003c }
        if (r0 == 0) goto L_0x000f;
    L_0x0007:
        r1 = new com.google.android.gms.internal.zzjn;	 Catch:{ all -> 0x003c }
        r0 = -1;
        r1.<init>(r0);	 Catch:{ all -> 0x003c }
        monitor-exit(r2);	 Catch:{ all -> 0x003c }
    L_0x000e:
        return r1;
    L_0x000f:
        monitor-exit(r2);	 Catch:{ all -> 0x003c }
        r2 = r5.iterator();
    L_0x0014:
        r0 = r2.hasNext();
        if (r0 == 0) goto L_0x003f;
    L_0x001a:
        r0 = r2.next();
        r0 = (com.google.android.gms.internal.zzqf) r0;
        r1 = r0.get();	 Catch:{ InterruptedException -> 0x0035, ExecutionException -> 0x004a }
        r1 = (com.google.android.gms.internal.zzjn) r1;	 Catch:{ InterruptedException -> 0x0035, ExecutionException -> 0x004a }
        r3 = r4.zzKM;	 Catch:{ InterruptedException -> 0x0035, ExecutionException -> 0x004a }
        r3.add(r1);	 Catch:{ InterruptedException -> 0x0035, ExecutionException -> 0x004a }
        if (r1 == 0) goto L_0x0014;
    L_0x002d:
        r3 = r1.zzKz;	 Catch:{ InterruptedException -> 0x0035, ExecutionException -> 0x004a }
        if (r3 != 0) goto L_0x0014;
    L_0x0031:
        r4.zza(r0);	 Catch:{ InterruptedException -> 0x0035, ExecutionException -> 0x004a }
        goto L_0x000e;
    L_0x0035:
        r0 = move-exception;
    L_0x0036:
        r1 = "Exception while processing an adapter; continuing with other adapters";
        com.google.android.gms.internal.zzpy.zzc(r1, r0);
        goto L_0x0014;
    L_0x003c:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x003c }
        throw r0;
    L_0x003f:
        r0 = 0;
        r4.zza(r0);
        r1 = new com.google.android.gms.internal.zzjn;
        r0 = 1;
        r1.<init>(r0);
        goto L_0x000e;
    L_0x004a:
        r0 = move-exception;
        goto L_0x0036;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzjp.zze(java.util.List):com.google.android.gms.internal.zzjn");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.google.android.gms.internal.zzjn zzf(java.util.List<com.google.android.gms.internal.zzqf<com.google.android.gms.internal.zzjn>> r16) {
        /*
        r15 = this;
        r1 = r15.zzrN;
        monitor-enter(r1);
        r0 = r15.zzKK;	 Catch:{ all -> 0x0080 }
        if (r0 == 0) goto L_0x000f;
    L_0x0007:
        r2 = new com.google.android.gms.internal.zzjn;	 Catch:{ all -> 0x0080 }
        r0 = -1;
        r2.<init>(r0);	 Catch:{ all -> 0x0080 }
        monitor-exit(r1);	 Catch:{ all -> 0x0080 }
    L_0x000e:
        return r2;
    L_0x000f:
        monitor-exit(r1);	 Catch:{ all -> 0x0080 }
        r4 = -1;
        r3 = 0;
        r2 = 0;
        r0 = r15.zzKq;
        r0 = r0.zzKi;
        r6 = -1;
        r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1));
        if (r0 == 0) goto L_0x0083;
    L_0x001d:
        r0 = r15.zzKq;
        r0 = r0.zzKi;
    L_0x0021:
        r8 = r16.iterator();
        r6 = r0;
    L_0x0026:
        r0 = r8.hasNext();
        if (r0 == 0) goto L_0x00b9;
    L_0x002c:
        r0 = r8.next();
        r0 = (com.google.android.gms.internal.zzqf) r0;
        r1 = com.google.android.gms.ads.internal.zzv.zzcP();
        r10 = r1.currentTimeMillis();
        r12 = 0;
        r1 = (r6 > r12 ? 1 : (r6 == r12 ? 0 : -1));
        if (r1 != 0) goto L_0x0086;
    L_0x0040:
        r1 = r0.isDone();	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException -> 0x008f, TimeoutException -> 0x00ca }
        if (r1 == 0) goto L_0x0086;
    L_0x0046:
        r1 = r0.get();	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException -> 0x008f, TimeoutException -> 0x00ca }
        r1 = (com.google.android.gms.internal.zzjn) r1;	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException -> 0x008f, TimeoutException -> 0x00ca }
    L_0x004c:
        r5 = r15.zzKM;	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException -> 0x008f, TimeoutException -> 0x00ca }
        r5.add(r1);	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException -> 0x008f, TimeoutException -> 0x00ca }
        if (r1 == 0) goto L_0x00cc;
    L_0x0053:
        r5 = r1.zzKz;	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException -> 0x008f, TimeoutException -> 0x00ca }
        if (r5 != 0) goto L_0x00cc;
    L_0x0057:
        r5 = r1.zzKE;	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException -> 0x008f, TimeoutException -> 0x00ca }
        if (r5 == 0) goto L_0x00cc;
    L_0x005b:
        r9 = r5.zzgH();	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException -> 0x008f, TimeoutException -> 0x00ca }
        if (r9 <= r4) goto L_0x00cc;
    L_0x0061:
        r2 = r5.zzgH();	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException -> 0x008f, TimeoutException -> 0x00ca }
        r14 = r1;
        r1 = r0;
        r0 = r14;
    L_0x0068:
        r3 = com.google.android.gms.ads.internal.zzv.zzcP();
        r4 = r3.currentTimeMillis();
        r4 = r4 - r10;
        r4 = r6 - r4;
        r6 = 0;
        r4 = java.lang.Math.max(r4, r6);
        r3 = r1;
        r14 = r0;
        r0 = r4;
        r4 = r2;
        r2 = r14;
    L_0x007e:
        r6 = r0;
        goto L_0x0026;
    L_0x0080:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0080 }
        throw r0;
    L_0x0083:
        r0 = 10000; // 0x2710 float:1.4013E-41 double:4.9407E-320;
        goto L_0x0021;
    L_0x0086:
        r1 = java.util.concurrent.TimeUnit.MILLISECONDS;	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException -> 0x008f, TimeoutException -> 0x00ca }
        r1 = r0.get(r6, r1);	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException -> 0x008f, TimeoutException -> 0x00ca }
        r1 = (com.google.android.gms.internal.zzjn) r1;	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException -> 0x008f, TimeoutException -> 0x00ca }
        goto L_0x004c;
    L_0x008f:
        r0 = move-exception;
    L_0x0090:
        r1 = "Exception while processing an adapter; continuing with other adapters";
        com.google.android.gms.internal.zzpy.zzc(r1, r0);	 Catch:{ all -> 0x00a7 }
        r0 = com.google.android.gms.ads.internal.zzv.zzcP();
        r0 = r0.currentTimeMillis();
        r0 = r0 - r10;
        r0 = r6 - r0;
        r6 = 0;
        r0 = java.lang.Math.max(r0, r6);
        goto L_0x007e;
    L_0x00a7:
        r0 = move-exception;
        r1 = com.google.android.gms.ads.internal.zzv.zzcP();
        r2 = r1.currentTimeMillis();
        r2 = r2 - r10;
        r2 = r6 - r2;
        r4 = 0;
        java.lang.Math.max(r2, r4);
        throw r0;
    L_0x00b9:
        r15.zza(r3);
        if (r2 != 0) goto L_0x000e;
    L_0x00be:
        r2 = new com.google.android.gms.internal.zzjn;
        r0 = 1;
        r2.<init>(r0);
        goto L_0x000e;
    L_0x00c6:
        r0 = move-exception;
        goto L_0x0090;
    L_0x00c8:
        r0 = move-exception;
        goto L_0x0090;
    L_0x00ca:
        r0 = move-exception;
        goto L_0x0090;
    L_0x00cc:
        r0 = r2;
        r1 = r3;
        r2 = r4;
        goto L_0x0068;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzjp.zzf(java.util.List):com.google.android.gms.internal.zzjn");
    }

    public void cancel() {
        synchronized (this.zzrN) {
            this.zzKK = true;
            for (zzjm cancel : this.zzKL.values()) {
                cancel.cancel();
            }
        }
    }

    public zzjn zzd(List<zzji> list) {
        zzpy.zzbc("Starting mediation.");
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        List arrayList = new ArrayList();
        for (zzji com_google_android_gms_internal_zzji : list) {
            String str = "Trying mediation network: ";
            String valueOf = String.valueOf(com_google_android_gms_internal_zzji.zzJH);
            zzpy.zzbd(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            for (String com_google_android_gms_internal_zzjm : com_google_android_gms_internal_zzji.zzJI) {
                final zzjm com_google_android_gms_internal_zzjm2 = new zzjm(this.mContext, com_google_android_gms_internal_zzjm, this.zzsD, this.zzKq, com_google_android_gms_internal_zzji, this.zzKG.zzRd, this.zzKG.zzvj, this.zzKG.zzvf, this.zzvW, this.zzKs, this.zzKG.zzvx, this.zzKG.zzvB);
                zzqf zza = zzph.zza(newCachedThreadPool, new Callable<zzjn>(this) {
                    final /* synthetic */ zzjp zzKO;

                    public /* synthetic */ Object call() throws Exception {
                        return zzgI();
                    }

                    public zzjn zzgI() throws Exception {
                        synchronized (this.zzKO.zzrN) {
                            if (this.zzKO.zzKK) {
                                return null;
                            }
                            return com_google_android_gms_internal_zzjm2.zza(this.zzKO.zzKH, this.zzKO.zzKI);
                        }
                    }
                });
                this.zzKL.put(zza, com_google_android_gms_internal_zzjm2);
                arrayList.add(zza);
            }
        }
        switch (this.zzKJ) {
            case 2:
                return zzf(arrayList);
            default:
                return zze(arrayList);
        }
    }

    public List<zzjn> zzgB() {
        return this.zzKM;
    }
}
