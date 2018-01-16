package com.google.android.gms.internal;

public class zzsb extends zzru {
    private final zzre zzabk = new zzre();

    zzsb(zzrw com_google_android_gms_internal_zzrw) {
        super(com_google_android_gms_internal_zzrw);
    }

    public void zzlV() {
        zzth zzma = zzma();
        String zzmx = zzma.zzmx();
        if (zzmx != null) {
            this.zzabk.setAppName(zzmx);
        }
        String zzmy = zzma.zzmy();
        if (zzmy != null) {
            this.zzabk.setAppVersion(zzmy);
        }
    }

    protected void zzmr() {
        zznt().zzmo().zza(this.zzabk);
        zzlV();
    }

    public zzre zznX() {
        zznA();
        return this.zzabk;
    }
}
