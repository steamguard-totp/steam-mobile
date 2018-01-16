package com.google.android.gms.internal;

import java.util.HashMap;

public class zzba extends zzak<Integer, Object> {
    public Long zzqm;
    public Boolean zzqn;
    public Boolean zzqo;

    public zzba(String str) {
        zzk(str);
    }

    protected HashMap<Integer, Object> zzQ() {
        HashMap<Integer, Object> hashMap = new HashMap();
        hashMap.put(Integer.valueOf(0), this.zzqm);
        hashMap.put(Integer.valueOf(1), this.zzqn);
        hashMap.put(Integer.valueOf(2), this.zzqo);
        return hashMap;
    }

    protected void zzk(String str) {
        HashMap zzl = zzak.zzl(str);
        if (zzl != null) {
            this.zzqm = (Long) zzl.get(Integer.valueOf(0));
            this.zzqn = (Boolean) zzl.get(Integer.valueOf(1));
            this.zzqo = (Boolean) zzl.get(Integer.valueOf(2));
        }
    }
}
