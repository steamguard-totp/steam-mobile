package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.common.internal.zzc;
import java.util.Map;

@zzmb
public class zzim implements zzhx {
    public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
        zzik zzdg = zzv.zzdg();
        if (!map.containsKey("abort")) {
            String str = (String) map.get("src");
            if (str == null) {
                zzpy.zzbe("Precache video action is missing the src parameter.");
                return;
            }
            int parseInt;
            try {
                parseInt = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException e) {
                parseInt = 0;
            }
            String str2 = map.containsKey("mimetype") ? (String) map.get("mimetype") : "";
            if (zzdg.zzf(com_google_android_gms_internal_zzqp)) {
                zzpy.zzbe("Precache task already running.");
                return;
            }
            zzc.zzt(com_google_android_gms_internal_zzqp.zzbz());
            new zzij(com_google_android_gms_internal_zzqp, com_google_android_gms_internal_zzqp.zzbz().zzsM.zza(com_google_android_gms_internal_zzqp, parseInt, str2), str).zziw();
        } else if (!zzdg.zze(com_google_android_gms_internal_zzqp)) {
            zzpy.zzbe("Precache abort but no preload task running.");
        }
    }
}
