package com.google.android.gms.internal;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;

class zzazo {

    private static class zza {
        private static final ExecutorService zzbJl = Executors.newSingleThreadExecutor(new ThreadFactory() {
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "google-tag-manager-background-thread");
            }
        });
    }

    private static class zzb {
        private static final ScheduledExecutorService zzbJm = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() {
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "google-tag-manager-scheduler-thread");
            }
        });
    }

    static ExecutorService zzQR() {
        return zza.zzbJl;
    }

    static ScheduledExecutorService zzQS() {
        return zzb.zzbJm;
    }
}
