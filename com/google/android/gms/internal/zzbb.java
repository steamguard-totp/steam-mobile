package com.google.android.gms.internal;

import java.util.HashMap;

public class zzbb extends zzak<Integer, Long> {
    public Long zzqp;
    public Long zzqq;

    public zzbb(String str) {
        zzk(str);
    }

    protected HashMap<Integer, Long> zzQ() {
        HashMap<Integer, Long> hashMap = new HashMap();
        hashMap.put(Integer.valueOf(0), this.zzqp);
        hashMap.put(Integer.valueOf(1), this.zzqq);
        return hashMap;
    }

    protected void zzk(String str) {
        HashMap zzl = zzak.zzl(str);
        if (zzl != null) {
            this.zzqp = (Long) zzl.get(Integer.valueOf(0));
            this.zzqq = (Long) zzl.get(Integer.valueOf(1));
        }
    }
}
