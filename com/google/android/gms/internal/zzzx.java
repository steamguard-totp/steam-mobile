package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzs;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

public abstract class zzzx<R extends Result> extends PendingResult<R> {
    static final ThreadLocal<Boolean> zzayN = new ThreadLocal<Boolean>() {
        protected /* synthetic */ Object initialValue() {
            return zzvg();
        }

        protected Boolean zzvg() {
            return Boolean.valueOf(false);
        }
    };
    private boolean zzJ;
    private final Object zzayO;
    protected final zza<R> zzayP;
    protected final WeakReference<GoogleApiClient> zzayQ;
    private final ArrayList<com.google.android.gms.common.api.PendingResult.zza> zzayR;
    private ResultCallback<? super R> zzayS;
    private final AtomicReference<zzb> zzayT;
    private zzb zzayU;
    private volatile boolean zzayV;
    private boolean zzayW;
    private zzs zzayX;
    private volatile zzabp<R> zzayY;
    private boolean zzayZ;
    private R zzayd;
    private final CountDownLatch zzth;

    public static class zza<R extends Result> extends Handler {
        public zza() {
            this(Looper.getMainLooper());
        }

        public zza(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Pair pair = (Pair) message.obj;
                    zzb((ResultCallback) pair.first, (Result) pair.second);
                    return;
                case 2:
                    ((zzzx) message.obj).zzB(Status.zzayk);
                    return;
                default:
                    Log.wtf("BasePendingResult", "Don't know how to handle message: " + message.what, new Exception());
                    return;
            }
        }

        public void zza(ResultCallback<? super R> resultCallback, R r) {
            sendMessage(obtainMessage(1, new Pair(resultCallback, r)));
        }

        protected void zzb(ResultCallback<? super R> resultCallback, R r) {
            try {
                resultCallback.onResult(r);
            } catch (RuntimeException e) {
                zzzx.zzd(r);
                throw e;
            }
        }

        public void zzvh() {
            removeMessages(2);
        }
    }

    private final class zzb {
        final /* synthetic */ zzzx zzaza;

        private zzb(zzzx com_google_android_gms_internal_zzzx) {
            this.zzaza = com_google_android_gms_internal_zzzx;
        }

        protected void finalize() throws Throwable {
            zzzx.zzd(this.zzaza.zzayd);
            super.finalize();
        }
    }

    @Deprecated
    zzzx() {
        this.zzayO = new Object();
        this.zzth = new CountDownLatch(1);
        this.zzayR = new ArrayList();
        this.zzayT = new AtomicReference();
        this.zzayZ = false;
        this.zzayP = new zza(Looper.getMainLooper());
        this.zzayQ = new WeakReference(null);
    }

    @Deprecated
    protected zzzx(Looper looper) {
        this.zzayO = new Object();
        this.zzth = new CountDownLatch(1);
        this.zzayR = new ArrayList();
        this.zzayT = new AtomicReference();
        this.zzayZ = false;
        this.zzayP = new zza(looper);
        this.zzayQ = new WeakReference(null);
    }

    protected zzzx(GoogleApiClient googleApiClient) {
        this.zzayO = new Object();
        this.zzth = new CountDownLatch(1);
        this.zzayR = new ArrayList();
        this.zzayT = new AtomicReference();
        this.zzayZ = false;
        this.zzayP = new zza(googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
        this.zzayQ = new WeakReference(googleApiClient);
    }

    private R get() {
        R r;
        boolean z = true;
        synchronized (this.zzayO) {
            if (this.zzayV) {
                z = false;
            }
            zzac.zza(z, "Result has already been consumed.");
            zzac.zza(isReady(), "Result is not ready.");
            r = this.zzayd;
            this.zzayd = null;
            this.zzayS = null;
            this.zzayV = true;
        }
        zzvd();
        return r;
    }

    private void zzc(R r) {
        this.zzayd = r;
        this.zzayX = null;
        this.zzth.countDown();
        Status status = this.zzayd.getStatus();
        if (this.zzJ) {
            this.zzayS = null;
        } else if (this.zzayS != null) {
            this.zzayP.zzvh();
            this.zzayP.zza(this.zzayS, get());
        } else if (this.zzayd instanceof Releasable) {
            this.zzayU = new zzb();
        }
        Iterator it = this.zzayR.iterator();
        while (it.hasNext()) {
            ((com.google.android.gms.common.api.PendingResult.zza) it.next()).zzx(status);
        }
        this.zzayR.clear();
    }

    public static void zzd(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (Throwable e) {
                String valueOf = String.valueOf(result);
                Log.w("BasePendingResult", new StringBuilder(String.valueOf(valueOf).length() + 18).append("Unable to release ").append(valueOf).toString(), e);
            }
        }
    }

    private void zzvd() {
        zzb com_google_android_gms_internal_zzabq_zzb = (zzb) this.zzayT.getAndSet(null);
        if (com_google_android_gms_internal_zzabq_zzb != null) {
            com_google_android_gms_internal_zzabq_zzb.zzc(this);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void cancel() {
        /*
        r2 = this;
        r1 = r2.zzayO;
        monitor-enter(r1);
        r0 = r2.zzJ;	 Catch:{ all -> 0x0020 }
        if (r0 != 0) goto L_0x000b;
    L_0x0007:
        r0 = r2.zzayV;	 Catch:{ all -> 0x0020 }
        if (r0 == 0) goto L_0x000d;
    L_0x000b:
        monitor-exit(r1);	 Catch:{ all -> 0x0020 }
    L_0x000c:
        return;
    L_0x000d:
        r0 = r2.zzayd;	 Catch:{ all -> 0x0020 }
        zzd(r0);	 Catch:{ all -> 0x0020 }
        r0 = 1;
        r2.zzJ = r0;	 Catch:{ all -> 0x0020 }
        r0 = com.google.android.gms.common.api.Status.zzayl;	 Catch:{ all -> 0x0020 }
        r0 = r2.zzc(r0);	 Catch:{ all -> 0x0020 }
        r2.zzc(r0);	 Catch:{ all -> 0x0020 }
        monitor-exit(r1);	 Catch:{ all -> 0x0020 }
        goto L_0x000c;
    L_0x0020:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0020 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzzx.cancel():void");
    }

    public boolean isCanceled() {
        boolean z;
        synchronized (this.zzayO) {
            z = this.zzJ;
        }
        return z;
    }

    public final boolean isReady() {
        return this.zzth.getCount() == 0;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setResultCallback(com.google.android.gms.common.api.ResultCallback<? super R> r6) {
        /*
        r5 = this;
        r0 = 1;
        r1 = 0;
        r3 = r5.zzayO;
        monitor-enter(r3);
        if (r6 != 0) goto L_0x000c;
    L_0x0007:
        r0 = 0;
        r5.zzayS = r0;	 Catch:{ all -> 0x0027 }
        monitor-exit(r3);	 Catch:{ all -> 0x0027 }
    L_0x000b:
        return;
    L_0x000c:
        r2 = r5.zzayV;	 Catch:{ all -> 0x0027 }
        if (r2 != 0) goto L_0x002a;
    L_0x0010:
        r2 = r0;
    L_0x0011:
        r4 = "Result has already been consumed.";
        com.google.android.gms.common.internal.zzac.zza(r2, r4);	 Catch:{ all -> 0x0027 }
        r2 = r5.zzayY;	 Catch:{ all -> 0x0027 }
        if (r2 != 0) goto L_0x002c;
    L_0x001a:
        r1 = "Cannot set callbacks if then() has been called.";
        com.google.android.gms.common.internal.zzac.zza(r0, r1);	 Catch:{ all -> 0x0027 }
        r0 = r5.isCanceled();	 Catch:{ all -> 0x0027 }
        if (r0 == 0) goto L_0x002e;
    L_0x0025:
        monitor-exit(r3);	 Catch:{ all -> 0x0027 }
        goto L_0x000b;
    L_0x0027:
        r0 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x0027 }
        throw r0;
    L_0x002a:
        r2 = r1;
        goto L_0x0011;
    L_0x002c:
        r0 = r1;
        goto L_0x001a;
    L_0x002e:
        r0 = r5.isReady();	 Catch:{ all -> 0x0027 }
        if (r0 == 0) goto L_0x003f;
    L_0x0034:
        r0 = r5.zzayP;	 Catch:{ all -> 0x0027 }
        r1 = r5.get();	 Catch:{ all -> 0x0027 }
        r0.zza(r6, r1);	 Catch:{ all -> 0x0027 }
    L_0x003d:
        monitor-exit(r3);	 Catch:{ all -> 0x0027 }
        goto L_0x000b;
    L_0x003f:
        r5.zzayS = r6;	 Catch:{ all -> 0x0027 }
        goto L_0x003d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzzx.setResultCallback(com.google.android.gms.common.api.ResultCallback):void");
    }

    public final void zzB(Status status) {
        synchronized (this.zzayO) {
            if (!isReady()) {
                zzb(zzc(status));
                this.zzayW = true;
            }
        }
    }

    public final void zza(com.google.android.gms.common.api.PendingResult.zza com_google_android_gms_common_api_PendingResult_zza) {
        boolean z = true;
        zzac.zza(!this.zzayV, "Result has already been consumed.");
        if (com_google_android_gms_common_api_PendingResult_zza == null) {
            z = false;
        }
        zzac.zzb(z, (Object) "Callback cannot be null.");
        synchronized (this.zzayO) {
            if (isReady()) {
                com_google_android_gms_common_api_PendingResult_zza.zzx(this.zzayd.getStatus());
            } else {
                this.zzayR.add(com_google_android_gms_common_api_PendingResult_zza);
            }
        }
    }

    public void zza(zzb com_google_android_gms_internal_zzabq_zzb) {
        this.zzayT.set(com_google_android_gms_internal_zzabq_zzb);
    }

    public final void zzb(R r) {
        boolean z = true;
        synchronized (this.zzayO) {
            if (this.zzayW || this.zzJ) {
                zzd(r);
                return;
            }
            if (isReady()) {
            }
            zzac.zza(!isReady(), "Results have already been set");
            if (this.zzayV) {
                z = false;
            }
            zzac.zza(z, "Result has already been consumed");
            zzc((Result) r);
        }
    }

    protected abstract R zzc(Status status);

    public Integer zzuR() {
        return null;
    }

    public boolean zzvc() {
        boolean isCanceled;
        synchronized (this.zzayO) {
            if (((GoogleApiClient) this.zzayQ.get()) == null || !this.zzayZ) {
                cancel();
            }
            isCanceled = isCanceled();
        }
        return isCanceled;
    }

    public void zzve() {
        setResultCallback(null);
    }

    public void zzvf() {
        boolean z = this.zzayZ || ((Boolean) zzayN.get()).booleanValue();
        this.zzayZ = z;
    }
}
