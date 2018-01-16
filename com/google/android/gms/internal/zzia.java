package com.google.android.gms.internal;

import java.util.Map;

@zzmb
public class zzia implements zzhx {
    private final zzib zzHL;

    public zzia(zzib com_google_android_gms_internal_zzib) {
        this.zzHL = com_google_android_gms_internal_zzib;
    }

    public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
        float parseFloat;
        boolean equals = "1".equals(map.get("transparentBackground"));
        boolean equals2 = "1".equals(map.get("blur"));
        try {
            if (map.get("blurRadius") != null) {
                parseFloat = Float.parseFloat((String) map.get("blurRadius"));
                this.zzHL.zzg(equals);
                this.zzHL.zza(equals2, parseFloat);
            }
        } catch (Throwable e) {
            zzpy.zzb("Fail to parse float", e);
        }
        parseFloat = 0.0f;
        this.zzHL.zzg(equals);
        this.zzHL.zza(equals2, parseFloat);
    }
}
