package com.google.android.gms.tagmanager;

import android.util.Log;

public class zzz implements zzbp {
    private int zzaeb = 5;

    public void e(String str) {
        if (this.zzaeb <= 6) {
            Log.e("GoogleTagManager", str);
        }
    }

    public void zzb(String str, Throwable th) {
        if (this.zzaeb <= 6) {
            Log.e("GoogleTagManager", str, th);
        }
    }

    public void zzbe(String str) {
        if (this.zzaeb <= 5) {
            Log.w("GoogleTagManager", str);
        }
    }

    public void zzc(String str, Throwable th) {
        if (this.zzaeb <= 5) {
            Log.w("GoogleTagManager", str, th);
        }
    }
}
