package com.google.android.gms.internal;

import android.util.Log;

@zzmb
public class zzpy {
    public static void e(String str) {
        if (zzai(6)) {
            Log.e("Ads", str);
        }
    }

    public static void zza(String str, Throwable th) {
        zzai(3);
    }

    public static boolean zzai(int i) {
        return i >= 5 || Log.isLoggable("Ads", i);
    }

    public static void zzb(String str, Throwable th) {
        if (zzai(6)) {
            Log.e("Ads", str, th);
        }
    }

    public static void zzbc(String str) {
        zzai(3);
    }

    public static void zzbd(String str) {
        zzai(4);
    }

    public static void zzbe(String str) {
        if (zzai(5)) {
            Log.w("Ads", str);
        }
    }

    public static void zzc(String str, Throwable th) {
        if (zzai(5)) {
            Log.w("Ads", str, th);
        }
    }
}
