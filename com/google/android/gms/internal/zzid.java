package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zze;
import com.google.android.gms.common.util.zzf;
import java.util.Map;

@zzmb
public class zzid implements zzhx {
    static final Map<String, Integer> zzHP = zzf.zza("resize", Integer.valueOf(1), "playVideo", Integer.valueOf(2), "storePicture", Integer.valueOf(3), "createCalendarEvent", Integer.valueOf(4), "setOrientationProperties", Integer.valueOf(5), "closeResizedAd", Integer.valueOf(6));
    private final zze zzHN;
    private final zzkj zzHO;

    public zzid(zze com_google_android_gms_ads_internal_zze, zzkj com_google_android_gms_internal_zzkj) {
        this.zzHN = com_google_android_gms_ads_internal_zze;
        this.zzHO = com_google_android_gms_internal_zzkj;
    }

    public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
        int intValue = ((Integer) zzHP.get((String) map.get("a"))).intValue();
        if (intValue == 5 || this.zzHN == null || this.zzHN.zzcb()) {
            switch (intValue) {
                case 1:
                    this.zzHO.execute(map);
                    return;
                case 3:
                    new zzkl(com_google_android_gms_internal_zzqp, map).execute();
                    return;
                case 4:
                    new zzki(com_google_android_gms_internal_zzqp, map).execute();
                    return;
                case 5:
                    new zzkk(com_google_android_gms_internal_zzqp, map).execute();
                    return;
                case 6:
                    this.zzHO.zzs(true);
                    return;
                default:
                    zzpy.zzbd("Unknown MRAID command called.");
                    return;
            }
        }
        this.zzHN.zzx(null);
    }
}
