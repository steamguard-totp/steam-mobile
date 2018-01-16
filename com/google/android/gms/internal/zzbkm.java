package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

public class zzbkm implements Executor {
    private static zzbkm zzbWV = new zzbkm();
    private Handler mHandler = new Handler(Looper.getMainLooper());

    private zzbkm() {
    }

    public static zzbkm zzUK() {
        return zzbWV;
    }

    public void execute(Runnable runnable) {
        this.mHandler.post(runnable);
    }
}
