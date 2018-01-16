package com.google.android.gms.internal;

import com.google.android.gms.analytics.zzf;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public final class zzrh extends zzf<zzrh> {
    private Map<Integer, Double> zzabV = new HashMap(4);

    public String toString() {
        Map hashMap = new HashMap();
        for (Entry entry : this.zzabV.entrySet()) {
            String valueOf = String.valueOf(entry.getKey());
            hashMap.put(new StringBuilder(String.valueOf(valueOf).length() + 6).append("metric").append(valueOf).toString(), entry.getValue());
        }
        return zzf.zzj(hashMap);
    }

    public void zza(zzrh com_google_android_gms_internal_zzrh) {
        com_google_android_gms_internal_zzrh.zzabV.putAll(this.zzabV);
    }

    public /* synthetic */ void zzb(zzf com_google_android_gms_analytics_zzf) {
        zza((zzrh) com_google_android_gms_analytics_zzf);
    }

    public Map<Integer, Double> zzmH() {
        return Collections.unmodifiableMap(this.zzabV);
    }
}
