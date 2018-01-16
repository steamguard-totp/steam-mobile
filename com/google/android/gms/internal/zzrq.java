package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzf;
import java.util.HashMap;
import java.util.Map;

public final class zzrq extends zzf<zzrq> {
    public String mCategory;
    public String zzacb;
    public String zzacw;
    public long zzacx;

    public String getCategory() {
        return this.mCategory;
    }

    public String getLabel() {
        return this.zzacb;
    }

    public long getTimeInMillis() {
        return this.zzacx;
    }

    public void setTimeInMillis(long j) {
        this.zzacx = j;
    }

    public String toString() {
        Map hashMap = new HashMap();
        hashMap.put("variableName", this.zzacw);
        hashMap.put("timeInMillis", Long.valueOf(this.zzacx));
        hashMap.put("category", this.mCategory);
        hashMap.put("label", this.zzacb);
        return zzf.zzj(hashMap);
    }

    public void zza(zzrq com_google_android_gms_internal_zzrq) {
        if (!TextUtils.isEmpty(this.zzacw)) {
            com_google_android_gms_internal_zzrq.zzbK(this.zzacw);
        }
        if (this.zzacx != 0) {
            com_google_android_gms_internal_zzrq.setTimeInMillis(this.zzacx);
        }
        if (!TextUtils.isEmpty(this.mCategory)) {
            com_google_android_gms_internal_zzrq.zzbA(this.mCategory);
        }
        if (!TextUtils.isEmpty(this.zzacb)) {
            com_google_android_gms_internal_zzrq.zzbC(this.zzacb);
        }
    }

    public /* synthetic */ void zzb(zzf com_google_android_gms_analytics_zzf) {
        zza((zzrq) com_google_android_gms_analytics_zzf);
    }

    public void zzbA(String str) {
        this.mCategory = str;
    }

    public void zzbC(String str) {
        this.zzacb = str;
    }

    public void zzbK(String str) {
        this.zzacw = str;
    }

    public String zzne() {
        return this.zzacw;
    }
}
