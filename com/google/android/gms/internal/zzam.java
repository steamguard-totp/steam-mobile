package com.google.android.gms.internal;

import java.util.HashMap;

public class zzam extends zzak<Integer, Object> {
    public String zzaM;
    public String zzaO;
    public String zzaP;
    public String zzaQ;
    public long zzlH;

    public zzam() {
        this.zzaM = "E";
        this.zzlH = -1;
        this.zzaO = "E";
        this.zzaP = "E";
        this.zzaQ = "E";
    }

    public zzam(String str) {
        this();
        zzk(str);
    }

    protected HashMap<Integer, Object> zzQ() {
        HashMap<Integer, Object> hashMap = new HashMap();
        hashMap.put(Integer.valueOf(0), this.zzaM);
        hashMap.put(Integer.valueOf(4), this.zzaQ);
        hashMap.put(Integer.valueOf(3), this.zzaP);
        hashMap.put(Integer.valueOf(2), this.zzaO);
        hashMap.put(Integer.valueOf(1), Long.valueOf(this.zzlH));
        return hashMap;
    }

    protected void zzk(String str) {
        HashMap zzl = zzak.zzl(str);
        if (zzl != null) {
            this.zzaM = zzl.get(Integer.valueOf(0)) == null ? "E" : (String) zzl.get(Integer.valueOf(0));
            this.zzlH = zzl.get(Integer.valueOf(1)) == null ? -1 : ((Long) zzl.get(Integer.valueOf(1))).longValue();
            this.zzaO = zzl.get(Integer.valueOf(2)) == null ? "E" : (String) zzl.get(Integer.valueOf(2));
            this.zzaP = zzl.get(Integer.valueOf(3)) == null ? "E" : (String) zzl.get(Integer.valueOf(3));
            this.zzaQ = zzl.get(Integer.valueOf(4)) == null ? "E" : (String) zzl.get(Integer.valueOf(4));
        }
    }
}
