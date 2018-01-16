package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class zzry {
    private final Map<String, String> zzFs;
    private final String zzacg;
    private final long zzadg;
    private final String zzadh;
    private final boolean zzadi;
    private long zzadj;

    public zzry(long j, String str, String str2, boolean z, long j2, Map<String, String> map) {
        zzac.zzdv(str);
        zzac.zzdv(str2);
        this.zzadg = j;
        this.zzacg = str;
        this.zzadh = str2;
        this.zzadi = z;
        this.zzadj = j2;
        if (map != null) {
            this.zzFs = new HashMap(map);
        } else {
            this.zzFs = Collections.emptyMap();
        }
    }

    public Map<String, String> zzfz() {
        return this.zzFs;
    }

    public String zzlX() {
        return this.zzacg;
    }

    public long zznI() {
        return this.zzadg;
    }

    public String zznJ() {
        return this.zzadh;
    }

    public boolean zznK() {
        return this.zzadi;
    }

    public long zznL() {
        return this.zzadj;
    }

    public void zzr(long j) {
        this.zzadj = j;
    }
}
