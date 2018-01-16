package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzf;
import java.util.HashMap;
import java.util.Map;

public final class zzrl extends zzf<zzrl> {
    private String mCategory;
    private String zzaca;
    private String zzacb;
    private long zzacc;

    public String getAction() {
        return this.zzaca;
    }

    public String getCategory() {
        return this.mCategory;
    }

    public String getLabel() {
        return this.zzacb;
    }

    public long getValue() {
        return this.zzacc;
    }

    public String toString() {
        Map hashMap = new HashMap();
        hashMap.put("category", this.mCategory);
        hashMap.put("action", this.zzaca);
        hashMap.put("label", this.zzacb);
        hashMap.put("value", Long.valueOf(this.zzacc));
        return zzf.zzj(hashMap);
    }

    public void zza(zzrl com_google_android_gms_internal_zzrl) {
        if (!TextUtils.isEmpty(this.mCategory)) {
            com_google_android_gms_internal_zzrl.zzbA(this.mCategory);
        }
        if (!TextUtils.isEmpty(this.zzaca)) {
            com_google_android_gms_internal_zzrl.zzbB(this.zzaca);
        }
        if (!TextUtils.isEmpty(this.zzacb)) {
            com_google_android_gms_internal_zzrl.zzbC(this.zzacb);
        }
        if (this.zzacc != 0) {
            com_google_android_gms_internal_zzrl.zzq(this.zzacc);
        }
    }

    public /* synthetic */ void zzb(zzf com_google_android_gms_analytics_zzf) {
        zza((zzrl) com_google_android_gms_analytics_zzf);
    }

    public void zzbA(String str) {
        this.mCategory = str;
    }

    public void zzbB(String str) {
        this.zzaca = str;
    }

    public void zzbC(String str) {
        this.zzacb = str;
    }

    public void zzq(long j) {
        this.zzacc = j;
    }
}
