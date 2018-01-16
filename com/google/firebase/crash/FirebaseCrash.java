package com.google.firebase.crash;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.Keep;
import android.util.Log;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzbkn;
import com.google.android.gms.internal.zzbko;
import com.google.android.gms.internal.zzbkp;
import com.google.android.gms.internal.zzbkr;
import com.google.android.gms.internal.zzbks;
import com.google.android.gms.internal.zzbkt;
import com.google.android.gms.internal.zzbku;
import com.google.firebase.FirebaseApp;
import com.google.firebase.iid.zzc;

public class FirebaseCrash {
    private static final String LOG_TAG = FirebaseCrash.class.getSimpleName();
    private static volatile FirebaseCrash zzbWY;
    private zzbkr zzbWW;
    private zzbkn zzbWX;
    private boolean zzbqB;

    FirebaseCrash(FirebaseApp firebaseApp, boolean z) {
        this.zzbqB = z;
        Context applicationContext = firebaseApp.getApplicationContext();
        if (applicationContext == null) {
            Log.w(LOG_TAG, "Application context is missing, disabling api");
            this.zzbqB = false;
        }
        if (this.zzbqB) {
            String str;
            String valueOf;
            try {
                zzbkp com_google_android_gms_internal_zzbkp = new zzbkp(firebaseApp.getOptions().getApplicationId(), firebaseApp.getOptions().getApiKey());
                zzbks.zzUT().zzao(applicationContext);
                this.zzbWW = zzbks.zzUT().zzUU();
                this.zzbWW.zza(zze.zzA(applicationContext), com_google_android_gms_internal_zzbkp);
                this.zzbWX = new zzbkn(applicationContext);
                zzUP();
                str = "FirebaseCrash reporting initialized ";
                valueOf = String.valueOf(zzbks.zzUT().toString());
                if (valueOf.length() != 0) {
                    str.concat(valueOf);
                } else {
                    valueOf = new String(str);
                }
            } catch (Exception e) {
                valueOf = LOG_TAG;
                String str2 = "Failed to initialize crash reporting: ";
                str = String.valueOf(e.getMessage());
                Log.e(valueOf, str.length() != 0 ? str2.concat(str) : new String(str2));
                this.zzbqB = false;
            }
        }
    }

    @Keep
    @Deprecated
    public static FirebaseCrash getInstance(FirebaseApp firebaseApp) {
        zzbku.initialize(firebaseApp.getApplicationContext());
        FirebaseCrash firebaseCrash = new FirebaseCrash(firebaseApp, ((Boolean) zzbku.zzbXh.get()).booleanValue());
        synchronized (FirebaseCrash.class) {
            if (zzbWY == null) {
                zzbWY = firebaseCrash;
                try {
                    zzbWY.zzUM();
                } catch (zzbko e) {
                }
            }
        }
        return firebaseCrash;
    }

    private boolean isEnabled() {
        return this.zzbqB;
    }

    public static FirebaseCrash zzUL() {
        if (zzbWY == null) {
            synchronized (FirebaseCrash.class) {
                if (zzbWY == null) {
                    zzbWY = getInstance(FirebaseApp.getInstance());
                }
            }
        }
        return zzbWY;
    }

    private void zzUM() throws zzbko {
        if (isEnabled()) {
            this.zzbWX.zzUR();
            return;
        }
        throw new zzbko("Firebase Crash Reporting is disabled.");
    }

    private zzbkr zzUN() {
        return this.zzbWW;
    }

    private static boolean zzUO() {
        return Looper.getMainLooper().getThread().getId() == Thread.currentThread().getId();
    }

    private void zzUP() {
        if (zzUO()) {
            Thread.setDefaultUncaughtExceptionHandler(new zzbkt(Thread.getDefaultUncaughtExceptionHandler(), this));
            return;
        }
        throw new RuntimeException("FirebaseCrash reporting may only be initialized on the main thread (preferably in your app's Application.onCreate)");
    }

    private String zzUQ() {
        return zzc.zzaab().getId();
    }

    public static void zza(String str, long j, Bundle bundle) {
        try {
            zzUL().zzb(str, j, bundle);
        } catch (zzbko e) {
            e.getMessage();
        }
    }

    public void zzb(String str, long j, Bundle bundle) throws zzbko {
        if (isEnabled()) {
            zzbkr zzUN = zzUN();
            if (zzUN != null && str != null) {
                try {
                    zzUN.zzb(str, j, bundle);
                    return;
                } catch (Throwable e) {
                    Log.e(LOG_TAG, "log remoting failed", e);
                    return;
                }
            }
            return;
        }
        throw new zzbko("Firebase Crash Reporting is disabled.");
    }

    public void zzi(Throwable th) throws zzbko {
        if (isEnabled()) {
            zzbkr zzUN = zzUN();
            if (zzUN != null && th != null) {
                try {
                    this.zzbWX.zza(true, System.currentTimeMillis());
                    try {
                        Thread.sleep(200);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                    }
                    zzUN.zziD(zzUQ());
                    zzUN.zzO(zze.zzA(th));
                    return;
                } catch (Throwable e2) {
                    Log.e(LOG_TAG, "report remoting failed", e2);
                    return;
                }
            }
            return;
        }
        throw new zzbko("Firebase Crash Reporting is disabled.");
    }
}
