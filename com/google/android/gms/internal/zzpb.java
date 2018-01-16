package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.ads.internal.zzv;

@zzmb
public class zzpb {
    private final String zzVE;
    private int zzWu;
    private int zzWv;
    private final Object zzrN;
    private final zzoy zzuG;

    zzpb(zzoy com_google_android_gms_internal_zzoy, String str) {
        this.zzrN = new Object();
        this.zzuG = com_google_android_gms_internal_zzoy;
        this.zzVE = str;
    }

    public zzpb(String str) {
        this(zzv.zzcN(), str);
    }

    public Bundle toBundle() {
        Bundle bundle;
        synchronized (this.zzrN) {
            bundle = new Bundle();
            bundle.putInt("pmnli", this.zzWu);
            bundle.putInt("pmnll", this.zzWv);
        }
        return bundle;
    }

    public void zzj(int i, int i2) {
        synchronized (this.zzrN) {
            this.zzWu = i;
            this.zzWv = i2;
            this.zzuG.zza(this.zzVE, this);
        }
    }
}
