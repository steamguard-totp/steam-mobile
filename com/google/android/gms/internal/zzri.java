package com.google.android.gms.internal;

import com.google.android.gms.analytics.zzf;
import com.google.android.gms.common.internal.zzac;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class zzri extends zzf<zzri> {
    private final Map<String, Object> zzFs = new HashMap();

    private String zzbz(String str) {
        zzac.zzdv(str);
        if (str != null && str.startsWith("&")) {
            str = str.substring(1);
        }
        zzac.zzh(str, "Name can not be empty or \"&\"");
        return str;
    }

    public void set(String str, String str2) {
        this.zzFs.put(zzbz(str), str2);
    }

    public String toString() {
        return zzf.zzj(this.zzFs);
    }

    public void zza(zzri com_google_android_gms_internal_zzri) {
        zzac.zzw(com_google_android_gms_internal_zzri);
        com_google_android_gms_internal_zzri.zzFs.putAll(this.zzFs);
    }

    public /* synthetic */ void zzb(zzf com_google_android_gms_analytics_zzf) {
        zza((zzri) com_google_android_gms_analytics_zzf);
    }

    public Map<String, Object> zzmI() {
        return Collections.unmodifiableMap(this.zzFs);
    }
}
