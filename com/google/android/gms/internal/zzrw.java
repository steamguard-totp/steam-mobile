package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.zzh;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zze;
import java.lang.Thread.UncaughtExceptionHandler;

public class zzrw {
    private static volatile zzrw zzacQ;
    private final Context mContext;
    private final Context zzacR;
    private final zzsj zzacS;
    private final zzsx zzacT;
    private final zzh zzacU;
    private final zzrs zzacV;
    private final zzsn zzacW;
    private final zzth zzacX;
    private final zzta zzacY;
    private final GoogleAnalytics zzacZ;
    private final zzse zzada;
    private final zzrr zzadb;
    private final zzsb zzadc;
    private final zzsm zzadd;
    private final zze zzuI;

    protected zzrw(zzrx com_google_android_gms_internal_zzrx) {
        Object applicationContext = com_google_android_gms_internal_zzrx.getApplicationContext();
        zzac.zzb(applicationContext, (Object) "Application context can't be null");
        Context zznC = com_google_android_gms_internal_zzrx.zznC();
        zzac.zzw(zznC);
        this.mContext = applicationContext;
        this.zzacR = zznC;
        this.zzuI = com_google_android_gms_internal_zzrx.zzh(this);
        this.zzacS = com_google_android_gms_internal_zzrx.zzg(this);
        zzsx zzf = com_google_android_gms_internal_zzrx.zzf(this);
        zzf.initialize();
        this.zzacT = zzf;
        zzf = zznr();
        String str = zzrv.VERSION;
        zzf.zzbQ(new StringBuilder(String.valueOf(str).length() + 134).append("Google Analytics ").append(str).append(" is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4").toString());
        zzta zzq = com_google_android_gms_internal_zzrx.zzq(this);
        zzq.initialize();
        this.zzacY = zzq;
        zzth zze = com_google_android_gms_internal_zzrx.zze(this);
        zze.initialize();
        this.zzacX = zze;
        zzrs zzl = com_google_android_gms_internal_zzrx.zzl(this);
        zzse zzd = com_google_android_gms_internal_zzrx.zzd(this);
        zzrr zzc = com_google_android_gms_internal_zzrx.zzc(this);
        zzsb zzb = com_google_android_gms_internal_zzrx.zzb(this);
        zzsm zza = com_google_android_gms_internal_zzrx.zza(this);
        zzh zzX = com_google_android_gms_internal_zzrx.zzX(applicationContext);
        zzX.zza(zznB());
        this.zzacU = zzX;
        GoogleAnalytics zzi = com_google_android_gms_internal_zzrx.zzi(this);
        zzd.initialize();
        this.zzada = zzd;
        zzc.initialize();
        this.zzadb = zzc;
        zzb.initialize();
        this.zzadc = zzb;
        zza.initialize();
        this.zzadd = zza;
        zzsn zzp = com_google_android_gms_internal_zzrx.zzp(this);
        zzp.initialize();
        this.zzacW = zzp;
        zzl.initialize();
        this.zzacV = zzl;
        zzi.initialize();
        this.zzacZ = zzi;
        zzl.start();
    }

    public static zzrw zzW(Context context) {
        zzac.zzw(context);
        if (zzacQ == null) {
            synchronized (zzrw.class) {
                if (zzacQ == null) {
                    zze zzyv = com.google.android.gms.common.util.zzh.zzyv();
                    long elapsedRealtime = zzyv.elapsedRealtime();
                    zzrw com_google_android_gms_internal_zzrw = new zzrw(new zzrx(context));
                    zzacQ = com_google_android_gms_internal_zzrw;
                    GoogleAnalytics.zzlW();
                    elapsedRealtime = zzyv.elapsedRealtime() - elapsedRealtime;
                    long longValue = ((Long) zzsq.zzaeY.get()).longValue();
                    if (elapsedRealtime > longValue) {
                        com_google_android_gms_internal_zzrw.zznr().zzc("Slow initialization (ms)", Long.valueOf(elapsedRealtime), Long.valueOf(longValue));
                    }
                }
            }
        }
        return zzacQ;
    }

    private void zza(zzru com_google_android_gms_internal_zzru) {
        zzac.zzb((Object) com_google_android_gms_internal_zzru, (Object) "Analytics service not created/initialized");
        zzac.zzb(com_google_android_gms_internal_zzru.isInitialized(), (Object) "Analytics service not initialized");
    }

    public Context getContext() {
        return this.mContext;
    }

    public zzrs zzlZ() {
        zza(this.zzacV);
        return this.zzacV;
    }

    public zzth zzma() {
        zza(this.zzacX);
        return this.zzacX;
    }

    public void zzmq() {
        zzh.zzmq();
    }

    protected UncaughtExceptionHandler zznB() {
        return new UncaughtExceptionHandler(this) {
            final /* synthetic */ zzrw zzade;

            {
                this.zzade = r1;
            }

            public void uncaughtException(Thread thread, Throwable th) {
                zzsx zznD = this.zzade.zznD();
                if (zznD != null) {
                    zznD.zze("Job execution failed", th);
                }
            }
        };
    }

    public Context zznC() {
        return this.zzacR;
    }

    public zzsx zznD() {
        return this.zzacT;
    }

    public GoogleAnalytics zznE() {
        zzac.zzw(this.zzacZ);
        zzac.zzb(this.zzacZ.isInitialized(), (Object) "Analytics instance not initialized");
        return this.zzacZ;
    }

    public zzta zznF() {
        return (this.zzacY == null || !this.zzacY.isInitialized()) ? null : this.zzacY;
    }

    public zzrr zznG() {
        zza(this.zzadb);
        return this.zzadb;
    }

    public zzse zznH() {
        zza(this.zzada);
        return this.zzada;
    }

    public zze zznq() {
        return this.zzuI;
    }

    public zzsx zznr() {
        zza(this.zzacT);
        return this.zzacT;
    }

    public zzsj zzns() {
        return this.zzacS;
    }

    public zzh zznt() {
        zzac.zzw(this.zzacU);
        return this.zzacU;
    }

    public zzsn zznu() {
        zza(this.zzacW);
        return this.zzacW;
    }

    public zzta zznv() {
        zza(this.zzacY);
        return this.zzacY;
    }

    public zzsb zzny() {
        zza(this.zzadc);
        return this.zzadc;
    }

    public zzsm zznz() {
        return this.zzadd;
    }
}
