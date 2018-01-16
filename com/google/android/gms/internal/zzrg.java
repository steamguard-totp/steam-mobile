package com.google.android.gms.internal;

import com.google.android.gms.analytics.zzf;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public final class zzrg extends zzf<zzrg> {
    private Map<Integer, String> zzabU = new HashMap(4);

    public String toString() {
        Map hashMap = new HashMap();
        for (Entry entry : this.zzabU.entrySet()) {
            String valueOf = String.valueOf(entry.getKey());
            hashMap.put(new StringBuilder(String.valueOf(valueOf).length() + 9).append("dimension").append(valueOf).toString(), entry.getValue());
        }
        return zzf.zzj(hashMap);
    }

    public void zza(zzrg com_google_android_gms_internal_zzrg) {
        com_google_android_gms_internal_zzrg.zzabU.putAll(this.zzabU);
    }

    public /* synthetic */ void zzb(zzf com_google_android_gms_analytics_zzf) {
        zza((zzrg) com_google_android_gms_analytics_zzf);
    }

    public Map<Integer, String> zzmG() {
        return Collections.unmodifiableMap(this.zzabU);
    }
}
