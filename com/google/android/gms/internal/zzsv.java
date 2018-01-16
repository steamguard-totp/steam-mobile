package com.google.android.gms.internal;

import com.google.android.gms.common.util.zze;

public class zzsv {
    private final String zzaca;
    private final long zzafl;
    private final int zzafm;
    private double zzafn;
    private long zzafo;
    private final Object zzafp;
    private final zze zzuI;

    public zzsv(int i, long j, String str, zze com_google_android_gms_common_util_zze) {
        this.zzafp = new Object();
        this.zzafm = i;
        this.zzafn = (double) this.zzafm;
        this.zzafl = j;
        this.zzaca = str;
        this.zzuI = com_google_android_gms_common_util_zze;
    }

    public zzsv(String str, zze com_google_android_gms_common_util_zze) {
        this(60, 2000, str, com_google_android_gms_common_util_zze);
    }

    public boolean zzpv() {
        boolean z;
        synchronized (this.zzafp) {
            long currentTimeMillis = this.zzuI.currentTimeMillis();
            if (this.zzafn < ((double) this.zzafm)) {
                double d = ((double) (currentTimeMillis - this.zzafo)) / ((double) this.zzafl);
                if (d > 0.0d) {
                    this.zzafn = Math.min((double) this.zzafm, d + this.zzafn);
                }
            }
            this.zzafo = currentTimeMillis;
            if (this.zzafn >= 1.0d) {
                this.zzafn -= 1.0d;
                z = true;
            } else {
                String str = this.zzaca;
                zzsw.zzbe(new StringBuilder(String.valueOf(str).length() + 34).append("Excessive ").append(str).append(" detected; call ignored.").toString());
                z = false;
            }
        }
        return z;
    }
}
