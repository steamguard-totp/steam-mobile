package com.google.android.gms.tagmanager;

public class Container {
    private final String zzbCS;
    private zzcx zzbCU;

    private synchronized zzcx zzOB() {
        return this.zzbCU;
    }

    public String getContainerId() {
        return this.zzbCS;
    }

    void release() {
        this.zzbCU = null;
    }

    public void zzgX(String str) {
        zzOB().zzgX(str);
    }
}
