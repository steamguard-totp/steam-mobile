package com.google.android.gms.internal;

import android.content.Context;
import android.os.Process;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzh;

public class zzaye {
    private static Object zzbCG = new Object();
    private static zzaye zzbHh;
    private volatile boolean mClosed;
    private final Context mContext;
    private final Thread zzWx;
    private volatile Info zzacA;
    private volatile long zzbCA;
    private volatile long zzbCB;
    private volatile long zzbCC;
    private volatile long zzbCD;
    private final Object zzbCE;
    private volatile boolean zzbHf;
    private zza zzbHg;
    private final zze zzuI;

    public interface zza {
        Info zzOv();
    }

    private zzaye(Context context) {
        this(context, null, zzh.zzyv());
    }

    public zzaye(Context context, zza com_google_android_gms_internal_zzaye_zza, zze com_google_android_gms_common_util_zze) {
        this.zzbCA = 900000;
        this.zzbCB = 30000;
        this.zzbHf = true;
        this.mClosed = false;
        this.zzbCE = new Object();
        this.zzbHg = new zza(this) {
            final /* synthetic */ zzaye zzbHi;

            {
                this.zzbHi = r1;
            }

            public Info zzOv() {
                Info info = null;
                try {
                    info = AdvertisingIdClient.getAdvertisingIdInfo(this.zzbHi.mContext);
                } catch (Throwable e) {
                    zzayx.zzc("IllegalStateException getting Advertising Id Info", e);
                } catch (Throwable e2) {
                    zzayx.zzc("GooglePlayServicesRepairableException getting Advertising Id Info", e2);
                } catch (Throwable e22) {
                    zzayx.zzc("IOException getting Ad Id Info", e22);
                } catch (Throwable e222) {
                    this.zzbHi.zzbHf = false;
                    zzayx.zzc("GooglePlayServicesNotAvailableException getting Advertising Id Info", e222);
                } catch (Throwable e2222) {
                    zzayx.zzc("Unknown exception. Could not get the Advertising Id Info.", e2222);
                }
                return info;
            }
        };
        this.zzuI = com_google_android_gms_common_util_zze;
        if (context != null) {
            this.mContext = context.getApplicationContext();
        } else {
            this.mContext = context;
        }
        if (com_google_android_gms_internal_zzaye_zza != null) {
            this.zzbHg = com_google_android_gms_internal_zzaye_zza;
        }
        this.zzbCC = this.zzuI.currentTimeMillis();
        this.zzWx = new Thread(new Runnable(this) {
            final /* synthetic */ zzaye zzbHi;

            {
                this.zzbHi = r1;
            }

            public void run() {
                this.zzbHi.zzOu();
            }
        });
    }

    private void zzOr() {
        synchronized (this) {
            try {
                zzOs();
                wait(500);
            } catch (InterruptedException e) {
            }
        }
    }

    private void zzOs() {
        if (this.zzuI.currentTimeMillis() - this.zzbCC > this.zzbCB) {
            synchronized (this.zzbCE) {
                this.zzbCE.notify();
            }
            this.zzbCC = this.zzuI.currentTimeMillis();
        }
    }

    private void zzOt() {
        if (this.zzuI.currentTimeMillis() - this.zzbCD > 3600000) {
            this.zzacA = null;
        }
    }

    private void zzOu() {
        Process.setThreadPriority(10);
        while (true) {
            boolean z = this.mClosed;
            Info info = null;
            if (this.zzbHf) {
                info = this.zzbHg.zzOv();
            }
            if (info != null) {
                this.zzacA = info;
                this.zzbCD = this.zzuI.currentTimeMillis();
                zzayx.zzbd("Obtained fresh AdvertisingId info from GmsCore.");
            }
            synchronized (this) {
                notifyAll();
            }
            try {
                synchronized (this.zzbCE) {
                    this.zzbCE.wait(this.zzbCA);
                }
            } catch (InterruptedException e) {
                zzayx.zzbd("sleep interrupted in AdvertiserDataPoller thread; continuing");
            }
        }
    }

    public static zzaye zzbL(Context context) {
        if (zzbHh == null) {
            synchronized (zzbCG) {
                if (zzbHh == null) {
                    zzbHh = new zzaye(context);
                    zzbHh.start();
                }
            }
        }
        return zzbHh;
    }

    public boolean isLimitAdTrackingEnabled() {
        if (this.zzacA == null) {
            zzOr();
        } else {
            zzOs();
        }
        zzOt();
        return this.zzacA == null ? true : this.zzacA.isLimitAdTrackingEnabled();
    }

    public void start() {
        this.zzWx.start();
    }

    public String zzOq() {
        if (this.zzacA == null) {
            zzOr();
        } else {
            zzOs();
        }
        zzOt();
        return this.zzacA == null ? null : this.zzacA.getId();
    }
}
