package com.google.android.gms.internal;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.zzac;
import java.util.Locale;

public class zzyu {
    private static boolean zzavA = false;
    protected final String mTag;
    private final boolean zzavB;
    private boolean zzavC;
    private boolean zzavD;
    private String zzavE;

    public zzyu(String str) {
        this(str, false);
    }

    public zzyu(String str, boolean z) {
        zzac.zzh(str, "The log tag cannot be null or empty.");
        this.mTag = str;
        this.zzavB = str.length() <= 23;
        this.zzavC = z;
        this.zzavD = false;
    }

    public void zza(Throwable th, String str, Object... objArr) {
        Log.e(this.mTag, zzg(str, objArr), th);
    }

    public void zzb(String str, Object... objArr) {
        if (zzun()) {
            zzg(str, objArr);
        }
    }

    public void zzb(Throwable th, String str, Object... objArr) {
        if (zzun()) {
            zzg(str, objArr);
        }
    }

    public void zzc(String str, Object... objArr) {
        Log.e(this.mTag, zzg(str, objArr));
    }

    public void zzcU(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        } else {
            str2 = String.format("[%s] ", new Object[]{str});
        }
        this.zzavE = str2;
    }

    public void zze(String str, Object... objArr) {
        zzg(str, objArr);
    }

    public void zzf(String str, Object... objArr) {
        Log.w(this.mTag, zzg(str, objArr));
    }

    protected String zzg(String str, Object... objArr) {
        if (objArr.length != 0) {
            str = String.format(Locale.ROOT, str, objArr);
        }
        if (TextUtils.isEmpty(this.zzavE)) {
            return str;
        }
        String valueOf = String.valueOf(this.zzavE);
        String valueOf2 = String.valueOf(str);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    public boolean zzun() {
        return this.zzavC || (this.zzavB && Log.isLoggable(this.mTag, 3));
    }
}
