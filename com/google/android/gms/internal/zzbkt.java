package com.google.android.gms.internal;

import android.util.Log;
import com.google.firebase.crash.FirebaseCrash;
import java.lang.Thread.UncaughtExceptionHandler;

public class zzbkt implements UncaughtExceptionHandler {
    private final FirebaseCrash zzbXf;
    private final UncaughtExceptionHandler zzbXg;

    public zzbkt(UncaughtExceptionHandler uncaughtExceptionHandler, FirebaseCrash firebaseCrash) {
        this.zzbXf = firebaseCrash;
        this.zzbXg = uncaughtExceptionHandler;
    }

    public void uncaughtException(Thread thread, Throwable th) {
        Log.e("UncaughtException", "", th);
        try {
            this.zzbXf.zzi(th);
        } catch (zzbko e) {
            try {
                e.getMessage();
            } catch (Throwable e2) {
                Log.e("UncaughtException", "Ouch!  My own exception handler threw an exception.", e2);
            }
        }
        if (this.zzbXg != null) {
            this.zzbXg.uncaughtException(thread, th);
        }
    }
}
