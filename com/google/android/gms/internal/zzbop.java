package com.google.android.gms.internal;

import com.google.android.gms.internal.zzboq.zza;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;

public class zzbop {
    private final String prefix;
    private final zzboq zzbZw;
    private final String zzcgE;

    public zzbop(zzboq com_google_android_gms_internal_zzboq, String str) {
        this(com_google_android_gms_internal_zzboq, str, null);
    }

    public zzbop(zzboq com_google_android_gms_internal_zzboq, String str, String str2) {
        this.zzbZw = com_google_android_gms_internal_zzboq;
        this.zzcgE = str;
        this.prefix = str2;
    }

    private long zzYU() {
        return System.currentTimeMillis();
    }

    private String zzj(String str, Object... objArr) {
        if (objArr.length > 0) {
            str = String.format(str, objArr);
        }
        if (this.prefix == null) {
            return str;
        }
        String str2 = this.prefix;
        return new StringBuilder((String.valueOf(str2).length() + 3) + String.valueOf(str).length()).append(str2).append(" - ").append(str).toString();
    }

    private static String zzk(Throwable th) {
        Writer stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public void info(String str) {
        this.zzbZw.zzb(zza.INFO, this.zzcgE, zzj(str, new Object[0]), zzYU());
    }

    public void warn(String str) {
        zze(str, null);
    }

    public boolean zzYT() {
        return this.zzbZw.zzWu().ordinal() <= zza.DEBUG.ordinal();
    }

    public void zza(String str, Throwable th, Object... objArr) {
        if (zzYT()) {
            String zzj = zzj(str, objArr);
            if (th != null) {
                String valueOf = String.valueOf(zzk(th));
                zzj = new StringBuilder((String.valueOf(zzj).length() + 1) + String.valueOf(valueOf).length()).append(zzj).append("\n").append(valueOf).toString();
            }
            this.zzbZw.zzb(zza.DEBUG, this.zzcgE, zzj, zzYU());
        }
    }

    public void zzd(String str, Throwable th) {
        String valueOf = String.valueOf(zzj(str, new Object[0]));
        String valueOf2 = String.valueOf(zzk(th));
        this.zzbZw.zzb(zza.ERROR, this.zzcgE, new StringBuilder((String.valueOf(valueOf).length() + 1) + String.valueOf(valueOf2).length()).append(valueOf).append("\n").append(valueOf2).toString(), zzYU());
    }

    public void zze(String str, Throwable th) {
        String zzj = zzj(str, new Object[0]);
        if (th != null) {
            String valueOf = String.valueOf(zzk(th));
            zzj = new StringBuilder((String.valueOf(zzj).length() + 1) + String.valueOf(valueOf).length()).append(zzj).append("\n").append(valueOf).toString();
        }
        this.zzbZw.zzb(zza.WARN, this.zzcgE, zzj, zzYU());
    }

    public void zzi(String str, Object... objArr) {
        zza(str, null, objArr);
    }
}
