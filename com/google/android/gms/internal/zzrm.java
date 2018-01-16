package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzf;
import java.util.HashMap;
import java.util.Map;

public final class zzrm extends zzf<zzrm> {
    public String zzacd;
    public boolean zzace;

    public String getDescription() {
        return this.zzacd;
    }

    public void setDescription(String str) {
        this.zzacd = str;
    }

    public String toString() {
        Map hashMap = new HashMap();
        hashMap.put("description", this.zzacd);
        hashMap.put("fatal", Boolean.valueOf(this.zzace));
        return zzf.zzj(hashMap);
    }

    public void zzQ(boolean z) {
        this.zzace = z;
    }

    public void zza(zzrm com_google_android_gms_internal_zzrm) {
        if (!TextUtils.isEmpty(this.zzacd)) {
            com_google_android_gms_internal_zzrm.setDescription(this.zzacd);
        }
        if (this.zzace) {
            com_google_android_gms_internal_zzrm.zzQ(this.zzace);
        }
    }

    public /* synthetic */ void zzb(zzf com_google_android_gms_analytics_zzf) {
        zza((zzrm) com_google_android_gms_analytics_zzf);
    }

    public boolean zzmS() {
        return this.zzace;
    }
}
