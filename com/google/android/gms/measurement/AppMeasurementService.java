package com.google.android.gms.measurement;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.support.v4.content.WakefulBroadcastReceiver;
import com.google.android.gms.internal.zzatx;
import com.google.android.gms.internal.zzatx.zza;

public final class AppMeasurementService extends Service implements zza {
    private zzatx zzbpE;

    private zzatx zzJb() {
        if (this.zzbpE == null) {
            this.zzbpE = new zzatx(this);
        }
        return this.zzbpE;
    }

    public boolean callServiceStopSelfResult(int i) {
        return stopSelfResult(i);
    }

    public Context getContext() {
        return this;
    }

    public IBinder onBind(Intent intent) {
        return zzJb().onBind(intent);
    }

    public void onCreate() {
        super.onCreate();
        zzJb().onCreate();
    }

    public void onDestroy() {
        zzJb().onDestroy();
        super.onDestroy();
    }

    public void onRebind(Intent intent) {
        zzJb().onRebind(intent);
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        zzJb().onStartCommand(intent, i, i2);
        WakefulBroadcastReceiver.completeWakefulIntent(intent);
        return 2;
    }

    public boolean onUnbind(Intent intent) {
        return zzJb().onUnbind(intent);
    }
}
