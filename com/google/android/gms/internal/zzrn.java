package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzf;
import com.google.android.gms.common.internal.zzac;
import java.util.HashMap;
import java.util.Map;

public final class zzrn extends zzf<zzrn> {
    private String zzacf;
    private String zzacg;
    private String zzach;
    private String zzaci;
    private boolean zzacj;
    private String zzack;
    private boolean zzacl;
    private double zzacm;

    public String getUserId() {
        return this.zzach;
    }

    public void setClientId(String str) {
        this.zzacg = str;
    }

    public void setSampleRate(double d) {
        boolean z = d >= 0.0d && d <= 100.0d;
        zzac.zzb(z, (Object) "Sample rate must be between 0% and 100%");
        this.zzacm = d;
    }

    public void setUserId(String str) {
        this.zzach = str;
    }

    public String toString() {
        Map hashMap = new HashMap();
        hashMap.put("hitType", this.zzacf);
        hashMap.put("clientId", this.zzacg);
        hashMap.put("userId", this.zzach);
        hashMap.put("androidAdId", this.zzaci);
        hashMap.put("AdTargetingEnabled", Boolean.valueOf(this.zzacj));
        hashMap.put("sessionControl", this.zzack);
        hashMap.put("nonInteraction", Boolean.valueOf(this.zzacl));
        hashMap.put("sampleRate", Double.valueOf(this.zzacm));
        return zzf.zzj(hashMap);
    }

    public void zzR(boolean z) {
        this.zzacj = z;
    }

    public void zzS(boolean z) {
        this.zzacl = z;
    }

    public void zza(zzrn com_google_android_gms_internal_zzrn) {
        if (!TextUtils.isEmpty(this.zzacf)) {
            com_google_android_gms_internal_zzrn.zzbD(this.zzacf);
        }
        if (!TextUtils.isEmpty(this.zzacg)) {
            com_google_android_gms_internal_zzrn.setClientId(this.zzacg);
        }
        if (!TextUtils.isEmpty(this.zzach)) {
            com_google_android_gms_internal_zzrn.setUserId(this.zzach);
        }
        if (!TextUtils.isEmpty(this.zzaci)) {
            com_google_android_gms_internal_zzrn.zzbE(this.zzaci);
        }
        if (this.zzacj) {
            com_google_android_gms_internal_zzrn.zzR(true);
        }
        if (!TextUtils.isEmpty(this.zzack)) {
            com_google_android_gms_internal_zzrn.zzbF(this.zzack);
        }
        if (this.zzacl) {
            com_google_android_gms_internal_zzrn.zzS(this.zzacl);
        }
        if (this.zzacm != 0.0d) {
            com_google_android_gms_internal_zzrn.setSampleRate(this.zzacm);
        }
    }

    public /* synthetic */ void zzb(zzf com_google_android_gms_analytics_zzf) {
        zza((zzrn) com_google_android_gms_analytics_zzf);
    }

    public void zzbD(String str) {
        this.zzacf = str;
    }

    public void zzbE(String str) {
        this.zzaci = str;
    }

    public void zzbF(String str) {
        this.zzack = str;
    }

    public String zzlX() {
        return this.zzacg;
    }

    public String zzmT() {
        return this.zzacf;
    }

    public String zzmU() {
        return this.zzaci;
    }

    public boolean zzmV() {
        return this.zzacj;
    }

    public String zzmW() {
        return this.zzack;
    }

    public boolean zzmX() {
        return this.zzacl;
    }

    public double zzmY() {
        return this.zzacm;
    }
}
