package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.ads.internal.zzv;

@zzmb
public class zzpf extends Handler {
    public zzpf(Looper looper) {
        super(looper);
    }

    public void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Throwable e) {
            zzv.zzcN().zza(e, "AdMobHandler.handleMessage");
        }
    }
}
