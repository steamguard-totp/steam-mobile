package com.google.android.gms.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.common.internal.zzac;

public class zzsn extends zzru {
    private boolean zzaef;
    private boolean zzaeg;
    private AlarmManager zzaeh = ((AlarmManager) getContext().getSystemService("alarm"));

    protected zzsn(zzrw com_google_android_gms_internal_zzrw) {
        super(com_google_android_gms_internal_zzrw);
    }

    private PendingIntent zzpe() {
        Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
        intent.setComponent(new ComponentName(getContext(), "com.google.android.gms.analytics.AnalyticsReceiver"));
        return PendingIntent.getBroadcast(getContext(), 0, intent, 0);
    }

    public void cancel() {
        zznA();
        this.zzaeg = false;
        this.zzaeh.cancel(zzpe());
    }

    public void schedule() {
        zznA();
        zzac.zza(zzpd(), "Receiver not registered");
        long zzoE = zzns().zzoE();
        if (zzoE > 0) {
            cancel();
            long elapsedRealtime = zznq().elapsedRealtime() + zzoE;
            this.zzaeg = true;
            this.zzaeh.setInexactRepeating(2, elapsedRealtime, 0, zzpe());
        }
    }

    public boolean zzcv() {
        return this.zzaeg;
    }

    protected void zzmr() {
        try {
            this.zzaeh.cancel(zzpe());
            if (zzns().zzoE() > 0) {
                ActivityInfo receiverInfo = getContext().getPackageManager().getReceiverInfo(new ComponentName(getContext(), "com.google.android.gms.analytics.AnalyticsReceiver"), 2);
                if (receiverInfo != null && receiverInfo.enabled) {
                    zzbO("Receiver registered. Using alarm for local dispatch.");
                    this.zzaef = true;
                }
            }
        } catch (NameNotFoundException e) {
        }
    }

    public boolean zzpd() {
        return this.zzaef;
    }
}
