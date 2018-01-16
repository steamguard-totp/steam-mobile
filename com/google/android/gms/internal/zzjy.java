package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.Set;

@zzmb
public final class zzjy implements MediationAdRequest {
    private final int zzKT;
    private final Date zzcQ;
    private final Set<String> zzcS;
    private final boolean zzcT;
    private final Location zzcU;
    private final int zzyW;
    private final boolean zzzi;

    public zzjy(Date date, int i, Set<String> set, Location location, boolean z, int i2, boolean z2) {
        this.zzcQ = date;
        this.zzyW = i;
        this.zzcS = set;
        this.zzcU = location;
        this.zzcT = z;
        this.zzKT = i2;
        this.zzzi = z2;
    }

    public Date getBirthday() {
        return this.zzcQ;
    }

    public int getGender() {
        return this.zzyW;
    }

    public Set<String> getKeywords() {
        return this.zzcS;
    }

    public Location getLocation() {
        return this.zzcU;
    }

    public boolean isDesignedForFamilies() {
        return this.zzzi;
    }

    public boolean isTesting() {
        return this.zzcT;
    }

    public int taggedForChildDirectedTreatment() {
        return this.zzKT;
    }
}
