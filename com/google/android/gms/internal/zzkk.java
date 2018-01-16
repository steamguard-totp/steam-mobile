package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzv;
import java.util.Map;

@zzmb
public class zzkk {
    private final zzqp zzGt;
    private final boolean zzLE;
    private final String zzLF;

    public zzkk(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
        this.zzGt = com_google_android_gms_internal_zzqp;
        this.zzLF = (String) map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange")) {
            this.zzLE = Boolean.parseBoolean((String) map.get("allowOrientationChange"));
        } else {
            this.zzLE = true;
        }
    }

    public void execute() {
        if (this.zzGt == null) {
            zzpy.zzbe("AdWebView is null");
            return;
        }
        int zzkq = "portrait".equalsIgnoreCase(this.zzLF) ? zzv.zzcL().zzkq() : "landscape".equalsIgnoreCase(this.zzLF) ? zzv.zzcL().zzkp() : this.zzLE ? -1 : zzv.zzcL().zzkr();
        this.zzGt.setRequestedOrientation(zzkq);
    }
}
