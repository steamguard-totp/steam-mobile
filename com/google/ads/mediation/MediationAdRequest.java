package com.google.ads.mediation;

import android.location.Location;
import com.google.ads.AdRequest.Gender;
import java.util.Date;
import java.util.Set;

@Deprecated
public class MediationAdRequest {
    private final Date zzcQ;
    private final Gender zzcR;
    private final Set<String> zzcS;
    private final boolean zzcT;
    private final Location zzcU;

    public MediationAdRequest(Date date, Gender gender, Set<String> set, boolean z, Location location) {
        this.zzcQ = date;
        this.zzcR = gender;
        this.zzcS = set;
        this.zzcT = z;
        this.zzcU = location;
    }
}
