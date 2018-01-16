package com.google.android.gms.cast.framework.media;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzwq;
import com.google.android.gms.internal.zzyu;

public class MediaNotificationService extends Service {
    private static final zzyu zzaoQ = new zzyu("MediaNotificationService");
    private zzc zzaqQ;

    public IBinder onBind(Intent intent) {
        try {
            return this.zzaqQ.onBind(intent);
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "onBind", zzc.class.getSimpleName());
            return null;
        }
    }

    public void onCreate() {
        this.zzaqQ = zzwq.zza((Service) this, CastContext.getSharedInstance(this).zzsg(), zze.zzA(null), CastContext.getSharedInstance(this).getCastOptions().getCastMediaOptions());
        try {
            this.zzaqQ.onCreate();
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "onCreate", zzc.class.getSimpleName());
        }
        super.onCreate();
    }

    public void onDestroy() {
        try {
            this.zzaqQ.onDestroy();
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "onDestroy", zzc.class.getSimpleName());
        }
        super.onDestroy();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        int i3 = 1;
        try {
            i3 = this.zzaqQ.onStartCommand(intent, i, i2);
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "onStartCommand", zzc.class.getSimpleName());
        }
        return i3;
    }
}
