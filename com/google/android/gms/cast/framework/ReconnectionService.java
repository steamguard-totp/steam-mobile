package com.google.android.gms.cast.framework;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.internal.zzwq;
import com.google.android.gms.internal.zzyu;

public class ReconnectionService extends Service {
    private static final zzyu zzaoQ = new zzyu("ReconnectionService");
    private zzl zzapy;

    public IBinder onBind(Intent intent) {
        try {
            return this.zzapy.onBind(intent);
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "onBind", zzl.class.getSimpleName());
            return null;
        }
    }

    public void onCreate() {
        CastContext sharedInstance = CastContext.getSharedInstance(this);
        this.zzapy = zzwq.zza(this, sharedInstance.getSessionManager().zzsg(), sharedInstance.zzsf().zzsg());
        try {
            this.zzapy.onCreate();
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "onCreate", zzl.class.getSimpleName());
        }
        super.onCreate();
    }

    public void onDestroy() {
        try {
            this.zzapy.onDestroy();
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "onDestroy", zzl.class.getSimpleName());
        }
        super.onDestroy();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        int i3 = 1;
        try {
            i3 = this.zzapy.onStartCommand(intent, i, i2);
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "onStartCommand", zzl.class.getSimpleName());
        }
        return i3;
    }
}
