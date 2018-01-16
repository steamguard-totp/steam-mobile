package com.google.android.gms.internal;

import android.os.Process;
import com.google.android.gms.ads.internal.zzv;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

@zzmb
public final class zzph {
    private static final ThreadPoolExecutor zzWJ = new ThreadPoolExecutor(10, 10, 1, TimeUnit.MINUTES, new LinkedBlockingQueue(), zzaU("Default"));
    private static final ThreadPoolExecutor zzWK = new ThreadPoolExecutor(5, 5, 1, TimeUnit.MINUTES, new LinkedBlockingQueue(), zzaU("Loader"));

    class AnonymousClass1 implements Callable<Void> {
        final /* synthetic */ Runnable zzWL;

        AnonymousClass1(Runnable runnable) {
            this.zzWL = runnable;
        }

        public /* synthetic */ Object call() throws Exception {
            return zzbl();
        }

        public Void zzbl() {
            this.zzWL.run();
            return null;
        }
    }

    class AnonymousClass2 implements Callable<Void> {
        final /* synthetic */ Runnable zzWL;

        AnonymousClass2(Runnable runnable) {
            this.zzWL = runnable;
        }

        public /* synthetic */ Object call() throws Exception {
            return zzbl();
        }

        public Void zzbl() {
            this.zzWL.run();
            return null;
        }
    }

    class AnonymousClass3 implements Runnable {
        final /* synthetic */ zzqc zzWM;
        final /* synthetic */ Callable zzWN;

        AnonymousClass3(zzqc com_google_android_gms_internal_zzqc, Callable callable) {
            this.zzWM = com_google_android_gms_internal_zzqc;
            this.zzWN = callable;
        }

        public void run() {
            try {
                Process.setThreadPriority(10);
                this.zzWM.zzh(this.zzWN.call());
            } catch (Throwable e) {
                zzv.zzcN().zza(e, "AdThreadPool.submit");
                this.zzWM.zze(e);
            }
        }
    }

    class AnonymousClass4 implements Runnable {
        final /* synthetic */ zzqc zzWM;
        final /* synthetic */ Future zzWO;

        AnonymousClass4(zzqc com_google_android_gms_internal_zzqc, Future future) {
            this.zzWM = com_google_android_gms_internal_zzqc;
            this.zzWO = future;
        }

        public void run() {
            if (this.zzWM.isCancelled()) {
                this.zzWO.cancel(true);
            }
        }
    }

    class AnonymousClass5 implements ThreadFactory {
        private final AtomicInteger zzWP = new AtomicInteger(1);
        final /* synthetic */ String zzWQ;

        AnonymousClass5(String str) {
            this.zzWQ = str;
        }

        public Thread newThread(Runnable runnable) {
            String str = this.zzWQ;
            return new Thread(runnable, new StringBuilder(String.valueOf(str).length() + 23).append("AdWorker(").append(str).append(") #").append(this.zzWP.getAndIncrement()).toString());
        }
    }

    static {
        zzWJ.allowCoreThreadTimeOut(true);
        zzWK.allowCoreThreadTimeOut(true);
    }

    public static zzqf<Void> zza(int i, Runnable runnable) {
        return i == 1 ? zza(zzWK, new AnonymousClass1(runnable)) : zza(zzWJ, new AnonymousClass2(runnable));
    }

    public static zzqf<Void> zza(Runnable runnable) {
        return zza(0, runnable);
    }

    public static <T> zzqf<T> zza(Callable<T> callable) {
        return zza(zzWJ, (Callable) callable);
    }

    public static <T> zzqf<T> zza(ExecutorService executorService, Callable<T> callable) {
        Object com_google_android_gms_internal_zzqc = new zzqc();
        try {
            com_google_android_gms_internal_zzqc.zzd(new AnonymousClass4(com_google_android_gms_internal_zzqc, executorService.submit(new AnonymousClass3(com_google_android_gms_internal_zzqc, callable))));
        } catch (Throwable e) {
            zzpy.zzc("Thread execution is rejected.", e);
            com_google_android_gms_internal_zzqc.cancel(true);
        }
        return com_google_android_gms_internal_zzqc;
    }

    private static ThreadFactory zzaU(String str) {
        return new AnonymousClass5(str);
    }
}
