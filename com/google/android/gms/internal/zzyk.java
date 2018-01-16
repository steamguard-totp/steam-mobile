package com.google.android.gms.internal;

import android.text.TextUtils;
import java.io.IOException;

public abstract class zzyk {
    private final String zzakW;
    protected final zzyu zzaoQ;
    private zzyw zzauP;

    protected zzyk(String str, String str2, String str3) {
        zzym.zzcP(str);
        this.zzakW = str;
        this.zzaoQ = new zzyu(str2);
        setSessionLabel(str3);
    }

    public String getNamespace() {
        return this.zzakW;
    }

    public void setSessionLabel(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.zzaoQ.zzcU(str);
        }
    }

    public final void zza(zzyw com_google_android_gms_internal_zzyw) {
        this.zzauP = com_google_android_gms_internal_zzyw;
        if (this.zzauP == null) {
            zzua();
        }
    }

    protected final void zza(String str, long j, String str2) throws IOException {
        Object[] objArr = new Object[]{str, str2};
        this.zzauP.zza(this.zzakW, str, j, str2);
    }

    public void zzb(long j, int i) {
    }

    public void zzcO(String str) {
    }

    public void zzua() {
    }

    protected final long zzub() {
        return this.zzauP.zzsc();
    }
}
