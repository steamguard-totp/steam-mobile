package com.google.android.gms.common.stats;

import android.support.v4.util.SimpleArrayMap;

public class zzd {
    private final long zzaGr;
    private final int zzaGs;
    private final SimpleArrayMap<String, Long> zzaGt;

    public zzd() {
        this.zzaGr = 60000;
        this.zzaGs = 10;
        this.zzaGt = new SimpleArrayMap(10);
    }

    public zzd(int i, long j) {
        this.zzaGr = j;
        this.zzaGs = i;
        this.zzaGt = new SimpleArrayMap();
    }
}
