package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

class zzazj extends zzazi {
    private static final Object zzbFZ = new Object();
    private static zzazj zzbIB;
    private boolean connected = true;
    private Context zzbGa;
    private int zzbGd = 1800000;
    private boolean zzbGe = true;
    private boolean zzbGf = false;
    private boolean zzbGg = true;
    private boolean zzbGk = false;
    private zzayz zzbIA;
    private zzays zzbIv;
    private volatile zzayq zzbIw;
    private boolean zzbIx = false;
    private zzayt zzbIy = new zzayt(this) {
        final /* synthetic */ zzazj zzbIC;

        {
            this.zzbIC = r1;
        }

        public void zzaM(boolean z) {
            this.zzbIC.zze(z, this.zzbIC.connected);
        }
    };
    private zza zzbIz;

    public interface zza {
        void cancel();

        void zzPY();

        void zzx(long j);
    }

    private class zzb implements zza {
        private Handler handler;
        final /* synthetic */ zzazj zzbIC;

        private zzb(zzazj com_google_android_gms_internal_zzazj) {
            this.zzbIC = com_google_android_gms_internal_zzazj;
            this.handler = new Handler(this.zzbIC.zzbGa.getMainLooper(), new Callback(this) {
                final /* synthetic */ zzb zzbID;

                {
                    this.zzbID = r1;
                }

                public boolean handleMessage(Message message) {
                    if (1 == message.what && zzazj.zzbFZ.equals(message.obj)) {
                        this.zzbID.zzbIC.dispatch();
                        if (!this.zzbID.zzbIC.isPowerSaveMode()) {
                            this.zzbID.zzx((long) this.zzbID.zzbIC.zzbGd);
                        }
                    }
                    return true;
                }
            });
        }

        private Message obtainMessage() {
            return this.handler.obtainMessage(1, zzazj.zzbFZ);
        }

        public void cancel() {
            this.handler.removeMessages(1, zzazj.zzbFZ);
        }

        public void zzPY() {
            this.handler.removeMessages(1, zzazj.zzbFZ);
            this.handler.sendMessage(obtainMessage());
        }

        public void zzx(long j) {
            this.handler.removeMessages(1, zzazj.zzbFZ);
            this.handler.sendMessageDelayed(obtainMessage(), j);
        }
    }

    private zzazj() {
    }

    private boolean isPowerSaveMode() {
        return this.zzbGk || !this.connected || this.zzbGd <= 0;
    }

    private void zzPU() {
        this.zzbIA = new zzayz(this);
        this.zzbIA.zzbJ(this.zzbGa);
    }

    private void zzPV() {
        this.zzbIz = new zzb();
        if (this.zzbGd > 0) {
            this.zzbIz.zzx((long) this.zzbGd);
        }
    }

    public static zzazj zzQM() {
        if (zzbIB == null) {
            zzbIB = new zzazj();
        }
        return zzbIB;
    }

    private void zzog() {
        if (isPowerSaveMode()) {
            this.zzbIz.cancel();
            zzayx.v("PowerSaveMode initiated.");
            return;
        }
        this.zzbIz.zzx((long) this.zzbGd);
        zzayx.v("PowerSaveMode terminated.");
    }

    public synchronized void dispatch() {
        if (!this.zzbGf) {
            zzayx.v("Dispatch call queued. Dispatch will run once initialization is complete.");
            this.zzbGe = true;
        } else if (!this.zzbIx) {
            this.zzbIx = true;
            this.zzbIw.zzp(new Runnable(this) {
                final /* synthetic */ zzazj zzbIC;

                {
                    this.zzbIC = r1;
                }

                public void run() {
                    this.zzbIC.zzbIx = false;
                    this.zzbIC.zzbIv.dispatch();
                }
            });
        }
    }

    synchronized zzays zzQN() {
        if (this.zzbIv == null) {
            if (this.zzbGa == null) {
                throw new IllegalStateException("Cant get a store unless we have a context");
            }
            this.zzbIv = new zzaza(this.zzbIy, this.zzbGa);
        }
        if (this.zzbIz == null) {
            zzPV();
        }
        this.zzbGf = true;
        if (this.zzbGe) {
            dispatch();
            this.zzbGe = false;
        }
        if (this.zzbIA == null && this.zzbGg) {
            zzPU();
        }
        return this.zzbIv;
    }

    synchronized void zza(Context context, zzayq com_google_android_gms_internal_zzayq) {
        if (this.zzbGa == null) {
            this.zzbGa = context.getApplicationContext();
            if (this.zzbIw == null) {
                this.zzbIw = com_google_android_gms_internal_zzayq;
            }
        }
    }

    public synchronized void zzaN(boolean z) {
        zze(this.zzbGk, z);
    }

    synchronized void zze(boolean z, boolean z2) {
        boolean isPowerSaveMode = isPowerSaveMode();
        this.zzbGk = z;
        this.connected = z2;
        if (isPowerSaveMode() != isPowerSaveMode) {
            zzog();
        }
    }

    public synchronized void zznn() {
        if (!isPowerSaveMode()) {
            this.zzbIz.zzPY();
        }
    }
}
