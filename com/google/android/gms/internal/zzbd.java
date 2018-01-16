package com.google.android.gms.internal;

import java.util.HashMap;

public class zzbd extends zzak<Integer, Long> {
    public Long zzcc;
    public Long zzce;
    public Long zzci;
    public Long zzcj;
    public Long zzqM;
    public Long zzqN;
    public Long zzqO;
    public Long zzqP;
    public Long zzqQ;
    public Long zzqR;
    public Long zzqS;

    public zzbd(String str) {
        zzk(str);
    }

    protected HashMap<Integer, Long> zzQ() {
        HashMap<Integer, Long> hashMap = new HashMap();
        hashMap.put(Integer.valueOf(0), this.zzqM);
        hashMap.put(Integer.valueOf(1), this.zzqN);
        hashMap.put(Integer.valueOf(2), this.zzqO);
        hashMap.put(Integer.valueOf(3), this.zzce);
        hashMap.put(Integer.valueOf(4), this.zzcc);
        hashMap.put(Integer.valueOf(5), this.zzqP);
        hashMap.put(Integer.valueOf(6), this.zzqQ);
        hashMap.put(Integer.valueOf(7), this.zzqR);
        hashMap.put(Integer.valueOf(8), this.zzcj);
        hashMap.put(Integer.valueOf(9), this.zzci);
        hashMap.put(Integer.valueOf(10), this.zzqS);
        return hashMap;
    }

    protected void zzk(String str) {
        HashMap zzl = zzak.zzl(str);
        if (zzl != null) {
            this.zzqM = (Long) zzl.get(Integer.valueOf(0));
            this.zzqN = (Long) zzl.get(Integer.valueOf(1));
            this.zzqO = (Long) zzl.get(Integer.valueOf(2));
            this.zzce = (Long) zzl.get(Integer.valueOf(3));
            this.zzcc = (Long) zzl.get(Integer.valueOf(4));
            this.zzqP = (Long) zzl.get(Integer.valueOf(5));
            this.zzqQ = (Long) zzl.get(Integer.valueOf(6));
            this.zzqR = (Long) zzl.get(Integer.valueOf(7));
            this.zzcj = (Long) zzl.get(Integer.valueOf(8));
            this.zzci = (Long) zzl.get(Integer.valueOf(9));
            this.zzqS = (Long) zzl.get(Integer.valueOf(10));
        }
    }
}
