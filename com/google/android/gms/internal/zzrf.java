package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzf;
import java.util.HashMap;
import java.util.Map;

public final class zzrf extends zzf<zzrf> {
    private String mName;
    private String zzFy;
    private String zzGu;
    private String zzabN;
    private String zzabO;
    private String zzabP;
    private String zzabQ;
    private String zzabR;
    private String zzabS;
    private String zzabT;

    public String getContent() {
        return this.zzFy;
    }

    public String getId() {
        return this.zzGu;
    }

    public String getName() {
        return this.mName;
    }

    public String getSource() {
        return this.zzabN;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public String toString() {
        Map hashMap = new HashMap();
        hashMap.put("name", this.mName);
        hashMap.put("source", this.zzabN);
        hashMap.put("medium", this.zzabO);
        hashMap.put("keyword", this.zzabP);
        hashMap.put("content", this.zzFy);
        hashMap.put("id", this.zzGu);
        hashMap.put("adNetworkId", this.zzabQ);
        hashMap.put("gclid", this.zzabR);
        hashMap.put("dclid", this.zzabS);
        hashMap.put("aclid", this.zzabT);
        return zzf.zzj(hashMap);
    }

    public void zza(zzrf com_google_android_gms_internal_zzrf) {
        if (!TextUtils.isEmpty(this.mName)) {
            com_google_android_gms_internal_zzrf.setName(this.mName);
        }
        if (!TextUtils.isEmpty(this.zzabN)) {
            com_google_android_gms_internal_zzrf.zzbq(this.zzabN);
        }
        if (!TextUtils.isEmpty(this.zzabO)) {
            com_google_android_gms_internal_zzrf.zzbr(this.zzabO);
        }
        if (!TextUtils.isEmpty(this.zzabP)) {
            com_google_android_gms_internal_zzrf.zzbs(this.zzabP);
        }
        if (!TextUtils.isEmpty(this.zzFy)) {
            com_google_android_gms_internal_zzrf.zzbt(this.zzFy);
        }
        if (!TextUtils.isEmpty(this.zzGu)) {
            com_google_android_gms_internal_zzrf.zzbu(this.zzGu);
        }
        if (!TextUtils.isEmpty(this.zzabQ)) {
            com_google_android_gms_internal_zzrf.zzbv(this.zzabQ);
        }
        if (!TextUtils.isEmpty(this.zzabR)) {
            com_google_android_gms_internal_zzrf.zzbw(this.zzabR);
        }
        if (!TextUtils.isEmpty(this.zzabS)) {
            com_google_android_gms_internal_zzrf.zzbx(this.zzabS);
        }
        if (!TextUtils.isEmpty(this.zzabT)) {
            com_google_android_gms_internal_zzrf.zzby(this.zzabT);
        }
    }

    public /* synthetic */ void zzb(zzf com_google_android_gms_analytics_zzf) {
        zza((zzrf) com_google_android_gms_analytics_zzf);
    }

    public void zzbq(String str) {
        this.zzabN = str;
    }

    public void zzbr(String str) {
        this.zzabO = str;
    }

    public void zzbs(String str) {
        this.zzabP = str;
    }

    public void zzbt(String str) {
        this.zzFy = str;
    }

    public void zzbu(String str) {
        this.zzGu = str;
    }

    public void zzbv(String str) {
        this.zzabQ = str;
    }

    public void zzbw(String str) {
        this.zzabR = str;
    }

    public void zzbx(String str) {
        this.zzabS = str;
    }

    public void zzby(String str) {
        this.zzabT = str;
    }

    public String zzmA() {
        return this.zzabO;
    }

    public String zzmB() {
        return this.zzabP;
    }

    public String zzmC() {
        return this.zzabQ;
    }

    public String zzmD() {
        return this.zzabR;
    }

    public String zzmE() {
        return this.zzabS;
    }

    public String zzmF() {
        return this.zzabT;
    }
}
