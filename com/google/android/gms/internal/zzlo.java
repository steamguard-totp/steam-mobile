package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzqq.zza;

@zzmb
public class zzlo extends zzlj implements zza {
    zzlo(Context context, zzov.zza com_google_android_gms_internal_zzov_zza, zzqp com_google_android_gms_internal_zzqp, zzln.zza com_google_android_gms_internal_zzln_zza) {
        super(context, com_google_android_gms_internal_zzov_zza, com_google_android_gms_internal_zzqp, com_google_android_gms_internal_zzln_zza);
    }

    protected void zziB() {
    }

    protected void zziu() {
        if (this.zzPp.errorCode == -2) {
            this.zzGt.zzkV().zza((zza) this);
            zziB();
            zzpy.zzbc("Loading HTML in WebView.");
            this.zzGt.loadDataWithBaseURL(this.zzPp.zzNb, this.zzPp.body, "text/html", "UTF-8", null);
        }
    }
}
