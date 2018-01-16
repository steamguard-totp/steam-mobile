package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzd;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.ads.internal.zzv;

@zzmb
public class zzqr {
    public zzqp zza(Context context, zzec com_google_android_gms_internal_zzec, boolean z, boolean z2, zzav com_google_android_gms_internal_zzav, zzqa com_google_android_gms_internal_zzqa) {
        return zza(context, com_google_android_gms_internal_zzec, z, z2, com_google_android_gms_internal_zzav, com_google_android_gms_internal_zzqa, null, null, null);
    }

    public zzqp zza(Context context, zzec com_google_android_gms_internal_zzec, boolean z, boolean z2, zzav com_google_android_gms_internal_zzav, zzqa com_google_android_gms_internal_zzqa, zzgf com_google_android_gms_internal_zzgf, zzt com_google_android_gms_ads_internal_zzt, zzd com_google_android_gms_ads_internal_zzd) {
        zzqp com_google_android_gms_internal_zzqs = new zzqs(zzqt.zzb(context, com_google_android_gms_internal_zzec, z, z2, com_google_android_gms_internal_zzav, com_google_android_gms_internal_zzqa, com_google_android_gms_internal_zzgf, com_google_android_gms_ads_internal_zzt, com_google_android_gms_ads_internal_zzd));
        com_google_android_gms_internal_zzqs.setWebViewClient(zzv.zzcL().zzb(com_google_android_gms_internal_zzqs, z2));
        com_google_android_gms_internal_zzqs.setWebChromeClient(zzv.zzcL().zzn(com_google_android_gms_internal_zzqs));
        return com_google_android_gms_internal_zzqs;
    }
}
