package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzf;
import java.util.HashMap;
import java.util.Map;

public final class zzre extends zzf<zzre> {
    private String zzVQ;
    private String zzabK;
    private String zzabL;
    private String zzabM;

    public void setAppId(String str) {
        this.zzVQ = str;
    }

    public void setAppInstallerId(String str) {
        this.zzabM = str;
    }

    public void setAppName(String str) {
        this.zzabK = str;
    }

    public void setAppVersion(String str) {
        this.zzabL = str;
    }

    public String toString() {
        Map hashMap = new HashMap();
        hashMap.put("appName", this.zzabK);
        hashMap.put("appVersion", this.zzabL);
        hashMap.put("appId", this.zzVQ);
        hashMap.put("appInstallerId", this.zzabM);
        return zzf.zzj(hashMap);
    }

    public void zza(zzre com_google_android_gms_internal_zzre) {
        if (!TextUtils.isEmpty(this.zzabK)) {
            com_google_android_gms_internal_zzre.setAppName(this.zzabK);
        }
        if (!TextUtils.isEmpty(this.zzabL)) {
            com_google_android_gms_internal_zzre.setAppVersion(this.zzabL);
        }
        if (!TextUtils.isEmpty(this.zzVQ)) {
            com_google_android_gms_internal_zzre.setAppId(this.zzVQ);
        }
        if (!TextUtils.isEmpty(this.zzabM)) {
            com_google_android_gms_internal_zzre.setAppInstallerId(this.zzabM);
        }
    }

    public /* synthetic */ void zzb(zzf com_google_android_gms_analytics_zzf) {
        zza((zzre) com_google_android_gms_analytics_zzf);
    }

    public String zzjI() {
        return this.zzVQ;
    }

    public String zzmx() {
        return this.zzabK;
    }

    public String zzmy() {
        return this.zzabL;
    }

    public String zzmz() {
        return this.zzabM;
    }
}
