package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import com.google.android.gms.internal.zzgf;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzqp;

@zzmb
public class zzo extends zzk {
    public zzj zza(Context context, zzqp com_google_android_gms_internal_zzqp, int i, boolean z, zzgf com_google_android_gms_internal_zzgf) {
        if (!zzp(context)) {
            return null;
        }
        return new zzd(context, z, zzh(com_google_android_gms_internal_zzqp), new zzz(context, com_google_android_gms_internal_zzqp.zzkY(), com_google_android_gms_internal_zzqp.getRequestId(), com_google_android_gms_internal_zzgf, com_google_android_gms_internal_zzqp.zzle()));
    }
}
