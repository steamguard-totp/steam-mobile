package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.Map;

@zzmb
public class zzig implements zzhx {
    private final zza zzHS;

    public interface zza {
        void zzb(zzok com_google_android_gms_internal_zzok);

        void zzcl();
    }

    public zzig(zza com_google_android_gms_internal_zzig_zza) {
        this.zzHS = com_google_android_gms_internal_zzig_zza;
    }

    public static void zza(zzqp com_google_android_gms_internal_zzqp, zza com_google_android_gms_internal_zzig_zza) {
        com_google_android_gms_internal_zzqp.zzkV().zza("/reward", new zzig(com_google_android_gms_internal_zzig_zza));
    }

    private void zzf(Map<String, String> map) {
        zzok com_google_android_gms_internal_zzok;
        try {
            int parseInt = Integer.parseInt((String) map.get("amount"));
            String str = (String) map.get("type");
            if (!TextUtils.isEmpty(str)) {
                com_google_android_gms_internal_zzok = new zzok(str, parseInt);
                this.zzHS.zzb(com_google_android_gms_internal_zzok);
            }
        } catch (Throwable e) {
            zzpy.zzc("Unable to parse reward amount.", e);
        }
        com_google_android_gms_internal_zzok = null;
        this.zzHS.zzb(com_google_android_gms_internal_zzok);
    }

    private void zzg(Map<String, String> map) {
        this.zzHS.zzcl();
    }

    public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
        String str = (String) map.get("action");
        if ("grant".equals(str)) {
            zzf(map);
        } else if ("video_start".equals(str)) {
            zzg(map);
        }
    }
}
