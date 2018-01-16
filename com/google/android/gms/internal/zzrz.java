package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzac;
import java.util.Collections;

public class zzrz extends zzru {
    private final zza zzadk = new zza(this);
    private zzsu zzadl;
    private final zzsl zzadm;
    private zztd zzadn;

    protected class zza implements ServiceConnection {
        final /* synthetic */ zzrz zzado;
        private volatile zzsu zzadp;
        private volatile boolean zzadq;

        protected zza(zzrz com_google_android_gms_internal_zzrz) {
            this.zzado = com_google_android_gms_internal_zzrz;
        }

        public void onServiceConnected(android.content.ComponentName r5, android.os.IBinder r6) {
            /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxRuntimeException: Exception block dominator not found, method:com.google.android.gms.internal.zzrz.zza.onServiceConnected(android.content.ComponentName, android.os.IBinder):void. bs: [B:3:0x0008, B:9:0x0015]
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:86)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:306)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:199)
*/
            /*
            r4 = this;
            r0 = "AnalyticsServiceConnection.onServiceConnected";
            com.google.android.gms.common.internal.zzac.zzdn(r0);
            monitor-enter(r4);
            if (r6 != 0) goto L_0x0014;
        L_0x0008:
            r0 = r4.zzado;	 Catch:{ all -> 0x005a }
            r1 = "Service connected with null binder";	 Catch:{ all -> 0x005a }
            r0.zzbS(r1);	 Catch:{ all -> 0x005a }
            r4.notifyAll();	 Catch:{ all -> 0x0046 }
            monitor-exit(r4);	 Catch:{ all -> 0x0046 }
        L_0x0013:
            return;
        L_0x0014:
            r0 = 0;
            r1 = r6.getInterfaceDescriptor();	 Catch:{ RemoteException -> 0x0051 }
            r2 = "com.google.android.gms.analytics.internal.IAnalyticsService";	 Catch:{ RemoteException -> 0x0051 }
            r2 = r2.equals(r1);	 Catch:{ RemoteException -> 0x0051 }
            if (r2 == 0) goto L_0x0049;	 Catch:{ RemoteException -> 0x0051 }
        L_0x0021:
            r0 = com.google.android.gms.internal.zzsu.zza.zzam(r6);	 Catch:{ RemoteException -> 0x0051 }
            r1 = r4.zzado;	 Catch:{ RemoteException -> 0x0051 }
            r2 = "Bound to IAnalyticsService interface";	 Catch:{ RemoteException -> 0x0051 }
            r1.zzbO(r2);	 Catch:{ RemoteException -> 0x0051 }
        L_0x002c:
            if (r0 != 0) goto L_0x005f;
        L_0x002e:
            r0 = com.google.android.gms.common.stats.zza.zzyc();	 Catch:{ IllegalArgumentException -> 0x007c }
            r1 = r4.zzado;	 Catch:{ IllegalArgumentException -> 0x007c }
            r1 = r1.getContext();	 Catch:{ IllegalArgumentException -> 0x007c }
            r2 = r4.zzado;	 Catch:{ IllegalArgumentException -> 0x007c }
            r2 = r2.zzadk;	 Catch:{ IllegalArgumentException -> 0x007c }
            r0.zza(r1, r2);	 Catch:{ IllegalArgumentException -> 0x007c }
        L_0x0041:
            r4.notifyAll();	 Catch:{ all -> 0x0046 }
            monitor-exit(r4);	 Catch:{ all -> 0x0046 }
            goto L_0x0013;	 Catch:{ all -> 0x0046 }
        L_0x0046:
            r0 = move-exception;	 Catch:{ all -> 0x0046 }
            monitor-exit(r4);	 Catch:{ all -> 0x0046 }
            throw r0;
        L_0x0049:
            r2 = r4.zzado;	 Catch:{ RemoteException -> 0x0051 }
            r3 = "Got binder with a wrong descriptor";	 Catch:{ RemoteException -> 0x0051 }
            r2.zze(r3, r1);	 Catch:{ RemoteException -> 0x0051 }
            goto L_0x002c;
        L_0x0051:
            r1 = move-exception;
            r1 = r4.zzado;	 Catch:{ all -> 0x005a }
            r2 = "Service connect failed to get IAnalyticsService";	 Catch:{ all -> 0x005a }
            r1.zzbS(r2);	 Catch:{ all -> 0x005a }
            goto L_0x002c;
        L_0x005a:
            r0 = move-exception;
            r4.notifyAll();	 Catch:{ all -> 0x0046 }
            throw r0;	 Catch:{ all -> 0x0046 }
        L_0x005f:
            r1 = r4.zzadq;	 Catch:{ all -> 0x005a }
            if (r1 != 0) goto L_0x0079;	 Catch:{ all -> 0x005a }
        L_0x0063:
            r1 = r4.zzado;	 Catch:{ all -> 0x005a }
            r2 = "onServiceConnected received after the timeout limit";	 Catch:{ all -> 0x005a }
            r1.zzbR(r2);	 Catch:{ all -> 0x005a }
            r1 = r4.zzado;	 Catch:{ all -> 0x005a }
            r1 = r1.zznt();	 Catch:{ all -> 0x005a }
            r2 = new com.google.android.gms.internal.zzrz$zza$1;	 Catch:{ all -> 0x005a }
            r2.<init>(r4, r0);	 Catch:{ all -> 0x005a }
            r1.zzg(r2);	 Catch:{ all -> 0x005a }
            goto L_0x0041;	 Catch:{ all -> 0x005a }
        L_0x0079:
            r4.zzadp = r0;	 Catch:{ all -> 0x005a }
            goto L_0x0041;
        L_0x007c:
            r0 = move-exception;
            goto L_0x0041;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzrz.zza.onServiceConnected(android.content.ComponentName, android.os.IBinder):void");
        }

        public void onServiceDisconnected(final ComponentName componentName) {
            zzac.zzdn("AnalyticsServiceConnection.onServiceDisconnected");
            this.zzado.zznt().zzg(new Runnable(this) {
                final /* synthetic */ zza zzads;

                public void run() {
                    this.zzads.zzado.onServiceDisconnected(componentName);
                }
            });
        }

        public zzsu zznP() {
            zzsu com_google_android_gms_internal_zzsu = null;
            this.zzado.zzmq();
            Intent intent = new Intent("com.google.android.gms.analytics.service.START");
            intent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.analytics.service.AnalyticsService"));
            Context context = this.zzado.getContext();
            intent.putExtra("app_package_name", context.getPackageName());
            com.google.android.gms.common.stats.zza zzyc = com.google.android.gms.common.stats.zza.zzyc();
            synchronized (this) {
                this.zzadp = null;
                this.zzadq = true;
                boolean zza = zzyc.zza(context, intent, this.zzado.zzadk, 129);
                this.zzado.zza("Bind to service requested", Boolean.valueOf(zza));
                if (zza) {
                    try {
                        wait(this.zzado.zzns().zzoR());
                    } catch (InterruptedException e) {
                        this.zzado.zzbR("Wait for service connect was interrupted");
                    }
                    this.zzadq = false;
                    com_google_android_gms_internal_zzsu = this.zzadp;
                    this.zzadp = null;
                    if (com_google_android_gms_internal_zzsu == null) {
                        this.zzado.zzbS("Successfully bound to service but never got onServiceConnected callback");
                    }
                } else {
                    this.zzadq = false;
                }
            }
            return com_google_android_gms_internal_zzsu;
        }
    }

    protected zzrz(zzrw com_google_android_gms_internal_zzrw) {
        super(com_google_android_gms_internal_zzrw);
        this.zzadn = new zztd(com_google_android_gms_internal_zzrw.zznq());
        this.zzadm = new zzsl(this, com_google_android_gms_internal_zzrw) {
            final /* synthetic */ zzrz zzado;

            public void run() {
                this.zzado.zznO();
            }
        };
    }

    private void onDisconnect() {
        zzlZ().zznm();
    }

    private void onServiceDisconnected(ComponentName componentName) {
        zzmq();
        if (this.zzadl != null) {
            this.zzadl = null;
            zza("Disconnected from device AnalyticsService", componentName);
            onDisconnect();
        }
    }

    private void zza(zzsu com_google_android_gms_internal_zzsu) {
        zzmq();
        this.zzadl = com_google_android_gms_internal_zzsu;
        zznN();
        zzlZ().onServiceConnected();
    }

    private void zznN() {
        this.zzadn.start();
        this.zzadm.zzx(zzns().zzoQ());
    }

    private void zznO() {
        zzmq();
        if (isConnected()) {
            zzbO("Inactivity, disconnecting from device AnalyticsService");
            disconnect();
        }
    }

    public boolean connect() {
        zzmq();
        zznA();
        if (this.zzadl != null) {
            return true;
        }
        zzsu zznP = this.zzadk.zznP();
        if (zznP == null) {
            return false;
        }
        this.zzadl = zznP;
        zznN();
        return true;
    }

    public void disconnect() {
        zzmq();
        zznA();
        try {
            com.google.android.gms.common.stats.zza.zzyc().zza(getContext(), this.zzadk);
        } catch (IllegalStateException e) {
        } catch (IllegalArgumentException e2) {
        }
        if (this.zzadl != null) {
            this.zzadl = null;
            onDisconnect();
        }
    }

    public boolean isConnected() {
        zzmq();
        zznA();
        return this.zzadl != null;
    }

    public boolean zzb(zzst com_google_android_gms_internal_zzst) {
        zzac.zzw(com_google_android_gms_internal_zzst);
        zzmq();
        zznA();
        zzsu com_google_android_gms_internal_zzsu = this.zzadl;
        if (com_google_android_gms_internal_zzsu == null) {
            return false;
        }
        try {
            com_google_android_gms_internal_zzsu.zza(com_google_android_gms_internal_zzst.zzfz(), com_google_android_gms_internal_zzst.zzpq(), com_google_android_gms_internal_zzst.zzps() ? zzns().zzoJ() : zzns().zzoK(), Collections.emptyList());
            zznN();
            return true;
        } catch (RemoteException e) {
            zzbO("Failed to send hits to AnalyticsService");
            return false;
        }
    }

    protected void zzmr() {
    }
}
