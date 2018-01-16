package com.google.android.gms.ads.internal.purchase;

import android.content.Intent;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzpy;

@zzmb
public class zzk {
    private final String zzAd;

    public zzk(String str) {
        this.zzAd = str;
    }

    public boolean zza(String str, int i, Intent intent) {
        if (str == null || intent == null) {
            return false;
        }
        String zze = zzv.zzcX().zze(intent);
        String zzf = zzv.zzcX().zzf(intent);
        if (zze == null || zzf == null) {
            return false;
        }
        if (!str.equals(zzv.zzcX().zzaD(zze))) {
            zzpy.zzbe("Developer payload not match.");
            return false;
        } else if (this.zzAd == null || zzl.zzc(this.zzAd, zze, zzf)) {
            return true;
        } else {
            zzpy.zzbe("Fail to verify signature.");
            return false;
        }
    }

    public String zzis() {
        return zzv.zzcJ().zzkl();
    }
}
