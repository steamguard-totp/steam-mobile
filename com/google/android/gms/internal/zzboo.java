package com.google.android.gms.internal;

import com.google.android.gms.internal.zzboq.zza;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class zzboo implements zzboq {
    private final Set<String> zzcgC;
    private final zza zzcgD;

    public zzboo(zza com_google_android_gms_internal_zzboq_zza, List<String> list) {
        if (list != null) {
            this.zzcgC = new HashSet(list);
        } else {
            this.zzcgC = null;
        }
        this.zzcgD = com_google_android_gms_internal_zzboq_zza;
    }

    public zza zzWu() {
        return this.zzcgD;
    }

    protected String zza(zza com_google_android_gms_internal_zzboq_zza, String str, String str2, long j) {
        String valueOf = String.valueOf(new Date(j).toString());
        String valueOf2 = String.valueOf(com_google_android_gms_internal_zzboq_zza);
        return new StringBuilder((((String.valueOf(valueOf).length() + 6) + String.valueOf(valueOf2).length()) + String.valueOf(str).length()) + String.valueOf(str2).length()).append(valueOf).append(" [").append(valueOf2).append("] ").append(str).append(": ").append(str2).toString();
    }

    protected boolean zza(zza com_google_android_gms_internal_zzboq_zza, String str) {
        return com_google_android_gms_internal_zzboq_zza.ordinal() >= this.zzcgD.ordinal() && (this.zzcgC == null || com_google_android_gms_internal_zzboq_zza.ordinal() > zza.DEBUG.ordinal() || this.zzcgC.contains(str));
    }

    protected void zzaq(String str, String str2) {
        System.err.println(str2);
    }

    protected void zzar(String str, String str2) {
        System.out.println(str2);
    }

    protected void zzas(String str, String str2) {
        System.out.println(str2);
    }

    protected void zzat(String str, String str2) {
        System.out.println(str2);
    }

    public void zzb(zza com_google_android_gms_internal_zzboq_zza, String str, String str2, long j) {
        if (zza(com_google_android_gms_internal_zzboq_zza, str)) {
            String zza = zza(com_google_android_gms_internal_zzboq_zza, str, str2, j);
            switch (com_google_android_gms_internal_zzboq_zza) {
                case ERROR:
                    zzaq(str, zza);
                    return;
                case WARN:
                    zzar(str, zza);
                    return;
                case INFO:
                    zzas(str, zza);
                    return;
                case DEBUG:
                    zzat(str, zza);
                    return;
                default:
                    throw new RuntimeException("Should not reach here!");
            }
        }
    }
}
