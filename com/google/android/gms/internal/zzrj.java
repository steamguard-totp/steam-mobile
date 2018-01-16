package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzf;
import java.util.HashMap;
import java.util.Map;

public final class zzrj extends zzf<zzrj> {
    public int zzLQ;
    public int zzLR;
    private String zzabW;
    public int zzabX;
    public int zzabY;
    public int zzabZ;

    public String getLanguage() {
        return this.zzabW;
    }

    public void setLanguage(String str) {
        this.zzabW = str;
    }

    public String toString() {
        Map hashMap = new HashMap();
        hashMap.put("language", this.zzabW);
        hashMap.put("screenColors", Integer.valueOf(this.zzabX));
        hashMap.put("screenWidth", Integer.valueOf(this.zzLQ));
        hashMap.put("screenHeight", Integer.valueOf(this.zzLR));
        hashMap.put("viewportWidth", Integer.valueOf(this.zzabY));
        hashMap.put("viewportHeight", Integer.valueOf(this.zzabZ));
        return zzf.zzj(hashMap);
    }

    public void zza(zzrj com_google_android_gms_internal_zzrj) {
        if (this.zzabX != 0) {
            com_google_android_gms_internal_zzrj.zzay(this.zzabX);
        }
        if (this.zzLQ != 0) {
            com_google_android_gms_internal_zzrj.zzaz(this.zzLQ);
        }
        if (this.zzLR != 0) {
            com_google_android_gms_internal_zzrj.zzaA(this.zzLR);
        }
        if (this.zzabY != 0) {
            com_google_android_gms_internal_zzrj.zzaB(this.zzabY);
        }
        if (this.zzabZ != 0) {
            com_google_android_gms_internal_zzrj.zzaC(this.zzabZ);
        }
        if (!TextUtils.isEmpty(this.zzabW)) {
            com_google_android_gms_internal_zzrj.setLanguage(this.zzabW);
        }
    }

    public void zzaA(int i) {
        this.zzLR = i;
    }

    public void zzaB(int i) {
        this.zzabY = i;
    }

    public void zzaC(int i) {
        this.zzabZ = i;
    }

    public void zzay(int i) {
        this.zzabX = i;
    }

    public void zzaz(int i) {
        this.zzLQ = i;
    }

    public /* synthetic */ void zzb(zzf com_google_android_gms_analytics_zzf) {
        zza((zzrj) com_google_android_gms_analytics_zzf);
    }

    public int zzmJ() {
        return this.zzabX;
    }

    public int zzmK() {
        return this.zzLQ;
    }

    public int zzmL() {
        return this.zzLR;
    }

    public int zzmM() {
        return this.zzabY;
    }

    public int zzmN() {
        return this.zzabZ;
    }
}
