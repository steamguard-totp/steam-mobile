package com.google.android.gms.internal;

import android.util.Log;

public class zzayj implements zzayy {
    private int zzaeb = 5;
    private boolean zzbHz = true;

    public void e(String str) {
        if (zzai(6)) {
            Log.e("GoogleTagManager", str);
        }
    }

    public void v(String str) {
        zzai(2);
    }

    public boolean zzai(int i) {
        return (this.zzbHz && Log.isLoggable("GoogleTagManager", i)) || (!this.zzbHz && this.zzaeb <= i);
    }

    public void zzb(String str, Throwable th) {
        if (zzai(6)) {
            Log.e("GoogleTagManager", str, th);
        }
    }

    public void zzbd(String str) {
        zzai(4);
    }

    public void zzbe(String str) {
        if (zzai(5)) {
            Log.w("GoogleTagManager", str);
        }
    }

    public void zzc(String str, Throwable th) {
        if (zzai(5)) {
            Log.w("GoogleTagManager", str, th);
        }
    }
}
