package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.zzh;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zze;

public class zzrx {
    private final Context zzadf;
    private final Context zzvZ;

    public zzrx(Context context) {
        zzac.zzw(context);
        Object applicationContext = context.getApplicationContext();
        zzac.zzb(applicationContext, (Object) "Application context can't be null");
        this.zzvZ = applicationContext;
        this.zzadf = applicationContext;
    }

    public Context getApplicationContext() {
        return this.zzvZ;
    }

    protected zzh zzX(Context context) {
        return zzh.zzV(context);
    }

    protected zzsm zza(zzrw com_google_android_gms_internal_zzrw) {
        return new zzsm(com_google_android_gms_internal_zzrw);
    }

    protected zzsb zzb(zzrw com_google_android_gms_internal_zzrw) {
        return new zzsb(com_google_android_gms_internal_zzrw);
    }

    protected zzrr zzc(zzrw com_google_android_gms_internal_zzrw) {
        return new zzrr(com_google_android_gms_internal_zzrw);
    }

    protected zzse zzd(zzrw com_google_android_gms_internal_zzrw) {
        return new zzse(com_google_android_gms_internal_zzrw);
    }

    protected zzth zze(zzrw com_google_android_gms_internal_zzrw) {
        return new zzth(com_google_android_gms_internal_zzrw);
    }

    protected zzsx zzf(zzrw com_google_android_gms_internal_zzrw) {
        return new zzsx(com_google_android_gms_internal_zzrw);
    }

    protected zzsj zzg(zzrw com_google_android_gms_internal_zzrw) {
        return new zzsj(com_google_android_gms_internal_zzrw);
    }

    protected zze zzh(zzrw com_google_android_gms_internal_zzrw) {
        return com.google.android.gms.common.util.zzh.zzyv();
    }

    protected GoogleAnalytics zzi(zzrw com_google_android_gms_internal_zzrw) {
        return new GoogleAnalytics(com_google_android_gms_internal_zzrw);
    }

    zzsc zzj(zzrw com_google_android_gms_internal_zzrw) {
        return new zzsc(com_google_android_gms_internal_zzrw, this);
    }

    zzsy zzk(zzrw com_google_android_gms_internal_zzrw) {
        return new zzsy(com_google_android_gms_internal_zzrw);
    }

    protected zzrs zzl(zzrw com_google_android_gms_internal_zzrw) {
        return new zzrs(com_google_android_gms_internal_zzrw, this);
    }

    public zzsa zzm(zzrw com_google_android_gms_internal_zzrw) {
        return new zzsa(com_google_android_gms_internal_zzrw);
    }

    public zzsz zzn(zzrw com_google_android_gms_internal_zzrw) {
        return new zzsz(com_google_android_gms_internal_zzrw);
    }

    public Context zznC() {
        return this.zzadf;
    }

    public zzrz zzo(zzrw com_google_android_gms_internal_zzrw) {
        return new zzrz(com_google_android_gms_internal_zzrw);
    }

    public zzsn zzp(zzrw com_google_android_gms_internal_zzrw) {
        return new zzsn(com_google_android_gms_internal_zzrw);
    }

    public zzta zzq(zzrw com_google_android_gms_internal_zzrw) {
        return new zzta(com_google_android_gms_internal_zzrw);
    }
}
