package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzf;
import java.util.HashMap;
import java.util.Map;

public final class zzrp extends zzf<zzrp> {
    public String zzaca;
    public String zzacu;
    public String zzacv;

    public String getAction() {
        return this.zzaca;
    }

    public String getTarget() {
        return this.zzacv;
    }

    public String toString() {
        Map hashMap = new HashMap();
        hashMap.put("network", this.zzacu);
        hashMap.put("action", this.zzaca);
        hashMap.put("target", this.zzacv);
        return zzf.zzj(hashMap);
    }

    public void zza(zzrp com_google_android_gms_internal_zzrp) {
        if (!TextUtils.isEmpty(this.zzacu)) {
            com_google_android_gms_internal_zzrp.zzbI(this.zzacu);
        }
        if (!TextUtils.isEmpty(this.zzaca)) {
            com_google_android_gms_internal_zzrp.zzbB(this.zzaca);
        }
        if (!TextUtils.isEmpty(this.zzacv)) {
            com_google_android_gms_internal_zzrp.zzbJ(this.zzacv);
        }
    }

    public /* synthetic */ void zzb(zzf com_google_android_gms_analytics_zzf) {
        zza((zzrp) com_google_android_gms_analytics_zzf);
    }

    public void zzbB(String str) {
        this.zzaca = str;
    }

    public void zzbI(String str) {
        this.zzacu = str;
    }

    public void zzbJ(String str) {
        this.zzacv = str;
    }

    public String zznd() {
        return this.zzacu;
    }
}
