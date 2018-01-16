package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.zzh;
import com.google.android.gms.common.internal.zzac;

public class zzrs extends zzru {
    private final zzsc zzacF;

    public zzrs(zzrw com_google_android_gms_internal_zzrw, zzrx com_google_android_gms_internal_zzrx) {
        super(com_google_android_gms_internal_zzrw);
        zzac.zzw(com_google_android_gms_internal_zzrx);
        this.zzacF = com_google_android_gms_internal_zzrx.zzj(com_google_android_gms_internal_zzrw);
    }

    void onServiceConnected() {
        zzmq();
        this.zzacF.onServiceConnected();
    }

    public void start() {
        this.zzacF.start();
    }

    public void zzV(final boolean z) {
        zza("Network connectivity status changed", Boolean.valueOf(z));
        zznt().zzg(new Runnable(this) {
            final /* synthetic */ zzrs zzacH;

            public void run() {
                this.zzacH.zzacF.zzV(z);
            }
        });
    }

    public long zza(zzry com_google_android_gms_internal_zzry) {
        zznA();
        zzac.zzw(com_google_android_gms_internal_zzry);
        zzmq();
        long zza = this.zzacF.zza(com_google_android_gms_internal_zzry, true);
        if (zza == 0) {
            this.zzacF.zzc(com_google_android_gms_internal_zzry);
        }
        return zza;
    }

    public void zza(final zzso com_google_android_gms_internal_zzso) {
        zznA();
        zznt().zzg(new Runnable(this) {
            final /* synthetic */ zzrs zzacH;

            public void run() {
                this.zzacH.zzacF.zzb(com_google_android_gms_internal_zzso);
            }
        });
    }

    public void zza(final zzst com_google_android_gms_internal_zzst) {
        zzac.zzw(com_google_android_gms_internal_zzst);
        zznA();
        zzb("Hit delivery requested", com_google_android_gms_internal_zzst);
        zznt().zzg(new Runnable(this) {
            final /* synthetic */ zzrs zzacH;

            public void run() {
                this.zzacH.zzacF.zza(com_google_android_gms_internal_zzst);
            }
        });
    }

    public void zza(final String str, final Runnable runnable) {
        zzac.zzh(str, "campaign param can't be empty");
        zznt().zzg(new Runnable(this) {
            final /* synthetic */ zzrs zzacH;

            public void run() {
                this.zzacH.zzacF.zzbW(str);
                if (runnable != null) {
                    runnable.run();
                }
            }
        });
    }

    protected void zzmr() {
        this.zzacF.initialize();
    }

    public void zznk() {
        zznA();
        Context context = getContext();
        if (zztb.zzT(context) && zztc.zzU(context)) {
            Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
            intent.setComponent(new ComponentName(context, "com.google.android.gms.analytics.AnalyticsService"));
            context.startService(intent);
            return;
        }
        zza(null);
    }

    public void zznm() {
        zznA();
        zzh.zzmq();
        this.zzacF.zznm();
    }

    public void zznn() {
        zzbO("Radio powered up");
        zznk();
    }

    void zzno() {
        zzmq();
        this.zzacF.zzno();
    }
}
