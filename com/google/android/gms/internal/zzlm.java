package com.google.android.gms.internal;

import android.content.Context;
import android.os.SystemClock;

@zzmb
public abstract class zzlm extends zzpd {
    protected final Context mContext;
    protected final com.google.android.gms.internal.zzln.zza zzPn;
    protected final com.google.android.gms.internal.zzov.zza zzPo;
    protected zzmk zzPp;
    protected final Object zzPr = new Object();
    protected final Object zzrN = new Object();

    protected static final class zza extends Exception {
        private final int zzPF;

        public zza(String str, int i) {
            super(str);
            this.zzPF = i;
        }

        public int getErrorCode() {
            return this.zzPF;
        }
    }

    protected zzlm(Context context, com.google.android.gms.internal.zzov.zza com_google_android_gms_internal_zzov_zza, com.google.android.gms.internal.zzln.zza com_google_android_gms_internal_zzln_zza) {
        super(true);
        this.mContext = context;
        this.zzPo = com_google_android_gms_internal_zzov_zza;
        this.zzPp = com_google_android_gms_internal_zzov_zza.zzVB;
        this.zzPn = com_google_android_gms_internal_zzln_zza;
    }

    public void onStop() {
    }

    protected abstract zzov zzP(int i);

    public void zzcm() {
        int errorCode;
        synchronized (this.zzrN) {
            zzpy.zzbc("AdRendererBackgroundTask started.");
            int i = this.zzPo.errorCode;
            try {
                zzh(SystemClock.elapsedRealtime());
            } catch (zza e) {
                errorCode = e.getErrorCode();
                if (errorCode == 3 || errorCode == -1) {
                    zzpy.zzbd(e.getMessage());
                } else {
                    zzpy.zzbe(e.getMessage());
                }
                if (this.zzPp == null) {
                    this.zzPp = new zzmk(errorCode);
                } else {
                    this.zzPp = new zzmk(errorCode, this.zzPp.zzKe);
                }
                zzpi.zzWR.post(new Runnable(this) {
                    final /* synthetic */ zzlm zzPE;

                    {
                        this.zzPE = r1;
                    }

                    public void run() {
                        this.zzPE.onStop();
                    }
                });
                i = errorCode;
            }
            final zzov zzP = zzP(i);
            zzpi.zzWR.post(new Runnable(this) {
                final /* synthetic */ zzlm zzPE;

                public void run() {
                    synchronized (this.zzPE.zzrN) {
                        this.zzPE.zzn(zzP);
                    }
                }
            });
        }
    }

    protected abstract void zzh(long j) throws zza;

    protected void zzn(zzov com_google_android_gms_internal_zzov) {
        this.zzPn.zzb(com_google_android_gms_internal_zzov);
    }
}
