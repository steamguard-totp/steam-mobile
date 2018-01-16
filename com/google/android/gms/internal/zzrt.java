package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.zzh;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zze;

public class zzrt {
    private final zzrw zzacN;

    protected zzrt(zzrw com_google_android_gms_internal_zzrw) {
        zzac.zzw(com_google_android_gms_internal_zzrw);
        this.zzacN = com_google_android_gms_internal_zzrw;
    }

    private void zza(int i, String str, Object obj, Object obj2, Object obj3) {
        zzsx com_google_android_gms_internal_zzsx = null;
        if (this.zzacN != null) {
            com_google_android_gms_internal_zzsx = this.zzacN.zznD();
        }
        if (com_google_android_gms_internal_zzsx != null) {
            com_google_android_gms_internal_zzsx.zza(i, str, obj, obj2, obj3);
            return;
        }
        String str2 = (String) zzsq.zzaek.get();
        if (Log.isLoggable(str2, i)) {
            Log.println(i, str2, zzc(str, obj, obj2, obj3));
        }
    }

    protected static String zzc(String str, Object obj, Object obj2, Object obj3) {
        if (str == null) {
            Object obj4 = "";
        }
        Object zzk = zzk(obj);
        Object zzk2 = zzk(obj2);
        Object zzk3 = zzk(obj3);
        StringBuilder stringBuilder = new StringBuilder();
        String str2 = "";
        if (!TextUtils.isEmpty(obj4)) {
            stringBuilder.append(obj4);
            str2 = ": ";
        }
        if (!TextUtils.isEmpty(zzk)) {
            stringBuilder.append(str2);
            stringBuilder.append(zzk);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(zzk2)) {
            stringBuilder.append(str2);
            stringBuilder.append(zzk2);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(zzk3)) {
            stringBuilder.append(str2);
            stringBuilder.append(zzk3);
        }
        return stringBuilder.toString();
    }

    private static String zzk(Object obj) {
        if (obj == null) {
            return "";
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof Boolean)) {
            return obj instanceof Throwable ? ((Throwable) obj).toString() : obj.toString();
        } else {
            return obj == Boolean.TRUE ? "true" : "false";
        }
    }

    protected Context getContext() {
        return this.zzacN.getContext();
    }

    public void zza(String str, Object obj) {
        zza(2, str, obj, null, null);
    }

    public void zza(String str, Object obj, Object obj2) {
        zza(2, str, obj, obj2, null);
    }

    public void zza(String str, Object obj, Object obj2, Object obj3) {
        zza(3, str, obj, obj2, obj3);
    }

    public void zzb(String str, Object obj) {
        zza(3, str, obj, null, null);
    }

    public void zzb(String str, Object obj, Object obj2) {
        zza(3, str, obj, obj2, null);
    }

    public void zzb(String str, Object obj, Object obj2, Object obj3) {
        zza(5, str, obj, obj2, obj3);
    }

    public void zzbO(String str) {
        zza(2, str, null, null, null);
    }

    public void zzbP(String str) {
        zza(3, str, null, null, null);
    }

    public void zzbQ(String str) {
        zza(4, str, null, null, null);
    }

    public void zzbR(String str) {
        zza(5, str, null, null, null);
    }

    public void zzbS(String str) {
        zza(6, str, null, null, null);
    }

    public void zzc(String str, Object obj) {
        zza(4, str, obj, null, null);
    }

    public void zzc(String str, Object obj, Object obj2) {
        zza(5, str, obj, obj2, null);
    }

    public void zzd(String str, Object obj) {
        zza(5, str, obj, null, null);
    }

    public void zzd(String str, Object obj, Object obj2) {
        zza(6, str, obj, obj2, null);
    }

    public void zze(String str, Object obj) {
        zza(6, str, obj, null, null);
    }

    public boolean zzkh() {
        return Log.isLoggable((String) zzsq.zzaek.get(), 2);
    }

    public GoogleAnalytics zzlT() {
        return this.zzacN.zznE();
    }

    protected zzrs zzlZ() {
        return this.zzacN.zzlZ();
    }

    protected zzth zzma() {
        return this.zzacN.zzma();
    }

    protected void zzmq() {
        this.zzacN.zzmq();
    }

    public zzrw zznp() {
        return this.zzacN;
    }

    protected zze zznq() {
        return this.zzacN.zznq();
    }

    protected zzsx zznr() {
        return this.zzacN.zznr();
    }

    protected zzsj zzns() {
        return this.zzacN.zzns();
    }

    protected zzh zznt() {
        return this.zzacN.zznt();
    }

    protected zzsn zznu() {
        return this.zzacN.zznu();
    }

    protected zzta zznv() {
        return this.zzacN.zznv();
    }

    protected zzse zznw() {
        return this.zzacN.zznH();
    }

    protected zzrr zznx() {
        return this.zzacN.zznG();
    }

    protected zzsb zzny() {
        return this.zzacN.zzny();
    }

    protected zzsm zznz() {
        return this.zzacN.zznz();
    }
}
