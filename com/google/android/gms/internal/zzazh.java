package com.google.android.gms.internal;

class zzazh implements zzazd {
    private final long zzafl;
    private final int zzafm;
    private double zzafn;
    private final Object zzafp;
    private long zzbFY;

    public zzazh() {
        this(60, 2000);
    }

    public zzazh(int i, long j) {
        this.zzafp = new Object();
        this.zzafm = i;
        this.zzafn = (double) this.zzafm;
        this.zzafl = j;
    }

    public boolean zzpv() {
        boolean z;
        synchronized (this.zzafp) {
            long currentTimeMillis = System.currentTimeMillis();
            if (this.zzafn < ((double) this.zzafm)) {
                double d = ((double) (currentTimeMillis - this.zzbFY)) / ((double) this.zzafl);
                if (d > 0.0d) {
                    this.zzafn = Math.min((double) this.zzafm, d + this.zzafn);
                }
            }
            this.zzbFY = currentTimeMillis;
            if (this.zzafn >= 1.0d) {
                this.zzafn -= 1.0d;
                z = true;
            } else {
                zzayx.zzbe("No more tokens available.");
                z = false;
            }
        }
        return z;
    }
}
