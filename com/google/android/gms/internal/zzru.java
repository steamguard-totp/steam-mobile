package com.google.android.gms.internal;

public abstract class zzru extends zzrt {
    private boolean zzacO;

    protected zzru(zzrw com_google_android_gms_internal_zzrw) {
        super(com_google_android_gms_internal_zzrw);
    }

    public void initialize() {
        zzmr();
        this.zzacO = true;
    }

    public boolean isInitialized() {
        return this.zzacO;
    }

    protected abstract void zzmr();

    protected void zznA() {
        if (!isInitialized()) {
            throw new IllegalStateException("Not initialized");
        }
    }
}
