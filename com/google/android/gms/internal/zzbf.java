package com.google.android.gms.internal;

import java.util.HashMap;

public class zzbf extends zzak<Integer, Long> {
    public Long zzqU;

    public zzbf(String str) {
        zzk(str);
    }

    protected HashMap<Integer, Long> zzQ() {
        HashMap<Integer, Long> hashMap = new HashMap();
        hashMap.put(Integer.valueOf(0), this.zzqU);
        return hashMap;
    }

    protected void zzk(String str) {
        HashMap zzl = zzak.zzl(str);
        if (zzl != null) {
            this.zzqU = (Long) zzl.get(Integer.valueOf(0));
        }
    }
}
