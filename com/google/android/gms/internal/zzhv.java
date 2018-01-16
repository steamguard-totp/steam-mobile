package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzv;
import java.util.Map;

@zzmb
public final class zzhv implements zzhx {
    private void zzc(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
        String str = (String) map.get("label");
        String str2 = (String) map.get("start_label");
        String str3 = (String) map.get("timestamp");
        if (TextUtils.isEmpty(str)) {
            zzpy.zzbe("No label given for CSI tick.");
        } else if (TextUtils.isEmpty(str3)) {
            zzpy.zzbe("No timestamp given for CSI tick.");
        } else {
            try {
                long zzd = zzd(Long.parseLong(str3));
                if (TextUtils.isEmpty(str2)) {
                    str2 = "native:view_load";
                }
                com_google_android_gms_internal_zzqp.zzlf().zza(str, str2, zzd);
            } catch (Throwable e) {
                zzpy.zzc("Malformed timestamp for CSI tick.", e);
            }
        }
    }

    private long zzd(long j) {
        return (j - zzv.zzcP().currentTimeMillis()) + zzv.zzcP().elapsedRealtime();
    }

    private void zzd(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
        String str = (String) map.get("value");
        if (TextUtils.isEmpty(str)) {
            zzpy.zzbe("No value given for CSI experiment.");
            return;
        }
        zzgf zzfv = com_google_android_gms_internal_zzqp.zzlf().zzfv();
        if (zzfv == null) {
            zzpy.zzbe("No ticker for WebView, dropping experiment ID.");
        } else {
            zzfv.zzg("e", str);
        }
    }

    private void zze(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
        String str = (String) map.get("name");
        String str2 = (String) map.get("value");
        if (TextUtils.isEmpty(str2)) {
            zzpy.zzbe("No value given for CSI extra.");
        } else if (TextUtils.isEmpty(str)) {
            zzpy.zzbe("No name given for CSI extra.");
        } else {
            zzgf zzfv = com_google_android_gms_internal_zzqp.zzlf().zzfv();
            if (zzfv == null) {
                zzpy.zzbe("No ticker for WebView, dropping extra parameter.");
            } else {
                zzfv.zzg(str, str2);
            }
        }
    }

    public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
        String str = (String) map.get("action");
        if ("tick".equals(str)) {
            zzc(com_google_android_gms_internal_zzqp, map);
        } else if ("experiment".equals(str)) {
            zzd(com_google_android_gms_internal_zzqp, map);
        } else if ("extra".equals(str)) {
            zze(com_google_android_gms_internal_zzqp, map);
        }
    }
}
