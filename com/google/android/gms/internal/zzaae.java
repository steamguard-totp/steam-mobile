package com.google.android.gms.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.util.zza;

public class zzaae extends zzzw {
    private zzaap zzaxK;
    private final zza<zzzs<?>> zzazH;

    public void onStart() {
        super.onStart();
        if (!this.zzazH.isEmpty()) {
            this.zzaxK.zza(this);
        }
    }

    public void onStop() {
        super.onStop();
        this.zzaxK.zzb(this);
    }

    protected void zza(ConnectionResult connectionResult, int i) {
        this.zzaxK.zza(connectionResult, i);
    }

    protected void zzuW() {
        this.zzaxK.zzuW();
    }

    zza<zzzs<?>> zzvx() {
        return this.zzazH;
    }
}
