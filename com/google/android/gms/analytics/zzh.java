package com.google.android.gms.analytics;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzre;
import com.google.android.gms.internal.zzrj;
import com.google.android.gms.internal.zztg;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class zzh {
    private static volatile zzh zzabg;
    private final Context mContext;
    private final List<Object> zzabh = new CopyOnWriteArrayList();
    private final zzd zzabi = new zzd();
    private final zza zzabj = new zza(this);
    private volatile zzre zzabk;
    private UncaughtExceptionHandler zzabl;

    private class zza extends ThreadPoolExecutor {
        final /* synthetic */ zzh zzabn;

        public zza(zzh com_google_android_gms_analytics_zzh) {
            this.zzabn = com_google_android_gms_analytics_zzh;
            super(1, 1, 1, TimeUnit.MINUTES, new LinkedBlockingQueue());
            setThreadFactory(new zzb());
            allowCoreThreadTimeOut(true);
        }

        protected <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
            return new FutureTask<T>(this, runnable, t) {
                final /* synthetic */ zza zzabo;

                protected void setException(Throwable th) {
                    UncaughtExceptionHandler zzb = this.zzabo.zzabn.zzabl;
                    if (zzb != null) {
                        zzb.uncaughtException(Thread.currentThread(), th);
                    } else if (Log.isLoggable("GAv4", 6)) {
                        String valueOf = String.valueOf(th);
                        Log.e("GAv4", new StringBuilder(String.valueOf(valueOf).length() + 37).append("MeasurementExecutor: job failed with ").append(valueOf).toString());
                    }
                    super.setException(th);
                }
            };
        }
    }

    private static class zzb implements ThreadFactory {
        private static final AtomicInteger zzabp = new AtomicInteger();

        private zzb() {
        }

        public Thread newThread(Runnable runnable) {
            return new zzc(runnable, "measurement-" + zzabp.incrementAndGet());
        }
    }

    private static class zzc extends Thread {
        zzc(Runnable runnable, String str) {
            super(runnable, str);
        }

        public void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    zzh(Context context) {
        Context applicationContext = context.getApplicationContext();
        zzac.zzw(applicationContext);
        this.mContext = applicationContext;
    }

    public static zzh zzV(Context context) {
        zzac.zzw(context);
        if (zzabg == null) {
            synchronized (zzh.class) {
                if (zzabg == null) {
                    zzabg = new zzh(context);
                }
            }
        }
        return zzabg;
    }

    private void zzb(zze com_google_android_gms_analytics_zze) {
        zzac.zzdo("deliver should be called from worker thread");
        zzac.zzb(com_google_android_gms_analytics_zze.zzmg(), (Object) "Measurement must be submitted");
        List<zzi> zzmd = com_google_android_gms_analytics_zze.zzmd();
        if (!zzmd.isEmpty()) {
            Set hashSet = new HashSet();
            for (zzi com_google_android_gms_analytics_zzi : zzmd) {
                Uri zzlQ = com_google_android_gms_analytics_zzi.zzlQ();
                if (!hashSet.contains(zzlQ)) {
                    hashSet.add(zzlQ);
                    com_google_android_gms_analytics_zzi.zzb(com_google_android_gms_analytics_zze);
                }
            }
        }
    }

    public static void zzmq() {
        if (!(Thread.currentThread() instanceof zzc)) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    public void zza(UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.zzabl = uncaughtExceptionHandler;
    }

    public <V> Future<V> zzc(Callable<V> callable) {
        zzac.zzw(callable);
        if (!(Thread.currentThread() instanceof zzc)) {
            return this.zzabj.submit(callable);
        }
        Future futureTask = new FutureTask(callable);
        futureTask.run();
        return futureTask;
    }

    void zze(zze com_google_android_gms_analytics_zze) {
        if (com_google_android_gms_analytics_zze.zzmk()) {
            throw new IllegalStateException("Measurement prototype can't be submitted");
        } else if (com_google_android_gms_analytics_zze.zzmg()) {
            throw new IllegalStateException("Measurement can only be submitted once");
        } else {
            final zze zzmb = com_google_android_gms_analytics_zze.zzmb();
            zzmb.zzmh();
            this.zzabj.execute(new Runnable(this) {
                final /* synthetic */ zzh zzabn;

                public void run() {
                    zzmb.zzmi().zza(zzmb);
                    Iterator it = this.zzabn.zzabh.iterator();
                    while (it.hasNext()) {
                        it.next();
                    }
                    this.zzabn.zzb(zzmb);
                }
            });
        }
    }

    public void zzg(Runnable runnable) {
        zzac.zzw(runnable);
        this.zzabj.submit(runnable);
    }

    public zzre zzmo() {
        if (this.zzabk == null) {
            synchronized (this) {
                if (this.zzabk == null) {
                    zzre com_google_android_gms_internal_zzre = new zzre();
                    PackageManager packageManager = this.mContext.getPackageManager();
                    String packageName = this.mContext.getPackageName();
                    com_google_android_gms_internal_zzre.setAppId(packageName);
                    com_google_android_gms_internal_zzre.setAppInstallerId(packageManager.getInstallerPackageName(packageName));
                    String str = null;
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(this.mContext.getPackageName(), 0);
                        if (packageInfo != null) {
                            CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                            if (!TextUtils.isEmpty(applicationLabel)) {
                                packageName = applicationLabel.toString();
                            }
                            str = packageInfo.versionName;
                        }
                    } catch (NameNotFoundException e) {
                        String str2 = "GAv4";
                        String str3 = "Error retrieving package info: appName set to ";
                        String valueOf = String.valueOf(packageName);
                        Log.e(str2, valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
                    }
                    com_google_android_gms_internal_zzre.setAppName(packageName);
                    com_google_android_gms_internal_zzre.setAppVersion(str);
                    this.zzabk = com_google_android_gms_internal_zzre;
                }
            }
        }
        return this.zzabk;
    }

    public zzrj zzmp() {
        DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
        zzrj com_google_android_gms_internal_zzrj = new zzrj();
        com_google_android_gms_internal_zzrj.setLanguage(zztg.zza(Locale.getDefault()));
        com_google_android_gms_internal_zzrj.zzaz(displayMetrics.widthPixels);
        com_google_android_gms_internal_zzrj.zzaA(displayMetrics.heightPixels);
        return com_google_android_gms_internal_zzrj;
    }
}
